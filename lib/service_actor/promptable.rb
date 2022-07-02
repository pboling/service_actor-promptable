# frozen_string_literal: true

# External libraries
require "version_gem"

# This library
require "service_actor"
require "service_actor/promptable/version"
require "service_actor/promptable/unattended"

module ServiceActor
  # Adds the `prompt_with` DSL to actors. This allows you to set a prompt interface.
  # It is suggested to use the `tty-prompt` gem, but any prompt tool should work.
  # Then you are able to call `.prompt` and manipulate the prompt during a play.
  #
  #   class PromptableActor < Actor
  #     prompt_with TTY::Prompt.new
  #     # or alternatively
  #     def call
  #       super
  #       self.prompt = TTY::Prompt.new
  #     end
  #   end
  module Promptable
    UNATTENDED_DEFAULTS = {
      prompt_toggle: :unattended,
      answer_with: true
    }.freeze

    def self.included(base)
      base.extend(ClassMethods)
    end

    # DSL for specifying the prompt
    module ClassMethods
      def inherited(child)
        super

        child.prompt_with(
          prompt,
          unattended_options: ServiceActor::Promptable::UNATTENDED_DEFAULTS.merge(unattended_options).dup
        )
      end

      def prompt_with(prompter, unattended_options: {})
        unattended_options = ServiceActor::Promptable::UNATTENDED_DEFAULTS.merge(unattended_options)
        self.prompt = prompter
        self.unattended_options = unattended_options
        return unless unattended_options.key?(:prompt_toggle) && unattended_options[:prompt_toggle].is_a?(Symbol)

        # Create an Actor input :unattended (default) which must be either true or false
        input unattended_options[:prompt_toggle], in: [true, false], allow_nil: false, default: false
      end

      def prompt
        @prompt
      end

      def prompt=(prompter)
        @prompt = prompter
      end

      def unattended_options
        @unattended_options
      end

      def unattended_options=(unattended_options)
        @unattended_options = unattended_options
      end
    end

    def prompt
      if self.class.unattended_options[:prompt_toggle] && send(self.class.unattended_options[:prompt_toggle])
        Unattended.new(self.class.unattended_options[:answer_with])
      else
        self.class.prompt
      end
    end

    def prompt=(prompter)
      self.class.prompt = prompter
    end

    def unattended_options
      self.class.unattended_options
    end

    def unattended_options=(unattended_options)
      self.class.unattended_options = unattended_options
    end
  end
end

ServiceActor::Promptable::Version.class_eval do
  extend VersionGem::Basic
end

# frozen_string_literal: true

# External libraries
require "version_gem"

# This library
require "service_actor"
require "service_actor/promptable/version"

module ServiceActor
  # Add a prompt to an actor class
  module Promptable
    class Error < StandardError; end

    def self.included(base)
      base.extend(ClassMethods)
    end

    # DSL for specifying the prompt
    module ClassMethods
      def inherited(child)
        super

        child.prompt ||= @prompt
      end

      def prompt_with(prompter)
        @prompt = prompter
      end

      def prompt
        @prompt
      end

      def prompt=(prompter)
        @prompt = prompter
      end
    end

    def prompt
      self.class.prompt
    end

    def prompt=(prompter)
      self.class.prompt = prompter
    end
  end
end

ServiceActor::Promptable::Version.class_eval do
  extend VersionGem::Basic
end

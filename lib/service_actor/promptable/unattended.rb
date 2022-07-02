# frozen_string_literal: true

module ServiceActor
  module Promptable
    # Sometimes a Service Actor should be able to run unattended or attended
    class Unattended < BasicObject
      def initialize(answer_with)
        @answer_with = answer_with
      end

      def method_missing(_name, *_args)
        ::Kernel.puts "Prompt is NoOp. Running unattended!"
        @answer_with
      end
    end
  end
end

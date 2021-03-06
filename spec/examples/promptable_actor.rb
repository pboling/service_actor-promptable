# frozen_string_literal: true

class PromptableActor < Actor
  include ServiceActor::Promptable
  prompt_with TTY::Prompt::Test.new

  output :answer, type: String
end

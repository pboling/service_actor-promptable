# frozen_string_literal: true

class PromptReset < Actor
  include ServiceActor::Promptable
  prompt_with TTY::Prompt::Test.new

  output :answer, type: String

  def call
    prompt.ok("All is well")
    self.answer = prompt.ask("Say?", default: "SLARTIBART")
  end
end

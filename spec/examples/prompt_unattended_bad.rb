# frozen_string_literal: true

class PromptUnattendedBad < Actor
  include ServiceActor::Promptable
  prompt_with TTY::Prompt::Test.new, unattended_options: { prompt_toggle: false }

  output :answer, type: String

  def call
    prompt.ok("All is well")
    self.answer = prompt.ask("Say?", default: "SLARTIBART")
  end
end

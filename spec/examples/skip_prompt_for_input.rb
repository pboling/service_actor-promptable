# frozen_string_literal: true

class SkipPromptForInput < Actor
  include ServiceActor::Promptable

  prompt_with TTY::Prompt::Test.new, unattended_options: { prompt_toggle: :unattended, answer_with: "Newly Bored" }
  output :answer, type: String

  def call
    prompt.ok("All is well")
    self.answer = prompt.ask("Say?", default: "YARR PFI")
  end
end

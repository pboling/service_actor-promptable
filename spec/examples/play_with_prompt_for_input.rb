# frozen_string_literal: true

class PlayWithPromptForInput < Actor
  include ServiceActor::Promptable

  prompt_with TTY::Prompt::Test.new
  output :answer, type: String

  play ->(_) { prompt.ok("All is well") },
       ->(result) { result.answer = prompt.ask("Say?", default: "YARR PWPFI") }
end

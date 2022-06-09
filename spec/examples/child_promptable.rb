# frozen_string_literal: true

require_relative "./promptable_actor"

class ChildPromptable < PromptableActor
  def call
    prompt.ok("All is well")
    self.answer = prompt.ask("Say?", default: "I am a child")
  end
end

# frozen_string_literal: true

RSpec.describe ServiceActor::Promptable do
  it "has a version number" do
    expect(ServiceActor::Promptable::VERSION).not_to be nil
  end

  context "when using prompts" do
    context "when using `call`" do
      let(:result) { PromptForInput.call }

      before { PromptForInput.prompt.input.truncate(0) }

      after { PromptForInput.prompt.input.truncate(0) }

      it "has answer available" do
        expect(result.answer).to eq("YARR PFI")
      end

      it "can take user input" do
        PromptForInput.prompt.input << "Hargle\n"
        PromptForInput.prompt.input.rewind

        expect(result.answer).to eq("Hargle")
      end
    end

    context "when using `play`" do
      let(:result) { PlayWithPromptForInput.call }

      before { PlayWithPromptForInput.prompt.input.truncate(0) }

      after { PlayWithPromptForInput.prompt.input.truncate(0) }

      it "has answer available" do
        expect(result.answer).to eq("YARR PWPFI")
      end

      it "can take user input" do
        PlayWithPromptForInput.prompt.input << "Anthropomorphize\n"
        PlayWithPromptForInput.prompt.input.rewind

        expect(result.answer).to eq("Anthropomorphize")
      end
    end

    context "when a child" do
      let(:result) { ChildPromptable.call }

      before { ChildPromptable.prompt.input.truncate(0) }

      after { ChildPromptable.prompt.input.truncate(0) }

      it "has answer available" do
        expect(result.answer).to eq("I am a child")
      end

      it "can take user input" do
        ChildPromptable.prompt.input << "Myrtle\n"
        ChildPromptable.prompt.input.rewind

        expect(result.answer).to eq("Myrtle")
      end
    end
  end
end

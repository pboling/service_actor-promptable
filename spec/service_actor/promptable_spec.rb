# frozen_string_literal: true

RSpec.describe ServiceActor::Promptable do
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

    context "when prompt reset later" do
      let(:result) { PromptReset.call }

      before do
        PromptReset.prompt = TTY::Prompt::Test.new
        PromptReset.unattended_options = {}
        PromptReset.prompt.input.truncate(0)
      end

      after { PromptReset.prompt.input.truncate(0) }

      it "has answer available" do
        expect(result.answer).to eq("SLARTIBART")
      end

      it "can take user input" do
        PromptReset.prompt.input << "Hargle\n"
        PromptReset.prompt.input.rewind

        expect(result.answer).to eq("Hargle")
      end
    end

    context "when unattended" do
      let(:result) { SkipPromptForInput.call(unattended: true) }

      before do
        SkipPromptForInput.prompt.input.truncate(0)
        @original_skip_unattended_options = SkipPromptForInput.unattended_options
        @original_skip_prompt = SkipPromptForInput.prompt
      end

      after do
        SkipPromptForInput.unattended_options = @original_skip_unattended_options
        SkipPromptForInput.prompt = @original_skip_prompt
        SkipPromptForInput.prompt.input.truncate(0)
      end

      it "has answer available" do
        expect(result.answer).to eq("Newly Bored")
      end

      it "user input is ignored" do
        SkipPromptForInput.prompt.input << "Hargle\n"
        SkipPromptForInput.prompt.input.rewind

        expect(result.answer).to eq("Newly Bored")
      end

      it "can check unattended_options" do
        result
        expect(SkipPromptForInput.unattended_options).to eq({
                                                              answer_with: "Newly Bored",
                                                              prompt_toggle: :unattended
                                                            })
      end

      it "can reset unattended_options to some fuzzy fuzz" do
        SkipPromptForInput.unattended_options = { banana: :mousse }
        result
        expect(SkipPromptForInput.unattended_options).to eq({ banana: :mousse })
      end

      it "can check prompt" do
        result
        expect(SkipPromptForInput.prompt).to be_a(TTY::Prompt::Test)
      end

      it "can set prompt to some fuzzy fuzz" do
        SkipPromptForInput.prompt = { banana: :mousse }
        result
        expect(SkipPromptForInput.prompt).to eq({ banana: :mousse })
      end
    end

    context "when using bad unattended_options" do
      let(:result) { PromptUnattendedBad.call }

      before { PromptUnattendedBad.prompt.input.truncate(0) }

      after { PromptUnattendedBad.prompt.input.truncate(0) }

      it "has answer available" do
        expect(result.answer).to eq("SLARTIBART")
      end

      it "can take user input" do
        PromptUnattendedBad.prompt.input << "Anthropomorphize\n"
        PromptUnattendedBad.prompt.input.rewind

        expect(result.answer).to eq("Anthropomorphize")
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

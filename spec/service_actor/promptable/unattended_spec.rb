# frozen_string_literal: true

RSpec.describe ServiceActor::Promptable::Unattended do
  subject(:instance) { described_class.new(answer_with) }

  let(:answer_with) { "banana" }

  it "doesn't raise error" do
    block_is_expected.to_not raise_error
  end

  it "can support any Prompt API" do
    expect(instance.ask).to eq(answer_with)
  end

  it "has method_missing API" do
    expect(instance).to respond_to(:method_missing)
  end
end

# frozen_string_literal: true

RSpec.describe ServiceActor::Promptable::Version do
  it_behaves_like "a Version module", described_class

  it "has a VERSION" do
    expect(ServiceActor::Promptable::Version::VERSION).to be_a(String)
  end
end

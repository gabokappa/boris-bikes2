require_relative "../lib/boris_bikes"
require_relative "../lib/bike"

describe Bike do
  # it "responds to working?" do
  #   expect(Bike.new).to respond_to(:working?)
  # end

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

 it "returns whether the bike is working" do
   expect(subject.working?).to eq true

 end
end

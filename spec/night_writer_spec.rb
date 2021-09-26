require './lib/night_writer'
require 'pry'

RSpec.describe NightWriter do
  it "exists" do
    night_writer = NightWriter.new

    expect(night_writer).to be_an_instance_of(NightWriter)
  end
end

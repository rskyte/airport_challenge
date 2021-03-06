require 'plane'

describe Plane do
  let(:airport) { double(:my_airport) }

  it "should know when it is flying" do
    allow(airport).to receive(:takeoff) { |plane| plane.taking_off }
    airport.takeoff(subject)
    expect(subject.flying).to eq true
  end

  it "should know when it is landed" do
    allow(airport).to receive(:land) { |plane| plane.landing }
    airport.land(subject)
    expect(subject.flying).to eq false
  end

end

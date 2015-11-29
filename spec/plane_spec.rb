require 'plane'

describe Plane do

  subject(:plane) { described_class.new }

  it { is_expected.to respond_to(:status) }
  it { is_expected.to respond_to(:land) }
  it { is_expected.to respond_to(:take_off) }

  describe '#status' do

    it 'is expected to respond with flying upon Plane initialization' do
      expect(plane.status).to eq(:flying)
    end

  end

  describe '#land' do

    it 'is expected to change the current @status of the plane to :landed' do
      plane.land
      expect(plane.status).to eq(:landed)
    end

    it 'is expected to raise an error if already landed' do
      plane.land
      expect { plane.land }.to raise_error "This plane is already landed"
    end

  end

  describe '#take_off' do

    it 'is expected to change the current @status of the plane to :flying' do
      plane.land
      plane.take_off
      expect(plane.status).to eq(:flying)
    end

    it 'is expected to raise an error if already flying' do
      expect { plane.take_off }.to raise_error "This plane is already flying"
    end

  end

end

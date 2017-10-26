require 'spec_helper'

RSpec.describe RubySMB::Fscc::FileInformation::FileDispositionInformation do
  subject(:struct) { described_class.new }

  it { should respond_to :delete_pending }

  it 'is little endian' do
    expect(described_class.fields.instance_variable_get(:@hints)[:endian]).to eq :little
  end

  describe '#delete_pending' do
    it 'is a 8-bit field' do
      expect(struct.delete_pending).to be_a BinData::Uint8
    end

    it 'should have a default value of 0' do
      expect(struct.delete_pending).to eq 0
    end
  end
end

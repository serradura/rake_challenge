require 'spec_helper'

require 'calc'

RSpec.describe Calc::Operations, :type => :lib do
  subject { described_class.new(args) }

  context 'custom params' do
    subject { described_class.new(args, params: [:x, :y]) }

    let(:args) { {x: '3', y: '3'} }

    it { expect(subject.sum).to be == 6.0 }
  end

  context '#sum' do
    let(:args) { {a: '2', b: '2'} }

    it { expect(subject.sum).to be == 4.0 }
  end

  context '#sub' do
    let(:args) { {a: '2', b: '2'} }

    it { expect(subject.sub).to be == 0.0 }
  end

  context '#mult' do
    let(:args) { {a: '2', b: '2'} }

    it { expect(subject.mult).to be == 4.0 }
  end

  context 'div' do
    let(:args) { {a: '2', b: '2'} }

    it { expect(subject.div).to be == 1.0 }

    context 'divide por zero' do
      let(:args) { {a: '2', b: '0'} }

      it { expect(subject.div).to be == 0.0 }
    end
  end
end

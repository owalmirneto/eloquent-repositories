# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Github, type: :model do
  context 'respond_to methods' do
    subject { described_class.new 'wfsneto' }

    it { is_expected.to respond_to(:user) }
    it { is_expected.to respond_to(:repos) }
  end

  context 'when username valid' do
    subject { described_class.new 'wfsneto' }

    it { expect(subject.user).to be_an_instance_of(String) }
  end
end

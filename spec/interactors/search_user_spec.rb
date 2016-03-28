# frozen_string_literal: true
require 'rails_helper'

RSpec.describe SearchUser, type: :interactor do
  describe '#call' do
    context 'asd' do
      let(:username) { 'wfsneto' }
      let(:user) { create :user, login: 'wfsneto' }

      before do
        allow(User).to receive(:find_by).with(login: username).and_return(user)
      end

      it 'succeeds' do
        expect(subject.context).to be_a_success
      end
    end
  end
end

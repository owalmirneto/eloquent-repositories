# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:repositories) }
  end

  context 'database' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:login).of_type(:string) }
    it { is_expected.to have_db_column(:avatar_url).of_type(:string) }
    it { is_expected.to have_db_column(:company).of_type(:string) }
    it { is_expected.to have_db_column(:blog).of_type(:string) }
    it { is_expected.to have_db_column(:location).of_type(:string) }
    it { is_expected.to have_db_column(:email).of_type(:string) }
  end

  context 'factories' do
    it { expect(build(:user)).to be_valid }
    it { expect(build(:invalid_user)).to_not be_valid }
  end
end

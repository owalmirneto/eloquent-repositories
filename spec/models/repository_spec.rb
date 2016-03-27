# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Repository, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:owner) }
  end

  context 'database' do
    it { is_expected.to have_db_column(:owner_id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:language).of_type(:string) }
    it { is_expected.to have_db_column(:stargazers_count).of_type(:integer) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
  end

  context 'factories' do
    xit { expect(build(:repository)).to be_valid }
    it { expect(build(:invalid_repository)).to_not be_valid }
  end
end

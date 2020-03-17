# frozen_string_literal: true

RSpec.describe Project do
  describe 'associations' do
    it { is_expected.to have_many(:tasks).dependent(:destroy) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it {
      is_expected.to validate_length_of(:name).is_at_least(Project::NAME_LENGTH.min)
                                              .is_at_most(Project::NAME_LENGTH.max)
    }
  end
end

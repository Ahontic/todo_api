# frozen_string_literal: true

RSpec.describe Task do
  describe 'associations' do
    it { is_expected.to belong_to(:project) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_least(Task::NAME_LENGTH.min).is_at_most(Task::NAME_LENGTH.max) }
  end
end

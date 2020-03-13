# frozen_string_literal: true

RSpec.describe User do
  describe 'associations' do
    it { is_expected.to have_many(:projects).dependent(:destroy) }
    it { is_expected.to have_many(:tasks).through(:projects) }
  end
end

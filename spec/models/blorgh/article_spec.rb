require 'rails_helper'

module Blorgh
  RSpec.describe Article, type: :model do
    context 'validations' do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:text) }
    end

    context 'associations' do
      it { should have_many(:comments) }
    end
  end
end

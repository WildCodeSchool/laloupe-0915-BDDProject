require 'rails_helper'

RSpec.describe Soiree, type: :model do
  describe 'validations' do
    it "n'est pas valide sans titre" do
      soiree = FactoryGirl.build(:soiree, titre: nil)
      expect(soiree).to_not be_valid
    end
  end
end

require 'rails_helper'

RSpec.feature "[Lister les solutions]", type: :feature do 
  scenario "en tant que Bob je peux lister les soirées" do
    # context
    ## création des objets de test
    bob = FactoryGirl.create(:user)
    soiree_1 = Soiree.create(titre: "Rumba", capacite: 2)
    soiree_2= Soiree.create(titre: "Picon Bière", capacite: 1)
    ## Sign in Bob
    visit 'users/sign_in'
    fill_in 'user_email', with: 'yo@wcs.fr'
    fill_in 'user_password', with: 'azerty1234'
    click 'Sign in'

    # action
    visit '/soirees'

    # Verification
    expect(page).to have_text('Rumba')
    expect(page).to have_text('Picon Bière')
    expect(page).to have_text('1 place disponible')
    expect(page).to have_text('2 place disponible')
    expect(page).to have_link('Réserver ma place')
  end
end

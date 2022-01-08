require 'rails_helper'

RSpec.describe 'mechanic index page' do
  xit 'displays all names on mechanic index' do
    mechanic1 = Mechanic.find_or_create_by!(name: 'Kara', yearsxp: 11)
    mechanic2 = Mechanic.find_or_create_by!(name: 'Joe', yearsxp: 10)

    visit "/mechanics"

    expect(page).to have_content('All Mechanics')
    expect(page).to have_content('Kara')
    expect(page).to have_content('Joe')
    expect(page).to have_content(mechanic1.years_xp)
    expect(page).to have_content(mechanic2.years_xp)
    expect(page).to have_content("Average years experience: 10.5")
  end
end

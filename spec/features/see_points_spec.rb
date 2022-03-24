feature 'See points' do
  scenario 'see Player2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
  scenario 'see Player1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Charlotte: 60HP'
  end
end
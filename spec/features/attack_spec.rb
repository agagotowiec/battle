feature 'Attacking' do

  scenario 'Attack player2' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content 'Charlotte attacked Mittens'
  end

  scenario 'reduces Player2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
end
end
    
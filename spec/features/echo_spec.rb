feature 'Echo' do
  scenario 'entering Hello echos Hello' do
    visit '/'
    expect(page).to have_content 'Echo Generator'
    fill_in('echo', with: "Hello")
    click_on 'Shout'
    expect(page).to have_content 'Hello'
  end
end

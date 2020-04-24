feature 'Echo' do
  scenario 'False Positive: entering Hello echos Hello' do
    visit '/'
    expect(page).to have_content 'Echo Generator'
    fill_in('echo', with: "Hello")
    click_on 'Shout'
    expect(page).to have_content 'Hello'
  end

  scenario 'Correct Failure: entering Hello echos Hello' do
    visit '/'
    expect(page).to have_content 'Echo Generator'
    fill_in('echo', with: "Hello")
    click_on 'Shout'
    expect(page).to have_content 'Hello'
    expect(page).to_not have_content 'Sinatra'
  end
end

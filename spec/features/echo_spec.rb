feature 'Echo' do
  scenario 'False Positive: entering Hello echos Hello' do
    visit '/'
    expect(page).to have_content 'Echo Generator'
    fill_in('echo', with: "Hello")
    click_on 'Shout'
    expect(page).to have_content 'Hello'
  end

  scenario 'Correct Failure: Expecting not to have Sinatra' do
    visit '/'
    expect(page).to have_content 'Echo Generator'
    fill_in('echo', with: "Hello")
    click_on 'Shout'
    expect(page).to have_content 'Hello'
    expect(page).to_not have_content 'Sinatra'
  end

  scenario 'Correct Failure: Specific element contains Hello' do
    visit '/'
    expect(page).to have_content 'Echo Generator'
    fill_in('echo', with: "Hello")
    click_on 'Shout'
    within('#result') {
      expect(page).to have_content 'Hello'
    }
  end

  scenario 'Correct Failure: Another way of specifying certain element to contain Hello' do
    visit '/'
    expect(page).to have_content 'Echo Generator'
    fill_in('echo', with: "Hello")
    click_on 'Shout'
    expect(page.first('#result')).to have_content 'Hello'
  end
end

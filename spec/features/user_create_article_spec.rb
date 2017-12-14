require "spec_helper"

feature "Article Creation" do
 
  before(:all) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New Article'
  end

  #scenario "allows user to create new article" do
  #  visit new_article_path

  #  fill_in :article_title, :with => "Articles name"
  #  fill_in :article_text, :with => "Articles body" 
  #  click_button "Save Article"

  #  expect(page).to have_content 'Comments'
  #end

end


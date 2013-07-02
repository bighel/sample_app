require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('Home')) }
    # it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About')) }

    # it "should have the content 'About Us'" do
    #   visit '/static_pages/about'
    #   expect(page).to have_content('About Us')
    # end

    # it "should have the title 'About Us'" do
    #   visit '/static_pages/about'
    #   expect(page).to have_title("#{base_title} | About Us")
    # end
  end

  describe "Contact Us" do
    before { visit contact_path }

    it { should have_content('Contact Us') }
    it { should have_title(full_title('Contact Us')) }
  end

end

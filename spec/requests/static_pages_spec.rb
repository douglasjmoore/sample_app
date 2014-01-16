require 'spec_helper'

describe "Static pages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      expect(page).to have_title(full_title('About Us'))
      click_link "Help"
      expect(page).to have_title(full_title('Help'))
      click_link "Contact"
      expect(page).to have_title(full_title('Contact'))
      click_link "Home"
      expect(page).to have_title(full_title(''))
      click_link "Sign up now!"
      expect(page).to have_title(full_title('Sign up'))
      click_link "sample app"
      expect(page).to have_title(full_title('Sign up'))
      click_link "Sign in"
      expect(page).to have_title(full_title('Sign up'))
    end

  describe "Home page" do
    before { visit root_path }  # it is like before(:each)
    let(:heading)    { 'Welcome to the Sample App' }
    let(:page_title) { '' }

      it_should_behave_like "all static pages"
      #it { should have_content('Welcome to the Sample App') }
      #it { should have_title("Ruby on Rails Tutorial Sample App") }
      #it { should have_title(full_title('')) }
      it { should_not have_title('| Home') }
      it { should_not have_title('| Help') }
      it { should_not have_title('| About Us') }
      it { should_not have_title('| Contact') }
        # For links names (temp now)
      it { should have_content('Home') }
      it { should have_content('Help') }
      it { should have_content('Sign in') }
      it { should have_content('About') }
      it { should have_content('Contact') }
      it { should have_content('News') }
      it "should have the right links on the layout" do
        click_link "About"
        expect(page).to have_title(full_title('About Us'))
        click_link "Help"
        expect(page).to have_title(full_title('Help'))
        click_link "Contact"
        expect(page).to have_title(full_title('Contact'))
        click_link "Home"
        expect(page).to have_title(full_title(''))
        click_link "Sign up now!"
        expect(page).to have_title(full_title('Sign up'))
        click_link "sample app"
        expect(page).to have_title(full_title('Sign up'))
        click_link "Sign in"
        expect(page).to have_title(full_title('Sign up'))
      end


  end

  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' } #Does NOT need the ("|")

      it_should_behave_like "all static pages"
      #it { should have_content('Help') }
      #it { should have_title(full_title('Help')) }
      #it { should have_title("Ruby on Rails Tutorial Sample App | Help") }
      it { should have_title("Ruby on Rails Tutorial Sample App") }
      it { should have_title('| Help') }
      it "should have the right links on the layout" do
        click_link "Help"
        expect(page).to have_title(full_title('Help'))
        click_link "sample app"
        expect(page).to have_title(full_title('Help'))
        click_link "Sign in"
        expect(page).to have_title(full_title('Help'))
        click_link "Home"
        expect(page).to have_title(full_title(''))
        click_link "Sign up now!"
        expect(page).to have_title(full_title('Sign up'))
        click_link "About"
        expect(page).to have_title(full_title('About Us'))
        click_link "Contact"
        expect(page).to have_title(full_title('Contact'))
      end
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About Us' }
    let(:page_title) { 'About Us' } #Does NOT need the ("|")

      it_should_behave_like "all static pages"
      #it { should have_content('About Us') }
      #it { should have_title(full_title('About Us')) }
      #it { should have_title("Ruby on Rails Tutorial Sample App | About Us") }
      it { should have_title("Ruby on Rails Tutorial Sample App") }
      it { should have_title('| About Us') }
      it "should have the right links on the layout" do
        click_link "Help"
        expect(page).to have_title(full_title('Help'))
        click_link "Home"
        expect(page).to have_title(full_title(''))
        click_link "Sign up now!"
        expect(page).to have_title(full_title('Sign up'))
        click_link "About"
        expect(page).to have_title(full_title('About Us'))
        click_link "Contact"
        expect(page).to have_title(full_title('Contact'))
        click_link "sample app"
        expect(page).to have_title(full_title('Contact'))
        click_link "Sign in"
        expect(page).to have_title(full_title('Contact'))
      end
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    { 'Contact' }
    let(:page_title) { 'Contact' } #Does NOT need the ("|")

      it_should_behave_like "all static pages"
      #it { should have_content('Contact') }
      #it { should have_title(full_title('Contact')) }
      #it { should have_selector('h1', text: 'Contact') }
      #it { should have_title("Ruby on Rails Tutorial Sample App | Contact") }
      it { should have_title("Ruby on Rails Tutorial Sample App") }
      it { should have_title('| Contact') }
      it "should have the right links on the layout" do
        click_link "Home"
        expect(page).to have_title(full_title(''))
        click_link "sample app"
        expect(page).to have_title(full_title(''))
        click_link "Sign in"
        expect(page).to have_title(full_title(''))
        click_link "Sign up now!"
        expect(page).to have_title(full_title('Sign up'))
        click_link "About"
        expect(page).to have_title(full_title('About Us'))
        click_link "Contact"
        expect(page).to have_title(full_title('Contact'))
        click_link "Help"
        expect(page).to have_title(full_title('Help'))
      end
  end
end

require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before { visit root_path }  # it is like before(:each)
      it { should have_content('Welcome to the Sample App') }
      #it { should have_title("Ruby on Rails Tutorial Sample App") }
      it { should have_title(full_title('')) }
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
  end

  describe "Help page" do
    before { visit help_path }
      it { should have_content('Help') }
      it { should have_title(full_title('Help')) }
      #it { should have_title("Ruby on Rails Tutorial Sample App | Help") }
      it { should have_title("Ruby on Rails Tutorial Sample App") }
      it { should have_title('| Help') }
  end

  describe "About page" do
    before { visit about_path }
      it { should have_content('About Us') }
      it { should have_title(full_title('About Us')) }
      #it { should have_title("Ruby on Rails Tutorial Sample App | About Us") }
      it { should have_title("Ruby on Rails Tutorial Sample App") }
      it { should have_title('| About Us') }
  end

  describe "Contact page" do
    before { visit contact_path }
      it { should have_content('Contact') }
      it { should have_title(full_title('Contact')) }
      #it { should have_title("Ruby on Rails Tutorial Sample App | Contact") }
      it { should have_title("Ruby on Rails Tutorial Sample App") }
      it { should have_title('| Contact') }
  end
end

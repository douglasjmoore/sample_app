require 'spec_helper'
describe "User pages" do

  subject { page }

  shared_examples_for "all user pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end


  describe "signup page" do
    before { visit signup_path }
    let(:heading)    { 'Sign up' }
    let(:page_title) { 'Sign up' }

    it_should_behave_like "all user pages"
    #it { should have_content('Sign up') }
    #it { should have_title(full_title('Sign up')) }
  end
end

#describe "UserPages" do
#  describe "GET /user_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get user_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end

require 'spec_helper'

describe "Static pages" do
  subject { page }
  
  shared_name = "all static pages"
  
  shared_examples_for shared_name do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end
  
  describe "Home page" do
    before { visit root_path }
    let(:heading) {"Sample App"}
    let(:page_title) {""}
    
    it_should_behave_like(shared_name)
    it {should_not have_title("| Home")}
    
  end
  
  describe "Help page" do
    before { visit help_path }
    let(:heading) {"Help"}
    let(:page_title) {"Help"}
    
    it_should_behave_like(shared_name)
  end
  
  describe "About page" do
    before {visit about_path}
    let(:heading) {"About Us"}
    let(:page_title) {"About"}
    
    it_should_behave_like shared_name
  end
  
  describe "Contact page" do
    before {visit contact_path}
    let(:heading) {"Contact"}
    let(:page_title) {"Contact"}
    
    it_should_behave_like shared_name
  end
  
end

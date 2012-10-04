require 'spec_helper'

describe "StaticPages" do
  
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }     #Method full_title needs to be defined in /spec/support/utilities.rb
  end

  
  describe "Home page" do
    before { visit root_path }
    let(:heading) {'Welcome to my personal Home Page'}
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it {should_not have_selector('title',  :text => '| Home') }
  end
  
  describe "Curriculum Page" do
    before { visit curriculum_path }
    let(:heading) {'This is my curriculum Vitae'}
    let(:page_title) {'Curriculum'}

    it_should_behave_like "all static pages"
    it {should have_selector('title', text: '| Curriculum') }
  end

  describe "Projects Page" do
    before { visit projects_path }
    let(:heading) {'Here are the projects i have been working on'}
    let(:page_title) {'Projects'}

    it_should_behave_like "all static pages"
    it {should have_selector('title', text: '| Projects') }
  end

end

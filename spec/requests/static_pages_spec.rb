require 'spec_helper'

describe "Static Pages" do
  subject {page}
  
  shared_examples_for "all static pages" do
    it {should have_selector("h1",text:heading)}
	it {should have_selector("title",text:full_title(page_title))}
  end

  describe "Home page"  do
	before(:each){visit root_path}
    let(:heading) {'Sample App'}
	let(:page_title) {''}

	it {should_behave_like "all_static_pages"}
	it {should_not have_selector 'title', text: '| Home'}
  end

  describe 'Help page' do
	  before {visit help_path}
	  let(:heading) {'Help'}
	  let(:page_title) {'Help'}
      it {should_behave_like "all_static_pages"}
  end

  describe "About page" do
    before {visit about_path}
    let(:heading) {"About Us"}
	let(:pae_title) {"About Us"}
	it {should_behave_like "all_satic_pages"}
  end

  describe "Contact page" do
	  before {visit contact_path}
	  let(:heading) {"Contact Us"}
	  let(:page_title) {"Contact Us"}
     it {should_behave_like "all_static_pages"}
  end
end

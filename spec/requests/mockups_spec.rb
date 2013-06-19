require 'spec_helper'

describe "Mockups Pages" do
  describe "visit mockups" do
    subject{page}
    visit mockup_path
    it {should have_selector("h1", text: "Evolution")}
    it {should have_selector("title", text: "Evolution")}
    it {should have_selector("hero-unit", text: "Start your journey now!")}
  end
end

require 'spec_helper'

describe "Publication pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "publication creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a publication" do
        expect { click_button "Post" }.not_to change(Publication, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') } 
      end
    end

    describe "with valid information" do

=begin
      before do
      	fill_in 'title', 		with: "Lorem ipsum title"
      	fill_in "pub_type", with: "Lorem ipsum pub_type"
      	fill_in "pub_name", with: "Lorem ipsum pub_name"
      	fill_in "year", 		with: "2012"
      	fill_in "month",	 	with: "3"
      	fill_in "pages", 		with: "41"
      	fill_in "notes", 		with: "Lorem ipsum note"
      	fill_in "summary", 	with: "Lorem ipsum summary"
      end
      it "should create a publication" do
        expect { click_button "Post" }.to change(Publication, :count).by(1)
      end
=end
    end
  end
end


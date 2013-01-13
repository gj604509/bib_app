require 'spec_helper'

describe Publication do

  let(:user) { FactoryGirl.create(:user) }
  before { @publication = user.publications.build(title: "title", pub_type: "conference",pub_name: "namePublication",year: "2012", month: "1", pages: "151", notes: "this is the note about this conference", summary: "lorem ipsum") }

  subject { @publication }

  it { should respond_to(:title) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }
  
  it { should be_valid }

  describe "when user_id is not present" do
    before { @publication.user_id = nil }
    it { should_not be_valid }
  end
 
  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Publication.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
  
  describe "when user_id is not present" do
    before { @publication.user_id = nil }
    it { should_not be_valid }
  end
end


=begin
require 'spec_helper'

describe Publication do

	let(:user) { FactoryGirl.create(:user) }
  before { @publication = user.publications.build(title: "title", pub_type: "conference",pub_name: "namePublication",year: "2012", month: "January",numberPage: "151",note: "this is the note about this conference",summary: "lorem ipsum") }

  subject { @publication }

  it { should respond_to(:title) }
  it { should respond_to(:pub_type) }
  it { should respond_to(:pub_name) }
  it { should respond_to(:year) }
  it { should respond_to(:month) }
  it { should respond_to(:numberPage) }
  it { should respond_to(:note) }
  it { should respond_to(:summary) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }
  
  it { should be_valid }

  describe "when user_id is not present" do
    before { @publication.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank title" do
    before { @publication.title = " " }
    it { should_not be_valid }
  end
  
  describe "with title is too long" do
    before { @publication.title = "a" * 257 }
    it { should_not be_valid }
  end
  
  describe "with blank publication_type" do
    before { @publication.publication_type = " " }
    it { should_not be_valid }
  end
  
  describe "with publication_type not valid" do
    before { @publication.publication_type == "conference" || @publication.publication_type == "newspaper" }
    it { should be_valid }
  end
  
  describe "with blank namePublication" do
    before { @publication.namePublication = " " }
    it { should_not be_valid }
  end
  
  describe "with blank year" do
    before { @publication.year = " " }
    it { should_not be_valid }
  end
  
  describe "with year invalid" do
    before { @publication.year = "19587" }
    it { should_not be_valid }
    before { @publication.year = "aaaa" }
    it { should_not be_valid }
  end
  
  describe "with year valid" do
    before { @publication.year = "2012" }
    it { should be_valid }
  end
  
  describe "with blank month" do
    before { @publication.month = " " }
    it { should_not be_valid }
  end
  
  describe "with blank numberPage" do
    before { @publication.numberPage = " " }
    it { should_not be_valid }
  end
  
  describe "with incorrect numberPage" do
    before { @publication.numberPage > 0 }
    it { should be_valid }
  end
  
  describe "with blank summary" do
    before { @publication.summary = " " }
    it { should_not be_valid }
  end

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Publication.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
  
end

=end

require 'spec_helper'

describe Artist do
  
  #Validations(valid_attribute)
  let(:blanks) { [nil, ''] }
  it { should have_valid(:email).when('van@gmail.com') }
  it { should_not have_valid(:email).when(*blanks) }

  let(:invalid_emails) { ['blah.com','@blah.com','@@blah.com','blah','.com'] }
  it { should_not have_valid(:email).when(*invalid_emails) }

  it "should have a unique email" do
  	artist_one = FactoryGirl.build(:artist)
  	artist_two = FactoryGirl.build(:artist)

  	expect(artist_one.save).to eq true
  	expect(artist_two.save).to eq false
  end

  #Associations(shoulda)
  it { should have_many :artworks }
  it { should belong_to :style }

  #Active Record Objects(Factory Girl instance or class methods)

end

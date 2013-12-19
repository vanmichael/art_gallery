require 'spec_helper'

describe Style do
  let(:invalid_names) { ['',nil, 4, '20', '4twenty' ] }

  it { should have_valid(:name).when('van') }
  it { should_not have_valid(:name).when(*invalid_names) }

  it "should have a unique style name" do
  	style_one = FactoryGirl.build(:style)
  	style_two = FactoryGirl.build(:style)

  	expect(style_one.save).to eq true
  	expect(style_two.save).to eq false
  end

  #associations
  	it { should have_many :artists }
end

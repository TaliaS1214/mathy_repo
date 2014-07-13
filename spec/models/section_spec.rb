require 'rails_helper'

RSpec.describe Section, :type => :model do
  it 'should have a type' do
    section_1 = Section.create!({
      kind: 'image',
      content: 'http://www.mathsteacher.com.au/year8/ch15_graphs/01_cartesian/Image15810.gif'})
    expect(section_1.kind).to eq('image')
  end

  it 'should have content' do
    section_1 = Section.create!({
      kind: 'text',
      content: 'Derivatives are a tough subject.'})
    expect(section_1.content).not_to eq(nil)
  end

  it "should have a kind only equal to 'Image' or 'Text'" do
    section_1 = Section.create({
      kind: 'picture',
      content: 'Derivatives are a tough subject.'})
    expect(section_1).not_to be_valid
  end

end

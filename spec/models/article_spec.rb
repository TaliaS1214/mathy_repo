require 'rails_helper'

RSpec.describe Article, :type => :model do
  it 'should have a title' do
    derivatives = Article.create!(
      title: 'Derivatives',
      introduction: "In this section we'll discuss the concept of a derivative.")
    expect(derivatives.title).to eq('Derivatives')
  end

  it 'should have an introduction' do
    derivatives = Article.create!({
      title: 'Derivatives',
      introduction: "In this section we'll discuss the concept of a derivative."})
    expect(derivatives.introduction).not_to eq(nil)
  end

end

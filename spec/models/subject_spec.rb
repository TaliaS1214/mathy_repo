require 'rails_helper'

RSpec.describe Subject, :type => :model do
  it 'should have a name' do
    calculus = Subject.create!(name: 'Calculus', level: 'College')
    expect(calculus.name).to eq('Calculus')
  end

  it 'should have a level' do
    calculus = Subject.create!(name: 'Calculus', level: 'College')
    expect(calculus.level).to eq('College')
  end

end

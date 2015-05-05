require 'rspec'
require_relative '../lib/rpg_character.rb'

describe 'describe_character' do

  before do
    @character = create_character(first_name: 'Thurgar', last_name: 'Baneswolfe', klass: 'Cleric', hitpoints: 109, weapon: 'Quarterstaff')
  end

  it 'returns "quite healthy" description for charactes with 100 or more hitpoints' do
    description = describe_character(character: @character)
    expect( description ).to eq "Thurgar Baneswolfe the Cleric wields a Quarterstaff\n Thurgar appears quite healthy"
    description = describe_character(character: @character.update(hitpoints: 100))
    expect( description ).to eq "Thurgar Baneswolfe the Cleric wields a Quarterstaff\n Thurgar appears quite healthy"
  end

  it 'returns "lightly wounded" description for characters with less than 100 hitpoints' do
    description = describe_character(character: @character.update(hitpoints: 84))
    expect( description ).to eq "Thurgar Baneswolfe the Cleric wields a Quarterstaff\n Thurgar appears lightly wounded"
  end

  it 'returns "moderately wounded" description for characters with less than 75 hitpoints' do
    description = describe_character(character: @character.update(hitpoints: 72))
    expect( description ).to eq "Thurgar Baneswolfe the Cleric wields a Quarterstaff\n Thurgar appears moderately wounded"
  end

  it 'returns "badly wounded" description for characters with less than 50 hitpoints' do
    description = describe_character(character: @character.update(hitpoints: 49))
    expect( description ).to eq "Thurgar Baneswolfe the Cleric wields a Quarterstaff\n Thurgar appears badly wounded"
  end

  it 'returns "close to death" description for characters with less than 25 hitpoints' do
    description = describe_character(character: @character.update(hitpoints: 24))
    expect( description ).to eq "Thurgar Baneswolfe the Cleric wields a Quarterstaff\n Thurgar appears close to death"
  end

  it 'returns "dead" description for characters with 0 or less hitpoints' do
    description = describe_character(character: @character.update(hitpoints: 0))
    expect( description ).to eq "Thurgar Baneswolfe the Cleric is dead.\n Beside the corpse lies a Quarterstaff"
  end

end

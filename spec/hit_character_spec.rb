require 'rspec'
require_relative '../lib/rpg_character.rb'

describe 'hit_character' do

  before do
    @character = create_character(first_name: 'Thurgar', last_name: 'Baneswolfe', klass: 'Cleric', hitpoints: 109, weapon: 'Quarterstaff')
  end

  it 'takes a character and damage as arguments' do
    expect{ hit_character(damage: 10) }.to raise_error ArgumentError
    expect{ hit_character(character: @character) }.to raise_error ArgumentError
    expect{ hit_character(character: @character, damage: 10) }.not_to raise_error
  end

  it 'returns a new hash with the updated hitpoints' do
    character = hit_character(character: @character, damage: 32)
    expect( character[:hitpoints]).to eq 77
  end

end

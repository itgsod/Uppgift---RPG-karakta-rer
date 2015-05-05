require 'rspec'
require_relative '../lib/rpg_character.rb'

describe 'create_character' do


  it 'requires a first name' do
    expect{ create_character(last_name: 'Baneswolfe',
                             klass: 'Cleric',
                             hitpoints: 109,
                             weapon: 'Quarterstaff') }.to raise_error ArgumentError
  end

  it 'requires a last name' do
    expect{ create_character(first_name: 'Thurgar',
                             klass: 'Cleric',
                             hitpoints: 109,
                             weapon: 'Quarterstaff') }.to raise_error ArgumentError
  end

  it 'requires a class' do
    expect{ create_character(first_name: 'Thurgar',
                             last_name: 'Baneswolfe',
                             hitpoints: 109,
                             weapon: 'Quarterstaff') }.to raise_error ArgumentError
  end

  it 'requires hitpoints' do
    expect{ create_character(first_name: 'Thurgar',
                             last_name: 'Baneswolfe',
                             klass: 'Cleric',
                             weapon: 'Quarterstaff') }.to raise_error ArgumentError
  end

  it 'requires a weapon' do
    expect{ create_character(first_name: 'Thurgar',
                             last_name: 'Baneswolfe',
                             klass: 'Cleric',
                             hitpoints: 109) }.to raise_error ArgumentError
  end

  it 'returns a character hash when supplied correct arguments' do
      character = create_character(first_name: 'Thurgar',
                                   last_name: 'Baneswolfe',
                                   klass: 'Cleric',
                                   hitpoints: 109,
                                   weapon: 'Quarterstaff')
      expect( character ).to eq({ first_name: 'Thurgar', last_name: 'Baneswolfe', klass: 'Cleric', hitpoints: 109, weapon: 'Quarterstaff' })
  end
end

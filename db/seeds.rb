# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pokemons = Pokemon.create([
  {number:   1, name: 'Bulbasaur',  type1: 'grass'},
  {number:   2, name: 'Ivysaur',    type1: 'grass', type2: 'poison'},
  {number:   3, name: 'Venusaur',   type1: 'grass', type2: 'poison'},

  {number:   4, name: 'Charmander', type1: 'fire'},
  {number:   5, name: 'Charmeleon', type1: 'fire'},
  {number:   6, name: 'Charizard',  type1: 'fire', type2: 'flying'},

  {number:   7, name: 'Squirtle',   type1: 'water'},
  {number:   8, name: 'Wartortle',  type1: 'water'},
  {number:   9, name: 'Blastoise',  type1: 'water'},

  {number: 152, name: 'Chikorita',  type1: 'grass'},
  {number: 153, name: 'Bayleef',    type1: 'grass'},
  {number: 154, name: 'Meganium',   type1: 'grass'},

  {number: 155, name: 'Cyndaquil',  type1: 'fire'},
  {number: 156, name: 'Quilava',    type1: 'fire'},
  {number: 157, name: 'Typhlosion', type1: 'fire'},

  {number: 158, name: 'Totodile',   type1: 'water'},
  {number: 159, name: 'Croconaw',   type1: 'water'},
  {number: 160, name: 'Feraligatr', type1: 'water'},

  {number: 662, name: 'Fletchinder', type1: 'fire', type2: 'flying'}
  ])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Position.create([
  { :name => 'RW' },
  { :name => 'LW' },
  { :name => 'C' },
  { :name => 'RD' },
  { :name => 'LD' },
  { :name => 'G' }
])

Player.create([
  { :name => 'Darth Vader', :position => 'G', :number => 2 },
  { :name => 'Obi Wan Kenobe', :position => 'RW', :number => 1 },
  { :name => 'Luke Skywalker', :position => 'C', :number => 4 },
  { :name => 'Chewbacca', :position => 'RD', :number => 4 },
])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredient_list = [
  ['apple', 'fruit'],
  ['banana', 'fruit'],
  ['kiwi', 'fruit'],
  ['guava', 'fruit'],
  ['straberry', 'fruit'],
  ['raspberry', 'fruit'],
  ['blueberry', 'fruit'],
  ['watermelon', 'fruit'],
  ['lettuce', 'vegetable'],
  ['cucumber', 'vegetable'],
  ['broccoli', 'vegetable'],
  ['carrot', 'vegetable'],
  ['green bean', 'vegetable'],
  ['pepper', 'vegetable'],
  ['hot pepper', 'vegetable'],
  ['cauliflower', 'vegetable'],
  ['asparagus', 'vegetable'],
  ['potato', 'vegetable'],
  ['onion', 'vegetable'],
  ['garlic', 'vegetable'],
  ['mushroom', 'vegetable'],
  ['corn', 'vegetable'],
  ['milk', 'dairy'],
  ['butter', 'dairy'],
  ['cheese', 'dairy'],
  ['yogurt', 'dairy'],
  ['ice cream', 'dairy'],
  ['beef', 'protein'],
  ['chicken', 'protein'],
  ['egg', 'protein'],
  ['beans', 'protein'],
  ['pork', 'protein'],
  ['tofu', 'protein'],
  ['bread', 'grain'],
  ['cereal', 'grain'],
  ['oatmeal', 'grain'],
  ['rice', 'grain'],
  ['pasta', 'grain']
]

ingredient_list.each do |name, food_group|
  Ingredient.create( name: name, food_group: food_group )
end

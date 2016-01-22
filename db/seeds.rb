# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredient_list = [
  ['apple', 'fruit', "https://www.wpclipart.com/food/fruit/apple/apples_4/apple_honeycrisp.jpg"],
  ['banana', 'fruit', "http://www.healthcentral.com/sites/www.healthcentral.com/files/banana%20fruit%20300x300%20istock_0.jpg"],
  ['kiwi', 'fruit', "http://cdns2.freepik.com/bild-fritt/vitaminer-friska-kiwi-ater-mat_121-74363.jpg"],
  ['guava', 'fruit', "https://s-media-cache-ak0.pinimg.com/736x/24/1f/40/241f40fffb41d98a480b7707b1be2f42.jpg"],
  ['strawberry', 'fruit', "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQXMLSsMqG4kDcUPiMpwW3-xXUKw8AEn_-Qzux0LONox0OuGPjM"],
  ['raspberry', 'fruit', "http://images2.fanpop.com/images/photos/4100000/Raspberry-food-4178406-1280-1024.jpg"],
  ['blueberry', 'fruit', "http://pets.thenest.com/DM-Resize/photos.demandstudios.com/getty/article/251/228/87773901.jpg?w=600&h=600&keep_ratio=1"],
  ['watermelon', 'fruit', "http://www.weightlosssolutionstips.com/wp-content/uploads/2013/03/watermelon.jpg"],
  ['lettuce', 'vegetable', "http://www.gadgetmadness.com/archives/iceberg-safe_2491_st.jpg"],
  ['cucumber', 'vegetable', "http://handmadeathomestead.files.wordpress.com/2009/07/sliced-cuke-crop_3230.jpg"],
  ['broccoli', 'vegetable', "http://blog.beabausa.com/wp-content/uploads/2014/05/BabyFood.Broccoli.Getty_.jpg"],
  ['carrot', 'vegetable', "http://lemerg.com/data/wallpapers/9/649599.jpg"],
  ['green bean', 'vegetable', "http://www.startbabyonsolids.com/wp-content/uploads/2012/09/baby-food-green-beans.jpg"],
  ['pepper', 'vegetable', "http://www.ads-server.info/pictures/green-bell-pepper01-lg.jpg"],
  ['hot pepper', 'vegetable', "http://www.visionproduceco.com/images/products/Jalapeno%203.jpg"],
  ['cauliflower', 'vegetable', "http://aniphyo.com/blog/wp-content/uploads/2010/05/Cauliflower.jpg"],
  ['asparagus', 'vegetable', "http://img2.timeinc.net/health/img/web/2013/01/slides/spring-food-asparagus-400x400.jpg"],
  ['potato', 'vegetable', "http://kaloriku.com/blog/wp-content/uploads/2013/11/kentang.jpg"],
  ['onion', 'vegetable', "http://cdn.blogs.sheknows.com/vegan.sheknows.com/2012/04/Onions-300x225.jpg"],
  ['garlic', 'vegetable', "http://uncooking101.com/wp-content/uploads/2011/02/garlic.jpg"],
  ['mushroom', 'vegetable', "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRjAV9D5g7JHgEyVVFlGKxvTkFhXH9MwhJrKuHKvbvPaXlWHTOo"],
  ['corn', 'vegetable', "http://blog.auntyacid.com/wp-content/uploads/2015/11/corn1.jpg"],
  ['milk', 'dairy', "http://www.realrawmilkfacts.com/a/img/milk-bottle.jpg"],
  ['butter', 'dairy', "http://bed56888308e93972c04-0dfc23b7b97881dee012a129d9518bae.r34.cf1.rackcdn.com/sites/default/files/butter_0.jpg"],
  ['cheese', 'dairy', "http://www.cheesemilkandpickle.com/uploads/7/0/1/5/7015407/4284711.gif"],
  ['yogurt', 'dairy', "http://www.womenshealthmag.com/sites/womenshealthmag.com/files/images/chobani-yogurt_0.jpg"],
  ['ice cream', 'dairy', "https://d1hekt5vpuuw9b.cloudfront.net/assets/article/d46d535c174b6b34876ef96e4d3edfc1_chocolate-ice-cream-580x326_featuredImage.jpg"],
  ['beef', 'protein', "http://i247.photobucket.com/albums/gg158/MDA2008/Steak-2.jpg"],
  ['chicken', 'protein', "http://www.southdacola.com/blog/wp-content/uploads/2014/06/chicken_sombrero.gif"],
  ['egg', 'protein', "http://img08.deviantart.net/5d14/i/2004/11/2/5/perfect_egg.jpg"],
  ['beans', 'protein', "http://bcconnections.org/wp-content/uploads/2014/03/beans.jpg"],
  ['pork', 'protein', "http://globe-views.com/dcim/dreams/pork/pork-06.jpg"],
  ['tofu', 'protein', "http://f.tqn.com/y/vegetarian/1/W/1/P/-/-/182730038.jpg"],
  ['bread', 'grain', "http://www.alternet.org/files/story_images/bread.png"],
  ['cereal', 'grain', "http://photos2.demandstudios.com/DM-Resize/photos.demandstudios.com/60/175/fotolia_1538188_XS.jpg?w=1200&h=630&crop_min=1&keep_ratio=1"],
  ['oatmeal', 'grain', "http://food-finders.org/wp-content/uploads/2014/08/oatmeal_cookies_oatmeal.jpg"],
  ['rice', 'grain', "http://iaanews.com/Content/Uploads/00b31662-e469-4008-8e1a-f5fa923c2c1f.jpg"],
  ['pasta', 'grain', "https://upload.wikimedia.org/wikipedia/commons/a/a8/Fresh_ramen_noodle_001.jpg"]
]

ingredient_list.each do |name, food_group, image|
  Ingredient.create( name: name, food_group: food_group, image: image)
end

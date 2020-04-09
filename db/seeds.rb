# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
User.destroy_all
Item.destroy_all

restaurant1 = Restaurant.create(name: "Chipotle", location: '7332 Baltimore Ave, College Park, MD 20740', price_point: 2, description: 'One of the bussiest Chipotle restaurants in the world.', img_url: 'https://pulsefeedz.files.wordpress.com/2014/11/image14.jpg')
restaurant2 = Restaurant.create(name: "Officina", location: '1120 Maine Ave SW, Washington, DC 20024', price_point: 4, description: 'Multilevel venue featuring a bright, modern Italian trattoria, a specialty market & a rooftop bar.', img_url: 'https://d2rpxk5ykr73gq.cloudfront.net/media/filer_public/55/69/5569eefc-2d95-46a8-b098-c3156b886bb5/officina.jpg')
restaurant3 = Restaurant.create(name: "Filomena", location: '1063 Wisconsin Ave NW, Washington, DC 20007', price_point: 4, description: 'Pasta made in-house plus hearty Italian classics in an upscale restaurant with over-the-top decor.', img_url: 'https://pbs.twimg.com/profile_images/378800000687970470/79a16af6ce1ab29d80e4a398f3d7cdf5_400x400.jpeg')

carl = User.create(name: 'Carl', age: 27, img_url: 'https://image.shutterstock.com/image-vector/vector-illustration-funny-italian-chef-260nw-1302455881.jpg')
ryan = User.create(name: 'Ryan', age: 22, img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/2017.06.17.17.13.01-Rob_Flockhart_%2834530515634%29_%28Ryan_Wilson_cropped%29.jpg/220px-2017.06.17.17.13.01-Rob_Flockhart_%2834530515634%29_%28Ryan_Wilson_cropped%29.jpg')

itme1 = Item.create(name: 'Lasagna Alla Bolognese', restaurant_id: restaurant3.id, description: 'Layers of the Pasta Mamma’s fresh pasta sheets with Ricotta & Mozzarella Cheeses and our thick Bolognese Meat Sauce (Beef, Chef made Italian Pork Sausage, Veal & Veggies) oven baked and topped with so much more meat laden Bolognese Sauce that it can hardly stand up!', price: 36.0, img_url: 'https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550-500x375.jpg')
item2 = Item.create(name: 'Osso Bucco Alla Costello', restaurant_id: restaurant3.id, description: 'Slow Braised 16oz Veal shank “Osso Bucco Style” in Veal Stock, Tomato Sauce, Red Wine and diced Vegetables. Served over Saffron and Mushroom Risotto, then glazed with its own juices.', price: 48.0, img_url: 'https://caffedellamore.com/wp-content/uploads/2014/11/image2-610x390.jpeg')
itme3 = Item.create(name: 'Lasagna Alla Bolognese', restaurant_id: restaurant2.id, description: 'Layers of the Pasta Mamma’s fresh pasta sheets with Ricotta & Mozzarella Cheeses and our thick Bolognese Meat Sauce (Beef, Chef made Italian Pork Sausage, Veal & Veggies) oven baked and topped with so much more meat laden Bolognese Sauce that it can hardly stand up!', price: 36.0, img_url: 'https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550-500x375.jpg')
item4 = Item.create(name: 'Osso Bucco Alla Costello', restaurant_id: restaurant2.id, description: 'Slow Braised 16oz Veal shank “Osso Bucco Style” in Veal Stock, Tomato Sauce, Red Wine and diced Vegetables. Served over Saffron and Mushroom Risotto, then glazed with its own juices.', price: 48.0, img_url: 'https://caffedellamore.com/wp-content/uploads/2014/11/image2-610x390.jpeg')
itme5 = Item.create(name: 'Lasagna Alla Bolognese', restaurant_id: restaurant1.id, description: 'Layers of the Pasta Mamma’s fresh pasta sheets with Ricotta & Mozzarella Cheeses and our thick Bolognese Meat Sauce (Beef, Chef made Italian Pork Sausage, Veal & Veggies) oven baked and topped with so much more meat laden Bolognese Sauce that it can hardly stand up!', price: 36.0, img_url: 'https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550-500x375.jpg')
item6 = Item.create(name: 'Osso Bucco Alla Costello', restaurant_id: restaurant1.id, description: 'Slow Braised 16oz Veal shank “Osso Bucco Style” in Veal Stock, Tomato Sauce, Red Wine and diced Vegetables. Served over Saffron and Mushroom Risotto, then glazed with its own juices.', price: 48.0, img_url: 'https://caffedellamore.com/wp-content/uploads/2014/11/image2-610x390.jpeg')


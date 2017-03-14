Category.destroy_all
User.destroy_all

outdoors = Category.create(name: "Outdoors")
professional = Category.create(name: "Professional")
leisure = Category.create(name: "Leisure")
cars = Category.create(name: "Cars")
sports = Category.create(name: "Sports")
educational = Category.create(name: "Educational")
holiday = Category.create(name: "Holiday")
book_club = Category.create(name: "Book Club")


miriam = User.create(email: "miriam@codaisseurup.com", password: "abcd1234")
tom = User.create(email: "tom@codaisseurup.com", password: "abcd1234")
dick = User.create(email: "dick@codaisseurup.com", password: "abcd1234")
harry = User.create(email: "harry@codaisseurup.com", password: "abcd1234")
jim = User.create(email: "jim@codaisseurup.com", password: "abcd1234")
bob = User.create(email: "bob@codaisseurup.com", password: "abcd1234")

event1 = Event.create(name: "Fishing", description: "Fishing is awesome!", location:"The pond", price: 5, capacity: 20, includes_food: true, includes_drinks: false, starts_at: "2017-04-17 6:00:00", ends_at: "2017-04-18 16:00:00", active: true, user: bob, categories: [sports, leisure, outdoors])
event2 = Event.create(name: "Toppling the government", description: "YOLO!!!", location:"TBD", price: 5, capacity: 20, includes_food: true, includes_drinks: false, starts_at: "2017-03-25 8:00:00", ends_at: "2017-03-26 22:00:00", active: true, user: miriam, categories: [educational, professional])
event3 = Event.create(name: "Reading books", description: "Just have a lot to read", location:"The library", price: 0, capacity: 20, includes_food: false, includes_drinks: false, starts_at: "2017-04-03 12:00:00", ends_at: "2017-04-04 23:00:00", active: true, user: bob, categories: [leisure, book_club])
event4 = Event.create(name: "24 hour race", description: "Driving is great!", location:"Le Mans", price: 500, capacity: 6, includes_food: true, includes_drinks: false, starts_at: "2017-04-21 16:00:00", ends_at: "2017-04-22 16:00:00", active: true, user: bob, categories: [sports, leisure, cars])
event5 = Event.create(name: "Hiking Mount Everest", description: "A brisk stroll up the mountain", location:"Nepal", price: 5000, capacity: 10, includes_food: true, includes_drinks: true, starts_at: "2017-04-01 6:00:00", ends_at: "2017-05-17 6:00:00", active: true, user: jim, categories: [sports, leisure, outdoors])
event6 = Event.create(name: "Weekend in Germany", description: "Just for lunch", location:"Amsterdam Sloterdijk", price: 20, capacity: 2, includes_food: true, includes_drinks: false, starts_at: "2017-04-05 10:00:00", ends_at: "2017-04-06 14:00:00", active: true, user: harry, categories: [leisure, holiday])

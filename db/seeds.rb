Page.delete_all
Book.delete_all


page2 = Page.create( {image_url: "http://res.cloudinary.com/mippet/image/upload/v1484400346/birdy/afb_02.jpg", text: "Little Birdy lives in a beautiful house with all his brothers and sisters."})
page3 = Page.create( {image_url: "http://res.cloudinary.com/mippet/image/upload/v1484400346/birdy/afb_03.jpg", text: "Every day when Birdy wakes up, his AI assistant, Leo,
informs him about the different tasks to be accomplished during the day."})
page4 = Page.create( {image_url: "http://res.cloudinary.com/mippet/image/upload/v1484400347/birdy/afb_04.jpg", text: "Before he gets out of the house, he always has a look at the map of the Universe."})
page5 = Page.create( {image_url: "http://res.cloudinary.com/mippet/image/upload/v1484400347/birdy/afb_05.jpg", text: "Birdy has little memory and he always goes first to greet Dr. Octopus. She is the wise mind of the universe and she knows everything."})
page6 = Page.create( {image_url: "http://res.cloudinary.com/mippet/image/upload/v1484402114/birdy/133856_600.jpg", text: "Little Owl look at his mama, a bit suprised"})
page7 = Page.create( {image_url: "http://bit.ly/2jjAUgX", text: ".. suddenly there was a lot of noise! WHAT WAS HAPPENING? "})


book1 = Book.create( {image_url: "http://res.cloudinary.com/mippet/image/upload/v1484400346/birdy/afb_01.jpg", title: "The Universe of Birdy"})
book2 = Book.create( {image_url: "http://res.cloudinary.com/mippet/image/upload/v1484401040/birdy/images.jpg", title: "Little Owl Lost"})


book1.pages << [page2]
book1.save

book1.pages << [page3]
book1.save

book1.pages << [page4]
book1.save

book1.pages << [page5]
book1.save

book2.pages << [page6]
book2.save

book2.pages << [page7]
book2.save

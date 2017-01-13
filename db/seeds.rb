Page.delete_all
Book.delete_all

page1 = Page.create( {image_url: "photo1", text: "text1 test"})
page2 = Page.create( {image_url: "photo2", text: "text2 test"})
page3 = Page.create( {image_url: "photo3", text: "text3 test"})

book1 = Book.create( {image_url: "phototitle1", title: "title1 test"})
# book2 = Book.create( {image_url: "phototitle2", title: "title2 test"})

book1.pages << [page1]
book1.save

book1.pages << [page2]
book1.save

book1.pages << [page3]
book1.save

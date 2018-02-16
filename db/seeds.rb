# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['Argnaute', 'Bounty', 'Hotspur', 'Cruisey McCruiseFace', 'Dauntless' , 'Zeus'].each {
	|boatName|
	puts "Creating Boat: " + boatName
	Boat.create(Name: boatName, NumberOfRooms: 500)
	puts "Creating 500 rooms for : " + boatName
	500.times {
		|roomNum| 
		Room.create(Name: (boatName[0]+roomNum.to_s), Size: (((roomNum%3)+1)*2), Price: (((roomNum-500).abs)+100), boat_id: Boat.find_by(name: boatName).id)
	}
	puts "Room creation complete"
}

[['Oranjestad', 'Aruba', 'Aruba is the best Caribbean island to visit because of our excellent accommodations, including top-rated hotels, incredible resorts, and luxurious vacation rentals, but we’re also home to some of the most fun and exciting things to do. Are you looking to soak up the sun on one of the Caribbean’s most beautiful beaches, take an adventurous jeep tour of a rugged coastline, or partake in exciting water sports like scuba diving, snorkeling or kite-surfing? We’ve got all that and more right here on the One Happy Island!'],['Havana', 'Cuba', 'Havana’s heartbeat is the pounding of drums. Infectious rumba and salsa music are ever-present, along with the everyday sounds: cries of peanut hawkers – ‘Mani, mani!’ – and the rattle of handcarts over cobbles. Ladies shout to their neighbours as they hang out washing in colourful lines like bunting, dogs yip from balconies, and the tinny noise of a televised baseball game spills from a window where a man stands shaving his chin with a cut-throat razor. Havana makes the perfect hidden vacation destination for all your travel needs.'],['Matinique', 'Matinique', 'Martinique has a hybrid cuisine, mixing elements of African, French, Carib Amerindian and South Asian traditions. One of its most famous dishes is the Colombo (compare Tamil word kuzhambu for gravy or broth), a unique curry of chicken (curry chicken), meat or fish with vegetables, spiced with a distinctive masala of Tamil origins, sparked with tamarind, and often containing wine, coconut milk, cassava and rum. A strong tradition of Martiniquan desserts and cakes incorporate pineapple, rum, and a wide range of local ingredients.'],['Montserrat', 'Montserrat', 'Montserrats national dish is goat water, a thick goat meat stew served with crusty bread rolls.[4] Montserrat cuisine resembles the general British and Caribbean cuisines, as it is situated in the Caribbean zone and it is a British territory. The cuisine includes a wide range of light meats, like fish, seafood and chicken, which are mostly grilled or roasted. Being a fusion of numerous cultures, such as Spanish, French, African, Indian and Amerindian, the Caribbean cuisine is unique and complex. More sophisticated meals include the Montserrat jerk shrimp, with rum, cinnamon bananas and cranberry. In other more rural areas, people prefer to eat homemade food, like the traditional mahi mahi and local breads']].each {
 	|port|
 	Port.create(location: port[0], country: port[1], description: port[2])
 }

 ['Oranjestad', 'Havana', 'Matinique', 'Montserrat'].combination(2).to_a.each_with_index {
 	|ports, index|
 	Trip.create(DeptPort_id: Port.find_by(location: ports[0]).id, ArrPort_id: Port.find_by(location: ports[1]).id, boat_id: index, DeptDate: Date.today.next_day, ArrDate: (Date.today.next_day + 5.day), description: "The best trip you will ever go on")
 }

User.create! :fname => 'admin', lname: 'admin', :email => 'admin@admin.com', :password => 'topsecret', :password_confirmation => 'topsecret', phone: '555-555-5555', admin: 'true'

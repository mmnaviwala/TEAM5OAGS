# seed db page for application
#Gabe Ohlson & Joel Loucks
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Seed touples for Artist table

Artist.create!(id: 200,username: 'Miro', last_name: 'Miro',first_name: 'Joan', email: 'Joan.Miro@somewhere.com', country: 'Spanish',date_deceased: 1893, date_of_birth: 1983, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id = 200
end
Artist.create!(id: 300,username: 'Kandisky',last_name: 'Kandisky',first_name: 'Wassily', email: 'Wassily.Kandisky@somewhere.com', country: 'Russian',date_deceased: 1866,date_of_birth: 1944, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id = 300
end
Artist.create!(id: 400,username: 'Klee',last_name: 'Klee',first_name: 'Paul', email: 'Paul.Klee@somewhere.com', country: 'German',date_deceased: 1879,date_of_birth: 1940, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id =400
end
Artist.create!(id: 500,username: 'Matisse',last_name: 'Matisse',first_name: 'Henri', email: 'Henri.Matisse@somewhere.com', country: 'French',date_deceased: 1869,date_of_birth: 1954, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f| 
	f.id =500
end
Artist.create!(id: 600,username: 'Chagall',last_name: 'Chagall',first_name: 'Marc', email: 'Marc.Chagall@somewhere.com', country: 'French',date_deceased: 1887,date_of_birth: 1985, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id =600
end
Artist.create!(id: 700,username: 'Sargent',last_name: 'Sargent',first_name: 'John Singer', email: 'JohnSinger.Sargent@somewhere.com', country: 'United States',date_deceased: 1856,date_of_birth: 1925, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id = 700
end
Artist.create!(id: 800,username: 'Tobey',last_name: 'Tobey',first_name: 'Mark', email: 'Mark.Tobey@somewhere.com', country: 'United States',date_deceased: 1890,date_of_birth: 1976, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id =800
end
Artist.create!(id: 900,username: 'Horiuchi',last_name: 'Horiuchi',first_name: 'Paul', email: 'Paul.Horiuchi@somewhere.com', country: 'United States',date_deceased: 1906, date_of_birth: 1999, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id = 900
end
Artist.create!(id: 950,username: 'Graves',last_name: 'Graves',first_name: 'Morris', email: 'Morris@somewhere.com', country: 'United States',date_deceased: 1920,date_of_birth: 2001, password: "password", password_confirmation: "password",area_code: '713', phone_number: '123-1234', street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA') do |f|
	f.id = 950
end



# Customer Seed
Customer.create!(id: 1000,username: 'janes', last_name: 'Janes', first_name: 'Jeffrey',street: '123 W. Elm St', city: 'Renton', state: 'WA',zip: '98055',country: 'USA',area_code: '425',phone_number: '543-2345', email: 'Jeffrey.James@somewhere.com', password: "password", password_confirmation: "password") do |f|
f.id = 1000
end
Customer.create!(id: 1001,username: 'Smith', last_name: 'Smith', first_name: 'David',street: '813 Tumbleweed Lane', city: 'Durango', state:  'CO',zip: '81201',country: 'USA',area_code: '970',phone_number: '654-9876',email: 'David.Smith@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1001
end
Customer.create!(id: 1015, username: 'Twilight', last_name: 'Twilight', first_name: 'Tiffany',street: '88 1st Avenue', city: 'Langley', state: 'WA',zip: '98260',country: 'USA',area_code: '360',phone_number: '765-5566',email: 'Tiffany.Twilight@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1015
end
Customer.create!(id: 1033, username: 'Smethers', last_name: 'Smethers', first_name: 'Fred',street: '100899 88th Ave', city: 'Bainbridge Island',state: 'WA',zip: '98110',country: 'USA',area_code: '206',phone_number: '876-9911',email: 'Fred.Smathers@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id= 1033
end
Customer.create!(id: 1034, username: 'Frederickson', last_name: 'Frederickson', first_name: 'Mary Beth',street: '125 South Lafayette', city: 'Denver', state: 'CO',zip: '80201',country: 'USA',area_code: '303',phone_number: '513-8822',email: 'MaryBeth.Frederickson@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1034
end
Customer.create!(id: 1036, username: 'Waming', last_name: 'Waming', first_name:'Selma',street: '205 Burnaby', city: 'Vancouver', state: 'BC', zip: '12345',country: 'Canada',area_code: '604',phone_number: '988-0512',email: 'Selma.Waming@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1036
end
Customer.create!(id: 1037,username: 'Wu', last_name: 'Wu',first_name: 'Susan',street: '105 Locust Ave', city: 'Atlanta', state: 'GA',zip: '30322',country: 'USA',area_code: '404',phone_number: '653-3465',email: 'Suan.Wu@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1037
end
Customer.create!(id: 1040,username: 'Gray', last_name: 'Gray', first_name: 'Donald',street: '55 Bodega Ave', city: 'Bodega Bay', state: 'CA', zip: '94923',country: 'USA',area_code: '707',phone_number: '568-4839',email: 'Donald.Gray@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1040
end
Customer.create!(id: 1041, username: 'Johnson', last_name: 'Johnson', first_name: 'Lynda',street: '117 C Street', city: 'Washington', state: 'DC', zip:'20003',country: 'USA',area_code: '202',phone_number: '438-5498', email: 'Johnson.Lynda@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1041
end
Customer.create!(id: 1051,username: 'Wilkens',last_name: 'Wilkens', first_name: 'Chris',street: '87 Highland. Drive', city: 'Olympia', state: 'WA', zip: '98508',country: 'USA',area_code: '360',phone_number: '765-7766',email: 'Chris.Wilkens@somewhere.com', password: "password", password_confirmation: "password") do |f|
	f.id = 1051
end





# Works Seed
Work.create!(id: 500,title: 'Memories IV', medium: 'Casein rice paper collage',description: '31 x 24.8 in.',copy: 'Unique', date_acquired: '11/04/2007', acquisition_price: 30000.00,asking_price: 45000.00,date_sold: '12/14/2007', artist_id: 900) do |f|
f.id = 500
end
Work.create!(id: 511,title: 'Surf and Bird',medium: 'High Quality Limited Print',description:'Northwest School Expressionist style',copy: '142/500',artist_id: 950,date_acquired: '11/07/2007',acquisition_price: 250.00,asking_price: 500.00,date_sold:'12/19/2007',) do |f|
	f.id = 511
end
Work.create!(id: 521,title: 'The Tilted Field',medium: 'High Quality Limited Print',description:'Early Surrealist style',copy: '788/1000',artist_id: 200,date_acquired: '11/17/2007',acquisition_price: 125.00,asking_price: 250.00,date_sold:'01/18/2008',) do |f|
	f.id = 521
end
Work.create!(id: 522,title: 'La Lacon de Ski',medium: 'High Quality Limited Print',description:'Surrealist style',copy: '363/500',artist_id: 200,date_acquired: '11/17/2007',acquisition_price: 250.00,asking_price: 500.00,date_sold:'12/12/2008') do |f|
	f.id = 522
end
Work.create!(id: 523,title: 'On White II',medium: 'High Quality Limited Print',description:'Bauhaus style of Kandisnky',copy: '435/500',artist_id: 300,date_acquired: '11/17/2007',acquisition_price: 250.00,asking_price: 250.00,date_sold:'01/18/2008') do |f|
	f.id = 523
end
Work.create!(id: 524,title: 'Woman with a Hat',medium: 'High Quality Limited Print',description:'A very colorful impressionist piece',copy: '596/750',artist_id: 500,date_acquired: '11/17/2007',acquisition_price: 200.00,asking_price: 500.00,date_sold:'12/12/2008') do |f|
	f.id = 524
end
Work.create!(id: 537,title: 'The Woven World',medium: 'Color lithograph',description:'Signed',copy: '17/750',artist_id: 800,date_acquired: '03/03/2008',acquisition_price: 1500.00,asking_price: 3000.00,date_sold:'06/07/2008') do |f|
	f.id = 537
end
Work.create!(id: 548,title: 'Night Bird',medium: 'Watercolor on Paper',description:'50 x 72.5 cm -- Signed',copy: 'Unique',artist_id: 950,date_acquired: '09/21/2008',acquisition_price: 15000.00,asking_price: 30000.00, date_sold:'11/28/2008') do |f|
	f.id = 548
end
Work.create!(id: 551,title: 'Der Blaue Relter',medium: 'High Quality Limited Print',description:'"The Blue Rider" -- Early pointillism influence',copy: '236/1000',artist_id: 300,date_acquired: '11/21/2008',acquisition_price: 125.00,asking_price: 250.00,date_sold: '12/18/2008') do |f|
	f.id = 551
end
Work.create!(id: 552,title: 'Angelus Novus',medium: 'High Quality Limited Print',description:'Bauhaus style of Klee',copy: '659/750',artist_id: 400, date_acquired: Time.now, acquisition_price: 1000, asking_price: 2000) do |f|
	f.id = 552
end
Work.create!(id: 553,title: 'The Dance',medium: 'High Quality Limited Print',description:'An Impressionist masterpiece',copy: '734/1000',artist_id: 500,date_acquired: '11/21/2008',acquisition_price: 125.00,asking_price: 500.00,date_sold: '12/22/2008') do |f|
	f.id = 553
end
Work.create!(id: 554,title: 'I and the Village',medium: 'High Quality Limited Print',description:'Shows Belarusian folk-life themes and symbology',copy: '834/1000',artist_id: 600,date_acquired: '11/21/2008',acquisition_price: 125.00,asking_price: 250.00, date_sold:'03/18/2009') do |f|
	f.id = 554
end
Work.create!(id: 555,title: 'Claude Monet Painting',medium: 'High Quality Limited Print',description:'Shows French Impressionist influence of Monet',copy: '684/1000',artist_id: 650,date_acquired: '11/21/2008',acquisition_price: 125.00,asking_price: 250.00, date_sold:'03/16/2009') do |f|
	f.id = 555
end
Work.create!(id: 561,title: 'Sunflower',medium: 'Watercolor and ink',description:'33.3 x 16.1 cm -- Signed',copy: 'Unique',artist_id: 950,date_acquired: '05/07/2009',acquisition_price: 10000.00,asking_price: 20000.00, date_sold:'06/28/2009') do |f|
	f.id = 561
end
Work.create!(id: 562,title: 'The Fiddler',medium: 'High Quality Limited Print',description:'Shows Belarusian folk-life themese and symbology',copy: '251/1000',artist_id: 600,date_acquired: '05/18/2009',acquisition_price: 125.00,asking_price: 250.00,date_sold: '08/15/2009') do |f|
	f.id = 562
end
Work.create!(id: 563,title: 'Spanish Dancer',medium: 'High Quality Limited Print',description:'American realist style -- From work in Spain',copy: '583/750',artist_id: 650,date_acquired: '05/18/2009',acquisition_price: 200.00,asking_price: 400.00,date_sold: '08/15/2009') do |f|
	f.id = 563
end
Work.create!(id: 564,title: 'Frarmers Market #2',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist style',copy: '267/500',artist_id: 800,date_acquired: '05/18/2009',acquisition_price: 250.00,asking_price: 500.00,date_sold: '09/28/2009') do |f|
	f.id = 564
end
Work.create!(id: 565,title: 'Frarmers Market #2',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist style',copy: '268/500',artist_id: 800,date_acquired:  '05/18/2009',acquisition_price: 250.00,asking_price: 500.00) do |f|
	f.id = 565
end
Work.create!(id: 566,title: 'Into Time',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist style',copy: '323/500',artist_id: 900,date_acquired: '05/18/2009',acquisition_price: 250.00,asking_price: 500.00,date_sold: '09/27/2009') do |f|
	f.id = 566
end
Work.create!(id: 570,title: 'Untitled Number 1',medium: 'Monotype with tempera',description:'4.3 x 6.1 in --Signed',copy: 'Unique',artist_id: 800,date_acquired: '06/28/2009',acquisition_price: 7500.00,asking_price: 15000.00,date_sold: '09/29/2009') do |f|
	f.id = 570
end
Work.create!(id: 571,title: 'Yellow covers blue',medium: 'Oil and collage',description:'71 x 78 in --Signed',copy: 'Unique',artist_id: 900,date_acquired: '08/23/2009',acquisition_price: 35000.00,asking_price: 60000.00, date_sold:'09/29/2009') do |f|
	f.id = 571
end
Work.create!(id: 578,title: 'Mid Century Hibernation',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist style',copy: '362/500',artist_id: 950,date_acquired: '10/11/2009',acquisition_price: 250.00,asking_price: 500.00) do |f|
	f.id = 578
end
Work.create!(id: 580,title: 'Forms in Progress I',medium: 'Color aquatint',description:'19.3 x 24.4 in --Signed',copy: 'Unique',artist_id: 700,date_acquired: '02/28/2010',acquisition_price: 2000.00,asking_price: 3500.00,date_sold: '04/26/2010') do |f|
	f.id = 580
end
Work.create!(id: 581,title: 'Forms in Progress II',medium: 'Color aquatint',description:'19.3 x 24.4 in --Signed',copy: 'Unique',artist_id: 700,date_acquired: '02/28/2010',acquisition_price: 2000.00,asking_price: 3500.00,date_sold: '04/26/2010') do |f|
	f.id = 581
end
Work.create!(id: 585,title: 'The Fiddler',medium: 'High Quality Limited Print',description:'Shows Belarusian folk-life themes and symbology',copy: '252/1000',artist_id: 600,date_acquired: '06/08/2010',acquisition_price: 125.00,asking_price: 250.00, date_sold:'09/27/2010') do |f|
	f.id = 585 
end
Work.create!(id: 586,title: 'Spanish Dancer',medium: 'High Quality Limited Print',description:'American Realist style -- From work in Spain',copy: '588/750',artist_id: 650,date_acquired: '06/08/2010',acquisition_price: 200.00,asking_price: 400.00, date_sold:'09/27/2010') do |f|
	f.id = 586
end
Work.create!(id: 587,title: 'Broadway Boogie',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist Style',copy: '433/500',artist_id: 800,date_acquired: '02/18/1982', acquisition_price: 1000, asking_price: 2000) do |f|
	f.id = 587
end
Work.create!(id: 588,title: 'Universal Field',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist Style',copy: '114/500',artist_id: 800, date_acquired: '06/08/2010',acquisition_price: 250.00,asking_price: 500.00) do |f|
	f.id = 588
end
Work.create!(id: 589,title: 'Color Floating in Time',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist Style',copy: '487/500',artist_id: 900,date_acquired:  '06/08/2010',acquisition_price: 250.00,asking_price: 500.00)  do |f|
	f.id = 589
end
Work.create!(id: 590,title: 'Blue Interior',medium: 'Tempera on card',description:'43.9 x 29.75 in -- Signed',copy: 'Unique',artist_id: 800,date_acquired: '08/29/2010',acquisition_price: 2500.00,asking_price: 5000.00,date_sold:'09/27/2010') do |f|
	f.id = 590
end
Work.create!(id: 593,title: 'Surf and Bird',medium: 'Gouache',description:'26.5 x 29.75 in --Signed',copy: 'Unique',artist_id: 950,date_acquired: '10/25/2010',acquisition_price: 25000.00,asking_price: 50000.00) do |f|
	f.id = 593
end
Work.create!(id: 594,title: 'Surf and Bird',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist Style',copy: '366/500',artist_id: 800,date_acquired: '10/27/2010',acquisition_price: 250.00,asking_price: 500.00) do |f|
	f.id = 594
end
Work.create!(id: 595,title: 'Surf and Bird',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist Style',copy: '366/500',artist_id: 800,date_acquired: '10/27/2010',acquisition_price: 250.00,asking_price: 500.00) do |f|
	f.id = 595
end
Work.create!(id: 596,title: 'Surf and Bird',medium: 'High Quality Limited Print',description:'Northwest School Abstract Expressionist Style',copy: '366/500',artist_id: 800,date_acquired: '10/27/2010',acquisition_price: 250.00,asking_price: 500.00) do |f|
	f.id = 596
end

Work.create!(id: 106, title: 'Memories IV', medium: 'Casein rice paper collage',description: '31 x 24.8 in.',copy: 'Unique',artist_id: 900,date_acquired: '09/29/2009',acquisition_price: 40000.00,asking_price: 75000.00) do |f|
	f.id = 106
end
Work.create!(id: 226,title: 'Spanish Dancer',medium: 'High Quality Limited Print',description:'American Realist style -- From work in Spain',copy: '588/750',artist_id: 650,date_acquired:  '06/08/2010',acquisition_price: 200.00,asking_price: 400.00) do |f|
	f.id = 226
end



## Merging works/transaction
Transaction.create!(id: 100,sales_price: 42500.00,customer_id: 1000,work_id: 500) do |f|
	f.id = 100
end
Transaction.create!(id: 175,sales_price: 72500.00,customer_id: 1036,work_id: 500) do |f|
	f.id = 175
end
Transaction.create!(id: 101,sales_price: 500.00,customer_id: 1015,work_id: 511) do |f|
	f.id = 101
end
Transaction.create!(id: 102,sales_price: 200.00,customer_id: 1001,work_id: 521) do |f|
	f.id = 102
end
Transaction.create!(id: 103,sales_price: 400.00,customer_id: 1034,work_id: 522) do |f|
	f.id = 103
end
Transaction.create!(id: 104,sales_price: 200.00,customer_id: 1001,work_id: 523)  do |f|
	f.id = 104
end
Transaction.create!(id: 105,sales_price: 400.00,customer_id: 1034,work_id: 524)  do |f|
	f.id = 105
end
Transaction.create!(id: 115,sales_price: 2750.00,customer_id: 1033,work_id: 537) do |f|
	f.id = 115
end
Transaction.create!(id: 121,sales_price: 27500.00,customer_id: 1015,work_id: 548)  do |f|
	f.id = 121
end
Transaction.create!(id: 125,sales_price: 200.00,customer_id: 1001,work_id: 551) do |f|
	f.id = 125
end
Transaction.create!(id: 127,sales_price: 400.00,customer_id: 1034,work_id: 553)  do |f|
	f.id = 127
end
Transaction.create!(id: 128,sales_price: 225.00,customer_id: 1036,work_id: 554) do |f|
	f.id = 128
end
Transaction.create!(id: 129,sales_price: 225.00,customer_id: 1036,work_id: 555)  do |f|
	f.id = 129
end
Transaction.create!(id: 151,sales_price: 17500.00,customer_id: 1036,work_id: 561)  do |f|
	f.id = 151
end
Transaction.create!(id: 152,sales_price: 225.00,customer_id: 1001,work_id: 562) do |f|
	f.id = 152
end
Transaction.create!(id: 153,sales_price: 350.00,customer_id: 1001,work_id: 563)  do |f|
	f.id = 153
end
Transaction.create!(id: 154,sales_price: 400.00,customer_id: 1040,work_id: 564) do |f|
	f.id = 154
end
Transaction.create!(id: 156,sales_price: 400.00,customer_id: 1040,work_id: 566) do |f|
	f.id = 156
end
Transaction.create!(id: 161,sales_price: 23750.00,customer_id: 1033,work_id: 570)  do |f|
	f.id = 161
end
Transaction.create!(id: 171,sales_price: 55000.00,customer_id: 1000,work_id: 571) do |f|
	f.id = 171
end
Transaction.create!(id: 201,sales_price: 3250.00,customer_id: 1040,work_id: 580) do |f|
	f.id = 201
end
Transaction.create!(id: 202,sales_price: 3250.00,customer_id: 1040, work_id: 581)  do |f|
	f.id = 202
end
Transaction.create!(id: 225,sales_price: 225.00,customer_id: 1051,work_id: 585)  do |f|
	f.id = 225
end
Transaction.create!(id: 227,sales_price: 225.00,customer_id: 1051,work_id: 586)  do |f|
	f.id = 227
end
Transaction.create!(id: 241,sales_price: 4750.00,customer_id: 1015,work_id: 590) do |f|
f.id = 241
end

Owner.create!(username: 'team5', last_name: "Loucks", first_name: "Joel", street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA', area_code: '713', phone_number: '832-2810',password: 'password', password_confirmation: 'password', email: 'team5@awesome.com')

Employee.create!(username: 'employee', last_name: "Lee", first_name: "Ryan", street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA', area_code: '713', phone_number: '832-2810', password: 'password', password_confirmation: 'password', email: 'employee@awesome.com')

Dba.create!(username: 'dba', last_name: "Ohlson", first_name: "Gabe", street: "123 st.", city: "Houston", state: 'TX', zip: '77004', country: 'USA', area_code: '713', phone_number: '832-2810', password: 'password', password_confirmation: 'password', email: 'dba@awesome.com')

Testimonial.create!(content: "Did not like The Dance Artwork", customer_id: 1000)

Testimonial.create!(content: "I am very pleased with Kandinsky", customer_id: 1015)

Testimonial.create!(content: "I like the reports provided", customer_id: 1051)






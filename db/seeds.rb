# Product.create!([
#   {name: "Soccer Ball", price: "28.0", image: "http://cdn3.volusion.com/tjyvc.unaha/v/vspfiles/photos/M36887-2T.jpg", description: "Adidas", in_stock?: true, supplier_id: 2},
#   {name: "Volleyball", price: "32.0", image: "http://www.rebelsport.co.nz/productimages/THUMB/1/26398_70168_68502.jpg", description: "Nike", in_stock?: true, supplier_id: 1},
#   {name: "Football", price: "29.99", image: "http://images.nike.com/is/image/DotCom/PDP_HERO_M/Nike-Spiral-Tech-30-Size-8-Football-FT0232_201_A.jpg", description: "Nike", in_stock?: true, supplier_id: 1},
#   {name: "Glove", price: "47.0", image: "https://www.cheapbats.com/uploads/commerce/images/large/rawlings-hoh-dual-core-baseball-glove-pro88dcc.jpg.jpg", description: "Rawlings", in_stock?: true, supplier_id: 3},
#   {name: "Basketball", price: "27.0", image: "https://thoroughlyreviewed.com/wp-content/uploads/2015/05/Spalding-NBA-Zi.jpg", description: "Spalding", in_stock?: true, supplier_id: 4},
#   {name: "Racket", price: "43.0", image: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Tennis_Racket_and_Balls.jpg/440px-Tennis_Racket_and_Balls.jpg", description: "Spalding", in_stock?: false, supplier_id: 4},
#   {name: "Bat", price: "39.0", image: "http://assets.academy.com/mgen/92/10332492.jpg?is=640,640", description: "McGreggor", in_stock?: true, supplier_id: 5},
#   {name: "Bat", price: "41.0", image: "http://wac.aee8.edgecastcdn.net/80AEE8/p/p/productphotos/9853-1_large.jpg", description: "Easton", in_stock?: false, supplier_id: 5}
# ])
# Supplier.create!([
#   {name: "Nike", email: "doit@.nike.com", phone: "345-355-3344"},
#   {name: "Adidas", email: "justdont@adidas.com", phone: "334-534-6364"},
#   {name: "Rawlings", email: "info@rawlings.com", phone: "434-534-6364"},
#   {name: "Spalding", email: "justdidit@spalding.com", phone: "342-425-6254"},
#   {name: "Easton", email: "homerun@easton.com", phone: "347-425-6254"}
# ])
Image.create!([
  {url: "http://www.rebelsport.co.nz/productimages/THUMB/1/26398_70168_68502.jpg", product_id: 11},
  {url: "http://images.nike.com/is/image/DotCom/PDP_HERO_M/Nike-Spiral-Tech-30-Size-8-Football-FT0232_201_A.jpg", product_id: 8},
  {url: "https://www.cheapbats.com/uploads/commerce/images/large/rawlings-hoh-dual-core-baseball-glove-pro88dcc.jpg.jpg", product_id: 2},
  {url: "https://thoroughlyreviewed.com/wp-content/uploads/2015/05/Spalding-NBA-Zi.jpg", product_id: 4},
  {url: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Tennis_Racket_and_Balls.jpg/440px-Tennis_Racket_and_Balls.jpg", product_id: 1},
  {url: "http://assets.academy.com/mgen/92/10332492.jpg?is=640,640", product_id: 3},
  {url: "http://wac.aee8.edgecastcdn.net/80AEE8/p/p/productphotos/9853-1_large.jpg", product_id: 14}
])
 
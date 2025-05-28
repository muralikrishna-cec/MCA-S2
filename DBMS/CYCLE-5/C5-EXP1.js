// Use the Inventory database
use Inventory

// Create the Products collection
db.createCollection("Products")

// Insert one product into Products
db.Products.insertOne({_id:1,name:"xPhone",price:799,releaseDate:ISODate("2020-05-14"),spec:{ram:4,screen:6.5,cpu:2.66},color:["white","black"],storage:[64,128,256]})

// Insert multiple products into Products
db.Products.insertMany([
    {
      _id: 2,
      name: "xTablet",
      price: 899,
      releaseDate: ISODate("2011-09-01"),
      spec: { ram: 16, screen: 9.5, cpu: 3.66 },
      color: ["white", "black", "purple"],
      storage: [128, 256, 512]
    },
    {
      _id: 3,
      name: "SmartTablet",
      price: 899,
      releaseDate: ISODate("2015-01-14"),
      spec: { ram: 12, screen: 9.7, cpu: 3.66 },
      color: ["blue"],
      storage: [16, 64, 128]
    },
    {
      _id: 4,
      name: "SmartPad",
      price: 699,
      releaseDate: ISODate("2020-05-14"),
      spec: { ram: 8, screen: 9.7, cpu: 1.66 },
      color: ["white", "orange", "gold", "gray"],
      storage: [128, 256, 1024]
    },
    {
      _id: 5,
      name: "SmartPhone",
      price: 599,
      releaseDate: ISODate("2022-09-14"),
      spec: { ram: 4, screen: 9.7, cpu: 1.66 },
      color: ["white", "orange", "gold", "gray"],
      storage: [128, 256]
    }
  ])

  // Show all collections in the current database
  show tables
  show collections

  // Find all products
  db.Products.find()

  // Find the product with _id = 2
  db.Products.find({_id:2})
  
  // Find the first product in the collection
  db.Products.findOne()

  // Find product with _id = 5 and show only name and price
  db.Products.find({_id:5},{name:true,price:true}) 

  // Find products with price exactly 899
  db.Products.find({price:{$eq:899}},{name:true,price:true})

  // Find products with RAM equal to 4 and show name and RAM only
  db.Products.find({"spec.ram":{$eq:4}},{name:1,"spec.ram":1})

  // Find products that have "black" in the color array and show name and color
  db.Products.find({color:{$eq:"black"}},{name:1,color:1})

  // Find products released on "2020-05-14" and show name and release date
  db.Products.find({releaseDate:ISODate("2020-05-14")},{name:1,releaseDate:1})

  // Find products with price less than 799 and show name and price
  db.Products.find({price:{$lt:799}},{name:1,price:1})

  // Find products with screen size less than 7 and show name and screen size
  db.Products.find({"spec.screen":{$lt:7}},{name:1,"spec.screen":1})

  // Find products with any storage option less than 128 and show name and storage
  db.Products.find({storage:{$lt:128}},{name:1,storage:1})

  // Find products that have either "black" or "white" in color array
  db.Products.find({color:{$in:["black","white"]}},{name:1,color:1})

  // Find products whose price is NOT 599 or 799
  db.Products.find({price:{$nin:[599,799]}},{name:1,price:1})

  // Find products whose color does NOT include "black" or "white"
  db.Products.find({color:{$nin:["black","white"]}},{name:1,color:1})

  // Find products with price = 899 and color either "black" or "white"
  db.Products.find({price:{$eq:899},color:{$in:["black","white"]}},{name:1,color:1})
  db.Products.find({$and:[{price:{$eq:899}},{color:{$in:['black','white']}}]})

  // Find products where price is less than 699 OR greater than 799
  db.Products.find({$or:[{price:{$lt:699}},{price:{$gt:799}}]})

  // Find all products with _id, name, and full spec, sorted by RAM (ascending)
  db.Products.find({},{_id:1,name:1,spec:1}).sort({"spec.ram":1})
 
  // Find all products sorted by release date (newest first)
  db.Products.find().sort({releaseDate:-1})
  db.Products.find({releaseDate:{$exists:1}},{name:1,releaseDate:1}).sort({releaseDate:-1})

  // Find products where price exists, show _id, name, price, sorted by price then name
  db.Products.find({price:{$exists:1}},{_id:1,name:1,price:1}).sort({price:1,name:1})

  // Find product with the highest price (limit 1 after sorting descending by price)
  db.Products.find({},{_id:1,name:1,price:1}).sort({price:-1}).limit(1)


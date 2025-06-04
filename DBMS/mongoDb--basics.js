// ===== MongoDB Lab - ADBMS =====

// 🔹 Introduction to MongoDB:
// • MongoDB is a NoSQL database storing data as JSON-like documents (BSON).
// • Schema-less: documents in the same collection can have different structures.
// • Good for handling large volumes of unstructured data.
// • Collections are like tables in SQL.
// • Documents are like rows but more flexible.
// • Uses JavaScript-like syntax for commands.

// 🔹 What is `db`?
// - `db` is a built-in variable in MongoDB shell pointing to the current database.

// ===== Data Types in MongoDB =====
// String, Number, Boolean, Array, Object, Date, Null, ObjectId

// Example document:
/*
{
  name: "John",            // String
  age: 25,                 // Number
  isActive: true,          // Boolean
  hobbies: ["reading", "cricket"],  // Array
  address: { city: "Delhi", zip: 110001 },  // Object
  createdAt: new Date(),   // Date
  middleName: null         // Null
}
*/

// ===== Difference between {} and [] =====
// {} => Object / Document; e.g. { name: "John" }
// [] => Array / List of values; e.g. ["reading", "cricket"]

// ===== Basic Commands =====

// 🔹 Show all databases
//show dbs

// 🔹 Create or switch to a database
//use myDatabase

// 🔹 Show current database
db

// 🔹 Create a collection
db.createCollection("users")

// 🔹 Drop a collection
db.users.drop()

// 🔹 Drop current database
db.dropDatabase()

// 🔹 Drop current collection
db.products.drop()

// ===== Insert Operations =====

// 🔹 Insert one document
db.users.insertOne({
  name: "John",
  age: 25,
  isActive: true,
  hobbies: ["reading", "cricket"],
  address: { city: "Delhi", zip: 110001 },
  createdAt: new Date(),
  middleName: null
})

// 🔹 Insert multiple documents
db.users.insertMany([
  { name: "Amit", age: 30, isActive: false },
  { name: "Sara", age: 22, isActive: true }
])

// ===== Find Operations =====

// 🔹 Find all documents
db.users.find()

// 🔹 Find all documents with readable output
db.users.find().pretty()

// 🔹 Find documents matching condition
db.users.find({ age: 25 })

// 🔹 Find only one document (first match)
db.users.findOne({ isActive: true })

// 🔹 Find with projection (select specific fields)
// Show only name field
db.users.find({}, { name: 1 })

// Show name and city, hide _id
db.users.find({}, { name: 1, city: 1, _id: 0 })

// Find users where name is Arun, show name and city only
db.users.find({ name: "Arun" }, { name: 1, city: 1 })

// ===== Sorting =====

// Sort by age ascending (low to high)
db.users.find().sort({ age: 1 })

// Sort by age descending (high to low)
db.users.find().sort({ age: -1 })

// Sort by name ascending (A to Z)
db.users.find().sort({ name: 1 })

// Sort by multiple fields: age desc, then name asc
db.users.find().sort({ age: -1, name: 1 })

// Sort with limit: youngest person
db.users.find().sort({ age: 1 }).limit(1)

// Sort with limit: oldest person
db.users.find().sort({ age: -1 }).limit(1)

// ===== Update Operations =====

// Update one document - set city to Bangalore for Arun
db.users.updateOne(
  { name: "Arun" },
  { $set: { city: "Bangalore" } }
)

// Update many documents - set country = India for all
db.users.updateMany(
  {},
  { $set: { country: "India" } }
)

// Add or update email for Neha
db.users.updateOne(
  { name: "Neha" },
  { $set: { email: "neha@example.com" } }
)

// Remove 'phone' field from Arun
db.users.updateOne(
  { name: "Arun" },
  { $unset: { phone: "" } }
)

// Remove 'phone' field from all users
db.users.updateMany(
  {},
  { $unset: { phone: "" } }
)

// Increment age by 1 for Arun
db.users.updateOne(
  { name: "Arun" },
  { $inc: { age: 1 } }
)

// ===== Query Operators =====

// Find documents where 'skills' field exists
db.users.find({ skills: { $exists: true } })

// Find users where city is Delhi or Chennai
db.users.find({ city: { $in: ["Delhi", "Chennai"] } })

// Find users where city is NOT Mumbai
db.users.find({ city: { $nin: ["Mumbai"] } })

// Find users living in Delhi AND age greater than 24
db.users.find({
  $and: [
    { city: "Delhi" },
    { age: { $gt: 24 } }
  ]
})

// Find users where name is Asha OR age less than 25
db.users.find({
  $or: [
    { name: "Asha" },
    { age: { $lt: 25 } }
  ]
})

// Comparison operators examples
db.users.find({ age: { $gt: 25 } })  // age > 25
db.users.find({ age: { $lte: 30 } }) // age <= 30

// ===== Array Operators =====

// Add value "Spring" to skills array of Arun
db.users.updateOne(
  { name: "Arun" },
  { $push: { skills: "Spring" } }
)

// Remove value "Java" from skills array of Arun
db.users.updateOne(
  { name: "Arun" },
  { $pull: { skills: "Java" } }
)

// ===== Additional Notes =====
// - ObjectId: Unique identifier automatically created for _id field.
// - Dates in MongoDB use JavaScript Date object.
// - Fields can be added or removed dynamically due to schema-less design.
// - Use pretty() to format output for readability.

// ===== Sample Data for Practice =====
db.users.insertMany([
  { name: "Arun", age: 25, city: "Delhi", skills: ["Java", "MongoDB"] },
  { name: "Neha", age: 30, city: "Mumbai", skills: ["Python", "NodeJS"] },
  { name: "Ravi", age: 22, city: "Chennai", skills: ["HTML", "CSS"] },
  { name: "Asha", age: 28, city: "Delhi" }
])

// ===== MongoDB Lab - ADBMS =====

// ... (previous content remains the same)

// ===== Comparison Operators =====
// Used to compare field values in queries

// $eq : Equal to
db.users.find({ age: { $eq: 25 } })  // Find users with age = 25

// $ne : Not equal to
db.users.find({ age: { $ne: 25 } })  // Find users with age ≠ 25

// $gt : Greater than
db.users.find({ age: { $gt: 25 } })  // Find users with age > 25

// $gte : Greater than or equal to
db.users.find({ age: { $gte: 25 } }) // Find users with age ≥ 25

// $lt : Less than
db.users.find({ age: { $lt: 25 } })  // Find users with age < 25

// $lte : Less than or equal to
db.users.find({ age: { $lte: 25 } }) // Find users with age ≤ 25

// $in : In a list of values
db.users.find({ city: { $in: ["Delhi", "Mumbai"] } }) // city is either Delhi or Mumbai

// $nin : Not in a list of values
db.users.find({ city: { $nin: ["Delhi", "Mumbai"] } }) // city is NOT Delhi or Mumbai

// ===== Logical Operators =====
// Combine multiple query conditions

// $and : All conditions must be true
db.users.find({
  $and: [
    { city: "Delhi" },
    { age: { $gt: 25 } }
  ]
})

// $or : At least one condition must be true
db.users.find({
  $or: [
    { city: "Delhi" },
    { age: { $lt: 22 } }
  ]
})

// $not : Negate a condition
db.users.find({
  age: { $not: { $gt: 25 } }  // age NOT greater than 25 (age ≤ 25)
})

// $nor : None of the conditions should be true
db.users.find({
  $nor: [
    { city: "Delhi" },
    { age: { $lt: 22 } }
  ]
})

// ===== Example: Find users NOT living in Delhi and NOT younger than 22
db.users.find({
  $nor: [
    { city: "Delhi" },
    { age: { $lt: 22 } }
  ]
})

// ===== Notes =====
// Logical operators like $and, $or, $not, and $nor help build complex queries by combining conditions.
// Comparison operators check conditions on field values.

// 🔸 $inc – Increase or decrease numeric value
db.users.updateOne(
    { name: "Arun" },
    { $inc: { age: 1 } } // Increases age by 1
  )
  
  // 🔸 $exists – Check if field is present
  db.users.find({ skills: { $exists: true } })
  
  // 🔸 $in – Match any value in array
  db.users.find({ city: { $in: ["Delhi", "Chennai"] } })
  
  // 🔸 $nin – Not in array
  db.users.find({ city: { $nin: ["Mumbai"] } })
  
  // 🔸 $and – Combine multiple conditions
  db.users.find({
    $and: [
      { city: "Delhi" },
      { age: { $gt: 24 } }
    ]
  })
  
  // 🔸 $or – Either condition true
  db.users.find({
    $or: [
      { name: "Asha" },
      { age: { $lt: 25 } }
    ]
  })
  
  // 🔸 $gt, $lt, $gte, $lte – Comparison
  db.users.find({ age: { $gt: 25 } })   // age > 25
  db.users.find({ age: { $lte: 30 } })  // age <= 30
  
  // 🔸 $push – Add value to array
  db.users.updateOne(
    { name: "Arun" },
    { $push: { skills: "Spring" } }
  )
  
  // 🔸 $pull – Remove value from array
  db.users.updateOne(
    { name: "Arun" },
    { $pull: { skills: "Java" } }
  )
  

 //What is db?  -> It is a built-in variable in MongoDB shell. Always points to the current database selected using use.
 //ISODate is a function in MongoDB used to create a date object in the ISO 8601 format. This format is a standard for representing dates and times. MongoDB uses this to store dates in a proper date format, not just as strings.



  // 🔹 Find only one document (first match)
db.users.findOne({ isActive: true })

// 🔹 Drop the entire collection
db.users.drop()

// 🔹 Drop the current database
db.dropDatabase()
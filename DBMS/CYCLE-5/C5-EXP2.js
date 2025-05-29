// Insert Multiple Sales Documents
db.sales.insertMany([
    { "_id" : 1, "item" : "Americanos", "price" : 5, "size": "Short","quantity" : 22, "date" : ISODate("2022-01-15T08:00:00Z") },
    { "_id" : 2, "item" : "Cappuccino", "price" : 6, "size": "Short","quantity": 12, "date" :ISODate("2022-01-16T09:00:00Z") },
    { "_id" : 3, "item" : "Lattes", "price" : 15, "size": "Grande","quantity" :25, "date" :ISODate("2022-01-16T09:05:00Z") },
    { "_id" : 4, "item" : "Mochas", "price" : 25,"size": "Tall", "quantity" :11, "date" :ISODate("2022-02-17T08:00:00Z") },
    { "_id" : 5, "item" : "Americanos", "price" : 10, "size":"Grande","quantity" : 12, "date" :ISODate("2022-02-18T21:06:00Z") },
    { "_id" : 6, "item" : "Cappuccino", "price" : 7, "size":"Tall","quantity" : 20, "date" :ISODate("2022-02-20T10:07:00Z") },
    { "_id" : 7, "item" : "Lattes", "price" : 25,"size": "Tall", "quantity" :30, "date" : ISODate("2022-02-21T10:08:00Z") },
    { "_id" : 8, "item" : "Americanos", "price" : 10, "size":"Grande","quantity" : 21, "date" :ISODate("2022-02-22T14:09:00Z") },
    { "_id" : 9, "item" : "Cappuccino", "price" : 10, "size":"Grande","quantity" : 17, "date" :ISODate("2022-02-23T14:09:00Z") },
    { "_id" : 10, "item" : "Americanos", "price" : 8, "size": "Tall","quantity": 15, "date" : ISODate("2022-02-25T14:09:00Z")}
]);

// Aggregation Queries

// 1. Average total amount (price * quantity) per item
db.sales.aggregate([{$group:{_id:"$item",AverageAmount:{$avg:{$multiply:["$price","$quantity"]}}}}])

// 2. Same as above but filter items with averageAmount > 150
db.sales.aggregate([{$group:{_id:"$item",AverageAmount:{$avg:{$multiply:["$quantity","$price"]}}}},{$match:{AverageAmount:{$gt:150}}}])

// 3. Count number of sales documents per item
db.sales.aggregate([{$group:{_id:"$item",Count:{$sum:1}}}])

// 4. Same as above, but only items with Count > 2
db.sales.aggregate([{$group:{_id:"$item",Count:{$sum:1}}},{$match:{Count:{$gt:2}}}])

// 5. Total quantity of all items sold (grouping on null)
db.sales.aggregate([{$group:{_id:null,TOTALSALES:{$sum:"$quantity"}}}])
db.sales.aggregate([{$group:{_id:null,TOTALSALES:{$sum:"$quantity"}}},{$project:{_id:0}}])

// 6. Total quantity sold per item
db.sales.aggregate([{$group:{_id:"$item",Quantity:{$sum:"$quantity"}}}])

// 7. Total quantity sold per item, sorted descending
db.sales.aggregate([{$group:{_id:"$item",Quantity:{$sum:"$quantity"}}},{$sort:{Quantity:-1}}])

// Item with highest total quantity sold (limit 1)
db.sales.aggregate([{$group:{_id:"$item",Quantity:{$sum:"$quantity"}}},{$sort:{Quantity:-1}},{$limit:1}])

// 8. Maximum quantity sold in any single document (overall)
db.sales.aggregate([{$group:{_id:null,MAXQTY:{$max:"$quantity"}}},{$project:{_id:0}}])

// 9. Maximum quantity sold per item
db.sales.aggregate([{$group:{_id:"$item",QTY:{$max:"$quantity"}}}])

// 10. Maximum amount (price * quantity) per item
db.sales.aggregate([{$group:{_id:"$item",Amount:{$max:{$multiply:["$price","$quantity"]}}}}])



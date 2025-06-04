// MongoDB Aggregation Reference Example

db.sales.aggregate([

    // 1. Match Stage - filter documents where price > 10
    {
      $match: { price: { $gt: 10 } }
    },
  
    // 2. Group Stage - group by item and calculate total sales, avg price, and total quantity
    {
      $group: {
        _id: "$item",
        totalSales: { $sum: { $multiply: ["$price", "$quantity"] } },
        avgPrice: { $avg: "$price" },
        totalQty: { $sum: "$quantity" }
      }
    },
  
    // 3. AddFields Stage - add a field for potential discount
    {
      $addFields: {
        discountedSales: { $multiply: ["$totalSales", 0.9] }
      }
    },
  
    // 4. Project Stage - reshape the document output
    {
      $project: {
        _id: 0,
        item: "$_id",
        totalSales: 1,
        avgPrice: 1,
        totalQty: 1,
        discountedSales: 1
      }
    },
  
    // 5. Sort Stage - sort by totalSales in descending order
    {
      $sort: { totalSales: -1 }
    },
  
    // 6. Limit Stage - limit to top 3 items
    {
      $limit: 3
    },
  
    // 7. Skip Stage - skip the first result (example purpose)
    {
      $skip: 1
    }
  
  ]);
  
  // If your data has arrays like ["tags"], you can also use:
  db.products.aggregate([
    { $unwind: "$tags" }
  ]);
  
  // You can use just $project for calculating on the fly:
  db.sales.aggregate([
    {
      $project: {
        item: 1,
        totalAmount: { $multiply: ["$price", "$quantity"] },
        _id: 0
      }
    }
  ]);
  
  // Or group and calculate average transaction amount:
  db.sales.aggregate([
    {
      $group: {
        _id: "$item",
        averageAmount: { $avg: { $multiply: ["$price", "$quantity"] } }
      }
    }
  ]);
  
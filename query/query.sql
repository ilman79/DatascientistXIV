#query1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT "Marital Status", AVG("Age") AS average_age
FROM t_customer tc 
GROUP BY "Marital Status";

#query 2 : Berapa rata-rata umur customer jika dilihat dari gender nya ?
SELECT "Gender", AVG("Age") AS average_age
FROM t_customer tc 
GROUP BY "Gender";

#query 3 : Tentukan nama store dengan total quantity terbanyak!
SELECT t_store."StoreName", SUM(t_transaction."Qty") AS total_quantity
FROM t_store
INNER JOIN t_transaction ON t_store."StoreID" = t_transaction."StoreID"
GROUP BY t_store."StoreName"  -- Mengganti "StoreID" dengan "StoreName" jika Anda ingin mengelompokkan berdasarkan nama toko
ORDER BY total_quantity DESC;


#query 4 : Tentukan nama produk terlaris dengan total amount terbanyak!
SELECT t_product."Product Name" , SUM(t_transaction."TotalAmount") AS total_amount
FROM t_product
INNER JOIN t_transaction ON t_product."ProductID"  = t_transaction."ProductID" 
GROUP BY t_product."Product Name"  -- Mengganti "StoreID" dengan "StoreName" jika Anda ingin mengelompokkan berdasarkan nama toko
ORDER BY total_amount DESC;

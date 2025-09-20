EXPLAIN হল SQL কমান্ড যা দেখাই কতগলা row search করে query optimizer একটা particular SQL statement execute করার জন্য। এটা database engine কে সাহায্য করে বুঝতে কোনটা best execution plan হবে।

  Example: 

        EXPLAIN SELECT * FROM employees WHERE department = 'Sales';
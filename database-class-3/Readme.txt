১. যদি আমরা DataBase ar sob record check korte cai taohole 
    Example: 
       SELECT * FROM Artists
       SELECT * FROM Songs
       SELECT * FROM Genres

    avabe dekte pari...


২. suppose আমরা Songs DataBase থেকে song এর id, name পেতে চাই
    Example:
      SELECT song_id, song_name FROM Songs


৩. suppose আমরা Songs DataBase এর page Limit এবং প্রতি page এ কতগুলা song_id এবং song_name দেখাব
    Example: 
        SELECT song_id, song_name FROM Songs LIMIT 5 OFFSET 5

        এখানে প্রতি page এ ৫ টা করে song_id এবং song_name দেখাব ।


4. suppose আমরা Artists DataBase এর artist_name টি letter অনুযায়ী serially দেখাবে 
   Example:
        SELECT artist_id, artist_name FROM Artists ORDER BY artist_name ASC

        note: "ASC" by default take


5. suppose আমরা Artists DataBase এর artist_name টি letter অনুযায়ী উল্টা দিকে serially দেখাবে 
   Example:
        SELECT artist_id, artist_name FROM Artists ORDER BY artist_name DESC

        note: "DESC" by default take


৬. suppose আমরা Songs DataBase এর ১৯৯১ সালে কি কি song release হইছিল সেটা দেখাবে
    Example:
       SELECT * FROM Songs WHERE release_year = 1992;

       note: "WHERE" কোণ search a দিতে হয়


৭. suppose আমরা Songs DataBase এর ১৯৯৩ সাল এবং তার আগে কতগুলা সালে কি কি song release হইসে
    এবং সালগুলা serially দেখাবে

   Example: 
       SELECT * FROM Songs WHERE release_year <= 1993 ORDER By release_year;


৮. suppose আমরা Songs DataBase এর ১৯৯৩ সাল এবং তার পরে কতগুলা সালে কি কি song release হইসে
    এবং সালগুলা serially দেখাবে

   Example: 
       SELECT * FROM Songs WHERE release_year >= 1993 ORDER By release_year;


৯. suppose আমরা Songs DataBase এর ২ year ar  modde joddi release song find kora lage

   Example: 
       1. SELECT * FROM Songs WHERE release_year BETWEEN 1992 AND 1996;
       2. SELECT * FROM Songs WHERE release_year >= 1992 AND release_year <= 1996;


১০. suppose আমরা Songs DataBase এর ১৯৯২ এবং ১৯৯৩ সালে কি কি song release hoise seta dekbo

   Example: 
      SELECT * FROM Songs WHERE release_year = 1992 OR release_year = 1993;


১১. suppose আমরা Songs DataBase এর ১৯৯২ এবং ১৯৯৬ সালে কি কি song release hoise seta 
    dekbo and tader modde genre_id "2" kar kar modde cilo seta dekbo 

     Example: 
        SELECT * FROM Songs WHERE (release_year = 1992 OR release_year = 1996) AND genre_id = 2


১২. suppose আমরা Songs DataBase এ "K" dia start hobe amon song name find করব 

    Example: 
      SELECT * FROM Songs WHERE song_name LIKE "K%"

      note: sodo "K" noi amra jekono letter dia search korte pari... just মনে রাখতে হবে LIKE & % use korte hobe.. এবং letter ta % ar আগে লিখতে হবে।


১৩. suppose আমরা Songs DataBase এ "D" dia end hobe amon song name find করব 
   
    Example: 
      SELECT * FROM Songs WHERE song_name LIKE "%D"

      note: just মনে রাখতে হবে letter ta % ar পরে লিখতে হবে।


১৪. suppose আমরা Songs DataBase এ "S" dia start এবং "E" dia end hobe amon song name search korbo 

    Example: 
      SELECT * FROM Songs WHERE song_name LIKE "S%E"


১৫. suppose আমরা Songs DataBase এ  কতগুলা সাল আছে আমি জানি না এখন সেগুলা কিভাবে বের করব 
   
   Example: 
     SELECT DISTINCT release_year FROM Songs ORDER BY release_year

     note: এখানে "DISTINCT" নামে operator  use kora hoise.


১৬. suppose আমরা Songs DataBase এ ১৯৯১ সালে এমন কিছু song release হইছে যাদের artist_id হল (১, ২)

    Example: 
      SELECT * FROM Songs WHERE release_year = 1991 And artist_id IN (1,2)

      note: IN ব্যবহার করা হইছে


১৭. suppose আমরা Songs DataBase এ ১৯৯১ সালে এমন কিছু song release হইছে কিন্ত যাদের artist_id হল (১, ২) নই...

    Example: 
      SELECT * FROM Songs WHERE release_year = 1991 And artist_id NOT IN (1,2)

      note: NOT IN ব্যবহার করা হইছে



*********** aggregator function ***********
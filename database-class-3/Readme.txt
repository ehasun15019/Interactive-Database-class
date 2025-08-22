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
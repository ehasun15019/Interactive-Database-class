১. suppose আমি Artist table a নতুন name দিতে cassi....

    Ex:
     1. INSERT INTO Artists (artist_name) VALUES ("Ehasun UL Islam");
     2. INSERT INTO Artists VALUES (NULL, "Era")

     note: এখানে artist_name দেলায় হবে। artist_id auto increment hoe jabe. 2 vabei kora jai. But alway follow the ex.1

২. suppose ami Products নামে একটা টেবিল তৈরি করলাম সেখানে যদি

    INSERT INTO Products VALUES (NULL, 22, "Monitor")

এই SQL Code Run kori tahole
field gola olta palta hoe bosbe.. কিন্ত আমারা যদি field এর name dai tahole abar tik hoe jabe

    Ex:
    INSERT INTO Products (price, name)  VALUES (23, "TV")

৩. যদি multiple data entry korte cai tahole

    Ex:
     INSERT INTO Products (price, name) VALUES(26, "Laptop"), (30, "MicroPhone"), (35, "SSD")

৪. suppose ami ai SQL code like Songs Table akta song Import korsi seta akon update korte cassi

    Insert SQL code:
    INSERT INTO Songs (song_name, artist_id, genre_id, release_year) VALUES ("This is a song", 1, 1, 2025);

    এখন আমি jodi song_name টা change করতে চাই তাহলে আমার কি করতে হবেঃ

    Ex:
     first-of-all আমারা jai song_name ta change korte cassi সেটা আমাদের ধরতে হবে

       SELECT song_id, song_name FROM Songs Where song_name = "This is a song"

    Secondly amra jokon update korbo tokon ai code dite hobe

       UPDATE Songs SET song_name = 'Stay Way to haven' Where song_id = 31

5. একই শিরনাম ২ জন Artists ar song a hote pare akon এখন যেকোনো আকজনের শিরনাম change korte cassi

   INSERT INTO Songs (song_name, artist_id, genre_id, release_year) VALUES ("dummy song", 1, 1, 2026);
   INSERT INTO Songs (song_name, artist_id, genre_id, release_year) VALUES ("dummy song", 2, 3, 2026);

   Ex:
   এখন akane যদি song_name change korte cai যার artist_id হল 2 তাহলে আমাদের এটা দিতে হবে

   UPDATE Songs SET song_name = 'Future Days' Where song_name = "This is a dummy song" AND artist_id = 2;


৬. suppose amar Product table a "LaptopX" নামে কয়েকটা product ase akon segolar name change kore "MackBook" Korte cassi

    INSERT INTO Products (price, name) VALUES (23, "LaptopX"), (24, "LaptopY"), (25, "LaptopX");

    Ex: 
     UPDATE Products SET name = "MacBook" Where name LIKE "LaptopX"


৭. suppose amar Product table এর প্রতিটি price ar 10 tk increase hobe তাহলে:
  
    Ex: 
     UPDATE Products SET price = price + 20


৮. suppose amar Product table এর যেই price গুলা ২০ tk এর soman বা  tar opore tahole sai price এর সাথে ১০০ tk যোগ hobe: 

    Ex: 
     UPDATE Products SET price = price + 100 WHERE Price >= 20


৯. suppose amader data te jeno kono vol data cole na ase sai jonno amara ja use korbo 

    Ex: 
    START TRANSACTION 
        #quary1
        #quary2
        #quary3
    COMMIT;

    note: start TRANSACTION দিয়া শুরু করব COMMIT দিয়া শেষ করব ।


১০. 
    এখানে Songs টেবিলের artist_id কে Artists টেবিলের artist_id এর সাথে মেলাচ্ছে।
    এখানে Songs টেবিলের genre_id কে Genres টেবিলের genre_id এর সাথে মেলাচ্ছে।

    Example: 
        SELECT Songs.song_name, Artists.artist_name, Genres.genre_name
        FROM Songs
        JOIN Artists ON Artists.artist_id = Songs.artist_id
        JOIN Genres ON Genres.genre_id = Songs.genre_id;



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

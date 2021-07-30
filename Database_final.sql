create schema if not exists CookbookApplication;
use CookbookApplication;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CookbookApplication
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `recipe_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `quantity` double DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  KEY `fk_Recipes_idx` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'light brown sugar',0.5,'cup',''),(1,'soy sauce',1,'cup',''),(1,'pinapple juice',0.5,'cup','optinal'),(1,'water',0.5,'cup',''),(1,'vegetable oil',0.25,'cup',''),(1,'large garlic clove',3,'g','chopped'),(1,'boneless round steak',4,'pound','cut into 1/4-inch slices'),(4,'cornstarch',1,'tablespoon',''),(4,'soy sauce',4,'tablespoon',''),(4,'chicken breast',0.5,'kg',''),(4,'Shaoxin rice wine',3,'tablespoon',''),(4,'sugar',2,'tablespoon',''),(4,'chicken stock',3,'tablespoon',''),(4,'Chiangang vinegar',4,'t/easpoon',''),(4,'sesame oil',4,'tablespoon',''),(4,'dark soy sauce',2,'teaspoon',''),(4,'peanut oil',3,'tablespoon',''),(4,'dried red chilis',12,'pieces','stemmed, halved crosswise, and seeded'),(4,'scallions',5,'pieces','white part onyl, thickly sliced crosswise'),(4,'garlic',1,'cloves','peeled, thinly sliced'),(4,'ginger',0.5,'pieces','peeled, minced'),(4,'peanuts',0.5,'cups','peeled, thinly sliced'),(5,'pork belly',0.5,'kg','cut into 2cm pieces'),(5,'cooking oil',2,'tablespoon',''),(5,'brown sugar',1,'tablespoon',''),(5,'Shaoxin rice wine',3,'tablespoon',''),(5,'light soy sauce',1,'tablespoon',''),(5,'dark soy sauce',0.5,'tablespoon',''),(5,'chicken stock or water',2,'cups',''),(6,'potato noodles',1,'bunch',''),(6,'peanuts',2,'tablespoon','roasted'),(6,'spring onion',1,'tablespoon','chopped'),(6,'coriander',1,'tablespoon','chopped'),(6,'pickled Sichuan vegetable',2,'tablespoon','chopped'),(6,'garlic',3,'cloves','mashed'),(6,'peanut oil',0.5,'tablespoon',''),(6,'Sichuan peppercorn powder',0.5,'teaspoon',''),(6,'Chinese five spicy powder',0.5,'teaspoon',''),(6,'chili powder',1,'teaspoon',''),(6,'vinegar',1,'tablespoon',''),(6,'light soy sauce',1,'tablespoon',''),(3,'dry potato flakes',2,'cups',''),(3,'all-purpose flour',1,'cup',''),(3,'garlic powder',1,'tablespoon',''),(3,'seasoning salt',1,'tablespoon',''),(3,'ground black pepper',1,'tablespoon',''),(3,'cayenne pepper',2,'teaspoon','or to taste'),(3,'fillets cod',6,'ounce',''),(3,'butter flavored',2,'cup','for frying'),(2,'butter',2,'tablespoon',''),(2,'cups',2,'chopped onion',''),(2,'fresh mushrooms',4,'piece','sliced'),(2,'celery',1,'stalk','chopped'),(2,'chicken stock',4,'piece',''),(2,'diced potatoes',4,'cups',''),(2,'cod',2,'pound','diced into 1/2 inch cubes'),(2,'clam juice',1,'cup',''),(2,'all-purpose flour',1.5,'cup',''),(2,'Old Bay Seasoning TM',0.125,'teaspoon','or to taste'),(2,'evaporated milk',2,'cans',''),(7,'flank steak',1,'pound','thinly sliced'),(7,'soy sauce',5,'tablespoon',''),(7,'white sugar',2.5,'tablespoon',''),(7,'chopped green onion',0.25,'cup',''),(7,'minced garlic',2,'tablespoon',''),(7,'seasame seeds',2,'tablespoon',''),(7,'seasame oil',2,'tablespoon',''),(7,'ground black pepper',0.5,'teaspoon',''),(8,'small pearl tapioca',0.5,'cup',''),(8,'mango-peeled',1,'piece','seeded and diced'),(8,'ice cubes',14,'g',''),(8,'coconut milk',0.5,'cup',''),(9,'orange peoe',2,'bag',''),(9,'boiling water',1,'cup',''),(9,'ice cubes',5,'piece',''),(9,'sweetened condensed milk',4,'teapoon',''),(9,'honey',3,'teaspoon',''),(10,'beef',2,'pounds',''),(10,'vegetable oil',3,'tablespoons',''),(10,'beef bouilon',4,'cube',''),(10,'water',4,'cup',''),(10,'rosemary',1,'teaspoon','dried rosemary'),(10,'parsley',1,'teaspoon',''),(10,'black pepper',0.5,'teaspoon','');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preparation_step`
--

DROP TABLE IF EXISTS `preparation_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preparation_step` (
  `recipe_id` int(10) unsigned NOT NULL,
  `step` int(10) unsigned NOT NULL,
  `description` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`,`step`),
  KEY `fk_Recipes_idx` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preparation_step`
--

LOCK TABLES `preparation_step` WRITE;
/*!40000 ALTER TABLE `preparation_step` DISABLE KEYS */;
INSERT INTO `preparation_step` VALUES (1,1,'Whisk brown sugar, soy sauce, pineapple juice, water, vegetable oil, and garlic together in a large bowl; drop beef slices into the mixture and stir to coat. Cover bowl with plastic wrap.'),(1,2,'Marinate beef in refrigerator for 24 hours.'),(1,3,'Remove beef from the marinade, shaking to remove any excess liquid. Discard marinade.'),(1,4,'Thread beef slices in a zig-zag onto the skewers.'),(1,5,'Preheat grill for medium heat and lightly oil the grate.'),(1,6,'Cook skewers on preheated grill until the beef is cooked through, about 3 minutes per side.'),(2,1,'In a large stockpot, melt 2 tablespoons butter over medium heat. Saute onions, mushrooms and celery in butter until tender.'),(2,2,'Add chicken stock and potatoes; simmer for 10 minutes.'),(2,3,'Add fish, and simmer another 10 minutes.'),(2,4,'Mix together clam juice and flour until smooth; stir into soup and simmer for 1 minute more. Season to taste with Old Bay seasoning, salt, and pepper. Remove from heat, and stir in evaporated milk. Top each bowl with crumbled bacon, if desired.'),(3,1,'In medium bowl, combine the potato flakes, flour, garlic powder, seasoning salt, black pepper, and cayenne pepper.'),(3,2,'Soak fish filets in bowl of cold water.'),(3,3,'In a deep skillet or deep fryer, melt and heat the shortening to 350 degrees F (175 degrees C).'),(3,4,'Dredge fish filets in dry mixture and fry in the hot oil for 5 minutes or until fish flakes apart easily. Remove from oil and place on paper towels to absorb excess oil.'),(4,1,'Mix together cornstarch and 1 tbsp. of the soy sauce in a medium bowl.'),(4,2,'Add chicken, toss well, and set aside to marinate for 30 minutes.'),(4,3,'Meanwhile, mix together the remaining 3 tbsp. soy sauce, rice wine, sugar, stock, vinegar, sesame oil, and dark soy sauce.'),(4,4,'Set aside.'),(4,5,'Heat peanut oil in a wok or large nonstick skillet over high heat until just beginning to smoke.'),(4,6,'Add chilis, half the scallions, garlic, ginger, and chicken and stir-fry until chicken is golden, 3-5 minutes.'),(4,7,'Add soy sauce mixture and stir-fry until sauce thickens, about 2 minutes.'),(4,8,'Stir in peanuts.'),(4,9,'Garnish with remaining scallions.'),(5,1,'Bring a pot of water to a boil and blanch the pork for a couple minutes.'),(5,2,'Take the pork out of the pot and set aside.'),(5,3,'Over low heat, add oil and sugar to your wok.'),(5,4,'Melt the sugar slightly and add the pork.'),(5,5,'Raise the heat to medium and cook until the pork is lightly browned.'),(5,6,'Turn the heat back down to low and add cooking wine, light soy sauce, dark soy sauce, and chicken stock.'),(5,7,'Cover and simmer for about 60 minutes to 90 minutes until pork is fork tender.'),(5,8,'Every 5-10 minutes, stir to prevent burning and add water if it gets too dry.'),(5,9,'Once the pork is fork tender, if there is still a lot of visible liquid, uncover the wok, turn up the heat, and stir continuously the sauce has reduced to a glistening coating.'),(6,1,'Soak the sweet potato noodles with hot water around 30 minutes.'),(6,2,'Transfer out and set aside.'),(6,3,'In the serving bowls and mix all the seasonings.'),(6,4,'Heat up peanuts oil in pan to stir-fry the mashed garlic until aroma.'),(6,5,'Mix the garlic oil with the seasonings.'),(6,6,'Add some spring onions and corianders in serving bowls.'),(6,7,'Pour in boiling water or stock to tune the seasonings.'),(6,8,'Add vinegar and light soy sauce.'),(6,9,'Mix well and set aside.'),(6,10,'Cook soaked sweet potato noodles around 3~5 minutes until you can break the noodles with your fingers.'),(6,11,'Transfer the noodles out to the serving bowls and then add top with pickled vegetables, roasted peanuts and chopped spring onions and coriander. '),(7,1,'Place the beef in a shallow dish. Combine soy sauce, sugar, green onion, garlic, sesame seeds, sesame oil, and ground black pepper in a small bowl. Pour over beef. Cover and refrigerate for at least 1 hour or overnight.'),(7,2,'Preheat an outdoor grill for high heat, and lightly oil the grate.'),(7,3,'Quickly grill beef on hot grill until slightly charred and cooked through, 1 to 2 minutes per side.'),(8,1,'Fill a pot with water and bring to a rolling boil over high heat. Once the water is boiling, stir in the tapioca pearls, and return to a boil. Cook the tapioca pearls uncovered, stirring occasionally, about 10 minutes. Cover and remove from heat, allowing pearls to rest for 30 minutes. Drain well in a colander set in the sink, then cover and refrigerate.'),(8,2,'Place mango and ice in a blender and blend until smooth. Divide chilled tapioca pearls in 2 tall glasses, then layer the mango mixture over and top each glass with a 1/4 cup of coconut milk.'),(9,1,'Steep the tea bags in hot water until the color turns dark red, about 3 to 5 minutes. Discard the tea bags and let the tea cool.'),(9,2,'Combine the ice cubes, sweetened condensed milk, and honey in a glass or cocktail shaker. Pour in the tea and mix well. (If the tea is still warm, the ice may melt; add more ice if desired.) A strong, flavorful milk tea is ready for you to enjoy.'),(10,1,'In a large pot or dutch oven, cook beef in oil over medium heat until brown. Dissolve bouillon in water and pour into pot. Stir in rosemary, parsley and pepper. Bring to a boil, then reduce heat, cover and simmer 1 hour.'),(10,2,'Stir potatoes, carrots, celery, and onion into the pot. Dissolve cornstarch in 2 teaspoons cold water and stir into stew. Cover and simmer 1 hour more.');
/*!40000 ALTER TABLE `preparation_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `recipe_id` int(10) unsigned NOT NULL,
  `name` varchar(80) NOT NULL,
  `servings` int(11) DEFAULT NULL,
  `preparationTime` int(10) unsigned DEFAULT NULL,
  `cookingTime` int(10) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`recipe_id`),
  UNIQUE KEY `name_UNIQUE` (`name`,`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'Sweet Teriyaki Beef Skewers',2,15,6,'Sweet','image/forDecoration/recipe image/Sweet Teriyaki Beef Skewers.png',0),(2,'Fish Chowder',8,30,30,'England','image/forDecoration/recipe image/Fish Chowder.jpg',0),(3,'Crispy Fish',4,5,10,'America','image/forDecoration/recipe image/Crispy Fish.jpg',0),(4,'Gong Bao Jiding',4,30,10,'Sichuan Dish','image/forDecoration/recipe image/GongBaoJiDing.jpg',0),(5,'Hong Shao Rou',4,5,100,'Hunan Dish','image/forDecoration/recipe image/HongShaoRou.jpg',0),(6,'Suan La Fen',2,30,5,'Sichuan Dish','image/forDecoration/recipe image/SuanLaFen.jpg',0),(7,'Beef Bulgogi',1,10,5,'Chinese','image/forDecoration/recipe image/Beef Bulgogi.jpg',0),(8,'Hong Kong Mango Drink',1,10,10,'HongKong','image/forDecoration/recipe image/Hong Kong Mango Drink.jpg',0),(9,'Hong Kong Milk Tea',1,5,15,'Sweet','image/forDecoration/recipe image/Honey Mik Tea.jpg',0),(10,'Beef Stew',10,20,120,'Chinese','image/forDecoration/recipe image/beef stew.jpg',0);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(10) unsigned NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `searchHistory1` int(10) DEFAULT NULL,
  `searchHistory2` int(10) DEFAULT NULL,
  `searchHistory3` int(10) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'manager','123456',7,6,2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
ALTER  table user modify column username varchar(80) binary character set utf8 collate utf8_bin default null;
--
-- Dumping routines for database 'CookbookApplication'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-05 22:55:12

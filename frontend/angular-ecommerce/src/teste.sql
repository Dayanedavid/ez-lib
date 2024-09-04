-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ecommerce`;

CREATE SCHEMA `ecommerce`;
USE `ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`book_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`book_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`book` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `author` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `price` DECIMAL(13,2) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO book_category(category_name) VALUES ('Romance');
INSERT INTO book_category(category_name) VALUES ('Suspense');
INSERT INTO book_category(category_name) VALUES ('Programação');
INSERT INTO book_category(category_name) VALUES ('Educação');
INSERT INTO book_category(category_name) VALUES ('Historia');

-- -----------------------------------------------------
-- Books
-- -----------------------------------------------------
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'O Morro dos Ventos Uivantes', "Emily Bronte",
 'Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
 'assets/images/books/book-luv2code-1016.png.jpg', 14.99, 5);

INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
'Become a Guru in JavaScript', "author teste",
'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1001.png', 20.99, 1);

INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Exploring Vue.js',  "author teste",
  'Learn Vue.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
  'assets/images/books/book-luv2code-1002.png', 14.99, 2);

INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Advanced Techniques in Big Data',  "author teste",
  'Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today', 
  'assets/images/books/book-luv2code-1003.png', 13.99, 2);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Crash Course in Big Data',  "author teste",
  'Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
  'assets/images/books/book-luv2code-1004.png', 18.99, 2);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'JavaScript Cookbook',  "author teste",
'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1005.png', 12.99, 3);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Beginners Guide to SQL',  "author teste",
 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
'assets/images/books/book-luv2code-1006.png', 14.99, 3);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Advanced Techniques in JavaScript',  "author teste",
'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1007.png', 16.99, 3);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Introduction to Spring Boot',  "author teste",
'Learn Spring Boot at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
'assets/images/books/book-luv2code-1008.png', 25.99, 4);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Become a Guru in React.js',  "author teste",
'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1009.png', 23.99, 4);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Beginners Guide to Data Science',  "author teste",
'Learn Data Science at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1010.png', 24.99, 1);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Advanced Techniques in Java',  "author teste",
 'Learn Java at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1011.png', 19.99, 1);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Exploring DevOps',  "author teste",
'Learn DevOps at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1012.png', 24.99, 1);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'The Expert Guide to SQL',  "author teste",
'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
'assets/images/books/book-luv2code-1013.png', 19.99, 2);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Introduction to SQL', "author teste",
 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1014.png', 22.99, 2);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'The Expert Guide to JavaScript',  "author teste",
'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1015.png', 22.99, 2);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Exploring React.js',  "author teste",
'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1016.png', 27.99, 1);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Advanced Techniques in React.js',  "author teste",
 'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1017.png', 13.99, 2);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Introduction to C#',  "author teste",
 'Learn C# at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1018.png', 26.99, 1);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Crash Course in JavaScript',  "author teste",
'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1019.png', 13.99, 3);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Introduction to Machine Learning',  "author teste",
'Learn Machine Learning at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
'assets/images/books/book-luv2code-1020.png', 19.99, 4);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Become a Guru in Java',  "author teste",
 'Learn Java at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',
 'assets/images/books/book-luv2code-1021.png', 18.99, 1);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Introduction to Python',  "author teste",
'Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
'assets/images/books/book-luv2code-1022.png', 26.99, 3);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
  'Advanced Techniques in C#',  "author teste",
'Learn C# at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
'assets/images/books/book-luv2code-1023.png', 22.99, 4);
INSERT INTO book (name, author, description, image_url, price, category_id) VALUES (
'The Expert Guide to Machine Learning',  "author teste",
'Learn Machine Learning at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 
'assets/images/books/book-luv2code-1024.png', 16.99, 1);

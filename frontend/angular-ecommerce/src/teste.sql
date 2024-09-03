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
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
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

-- -----------------------------------------------------
-- Books
-- -----------------------------------------------------
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1000', 'Crash Course in Python', 'Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1000.png', 1, 14.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1001', 'Become a Guru in JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1001.png', 1, 20.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1002', 'Exploring Vue.js', 'Learn Vue.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1002.png', 1, 14.99, 2, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1003', 'Advanced Techniques in Big Data', 'Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1003.png', 1, 13.99, 2, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1004', 'Crash Course in Big Data', 'Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1004.png', 1, 18.99, 2, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1005', 'JavaScript Cookbook', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1005.png', 1, 23.99, 3, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1006', 'Beginners Guide to SQL', 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1006.png', 1, 14.99, 3, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1007', 'Advanced Techniques in JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1007.png', 1, 16.99, 3, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1008', 'Introduction to Spring Boot', 'Learn Spring Boot at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1008.png', 1, 25.99, 4, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1009', 'Become a Guru in React.js', 'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1009.png', 1, 23.99, 4, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1010', 'Beginners Guide to Data Science', 'Learn Data Science at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1010.png', 1, 24.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1011', 'Advanced Techniques in Java', 'Learn Java at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1011.png', 1, 19.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1012', 'Exploring DevOps', 'Learn DevOps at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1012.png', 1, 24.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1013', 'The Expert Guide to SQL', 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1013.png', 1, 19.99, 2, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1014', 'Introduction to SQL', 'Learn SQL at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1014.png', 1, 22.99, 2, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1015', 'The Expert Guide to JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1015.png', 1, 22.99, 2, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1016', 'Exploring React.js', 'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1016.png', 1, 27.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1017', 'Advanced Techniques in React.js', 'Learn React.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1017.png', 1, 13.99, 2, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1018', 'Introduction to C#', 'Learn C# at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1018.png', 1, 26.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1019', 'Crash Course in JavaScript', 'Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1019.png', 1, 13.99, 3, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1020', 'Introduction to Machine Learning', 'Learn Machine Learning at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1020.png', 1, 19.99, 4, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1021', 'Become a Guru in Java', 'Learn Java at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1021.png', 1, 18.99, 1, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1022', 'Introduction to Python', 'Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1022.png', 1, 26.99, 3, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1023', 'Advanced Techniques in C#', 'Learn C# at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1023.png', 1, 22.99, 4, NOW());
INSERT INTO book (sku, name, description, image_url, active,unit_price, category_id,date_created) VALUES ('BOOK-TECH-1024', 'The Expert Guide to Machine Learning', 'Learn Machine Learning at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!', 'assets/images/books/book-luv2code-1024.png', 1, 16.99, 1, NOW());

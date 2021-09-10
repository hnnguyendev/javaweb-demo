CREATE DATABASE `dbguitarstore`;
USE `dbguitarstore`;

CREATE TABLE `guitars` (
	`guitar_id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`type` VARCHAR(255) NOT NULL,
	`material` VARCHAR(255) NOT NULL,
    `brand` VARCHAR(255) NOT NULL,
    `description` VARCHAR(1000) NOT NULL,
    `price` INT NOT NULL,
    `quantity` INT NOT NULL,
	`image` VARCHAR(1000) NOT NULL,
	CONSTRAINT `pk_guitar_id` PRIMARY KEY (`guitar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `guitars` (`name`, `type`, `material`, `brand`, `description`, `price`, `quantity`, `image`)
VALUES ('Fender CD60 EQ Fishman', 'Acoustic Guitar', 'Gỗ thông', 'Fender', 'Guitar Fender CD 60 EQ với thiết kế đẹp, mặt gỗ thông – Spruce top ,lưng hông làm bằng gỗ Mahogany cho chất âm cân bằng giữa treble và bass. Âm bass vừa ấm và tiếng treble ngọt. Đàn cũng được tích hợp thêm EQ thuận lợi cho các bạn muốn khuếch đại âm thanh cho việc biểu diễn,giao lưu.', 3000000, 1, 'https://www.mayguitar.com/wp-content/uploads/2016/10/Fender-CD60-CE.jpg'),
		('Enya X1', 'Acoustic Guitar', 'Gỗ Koa', 'Enya', 'Đàn có cấu hình toàn bộ bằng gỗ Koa , đây là một loại gỗ có vân cực kì đẹp, chắc thịt, nên cho ra âm thanh tròn trịa, vang, sáng. Ngựa lược của đàn làm bằng xương, cần đàn bằng gỗ mun đen bóng, đem đến ngoại hình cực kì “sang chảnh”. Bên cạnh đó là 1 action thấp tiêu chuẩn, giúp các bạn có thể chơi rất thoải mái.', 4500000, 2, 'https://www.mayguitar.com/wp-content/uploads/2017/08/Enya-X1.jpg'),
        ('Cort MR500E', 'Acoustic Guitar', 'Gỗ Spruce', 'Cort', 'Guitar Cort MR500E với mặt top làm bằng gỗ Spruce nguyên tấm, lưng hông Mahogany cho ra âm thanh cân bằng giữa bass và tính treble, do đó phù hợp với nhiều thể loại âm nhạc và phong cách chơi.', 5500000, 3, 'https://www.mayguitar.com/wp-content/uploads/2017/08/Cort-MR500E-2.jpg'),
        ('Guitar Classic M17', 'Classic Guitar', 'Gỗ thịt', 'Guitar Store', 'Sản phẩm guitar classic chất lượng sản xuất & gia công tại Việt Nam, phân khúc giá rẻ cho người mới tập và các bạn học sinh, sinh viên. Guitar Classic M17 được thiết kế rất tinh tế và độc đáo, tỉ mỉ từng chi tiết, đường nét. Cấu hình full gỗ nguyên tấm (gỗ thịt). Có cả dáng đầy (dáng số 8) và dáng khuyết (dáng số 7)', 1700000, 4, 'https://www.mayguitar.com/wp-content/uploads/2016/11/Classic-SP-1700-4-1.jpg'),
        ('Guitar Classic gỗ Cẩm Ấn MCA 600c', 'Classic Guitar', 'Gỗ Cẩm Ấn', 'Guitar Store', 'Sản phẩm guitar classic chất lượng sản xuất & gia công tại Việt Nam, thuộc phân khúc CAO CẤP – dành cho những người đam mê guitar classic. Với cấu hình toàn bộ đàn là gỗ nguyên tấm (all solid) với mặt làm từ gỗ Thông cao cấp, lưng hông gỗ Cẩm Ấn (Indian Rosewood). Đàn có độ vang và cộng hưởng tốt, âm thanh cân bằng, trầm ấm là đặc trưng của gỗ Cẩm Ấn.', 6000000, 5, 'https://www.mayguitar.com/wp-content/uploads/2016/11/Classic-MCA-600c.jpg'),
        ('Classic MCA 600', 'Classic Guitar', 'Gỗ Cẩm Ấn', 'Guitar Store', 'Guitar MCA – 600 với cấu hình toàn bộ đàn là gỗ nguyên tấm (all solid) với mặt làm từ gỗ Thông cao cấp, lưng hông gỗ Cẩm Ấn (Indian Rosewood). Đàn có độ vang và cộng hưởng tốt, âm thanh cân bằng ,trầm ấm là đặc trưng của gỗ Cẩm Ấn . Đàn có ti chỉnh cong cần; lược ngựa làm từ xương tỉ mỉ, bộ khóa đàn màu đen sang trọng,phím bấm được làm chuẩn tạo cảm giác vô cùng thoải mái khi sử dụng. Guitar gỗ cẩm ấn là 1 trong những loại gỗ cao cấp nhất để làm đàn guitar tại Việt Nam và toàn Thế Giới.', 6000000, 6, 'https://www.mayguitar.com/wp-content/uploads/2016/11/Classic-MCA-600.jpg'),
        ('Guitar Acoustic Xlarry', 'Acoustic Guitar', 'Gỗ óc chó', 'Xlarry', 'Guitar gỗ óc chó hoa văn khảm cần cao cấp – ngoại hình tinh tế và âm thanh chuẩn. Phù hợp cho những người muốn sở hữu một cây guitar vừa đẹp vừa hay để chơi lâu dài.', 3500000, 7, 'https://www.mayguitar.com/wp-content/uploads/2020/04/Guitar-Xlarry.jpg'),
        ('Deviser LS-130TBK-41', 'Acoustic Guitar', 'Gỗ ép', 'Deviser', 'Sản phẩm guitar acoustic chính hãng Deviser với nước sơn mù vintage, màu đen cá tính, âm thanh mạnh mẽ – Là một trong những mẫu đàn bán chạy nhất ở Mây Guitar.', 2200000, 8, 'https://www.mayguitar.com/wp-content/uploads/2020/04/Guitar-Deviser-LS-130TBK-41.jpg'),
        ('Cort AD810', 'Acoustic Guitar', 'Gỗ Spruce', 'Cort', 'Guitar Acoustic M17 là dòng sản phẩm có hình thức đẹp, đa dạng và bắt mắt. Đàn có cấu hình gỗ nguyên tấm (all solid) với các nguyên liệu tốt như: mặt top spruce, hông lưng hồng đào nguyên tấm, cho âm thanh ổn định, vang sáng. Đàn có ti chỉnh cong cần giúp bảo vệ đàn yên tâm hơn.', 2600000, 9, 'https://www.mayguitar.com/wp-content/uploads/2017/03/Cort-AD810.jpg'),
        ('Cort AD880', 'Acoustic Guitar', 'Gỗ Spruce', 'Cort', 'Guitar Cort AD880 với mặt top làm bằng gỗ Spruce, lưng hông Mahogany cho ra âm thanh cân bằng giữa bass và tính treble, do đó phù hợp với nhiều thể loại âm nhạc và phong cách chơi. Đàn được phủ sơn chất lượng cao trên dây đàn giúp chống ẩm, bụi bẩn và mồ hôi giúp kéo dài tuổi thọ dây, mang lại âm thanh tuyệt vời hơn.', 3100000, 10, 'https://www.mayguitar.com/wp-content/uploads/2017/03/Cort-AD880-2.jpg');

CREATE TABLE `users` (
	`user_id` INT NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL,
    `fullname` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(50) NOT NULL,
	`role` VARCHAR(10) NOT NULL,
	CONSTRAINT `pk_user_id` PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `users` (`username`, `password`, `fullname`, `email`, `phone`, `role`)
VALUES ('admin', '123123', 'Nguyen Huu Nghia', 'nghianguyenhuu848@gmail.com', '0971262523', 'admin'),
		('user', '123123', 'Nguyen Huu Nghia', 'nghianguyenhuu848@gmail.com', '0971262523', 'user');

CREATE TABLE `orders` (
	`order_id` INT NOT NULL AUTO_INCREMENT,
	`guitar_id` INT NOT NULL,
    `user_id` INT NOT NULL,
	CONSTRAINT `pk_order_id` PRIMARY KEY (`order_id`),
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`), 
    CONSTRAINT `fk_guitar_id` FOREIGN KEY (`guitar_id`) REFERENCES `guitars`(`guitar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT `orders`.`order_id`, `users`.`fullname`, `users`.`email`, `users`.`phone`, `guitars`.`name`, `guitars`.`type`, `guitars`.`brand`, `guitars`.`image`, `guitars`.`price`
FROM `orders`
INNER JOIN `users` ON `orders`.`user_id` = `users`.`user_id`
INNER JOIN `guitars` ON `orders`.`guitar_id` = `guitars`.`guitar_id`;

SELECT `orders`.`order_id`, `users`.`username`, `users`.`fullname`, `guitars`.`name`, `guitars`.`type`, `guitars`.`brand`, `guitars`.`image`, `guitars`.`price`
FROM `orders`
INNER JOIN `users` ON `orders`.`user_id` = `users`.`user_id`
INNER JOIN `guitars` ON `orders`.`guitar_id` = `guitars`.`guitar_id`
WHERE `users`.`user_id` = 2;


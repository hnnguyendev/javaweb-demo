CREATE DATABASE `dbbookmanagement`;
USE `dbbookmanagement`;

CREATE TABLE `books` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(50) NOT NULL,
    `publisher` VARCHAR(50) NOT NULL,
    `type` VARCHAR(50) NOT NULL,
    `language` VARCHAR(50) NOT NULL,
    `description` VARCHAR(1000) NOT NULL DEFAULT 'N/A',
    `quantity` INT(11) NOT NULL DEFAULT 0,
    `image` VARCHAR(200) NOT NULL DEFAULT 'N/A',
    CONSTRAINT `pk_id` PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `books` (`name`, `author`, `publisher`, `type`, `language`, `description`, `quantity`, `image`)
VALUES ('Mỗi Lần Vấp Ngã Là Một Lần Trưởng Thành', 'Liêu Trí Phong', 'NXB Thanh Niên', 'Kỹ Năng Sống', 'Tiếng Việt', 'Cuộc đời là quá trình không ngừng trưởng thành. Trong quá trình này, bạn sẽ khó tránh khỏi vấp ngã, sẽ trải qua nhiều lần đau thương, và sẽ có những lúc bạn cảm thấy vô cùng mỏi mệt, nhưng hãy tin rằng, chỉ có những người đã từng đau thương thì mới trở nên vững vàng hơn.', 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/b9/ba/a8/802fe08bdaafce7475ba92d7ec678d02.jpg'),
		('Muôn Kiếp Nhân Sinh - Many Times, Many Lives', 'Nguyên Phong', 'NXB Tổng Hợp TPHCM', 'Khoa Học Kỹ Thuật', 'Tiếng Việt', '“Muôn kiếp nhân sinh” là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.', 9, 'https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/d/3d_muon-kiep-nhan-sinh.jpg'),
        ('Cuộc Kháng Chiến Chống Xâm Lược Nguyên Mông', 'Hà Văn Tấn, Phạm Thị Tâm', 'NXB Hồng Đức', 'Lịch Sử', 'Tiếng Việt', 'Chiến thắng ngoại xâm thế kỷ XIII để lại cho chúng ta một bài học lớn. Đó là một khi nhân dân đã đoàn kết thành một khối quyết tâm chiến đấu đến cùng để bảo vệ đất nước thân yêu của mình thì có thể chiến thắng bất kỳ kẻ thù nào, dù kẻ thù đó lớn mạnh gấp bao nhiêu lần.', 7, 'https://www.khaitam.com/Data/Sites/1/Product/13439/cuoc-khang-chien-chong-xam-luoc-nguyen-mong-the-ky-xiii.png'),
        ('Nghệ Thuật Bán Hàng Bậc Cao', 'Zig Ziglar', 'NXB Tổng Hợp TP.HCM', 'Kinh Tế', 'Tiếng Việt', 'Triết lý chứa đựng trong cuốn sách Nghệ Thuật Bán Hàng Bậc Cao thật đơn giản: “Bạn có thể có được những tất cả mọi thứ trong cuộc sống nếu bạn biết giúp người khác đạt được điều họ muốn”, thậm chí còn đúng đắn và cần thiết hơn trong cuộc sống hiện nay so với thời kỳ khi cuốn Nghệ Thuật Bán Hàng Bậc Cao được xuất bản lần đầu.', 1, 'https://salt.tikicdn.com/cache/w1200/media/catalog/product/n/g/nghethuatbanhangbaccao.u2751.d20170503.t165620.150830.jpg'),
        ('Chúng Ta Là Những Đứa Trẻ Cô Đơn', 'Dưa Hấu Hạt Tím', 'NXB Văn Học', 'Văn Học', 'Tiếng Việt', 'Bạn đã bao giờ trở về nhà sau một ngày làm việc dài, mệt mỏi, áp lực, nằm dài trên ghế với bộ đồ công sở, bật thật lớn một bản nhạc deep house, át hết tất cả những âm thanh xung quanh và tự huyễn hoặc với chính mình rằng “Mình sẽ ổn thôi”?', 2, 'https://newshop.vn/public/uploads/products/22452/chung-ta-la-nhung-dua-tre-co-don.jpg'),
        ('Động Từ Bất Quy Tắc & Ngữ Pháp Tiếng Anh Căn Bản', 'Mai Lan Hương', 'NXB Đà Nẵng', 'Học Ngoại Ngữ', 'Tiếng Việt', 'Việc học một thứ ngôn ngữ khác không phải tiếng mẹ đẻ, bao giờ cũng đem lại cho bạn nhiều khó khăn, vì thế  để học tốt tiếng Anh hay bất kì thứ tiếng nào khác đòi hỏi bạn phải có sự kiên trì và tài liệu học tập tốt.', 6, 'https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/o/dong_tu_bat_quy_tac_ngu_phap_tieng_anh_can_ban_1_2019_02_22_11_49_19.jpg'),
        ('The Choice', 'Eger, Edith', 'Rider', 'Biography', 'Tiếng Anh', 'It’s 1944 and sixteen-year-old ballerina and gymnast Edith Eger is sent to Auschwitz. Separated from her parents on arrival, she endures unimaginable experiences, including being made to dance for the infamous Josef Mengele. When the camp is finally liberated, she is pulled from a pile of bodies, barely alive.', 2, 'https://m.media-amazon.com/images/I/51VsAwQZzYL.jpg'),
        ('How to Win Friends and Influence People', 'Dale Carnegie', 'Ebury Press', 'Popular Psychology', 'Tiếng Anh', 'This is the most famous confidence-boosting book ever published; with sales of over 16 million copies worldwide Millions of people around the world have improved their lives based on the teachings of Dale Carnegie.', 5, 'https://titlewaves.in/wp-content/uploads/2018/12/how-to-win-friends-and-influence-people.jpeg'),
        ('Thinking, Fast and Slow', 'Daniel Kahneman', 'Penguin Press/Classics', 'Philosophy', 'Tiếng Anh', 'Engaging the reader in a lively conversation about how we think, Kahneman reveals where we can and cannot trust our intuitions and how we can tap into the benefits of slow thinking. He offers practical and enlightening insights into how choices are made in both our business and our personal lives—and how we can use different techniques to guard against the mental glitches that often get us into trouble. Thinking, Fast and Slow will transform the way you think about thinking.', 2, 'https://m.media-amazon.com/images/I/41shZGS-G+L.jpg'),
        ('How To Raise Happy And Successful Children', 'Esther Wojcicki', 'Arrow', 'Health', 'Tiếng Anh', 'Most parents, when asked what they truly want for their children, answer simply: They want them to be healthy, successful, and happy. Underneath all of their myriad dreams and expectations, parents just hope to see their children live a life of joy and fulfillment.', 3, 'https://cdn2.penguin.com.au/covers/original/9781787462168.jpg');
        
CREATE TABLE `contacts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`firstname` VARCHAR(20) DEFAULT 'N/A',
    `lastname` VARCHAR(20) DEFAULT 'N/A',
    `email` VARCHAR(50) NOT NULL DEFAULT 'N/A',
    `message` VARCHAR(1000) DEFAULT 'N/A',
	CONSTRAINT `pk_id` PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `contacts` (`firstname`, `lastname`, `email`, `message`)
VALUES ('Nghia', 'Nguyen Huu', 'nghianguyenhuu848@gmail.com', 'Hello Sweet Home');

CREATE TABLE `users` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(50) NOT NULL UNIQUE,
	`password` VARCHAR(50) NOT NULL,
	`role` VARCHAR(10) NOT NULL,
	CONSTRAINT `pk_id` PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `users` (`username`, `password`, `role`)
VALUES ('user', '123456','user'),
		('admin', '123456','admin');
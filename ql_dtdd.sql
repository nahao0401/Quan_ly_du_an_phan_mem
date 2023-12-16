-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 16, 2023 lúc 04:58 PM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_dtdd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

DROP TABLE IF EXISTS `baiviet`;
CREATE TABLE IF NOT EXISTS `baiviet` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `chude_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tieude` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8mb4_unicode_ci,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `luotxem` int UNSIGNED NOT NULL DEFAULT '0',
  `kiemduyet` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `kichhoat` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `baiviet_chude_id_foreign` (`chude_id`),
  KEY `baiviet_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `chude_id`, `user_id`, `tieude`, `tieude_slug`, `tomtat`, `noidung`, `luotxem`, `kiemduyet`, `kichhoat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Quảng cáo mạo danh bủa vây người dùng Facebook', 'quang-cao-mao-danh-bua-vay-nguoi-dung-facebook', 'Sau quảng cáo tai nghe giả giảm giá 70% trên Facebook, đến lượt các phòng trà kêu oan vì fanpage bị giả danh, lừa người dùng chuyển khoản mua vé.', '<p style=\"text-align:justify;\">Thùy Vân, 26 tuổi ở Bình Dương, cho biết hồi cuối tháng 10, người thân của cô mất gần 600 nghìn đồng khi đặt mua tai nghe giả, giảm giá 70% trên Facebook. Chưa đầy một tháng sau, Vân lại trở thành nạn nhân khi tìm mua vé qua mạng xã hội.</p><p style=\"text-align:justify;\">Bắt gặp quảng cáo trên Facebook về phòng trà nổi tiếng trên đường hay đi làm sắp có ca sĩ yêu thích biểu diễn, cô bấm vào xem. Kiểm tra kỹ thấy tên, ảnh đại diện, thời gian biểu diễn khớp thông tin niêm yết ngoài quán, cô mới đặt vé với giá một triệu đồng.</p><p style=\"text-align:justify;\">Chờ gần một ngày không thấy email xác nhận, Vân qua phòng trà để hỏi nhưng quản lý nói tên cô không có trong trong danh sách. Biết mình đã chuyển tiền cho tài khoản mạo danh, cô nhắn tin liên hệ lại nhưng bị chặn Facebook.</p><p style=\"text-align:justify;\">Đại diện một số phòng trà tại TP HCM cho biết gần đây khách hàng liên tục bị lừa chuyển khoản. \"Thời gian qua, trang giả mạo tiếp tục những hành vi lừa đảo bán vé ngày càng tinh vi. Quý khách hãy thận trọng, kiểm tra kỹ thông tin trước khi chuyển khoản, đặt cọc vé\", đại diện phòng trà Bến Thành đăng thông báo trên fanpage kèm hình ảnh, đường link hai trang mạo danh để cảnh báo. Đại diện một phòng trà khác cho biết: \"Chúng tôi chưa từng chạy quảng cáo Facebook vì luôn có khách hàng ổn định\".</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/21/Lua-dao-phong-tra-2207-1700575945.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IYwtOm02Uxo-Gihx32G1yQ\" alt=\"Phòng trà cảnh báo người dùng về những fanpage mạo danh, lừa đảo chuyển tiền. Ảnh: Khương Nha\"></p><p style=\"text-align:center;\">Phòng trà cảnh báo người dùng về những fanpage mạo danh, lừa đảo chuyển tiền. Ảnh:<i> Khương Nha</i></p><p style=\"text-align:justify;\">Ông Mai Thanh Phú, chuyên cung cấp các dịch vụ mạng xã hội, cho biết fanpage giả mạo phòng trà, chương trình ca nhạc đang tràn ngập Facebook do tập khách hàng này là những người có tiền. \"Không loại trừ những fanpage mạo danh đến từ cùng một nhóm vì cùng hình thức lừa đảo. Nhiều nơi cho đặt vé qua Google Docs, người dùng chọn loại ghế và thanh toán. Khi thấy một fanpage giả chạy quảng cáo, họ rất dễ bị lừa vì không đặt vé qua tin nhắn, không có lịch sử chat\", ông Phú cho hay.</p><p style=\"text-align:justify;\">Một điểm chung khác của những fanpage chính thức nhưng bị giả mạo là đa số không có tick xanh nên người dùng khó phân biệt thật giả. Theo ông Phú, việc xác nhận tài khoản \"chính chủ\" đòi hỏi nhiều điều kiện, tốn kém nên không được ưu tiên.</p><p style=\"text-align:justify;\">So với quảng cáo lừa đảo tai nghe, loa giảm giá 70% rộ lên trong tháng 10, nhóm mạo danh phòng trà đầu tư kỹ hơn. Không chỉ đăng thông tin ngay sau khi tài khoản chính chủ lên bài, kẻ xấu còn mua \"like\" và bình luận để lừa người dùng. Nhiều bài viết trên trang giả có lượt thích cao hơn trang chính, tuy nhiên đây đa phần là <a href=\"https://vnexpress.net/chu-phonefarm-he-lo-su-that-ve-tuong-tac-khung-tren-mang-xa-hoi-4673943.html\">like ảo</a>.</p><p style=\"text-align:justify;\">Phản hồi về tình trạng trên, đại diện Facebook cho biết nền tảng có các hệ thống tự động xét duyệt quảng cáo, danh sách sản phẩm trên Marketplace, nội dung trong cửa hàng và bài đăng bán hàng cũng như danh sách thương mại khác trước khi chúng xuất hiện trực tuyến và chủ động chặn nội dung có thể bán hàng giả. Các hệ thống có thể chặn dựa trên dấu hiệu như tên thương hiệu, logo, từ khóa, giá cả, giảm giá và các điểm đáng ngờ khác. \"Nếu báo cáo đầy đủ và hợp lệ, nhóm sẽ nhanh chóng xóa nội dung, thường trong vòng một ngày sau khi chúng tôi nhận được báo cáo\", đại diện Facebook nói.</p><p style=\"text-align:justify;\">Tuy nhiên thực tế, nhiều người dùng phản ánh sau khi bấm báo cáo, Facebook sẽ thông báo đã nhận được thông tin, nhưng trang giả mạo vẫn tồn tại. \"Trong khi fanpage thật chỉ đăng thông tin đơn thuần, tài khoản giả mạo chạy cả quảng cáo và không bị xóa dù đã bị báo cáo, không rõ Facebook có xem xét những report từ người dùng không\", quản lý fanpage một phòng trà nói.</p><p style=\"text-align:justify;\">Theo ông Mai Thanh Phú, trong khi Facebook chưa thể giải quyết triệt để những quảng cáo lừa đảo, mạo danh, người dùng có thể chủ động đăng ký dịch vụ bảo vệ bản quyền từ bên thứ ba. Những công cụ này cho phép phát hiện ngay những hình ảnh, video đã được đăng ký đang bị bên khác sử dụng, từ đó có thể nhanh chóng nắm bắt tình hình và có biện pháp xử lý, trước khi khách hàng bị lừa.</p><p style=\"text-align:justify;\">Trước đó, trả lời chất vấn trước Quốc hội ngày 4/11, Bộ trưởng Thông tin và Truyền thông Nguyễn Mạnh Hùng cho biết quảng cáo sai sự thật trên không gian mạng khá nhức nhối hiện nay, chủ yếu xuất hiện trên nền tảng xuyên biên giới như Facebook, YouTube, với rất nhiều nội dung trái quy định pháp luật. Ông cho biết thời gian tới, Bộ sẽ thanh tra về quảng cáo của các nền tảng xuyên biên giới và cũng đã sửa đổi, bổ sung quy định pháp luật để thực hiện việc này.</p><p style=\"text-align:right;\"><strong>Khương Nha</strong></p>', 0, 1, 1, '2023-11-23 23:55:10', NULL),
(2, 1, 1, 'Bức thư dẫn đến quyết định sa thải Sam Altman', 'buc-thu-dan-den-quyet-dinh-sa-thai-sam-altman', 'OpenAI không hé lộ nguyên nhân sa thải CEO, nhưng Reuters cho biết động thái diễn ra sau khi một bức thư về AI \"siêu trí tuệ\" được gửi đến ban quản trị.', '<p style=\"text-align:justify;\"><i>Reuters</i> dẫn nguồn nội bộ cho biết ngày 23/11, CTO OpenAI Mira Murati, người ban đầu được chỉ định thay thế vị trí CEO của Sam Altman, nói với nhân viên của bà rằng một bức thư mật, do một số nhà nghiên cứu OpenAI gửi tới hội đồng quản trị cũ, về bước đột phá của Q* (Q-Star) đã thúc đẩy họ hành động và ra quyết định sa thải đột ngột.</p><p style=\"text-align:justify;\">Q* là một dạng trí tuệ nhân tạo tổng quát (AGI) được OpenAI phát triển song song với ChatGPT. Theo định nghĩa của công ty, AGI là hệ thống siêu trí tuệ toàn năng, thông minh hơn con người. Sự thể hiện xuất sắc của nó khiến nhiều người lạc quan về tương lai của siêu trí tuệ, nhưng số khác lại lo ngại Q* có thể đe dọa nhân loại nên đã gửi thư cảnh báo.</p><p style=\"text-align:justify;\">Trên mạng xã hội X ngày 20/11, Elon Musk cũng đặt nghi vấn về việc OpenAI đang phát triển một công nghệ nguy hiểm. Đồng thời, ông cho rằng đây có thể là lý do Ilya Sutskever, nhà khoa học trưởng của OpenAI, muốn hạ bệ Altman.</p><p style=\"text-align:justify;\">\"Tôi rất lo lắng. Ilya là người có đạo đức và không ham muốn quyền lực. Ông ấy sẽ không hành động quyết liệt như vậy trừ khi thật cần thiết\", Musk nói. \"Thế giới cần biết nếu OpenAI sở hữu thứ gì đó gây nguy hiểm cho nhân loại\".</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/23/370135940-731807502145382-7077-2093-2398-1700697592.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=n3IYTLfKs2qd4IPcCfFrnA\" alt=\"CEO OpenAI Sam Altman. Ảnh: Reuters\"></p><p style=\"text-align:center;\">CEO OpenAI Sam Altman. Ảnh: <i>Reuters</i></p><p style=\"text-align:justify;\">Trước đó, theo bản ghi nội bộ mà <i>New York Times </i>có được, hội đồng quản trị OpenAI đã tiến hành kiểm tra và đánh giá \"hành vi của Sam và sự thiếu minh bạch trong tương tác của ông ấy làm suy yếu khả năng của ban quản trị trong việc giám sát công ty hiệu quả theo cách họ được ủy quyền\".</p><p style=\"text-align:justify;\">Trong khi đó, <i>The Infomartion</i> cho biết trong cuộc họp nhân viên ngày 18/11, Sutskever nói: \"Chúng ta đang thực hiện nhiệm vụ với sứ mệnh của một tổ chức phi lợi nhuận, đó là đảm bảo OpenAI xây dựng AGI có lợi cho toàn nhân loại\".</p><p style=\"text-align:justify;\">Sam Altman là nhà đồng sáng lập OpenAI từ năm 2015 nhưng bất ngờ bị sa thải vào ngày 17/11. Trước sức ép của các nhà đầu tư, OpenAI đã phải đàm phán đưa ông quay trở lại chỉ sau một ngày nhưng bất thành. Altman sau đó thông báo gia nhập Microsoft để xây dựng một đội ngũ mới làm về trí tuệ nhân tạo. Emmett Shear, cựu CEO Twitch, trở thành CEO tạm thời của OpenAI.</p><p style=\"text-align:justify;\">Tuy nhiên, đến 20/11, hơn 700 nhân viên công ty đồng loạt viết thư dọa nghỉ việc, trừ khi Altman quay về. Sutskever cũng nói ông <a href=\"https://vnexpress.net/nha-khoa-hoc-lat-do-sam-altman-toi-hoi-han-4679204.html\">hối hận</a> về hành động của mình. Đến 22/11, OpenAI tổ chức đàm phán lần hai với Altman, đưa ông chính thức trở lại vị trí CEO.</p><p style=\"text-align:right;\"><strong>Hoàng Giang</strong></p>', 0, 1, 1, '2023-11-23 23:56:42', NULL),
(3, 1, 1, 'Doanh nghiệp thường mất nửa năm mới phát hiện lộ lọt dữ liệu', 'doanh-nghiep-thuong-mat-nua-nam-moi-phat-hien-lo-lot-du-lieu', 'Theo các chuyên gia, thời gian từ khi dữ liệu bị đánh cắp đến khi được phát hiện có thể kéo dài 200 ngày, sau đó cần thêm hơn hai tháng để khắc phục.', '<p style=\"text-align:justify;\">Tại hội thảo giải đáp về Nghị định 13 sáng 23/11 ở Hà Nội, các chuyên gia và nhà quản lý đánh giá việc lộ lọt dữ liệu tại Việt Nam thời gian qua diễn ra khá thường xuyên, với nhiều hình thức khác nhau, trong bối cảnh chuyển đổi số diễn ra mạnh mẽ.</p><p style=\"text-align:justify;\">Theo Thượng tá Nguyễn Đình Đỗ Thi, Phó trưởng phòng Tham mưu - Cục An ninh mạng và Phòng chống tội phạm sử dụng công nghệ cao (A05), có ba nguyên nhân chính dẫn đến tình trạng này, gồm nhận thức và ý thức của người sử dụng chưa chú trọng đến bảo vệ dữ liệu cá nhân; việc quản lý của cơ quan, tổ chức chưa tương xứng; nhiều công ty công nghệ âm thầm khai thác dữ liệu bằng phần mềm chuyên dụng.</p><p style=\"text-align:justify;\">Trong khi đó, ông Vũ Ngọc Sơn, Giám đốc Công nghệ Công ty an ninh mạng NCS, cho biết mỗi tháng vẫn xảy ra hàng nghìn cuộc tấn công mạng vào các đơn vị ở Việt Nam, trong đó có nhiều vụ nhằm mục đích đánh cắp dữ liệu cá nhân trong bối cảnh dữ liệu ngày càng giá trị. Nhiều doanh nghiệp bị tấn công mà mà không biết.</p><p style=\"text-align:justify;\">Dẫn thống kê của IBM khảo sát hơn 500 doanh nghiệp toàn cầu, ông Sơn cho biết với mỗi vụ tấn công như vậy, tổ chức và doanh nghiệp có thể mất gần một năm để khắc phục và xử lý. Cụ thể trong năm 2023, các tổ chức mất trung bình 204 ngày để phát hiện việc dữ liệu bị rò rỉ, sau đó mất thêm 73 ngày để xử lý sự cố. Báo cáo cũng cho thấy với mỗi vụ rò rỉ, thiệt hại với mỗi doanh nghiệp, tổ chức tại Đông Nam Á, trong đó có Việt Nam, trung bình là 3,05 triệu USD, tăng cao so với mức 2,87 triệu USD năm ngoái.</p><p style=\"text-align:justify;\">Theo ông Sơn, nếu để xảy ra rò rỉ dữ liệu, doanh nghiệp không chỉ bị tổn thất về uy tín, kinh tế, dữ liệu nội bộ, mà còn đối mặt với các nguy cơ về pháp lý, sau khi Nghị định 13 về bảo vệ dữ liệu cá nhân có hiệu lực từ ngày 1/7.</p><p style=\"text-align:justify;\">Về mặt kỹ thuật, ông Sơn cho rằng những nguy cơ trên hoàn toàn có thể ngăn chặn. Phân tích các cuộc tấn công điển hình tại Việt Nam, chuyên gia này cho biết hacker thường dành 95% thời gian cho việc dò quét, xâm nhập từng bước vào hệ thống, chỉ 5% là để thực hiện đánh cắp dữ liệu và phá hoại.</p><p style=\"text-align:justify;\">\"Vì vậy, cơ hội để phát hiện và ngăn chặn các cuộc tấn công rất cao\", ông nói.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/23/vungocson-1700732704-1701-1700733052.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vOsw0a5CkHpB2jb58Oylyw\" alt=\"Ông Vũ Ngọc Sơn chia sẻ tại hội thảo. Ảnh: VNS\"></p><p style=\"text-align:center;\">Ông Vũ Ngọc Sơn, Giám đốc công nghệ NSC. Ảnh: <i>VNS</i></p><p style=\"text-align:justify;\">Tuy nhiên, thách thức với doanh nghiệp Việt là chi phí để trang bị các giải pháp giám sát còn cao, có thể lên tới 2-3 tỷ đồng mỗi năm, đi kèm nhân sự vận hành, trong bối cảnh Việt Nam thiếu hụt nhân sự an toàn thông tin. Đây cũng là lý do đơn vị của ông Sơn đã xây dựng bộ giải pháp tổng thể NCSOC nhằm hỗ trợ các doanh nghiệp ở cấc quy mô khác nhau có thể trang bị để được giám sát.</p><p style=\"text-align:justify;\">\"Nếu được giám sát an ninh mạng 24/7 liên tục, các doanh nghiệp có thể phát hiện từ sớm dấu hiệu hệ thống bị tấn công, từ đó hoàn toàn có thể ngăn chặn khả năng xảy ra lộ lọt dữ liệu\", ông Sơn nói.</p><p style=\"text-align:right;\"><strong>Lưu Quý</strong></p>', 0, 1, 1, '2023-11-23 23:58:14', NULL),
(4, 1, 1, 'Nvidia bị kiện vì sai lầm \'ngớ ngẩn\' của nhân viên', 'nvidia-bi-kien-vi-sai-lam-ngo-ngan-cua-nhan-vien', 'Nvidia gặp rắc rối sau khi một nhân viên để lộ tập tin lấy cắp từ Valeo - công ty cũ của người này, trong cuộc họp trực tuyến.', '<p style=\"text-align:justify;\">Valeo đã gửi đơn kiện kỹ sư và Nvidia lên tòa án liên bang California vào tháng 11/2022, nhưng thông tin chi tiết về vụ kiện mới được công bố tuần này.</p><p style=\"text-align:justify;\">Theo hồ sơ tòa án, vào tháng 3/2022, kỹ sư Mohammad Moniruzzaman và bốn nhân viên khác tại Nvidia tham gia cuộc họp trực tuyến với đại diện Valeo, hãng linh kiện ôtô hàng đầu nước Pháp. Hai công ty khi đó là đối tác trong một dự án về xe tự hành.</p><p style=\"text-align:justify;\">Khi phát biểu, kỹ sư Moniruzzaman đã chia sẻ màn hình máy tính. Tuy nhiên, khi thu nhỏ giao diện Power Point, người này vô tình để lộ tập tin chứa dữ liệu về công nghệ lái tự động do Valeo nghiên cứu. \"Thành viên của Valeo tại cuộc họp nhận ra mã nguồn và lập tức chụp ảnh màn hình trước khi Monizuzzaman kịp phản ứng\", đơn kiện của Valeo có đoạn.</p><p style=\"text-align:justify;\">Kết quả điều tra nội bộ của nhà sản xuất linh kiện ôtô cho thấy trước khi nghỉ việc vào tháng 4/2021, Monizuzzaman đã sao chép mã nguồn hỗ trợ lái và đỗ xe từ hệ thống Valeo sang máy tính cá nhân. Dữ liệu nặng khoảng 6 GB, gồm hàng chục nghìn tập tin dưới dạng Word, Excel, PowerPoint, PDF và hàng loạt đoạn code độc quyền.</p><p style=\"text-align:justify;\">Đại diện Valeo cho rằng kỹ sư này đã tìm hiểu về xe tự hành thông qua dữ liệu đánh cắp, từ đó nâng cao vị thế bản thân tại công ty mới. Khi kiểm tra căn hộ của Monizuzzaman, cảnh sát cũng thu giữ nhiều tài liệu thuộc về Valeo được ghim trên tường phòng làm việc.</p><p style=\"text-align:justify;\">Theo phát ngôn viên của tòa án, Moniruzzaman bị kết tội xâm phạm bí mật kinh doanh và phải bồi thường 15.750 USD. Dù vậy, phía Valeo tiếp tục theo đuổi vụ kiện vì cho rằng Nvidia cũng hưởng lợi từ hành vi sai trái của nhân viên. Từ năm 2015, Nvidia bắt đầu sản xuất linh kiện phần cứng cho xe tự lái.</p><p style=\"text-align:justify;\">\"Dữ liệu của Valeo là tài liệu được kỹ sư tham khảo thường xuyên khi làm việc tại công ty mới\", đại diện hãng sản xuất ôtô của Pháp nói.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/21/99f22467-322f-46d4-b97a-7719bd-8799-7668-1700541074.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xyPP7VKFebPy2M9WwaVkUQ\" alt=\"Jensen Huang, CEO Nvidia. Ảnh: Reuters\"></p><p style=\"text-align:center;\">Jensen Huang, CEO Nvidia. Ảnh: <i>Reuters</i></p><p style=\"text-align:justify;\">Dự kiến tới 2035, giá trị thị trường xe tự hành toàn cầu sẽ cán mốc 400 tỷ USD. Sự tăng trưởng nhanh chóng của ngành cũng đi kèm hàng loạt vụ vi phạm quyền sở hữu trí tuệ. Các ông lớn như Apple, Tesla, Google hay Waymo đều từng khởi kiện nhân viên cũ vì làm lộ bí mật công nghệ cho đối thủ. Tuy nhiên, sự cố với Nvidia là một trong những vụ kiện hiếm hoi mà thông tin được công bố rộng rãi.</p><p style=\"text-align:justify;\">Trước áp lực từ Valeo, luật sư Nvidia khẳng định công ty không quan tâm tới mã nguồn bị đánh cắp và đang thực hiện các bước nhằm đảm bảo quyền lợi của đối tác. Ngoài ra, kỹ sư Moniruzzaman chỉ lưu trữ dữ liệu trên máy tính cá nhân và chưa chia sẻ cho bất kỳ ai tại Nvidia.</p><p style=\"text-align:justify;\">\"Chúng tôi không truy cập vào tài sản thuộc sở hữu trí tuệ của Valeo. Công ty chỉ biết về sự việc khi kỹ sư thừa nhận bị cảnh sát tịch thu máy tính để điều tra\", đại diện hãng thiết kế chip nói.</p><p style=\"text-align:justify;\">Thành lập năm 1993 bởi ba kỹ sư Jensen Huang, Chris Malachowsky và Curtis Priem, Nvidia hiện là một trong những nhà thiết kế chip lớn nhất thế giới. Các mẫu chip A100, H100 của công ty được nhiều bên săn đón do giữ vai trò quan trọng trong quá trình huấn luyện các mô hình trí tuệ nhân tạo. Hiện Nvidia cũng phát triển các dòng chip dành cho xe tự hành như Driver Thor và Driver Atlan.</p><p style=\"text-align:right;\"><strong>Hoàng Giang</strong></p>', 0, 1, 1, '2023-11-23 23:59:30', NULL),
(5, 1, 1, 'Bing Chat đổi tên thành Copilot, đối đầu ChatGPT', 'bing-chat-doi-ten-thanh-copilot-doi-dau-chatgpt', 'Copilot được Microsoft chọn làm tên thương hiệu mới cho dịch vụ chatbot AI, tăng sức cạnh tranh thay cho tên cũ Bing Chat.', '<p style=\"text-align:justify;\">Hãng phần mềm Mỹ coi AI là nâng cấp quan trọng nhất với dịch vụ Bing từ đầu năm khi tích hợp giao diện giống ChatGPT vào kết quả tìm kiếm. Tuy nhiên, chưa đầy một năm sau, thương hiệu Bing Chat bị loại bỏ và chuyển sang Copilot. Tên mới sẽ được sử dụng đồng nhất trên cả Bing, Microsoft Edge và Windows 11.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/16/a1-4016-1700107237.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=iAhzn0rqTi8ICQxJI2xfzQ\" alt=\"Copilot là thương hiệu đồng nhất về chatbot AI trên mọi dịch vụ của Microsoft.\"></p><p style=\"text-align:center;\">Copilot là thương hiệu đồng nhất về chatbot AI trên mọi dịch vụ của Microsoft.</p><p style=\"text-align:justify;\">Microsoft ban đầu tham vọng AI sẽ giúp hãng cạnh tranh về lĩnh vực tìm kiếm với Google. Nhưng giờ đây, công ty chuyển mục tiêu mới sang ChatGPT, theo <i>The Verge</i>. Việc đổi thương hiệu diễn ra chỉ vài ngày sau khi OpenAI tiết lộ 100 triệu người đang sử dụng ChatGPT hàng tuần. Bất chấp mối quan hệ hợp tác chặt chẽ trị giá hàng tỷ USD, Microsoft và OpenAI vẫn cạnh tranh để giành những khách hàng có nhu cầu sử dụng trợ lý AI.</p><p style=\"text-align:justify;\">Công ty cũng không giấu ý định biến Copilot thành lựa chọn cho cả người tiêu dùng phổ thông lẫn doanh nghiệp. \"Bing Chat và Bing Chat Enterprise giờ đây sẽ đơn giản trở thành Copilot\", Colette Stallbaumer, Tổng giám đốc Microsoft 365, tuyên bố. Trước đó, Microsoft cũng chọn tên Copilot cho chatbot AI trong Windows 11.</p><p style=\"text-align:justify;\">Microsoft hiện giới thiệu Copilot là bản miễn phí của chatbot AI trong khi Copilot dành cho Microsoft 365 là tùy chọn trả phí.</p><p style=\"text-align:justify;\">Người dùng doanh nghiệp đăng nhập vào Copilot bằng Entra ID trong khi người dùng phổ thông chỉ cần tài khoản Microsoft. Copilot được hỗ trợ chính thức trong Microsoft Edge hoặc Chrome chạy trên Windows hoặc macOS.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/16/a2-6218-1700107237.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=p67gl99lONveHB5aJtlubg\" alt=\"Trợ lý Copilot trong Windows 11.\"></p><p style=\"text-align:center;\">Trợ lý Copilot trong Windows 11.</p><p style=\"text-align:justify;\">Việc đổi thương hiệu đồng nghĩa Microsoft muốn Copilot trở thành một trải nghiệm độc lập và người dùng không cần phải mở gián tiếp qua Bing. Dịch vụ tìm kiếm Bing giờ chỉ là một phần sức mạnh của Copilot. Các chuyên gia đánh giá động thái mới cho thấy những thay đổi thú vị trong quan điểm của những người đứng đầu Microsoft.</p><p style=\"text-align:justify;\">Hãng từng dành nhiều nỗ lực để triển khai AI bên trong công cụ tìm kiếm của mình và tham vọng giành thị phần từ Google. Tuy nhiên, Microsoft nhận ra việc cạnh tranh với gã khổng lồ tìm kiếm không đơn giản chỉ bằng việc thêm dịch vụ AI khi Google vẫn chiếm hơn 91% thị phần sau 10 tháng ra mắt Bing Chat mới, theo <i>StatCounter</i>. Ngoài ra, công ty cũng có thể nhận thấy việc cạnh tranh trực tiếp với ChatGPT sẽ đem đến nhiều lợi ích hơn trong tương lai.</p><p style=\"text-align:right;\"><strong>Hoài Anh</strong></p>', 0, 1, 1, '2023-11-24 00:00:58', NULL),
(6, 2, 1, 'Xiaomi Redmi 13C - màn hình lớn, giá 3 triệu đồng', 'xiaomi-redmi-13c-man-hinh-lon-gia-3-trieu-dong', 'Redmi 13C có cấu hình tốt với RAM 6 GB, màn hình 6,74 inch nhưng loa ngoài chưa tốt.', '<p style=\"text-align:justify;\">Redmi 13C có cấu hình tốt với RAM 6 GB, màn hình 6,74 inch nhưng loa ngoài chưa tốt.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4619-1700562468.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JXAIS6f6VGIDf0YneG1EQQ\" alt=\"\"></p><p style=\"text-align:justify;\">Trên thị trường di động, doanh thu ở phân khúc tầm trung và cao cấp có xu hướng giảm trong năm 2023, trong khi phân khúc giá rẻ trở thành điểm sáng. Theo dữ liệu từ một công ty nghiên cứu thị trường, phân khúc điện thoại tầm 5 triệu đồng đang tăng trưởng trở lại tại Việt Nam, là động lực khiến các hãng smartphone gần đây liên tục tung ra điện thoại giá rẻ như Xiaomi, Honor, Realme, Oppo, Samsung.</p><p style=\"text-align:justify;\">Redmi 13C là smartphone rẻ nhất của Xiaomi ra mắt nửa cuối 2023, chỉ ít ngày sau khi thương hiệu con của hãng là Poco trình làng C65 ở tầm giá tương tự. Đối thủ trực tiếp của máy là Honor X6a - từng \"gây sốt\" cuối tháng 9 với cấu hình tốt và hệ thống bốn camera.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4598-1700562466.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ToaNxRueIN22A9T-vhFnsQ\" alt=\"\"></p><p style=\"text-align:justify;\">Điện thoại mới của Xiaomi có màn hình 6,74 inch, lớn hàng đầu phân khúc và tương đương các model cao cấp. Kích thước lớn, tùy chọn tăng cỡ chữ của hệ thống giúp máy phù hợp với người dùng ở nhiều lứa tuổi. Tuy nhiên, dấu ấn giá rẻ vẫn hiện rõ trên Redmi 13C khi sử dụng màn hình kiểu giọt nước đã có từ nhiều năm và độ dày ở cạnh dưới khá lớn. Độ phân giải cũng chỉ dừng ở HD+, độ chi tiết không cao nhưng bù lại, cách hiệu chỉnh màu của Xiaomi tốt, không cho cảm giác màu nhạt như các dòng giá rẻ trước đây. Máy có tần số quét 90 Hz, cho hiệu ứng vuốt, chuyển ứng dụng khá mượt.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4612-1700562466.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=6hx86Y4adCr-dNklxdV_Bw\" alt=\"\"></p><p style=\"text-align:justify;\">Redmi 13C có mặt sau bằng nhựa nhưng được làm giả kính cao cấp tương tự các model tầm trung. Thiết bị cho cảm giác cầm hơi cấn nhẹ do cách thiết kế bo vuông ở các cạnh. Bù lại, cân nặng chỉ 192 gram cho phép cầm máy một tay thoải mái trong thời gian dài. Sản phẩm có ba màu xanh dương, xanh lá và đen. Cụm camera phía sau giống Poco C65 nhưng bề mặt vỏ trơn hơn, ít nhám hơn.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4617-1700562467.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zVhGG60wG6f72y3c3pa_Lg\" alt=\"\"></p><p style=\"text-align:justify;\">Hệ thống camera có thông số ấn tượng trong tầm giá, như camera chính 50 megapixel, f/1.8 và camera macro 2 megapixel f/2.4. Tuy nhiên, chất lượng ảnh chưa tương xứng với thông số, độ chi tiết chưa cao và chỉ tốt khi chụp ở điều kiện đủ sáng. Ngoài ra, góc ống kính hơi hẹp (tiêu cự 28 mm so với 23-24 mm phổ thông của điện thoại tầm trung, cao cấp). Ảnh selfie của máy khá tốt với thông số 8 megapixel f/2.0, mịn da.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4628-1700562468.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=OqYKD-qi-H7GH0VF6tXqag\" alt=\"\"></p><p style=\"text-align:justify;\">Điện thoại có độ mỏng khá ấn tượng là 8,1 mm dù pin dung lượng cao 5.000 mAh. Máy hỗ trợ hai sim và có khe cắm thẻ nhớ microSD riêng. Nút nguồn tích hợp cảm biến vân tay nhạy, dễ thao tác khi sử dụng luôn ngón trỏ hoặc ngón cái khi cầm. Do là model giá rẻ, viền màn hình nhô lên khỏi khung máy khiến tay cầm bị cấn nhẹ tại các vị trí này.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4647-1700562469.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hYTxYm6zIboMDA6tSUSdLQ\" alt=\"\"></p><p style=\"text-align:justify;\">Đỉnh trên vẫn còn giắc cắm tai nghe 3,5 mm - trang bị gần như \"tuyệt chủng\" trên smartphone tầm trung và cao cấp. Phía dưới là cổng USB-C nhưng chỉ hỗ trợ truyền dữ liệu tốc độ USB 2.0. Máy chỉ có một loa ngoài tương tự Poco C65 với chất lượng không tốt. Âm thanh lớn nhưng hơi rè nếu vượt quá mức âm lượng 70%.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4654-1700562470.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=08UYt8Vu6RFn8lvMzco2Bg\" alt=\"\"></p><p style=\"text-align:justify;\">Nhà sản xuất cho biết điện thoại hỗ trợ sạc nhanh 18 W (chuẩn PD) nhưng thực tế có thể nhận dòng tối đa khoảng 22-23 W. Đáng tiếc củ sạc đi kèm máy có công suất chỉ 10 W. Phụ kiện bao gồm sạc, cáp, không có tai nghe và ốp bảo vệ silicon.</p><p style=\"text-align:center;\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/21/DSCF4659-1700562470.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=gqRRVwx8N7GStBoizfvokw\" alt=\"\"></p><p style=\"text-align:justify;\">Redmi 13C có hai phiên bản, gồm RAM 4 GB, bộ nhớ 128 GB giá 2,8 triệu đồng và RAM 6 GB, bộ nhớ 128 GB giá 3,2 triệu đồng. Mức này cao hơn một chút so với C65 nhưng model thương hiệu Poco chỉ được bán trực tuyến.</p><p style=\"text-align:right;\"><strong>Tuấn Hưng</strong></p>', 0, 1, 1, '2023-11-24 00:03:16', NULL),
(7, 2, 1, 'Ghế massage KingSport trang bị công nghệ con lăn 3D Ultra', 'ghe-massage-kingsport-trang-bi-cong-nghe-con-lan-3d-ultra', 'KingSport vừa hoàn thiện công nghệ con lăn 3D Ultra cho dòng ghế massage thế hệ mới.', '<p style=\"text-align:justify;\">Công nghệ mới giúp ghế massage KingSport tái hiện chân tác xoa bóp của bàn tay người, có thể tác động sâu hơn, hỗ trợ giải tỏa các cơn đau xương khớp.</p><p style=\"text-align:justify;\">Được tạo nên từ lớp silicone nguyên khối với liên kết phân tử chặt chẽ, bề mặt con lăn 3D Ultra có độ đàn hồi vượt trội cùng số lượng lớn sụn tròn hoặc rãnh sâu, tái hiện chân thực động tác xoa bóp của bàn tay người. Đặc điểm này giúp con lăn 3D Ultra tác động sâu hơn, chăm sóc sức khỏe hệ xương trước nguy cơ thoái hóa và giải tỏa cơn đau cổ, vai, gáy - một khu vực vốn khó tác động với cấu tạo con lăn cũ.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/18/Image-984721920-ExtractWord-0-5200-6598-1700273453.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=CJ8DPk0bSLsNF6k3aVB0PQ\" alt=\"Khách hàng trải nghiệm ghế massage KingSport\"></p><p style=\"text-align:center;\">Khách hàng trải nghiệm ghế massage KingSport. Ảnh: <i>KingSport</i></p><p style=\"text-align:justify;\">Con lăn 3D Ultra cũng sở hữu cấu trúc tay với phạm vi mở rộng đạt 15cm, cao hơn so với độ rộng 13cm của thế hệ con lăn trước. Kết hợp với đường ray SL dài 130cm, tay đòn linh hoạt, bộ khung gọn nhẹ nhưng chắc chắn cùng công suất hoạt động vượt trội, con lăn 3D Ultra có thể cảm biến dò tìm điểm đau chuẩn xác, giải quyết những cơn đau xương khớp đa vị trí, thúc đẩy tuần hoàn và phòng ngừa các bệnh về tắt nghẽn mạch. Ưu điểm này cũng giúp các thao tác của 3D Ultra giải phóng mệt mỏi, giúp thư giãn cho người dùng.</p><p style=\"text-align:justify;\">Đại diện nhà sản xuất cho biết, với những điểm mạnh so với công nghệ trước đó, con lăn 3D Ultra có đủ những yếu tố giúp cải thiện các vấn đề sức khỏe mà người Việt đang gặp phải. Khi kết hợp con lăn 3D Ultra với những tính năng massage hiện đại khác giúp rút ngắn thời gian chăm sóc sức khỏe, đảm bảo sự riêng tư nhưng vẫn hiệu quả, chuyên sâu và xây dựng nên một màn chắn đề kháng vững vàng cho người sử dụng. Cải tiến này cũng đã được KingSport nhanh chóng áp dụng vào ghế massage Deluxe G95 của thương hiệu để phục vụ người tiêu dùng toàn quốc.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/18/Image-947200324-ExtractWord-1-6255-9206-1700273455.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=daYRHFnjZ-amxMyhb2r1wQ\" alt=\"Á hậu Huyền My trải nghiệm ghế massage KingSport Deluxe G95 tích hợp con lăn 3D Ultra (Ảnh: KingSport)\"></p><p style=\"text-align:center;\">Á hậu Huyền My trải nghiệm ghế massage KingSport Deluxe G95 tích hợp con lăn 3D Ultra. Ảnh: <i>KingSport</i></p><p style=\"text-align:justify;\">Sự xuất hiện của con lăn 3D Ultra đánh dấu một bước ngoặt mới, thời điểm mà thiết bị chăm sóc sức khỏe làm nhiều hơn trách nhiệm của một sản phẩm thông thường. Đó là thấu hiểu thể trạng, giải quyết đúng điểm đau và trở thành trợ lý toàn năng cho người sử dụng.</p><p style=\"text-align:right;\"><strong>Yên Chi</strong></p>', 0, 1, 1, '2023-11-24 00:04:15', NULL),
(8, 2, 1, 'Mate 60 Pro+ được đánh giá là smartphone chụp ảnh đẹp nhất', 'mate-60-pro-duoc-danh-gia-la-smartphone-chup-anh-dep-nhat', 'Mate 60 Pro+, smartphone cao cấp mới ra mắt của Huawei, được DxOMark chấm điểm cao nhất trong số những smartphone chụp ảnh đẹp.', '<p style=\"text-align:justify;\">Mate 60 Pro+ ra mắt đầu tháng 9, được trang bị ba camera sau với camera chính và tiềm vọng độ phân giải 48 megapixel, hỗ trợ chống rung quang học OIS. Riêng camera chính có thể thay đổi khẩu độ f/1.4 - f/4.0. Camera góc siêu rộng có độ phân giải 40 megapixel, cao hơn so với mức 12 megapixel của hai model Mate 60 và 60 Pro.</p><p style=\"text-align:justify;\">Theo <i>DxOMark</i>, nhờ các thông số này, khả năng tổng thể của camera, gồm chụp ảnh và quay phim, đạt 157 điểm, cao hơn mức 156 điểm của Huawei P60 Pro và hơn ba điểm so với iPhone 15 Pro Max.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/18/Screenshot-2023-11-18-at-21-54-8703-8054-1700319622.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=2Jlyj66JJuEpu7cHKjSnXA\" alt=\"Bảng điểm đánh giá camera của Mate 60 Pro+ do DxOMark thực hiện.\"></p><p style=\"text-align:center;\">Điểm đánh giá camera của Mate 60 Pro+ do DxOMark thực hiện.</p><p style=\"text-align:justify;\">Cụ thể, khả năng chụp ảnh của Mate 60 Pro+ đạt 160 điểm, cao nhất hiện nay. Điểm mạnh của ảnh chụp từ smartphone này là dải động rộng, phơi sáng chính xác trên ảnh chân dung và ảnh phong cảnh, màu sắc đẹp ở hầu hết môi trường chụp, tự động lấy nét nhanh, hiệu ứng bokeh đẹp và làm nổi khối chủ thể chính xác, ảnh chụp macro rõ nét, khẩu độ thay đổi cho phép độ sâu trường ảnh được tối ưu hóa trong từng cảnh.</p><p style=\"text-align:justify;\">Nhược điểm khi chụp với Mate 60 Pro+ là độ tương phản khuôn mặt và tông màu da có thể không thể hiện đầy đủ khi chụp ngược sáng, độ tương phản có thể bị nâng lên cao khi chụp một số cảnh. Ngoài ra, ảnh cũng có thể cho màu sắc không chuẩn khi chụp trong điều kiện quá tối.</p><p style=\"text-align:justify;\">Trong khi đó, khả năng quay video trên smartphone Huawei đạt 148 điểm. Ưu điểm là thể hiện màu sắc tốt, độ tương phản cao, lấy nét nhanh, chống rung tốt. Tuy nhiên, video quay trong môi trường thiếu sáng có thể bị mất chi tiết và độ tương phản bị đẩy lên cao, cũng như gặp hiện tượng bóng mờ khi chủ thể chuyển động nhanh.</p><p style=\"text-align:justify;\">\"Huawei là thiết bị tốt nhất chúng tôi thử nghiệm trong việc chụp ảnh tĩnh. Sản phẩm cũng mang lại kết quả chụp tuyệt vời trong hầu hết môi trường sử dụng\", <i>DxOMark</i> nhận xét.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/18/Huawei-Mate-60-Pro-Plus-09-28-1418-1268-1700319622.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=YTMmQuahTziZcy1Z2-0G4g\" alt=\"Huawei Mate 60 Pro+. Ảnh: VOMart\"></p><p style=\"text-align:center;\">Huawei Mate 60 Pro+. Ảnh: <i>VOMart</i></p><p style=\"text-align:justify;\">Mate 60 Pro+ là phiên bản cao cấp nhất trong bộ ba Mate 60. Sản phẩm sử dụng màn hình OLED LPTO kích thước 6,82 inch, độ phân giải 1.260 x 2.720 pixel, tấm nền tự động điều chỉnh tần số quét từ 1 đến 120 Hz và khả năng lấy mẫu cảm ứng tối đa 300 Hz. Máy có pin dung lượng 5.000 mAh cùng sạc nhanh 88 W có dây và 50 W không dây.</p><p style=\"text-align:justify;\">Tuy nhiên, Huawei không công bố chip bên trong. Các nguồn tin cho biết sản phẩm dùng <a href=\"https://vnexpress.net/so-hoa/dot-pha-cua-huawei-va-smic-truoc-lenh-trung-phat-cua-my-4649379.html\">Kirin 9000s</a> sản xuất trên tiến trình 7 nm của SMIC và hỗ trợ 5G.</p><p style=\"text-align:justify;\">Dòng Mate 60 hiện hết hàng và người mua phải đợi ba tháng sau khi đặt, do công ty Trung Quốc <a href=\"https://vnexpress.net/huawei-doi-mat-thach-thuc-khi-san-xuat-mate-60-4677676.html\">không đáp ứng đủ</a> nguồn cung dù đã tăng cường sản xuất.</p><p style=\"text-align:justify;\"><i>DxOMark</i> là trang nổi tiếng về máy ảnh, chuyên thử nghiệm các mẫu điện thoại mới. Ngoài thực hiện trong phòng thí nghiệm với thiết bị chuyên dụng, các điện thoại còn được sử dụng ở điều kiện thực tế và đánh giá, chấm điểm. Những năm gần đây, các vị trí dẫn đầu thường do công ty Trung Quốc như Huawei, Xiaomi thống trị khiến nhiều người nghi ngờ tính minh bạch của bảng xếp hạng. Tuy nhiên, <i>DxOMark</i> luôn công khai toàn bộ quá trình đánh giá, ảnh, video thử ở các điều kiện trong bài viết chuyên sâu.</p><p style=\"text-align:right;\"><strong>Bảo Lâm</strong></p>', 0, 1, 1, '2023-11-24 00:05:48', NULL),
(9, 2, 1, 'iPhone có thể sắp cài được ứng dụng ngoài App Store', 'iphone-co-the-sap-cai-duoc-ung-dung-ngoai-app-store', 'Người dùng iPhone có thể sớm tải và cài đặt ứng dụng từ nhiều nguồn khác nhau, tương tự thiết bị chạy Android.', '<p style=\"text-align:justify;\">Sau khi phân tích bản thử nghiệm iOS 17.2, trang công nghệ <i>9to5mac</i> phát hiện những chi tiết cho thấy iPhone sắp hỗ trợ tải ứng dụng ngoài App Store. Cụ thể, Apple đặt tên một giao diện lập trình ứng dụng (API) là \"Managed App Distribution\", qua đó cho phép nhà phát triển thiết lập cửa hàng app của riêng mình.</p><p style=\"text-align:justify;\">Ở mức độ sâu hơn, API này chi phối quá trình tải xuống, cài đặt và cập nhật ứng dụng từ nguồn bên ngoài. Thậm chí, nó còn có thể kiểm tra tính tương thích của một app bất kỳ với thiết bị hoặc phiên bản iOS hiện hành, tương tự những gì App Store đang làm.</p><p style=\"text-align:justify;\">Bên cạnh đó, iOS 17.2 cũng chứa tài liệu về trình khóa theo khu vực trong API. <i>9to5mac</i> đánh giá đây là cách Apple hạn chế tính năng tải ứng dụng từ nguồn ngoài ở một số quốc gia, nhằm đáp ứng yêu cầu từ cơ quan quản lý địa phương.</p><p style=\"text-align:justify;\">Đại diện Apple chưa đưa ra bình luận.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/11/12/App-Store-4850-1699753062.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=y3GowLCQS5dqCq9WqaUQow\" alt=\"Logo ứng dụng App Store. Ảnh: ZDnet\"></p><p style=\"text-align:center;\">Logo ứng dụng App Store. Ảnh: <i>ZDnet</i></p><p style=\"text-align:justify;\">Trong nhiều năm, Apple liên tục phản đối \"sideloading\", thuật ngữ chỉ việc cài đặt phần mềm mà không thông qua cửa hàng ứng dụng chính thức, vốn tồn tại trên thiết bị Android, Window và máy tính Mac. Hãng cho rằng việc tải ứng dụng từ nguồn lạ sẽ gây mất an toàn, đồng thời làm suy yếu quyền riêng tư.</p><p style=\"text-align:justify;\">\"Các công ty \'đói\' dữ liệu có thể tránh được quy tắc về bảo mật của chúng tôi và theo dõi người dùng\", Tim Cook, CEO Apple, nói. Ngoài ra, ông cảnh báo người dùng iPhone đứng trước nguy cơ tải nhầm phần mềm chứa mã độc và bị đánh cắp dữ liệu.</p><p style=\"text-align:justify;\">Tuy nhiên, đầu năm nay, Apple buộc phải thay đổi để đáp ứng Đạo luật Thị trường Kỹ thuật số (DMA) của Liên minh châu Âu, dự kiến áp dụng từ tháng 3/2024. Một số điều khoản trong đó yêu cầu nhà sản xuất điện thoại cho phép người dùng cài đặt app từ bất cứ nguồn nào họ muốn. Nếu không tuân thủ, Apple có thể bị phạt lên đến 20% doanh thu toàn cầu.</p><p style=\"text-align:justify;\">Một số nguồn tin cho biết, bên cạnh việc tuân thủ luật, Apple cũng đang xem xét ý tưởng tính phí xác minh ứng dụng, vốn được áp dụng trên máy tính Mac, giúp đảm bảo an toàn khi người dùng cấp quyền cài đặt phần mềm bên ngoài kho ứng dụng của hãng.</p><p style=\"text-align:right;\"><strong>Hoàng Giang</strong></p>', 0, 1, 1, '2023-11-24 00:07:30', NULL),
(10, 3, 1, 'Có nên cài Windows lên MacBook để chơi game?', 'co-nen-cai-windows-len-macbook-de-choi-game', 'Tôi muốn cài hệ điều hành Windows lên MacBook Pro để chơi game nhưng không biết có gây hại gì cho máy không.', '<p style=\"text-align:justify;\"><span style=\"color:rgb(34,34,34);\">Tôi mới chuyển từ laptop Windows sang MacBook. Máy hỗ trợ rất tốt cho công việc nhưng không cho phép cài nhiều game. Tôi tìm hiểu và thấy có thể cài đè hệ điều hành Windows lên MacOS, nhưng băn khoăn không biết việc cài hai hệ điều hành trên một thiết bị có dẫn đến xung đột, ảnh hưởng đến phần cứng của MacBook không? Và tính năng chặn virus trên MacBook có còn hiệu quả khi dùng hệ điều hành Windows? Mong độc giả tư vấn thêm.</span></p>', 0, 1, 1, '2023-11-24 00:08:50', NULL),
(11, 3, 1, 'Cùng bộ loa, vì sao chất lượng phát nhạc trên PC lại khác nhau?', 'cung-bo-loa-vi-sao-chat-luong-phat-nhac-tren-pc-lai-khac-nhau', 'Bộ loa Mingo nghe với dàn máy tính cũ của tôi cho âm thanh hay nhưng khi đổi sang dùng PC khác thì chất lượng kém hơn đáng kể.', '<p style=\"text-align:justify;\">Tôi được cho bộ PC với thông số cơ bản gồm bo mạch chủ Asus Prime H310M-E R2.0, chip Intel Core <span style=\"color:rgb(34,34,34);\">i5-9400F, RAM 8 GB, card màn hình G</span>igabyte 2G GV-N1030OC-2GI, Windows 10. Trước đây, tôi vẫn sử dụng cặp loa Mingo nghe nhạc ổn với chất nhạc ấm, đầy.</p><p style=\"text-align:justify;\">Tuy nhiên, PC mới này khi phát nhạc với loa hoặc tai nghe thì nghe không đầy, sắc nét, cứ đục đục dù tôi đã chỉnh treble của loa, chỉnh cả equalizer của Windows. Nếu đẩy treble cao quá nghe nó chói. Nguồn nhạc thì nghe Spotfiy, YouTube... Nói chung cùng bài hát đó, nghe bằng tai nghe hoặc loa khi dùng điện thoại iPhone, Android nghe ấm, sắc nét và đầy hơn hơn trên PC này.</p><p style=\"text-align:justify;\">Tôi nghĩ có thể do không mua soundcard nên âm thanh không hay, không biết đúng không? Nhờ mọi người tư vấn giúp với chi phí vừa phải, vì máy chủ yếu làm việc, chỉ muốn nâng cấp xíu để nghe nhạc hay hơn. Xin cảm ơn.</p>', 0, 1, 1, '2023-11-24 00:20:26', NULL),
(12, 3, 1, 'Có thể đẩy nước ra khỏi iPhone bằng app không?', 'co-the-day-nuoc-ra-khoi-iphone-bang-app-khong', 'iPhone của tôi bị vào nước và một người bạn nói chỉ cần cài ứng dụng để Siri đẩy nước ra khỏi điện thoại.', '<p style=\"text-align:justify;\"><span style=\"color:rgb(34,34,34);\">Tôi định mang điện thoại ra cửa hàng để kỹ thuật viên sấy khô. Tuy nhiên, bạn cùng phòng của tôi nói Apple có phần mềm cho phép trợ lý ảo Siri đẩy nước ra khỏi iPhone với tên gọi Water Eject Shortcuts. Tôi thấy cách này khó tin như mấy quảng cáo cài </span>ứng dụng đuổi muỗi<span style=\"color:rgb(34,34,34);\"> vậy. Theo các bạn, Siri có thể đẩy nước ra khỏi điện thoại không?</span></p>', 0, 1, 1, '2023-11-24 00:21:01', NULL),
(13, 3, 1, 'Có cách nào tự động hủy gói trả phí ứng dụng trực tuyến?', 'co-cach-nao-tu-dong-huy-goi-tra-phi-ung-dung-truc-tuyen', 'Tôi đăng ký dùng thử phần mềm xử lý ảnh AI nhưng quên hủy khiến tài khoản bị trừ 200.000 đồng.', '<p style=\"text-align:justify;\">Ứng dụng AI Loopsie yêu cầu phải nhập thông tin thẻ tín dụng để kích hoạt dùng thử miễn phí trong vài ngày. Tuy nhiên, do quên hủy nên khi đến hạn, hệ thống tự động trừ tiền mà không gửi thông báo ngay trước khi trừ.</p><p style=\"text-align:justify;\">Trước đó, tôi cũng từng đăng ký trên một nền tảng giải trí trực tuyến và trả tiền cho gói dịch vụ một tháng để xem một bộ phim đang hot. Sau khi xem hết, tôi quên bẵng việc truy cập ứng dụng nên gói thuê bao được gia hạn và bị trừ 70 nghìn đồng.</p><p style=\"text-align:justify;\">Ngoài ra, tôi còn gặp vấn đề với việc gia hạn một dịch vụ truyền hình OTT qua ví điện tử. Tôi vào giao diện cài đặt của phần mềm này nhưng không thấy chỗ để hủy, trong khi nhân viên chăm sóc khách hàng nói phải lên trang web mới có thể thao tác nên thấy khá bất tiện.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/10/23/Untitled-1-8921-1698051495.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=G-6GEXEJVVtsMk0pkIOAFg\" alt=\"Danh sách gói mua ứng dụng dạng thuê bao trên App Store. Ảnh: Tuấn Hưng\"></p><p style=\"text-align:center;\">Danh sách gói mua ứng dụng dạng thuê bao trên App Store. Ảnh: <i>Tuấn Hưng</i></p><p style=\"text-align:justify;\">Tôi biết việc quên là lỗi do mình, nhưng liệu có cách nào tự động hủy gói trả phí hoặc bật thông báo để biết sắp đến hạn cần mua tiếp không? Làm sao để quản lý tốt những dịch vụ đã đăng ký để không vô tình bị trừ tiền? Nếu hủy quá sớm có bị mất gói dịch vụ đang sử dụng không?</p>', 0, 1, 1, '2023-11-24 00:22:14', NULL);
INSERT INTO `baiviet` (`id`, `chude_id`, `user_id`, `tieude`, `tieude_slug`, `tomtat`, `noidung`, `luotxem`, `kiemduyet`, `kichhoat`, `created_at`, `updated_at`) VALUES
(14, 3, 1, 'Những lưu ý khi chụp ảnh phong cảnh bằng smartphone', 'nhung-luu-y-khi-chup-anh-phong-canh-bang-smartphone', 'Người dùng có thể sử dụng các kỹ thuật đơn giản để có bức ảnh phong cảnh đẹp mà không cần tốn nhiều thời gian chỉnh sửa hậu kỳ phức tạp.', '<p style=\"text-align:justify;\">Với sức mạnh của camera điện thoại, người dùng có thể chụp được các bức ảnh đẹp khi áp dụng một số thủ thuật dưới đây.</p><p style=\"text-align:justify;\"><strong>Làm quen với thiết bị chụp</strong></p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/10/17/Pro-Mode-Android-WB-1589357972-3061-7024-1697558385.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=61xWgvJ_LKO6p8qXNaC9XQ\" alt=\"Tính năng chụp ảnh Chuyên nghiệp trên một mẫu smartphone. Ảnh: Gadgets360\"></p><p style=\"text-align:center;\">Tính năng chụp ảnh Chuyên nghiệp trên một mẫu smartphone. Ảnh: <i>Gadgets360</i></p><p style=\"text-align:justify;\">Trước khi bắt đầu, điều quan trọng là hiểu khả năng của máy ảnh. Trên điện thoại, chế độ chụp Chuyên nghiệp (Pro) hỗ trợ các tính năng giúp người dùng tự kiểm soát thông số. Hãy dành chút thời gian để đọc hướng dẫn và tìm hiểu cài đặt bên trong để tận dụng tối đa sức mạnh thiết bị.</p><p style=\"text-align:justify;\">Khi chụp, người dùng nên bật đường lưới để tìm góc chụp, điểm \"vàng\" một phần ba hay công cụ cân bằng trên màn hình để đảm bảo ảnh không bị lệch. Bên cạnh đó, cần đưa nhiều nhất chủ thể vào ảnh phong cảnh nếu có. Phần mềm chỉnh sửa có thể cải thiện hiệu ứng bức ảnh, nhưng không thể cứu vãn bố cục xấu.</p><p style=\"text-align:justify;\"><strong>Đi sớm, về muộn</strong></p><p style=\"text-align:justify;\">Theo <i>Cnet</i>, các mốc thời gian trong ngày sẽ thay đổi mức ánh sáng - yếu tố tạo hiệu ứng lớn nhất. Thời gian tốt nhất để \"bắt\" được ánh sáng giúp cho ra những tấm hình ấn tượng là bình minh hoặc hoàng hôn. Ở hai mốc thời gian này, ánh sáng thường tạo ra bóng dài phủ lên khung cảnh, trong khi giữa trưa là lúc tệ nhất vì ánh sáng chiếu từ trên xuống khiến bức ảnh có cảm giác \"phẳng lì\" và thiếu sức sống.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/10/19/img-4174-1122-1697707217.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ZvtMWDimbMthvcONv4-jQA\" alt=\"Một bức ảnh chụp trong sương mù ở Edinburgh (Scotland). Ảnh: Cnet\"></p><p style=\"text-align:center;\">Một bức ảnh chụp trong sương mù ở Edinburgh (Scotland). Ảnh: <i>Cnet</i></p><p style=\"text-align:justify;\">Bên cạnh đó, thời tiết cũng đóng vai trò lớn trong bất kỳ ảnh chụp ngoài trời nào. Các điều kiện thời tiết khác nhau sẽ biến đổi khung cảnh theo hiệu ứng khác nhau, từ đó người xem có thể hiểu nội dung ảnh qua ánh sáng và màu sắc của nó.</p><p style=\"text-align:justify;\">Thời tiết xấu không có nghĩa là chụp ra ảnh xấu, thay vào đó có thể giúp người xem hiểu được chủ ý của tác giả. Dù vậy, với người dùng phổ thông, để chụp ảnh phong cảnh đẹp, nên tránh bầu trời xám xịt, đơn điệu, ít ánh sáng và không có sự tương phản với khung cảnh trước mặt.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/10/20/IMG-0082-6353-1697735713.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=-WWRtP0Gml4-TUm37ipWAg\" alt=\"Ánh sáng hoàng hôn tạo hiệu ứng đẹp lên các chủ thể trong khuôn hỉnh chụp bởi iPhone 14 Pro Max. Ảnh: Tuấn Hưng\"></p><p style=\"text-align:center;\">Ánh sáng hoàng hôn tạo hiệu ứng đẹp lên các chủ thể trong khuôn hỉnh chụp bởi iPhone 14 Pro Max. Ảnh: <i>Tuấn Hưng</i></p><p style=\"text-align:justify;\"><strong>Làm chủ ánh sáng</strong></p><p style=\"text-align:justify;\">Ánh sáng là một trong những yếu tố quan trọng trong nhiếp ảnh bởi nó có thể tạo ảnh đẹp hoặc khiến mọi thứ trở nên tồi tệ. Việc tìm hiểu cách sử dụng và làm chủ ánh sáng tự nhiên có lợi cho việc chụp ảnh.</p><p style=\"text-align:justify;\">Chẳng hạn, nên cố gắng tránh ánh nắng gắt, trực tiếp. Thay vào đó, tìm nơi có ánh sáng dịu, khuếch tán. Ngoài ra, người dùng cũng có thể thử nghiệm ánh sáng nhân tạo như đèn hoặc đèn flash để tạo ra hiệu ứng khác nhau.</p><p style=\"text-align:justify;\"><strong>Kiểm soát bố cục</strong></p><p style=\"text-align:justify;\">Việc kiểm soát chi tiết bên trong ảnh, đặc biệt là ảnh phong cảnh, được đánh giá rất quan trọng. Trong đó, yếu tố về màu sắc cần được chú ý đầu tiên. Theo các chuyên gia, ảnh phong cảnh cần càng ít màu càng tốt do khi có quá nhiều màu sắc che phủ trên một hình ảnh, hiệu ứng tổng thể có thể bị xung đột.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/10/17/3c0979f5-6828-4689-8f59-69f1d6-6906-3860-1697558385.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=K3iDSi3KnhTXp4cS1IpBeg\" alt=\"9 bức ảnh ở các vị trí khác nhau nhưng vẫn cho cảm giác hài hòa, đồng nhất. Ảnh: ITHome\"></p><p style=\"text-align:center;\">9 bức ảnh ở các vị trí khác nhau nhưng vẫn cho cảm giác hài hòa, đồng nhất. Ảnh: <i>ITHome</i></p><p style=\"text-align:justify;\">Chẳng hạn, với 9 bức ảnh trên, dù được chụp ở vị trí khác nhau, khi đăng cùng một lúc vẫn tạo ra nét hài hòa. Dù có nhiều ảnh, tổng thể nhìn không lộn xộn vì màu sắc thống nhất. Ngoài ra, nó cũng kích thích người xem chọn từng bức ảnh một để nhìn chi tiết.</p><p style=\"text-align:justify;\">Bên cạnh đó, khi chụp, hãy đảm bảo tất cả thành phần của ảnh đều thống nhất. Ví dụ, nếu nền của ảnh không phải tiêu điểm, tránh chụp quá nhiều chi tiết nền. Sử dụng quy tắc một phần ba để tạo bố cục cân bằng. Quy tắc một phần ba mô tả việc chia khung hình thành ba phần theo cả chiều ngang và chiều dọc, sau đó hướng ống kính để đặt chủ thể tại một trong các điểm giao nhau.</p><p style=\"text-align:justify;\">Khi chụp, điều quan trọng là phải có chủ thể rõ ràng. Điều này sẽ giúp tạo điểm nhấn mạnh và làm cho ảnh trở nên thú vị.</p><p style=\"text-align:justify;\"><strong>Chọn vị trí chụp</strong></p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/10/20/Untitled-1-8922-1697735713.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=EvVYfEnxOfJFI0EqaLgziA\" alt=\"Tiền cảnh với chủ thể người và mỏm đá giúp thu hút ánh nhìn của người xem và làm nổi bật khung cảnh phía sau. Ảnh: Cnet\"></p><p style=\"text-align:center;\">Tiền cảnh với chủ thể người và mỏm đá giúp thu hút ánh nhìn của người xem và làm nổi bật khung cảnh phía sau. Ảnh:<i> Cnet</i></p><p style=\"text-align:justify;\">Trừ khi đã trở thành nhiếp ảnh gia chuyên nghiệp, người dùng nên chọn địa điểm chụp ảnh tươi sáng, màu sắc nhẹ nhàng, bối cảnh sạch sẽ. Đặc biệt, những màu sáng như trắng hoặc kem sẽ rất tốt cho những ai mới tập chụp.</p><p style=\"text-align:justify;\">Nếu có sở thích chụp tiền cảnh, những gốc cây, những tảng đá phủ đầy rêu, thậm chí cả một số loài hoa dại đều có thể được sử dụng để thu hút ánh nhìn của người xem. Ví dụ, khi ở trên đỉnh đồi, hãy dành vài phút để quan sát xung quanh và tìm thứ gì đó có thể đặt vào ảnh để giúp gắn kết khung cảnh lại với nhau.</p><p style=\"text-align:justify;\"><strong>Thử phơi sáng</strong></p><p style=\"text-align:justify;\">Độ phơi sáng là thuật ngữ chỉ lượng ánh sáng đi vào cảm biến của máy ảnh. Yếu tố này có thể được điều chỉnh bằng cách sử dụng khẩu độ, tốc độ màn trập và cài đặt ISO. Việc phơi sáng khác nhau tạo ra các bức ảnh có hiệu ứng khác nhau. Chẳng hạn, khẩu độ thấp có thể tạo độ sâu trường ảnh nông, trong khi tốc độ màn trập cao có thể \"đóng băng\" chuyển động.</p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:680px;\" src=\"https://i1-sohoa.vnecdn.net/2023/10/19/20210505-062100-9641-1697707217.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=paZlw2sVyj33UqCzd1DsQw\" alt=\"Một người đàn ông chụp ảnh phong cảnh bằng iPhone. Ảnh: Cnet\"></p><p style=\"text-align:center;\">Một người đàn ông chụp ảnh phong cảnh bằng iPhone. Ảnh: <i>Cnet</i></p><p style=\"text-align:justify;\"><strong>Yếu tố khác</strong></p><p style=\"text-align:justify;\">Việc sử dụng chân máy có thể giữ smartphone ổn định, từ đó giúp ảnh không bị rung, nhòe. Ngoài ra, người dùng không nên ngại thử thách với cách chụp mới và kỹ thuật chụp khác nhau. Không ít bức ảnh thú vị đến từ những ý tưởng độc đáo và khoảnh khắc bất ngờ.</p><p style=\"text-align:justify;\"><strong>Đăng ảnh lên mạng xã hội</strong></p><p style=\"text-align:justify;\">Theo các chuyên gia, nếu đăng từ hai ảnh trở lên, thứ tự ảnh sẽ ảnh hưởng tới hiệu ứng hiển thị. Ví dụ, khi đăng 4 hoặc 9 ảnh, toàn bộ ảnh sẽ được trình bày dưới dạng hình vuông tạo cảm giác bắt mắt và dễ gây chú ý; 3 hoặc 6 ảnh được hiển thị dưới dạng hình chữ nhật, giúp người xem cảm thấy thoải mái; còn số lượng khác dễ gây cảm giác lộn xộn.</p><p style=\"text-align:justify;\">Bên cạnh đó, người dùng nên lưu ý về vị trí ảnh. Chẳng hạn, khi loạt 9 ảnh hiển thị theo \"hình vuông\", người xem ban đầu thường để ý đến bức đầu tiên và bức thứ 5 nằm chính giữa. Do đó, có thể đặt ảnh đẹp nhất ở hai vị trí này để tạo điểm nhấn.</p><p style=\"text-align:right;\"><strong>Bảo Lâm</strong></p>', 1, 1, 1, '2023-11-24 00:29:59', '2023-12-16 05:21:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluanbaiviet`
--

DROP TABLE IF EXISTS `binhluanbaiviet`;
CREATE TABLE IF NOT EXISTS `binhluanbaiviet` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `baiviet_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `noidungbinhluan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kiemduyet` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `kichhoat` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `binhluanbaiviet_baiviet_id_foreign` (`baiviet_id`),
  KEY `binhluanbaiviet_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluanbaiviet`
--

INSERT INTO `binhluanbaiviet` (`id`, `baiviet_id`, `user_id`, `noidungbinhluan`, `kiemduyet`, `kichhoat`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'Nếu như bạn cài đè Win lên MacOS thì ngay từ đầu bạn mua MacBook làm gì?', 1, 0, '2023-11-24 00:09:29', NULL),
(2, 10, 1, 'Mình đã cài và sử dụng thì sau nhiều năm vẫn OK nhé. Tuy nhiên là chỉ làm được với chip Intel thôi còn chip M1, M2 sẽ không dùng được bạn ạ. Chưa kể là có rất nhiều lỗi tương thích trong quá trình sử dụng.', 1, 0, '2023-11-24 00:09:49', NULL),
(3, 10, 1, 'Không rõ bạn máy bạn sử dụng chip M hay chip Intel? Nếu là chip Intel thì dùng Boot Camp Assistant cài Windows song song với Mac OS không vấn đề gì, các trình điều khiển thiết bị còn được Apple chuẩn bị tự động trước khi bạn khi cài Windows. Kinh nghiệm cá nhân của tôi, Windows chạy trên MacBook nhanh hơn hẳn Windows chạy trên laptop hãng khác khi hai máy có cùng cấu hình, MacBook được Apple tối ưu hóa hiệu năng rất tốt. Để quyết định có cài Windows chơi game hay không, bạn hãy kiểm tra game bạn muốn chơi có chạy tốt trên laptop Windows có cấu hình tương tự MacBook của bạn hay không? Nếu game chơi mượt với cấu hình kia, thì chắc chắn sẽ chơi mượt với MacBook của bạn, ngược lại, bạn đừng cài Windows cho mất công, vì suy cho cùng, MacBook tốt đến mấy cũng không đấu lại khoản chơi game với các laptop Gaming trên thị trường. Trường hợp thứ hai là MacBook của bạn chạy chip M, thì lời khuyên của tôi là không nên cài Windows, tôi có cả hai thế hệ chip Intel và chip M, nhưng tôi không bao giờ cài Windows lên máy chip M, lí do là cả Microsoft và Apple đều không hỗ trợ việc này. Khi bạn cài Windows lên máy chạy chip M bạn sẽ phải dùng máy ảo, một loại chương trình giả lập, máy ảo làm giảm hiệu năng của cả hai hệ điều hành, chỉ nên dùng để trải nghiệm hoặc công việc bắt buộc, còn nếu dùng để chơi game nặng thì máy ảo sẽ chạy cật lực với mọi tài nguyên của máy thật, rất hại phần cứng, đặc biệt là máy ảo cũng không giả lập được hoàn toàn máy thật trong một số yêu cầu cụ thể.', 1, 0, '2023-11-24 00:10:25', NULL),
(4, 1, 1, 'Chả hiểu sao chẳng quản lý được, hàng giả tràn ngập trên face.', 1, 0, '2023-11-24 00:11:08', NULL),
(5, 1, 1, 'Vụ tai nghe tôi cũng thấy quảng cáo, mà chỉ mất 30s tìm là tôi đã thấy thông báo trên trang chủ của chính hãng tai nghe về cảnh giác lừa đảo. Nhìn chung là cũng chịu các bạn thật.', 1, 0, '2023-11-24 00:11:36', NULL),
(6, 2, 1, 'Nếu OpenAI có thứ AI gì đó gây nguy hiểm cho nhân loại thì sa thải Sam Altman cũng không có tác dụng ngăn chặn bởi không có Sam này sẽ xuất hiện Sam khác, không ở Mỹ thì ở TQ hay đâu đó. Quan trọng là các quốc gia sớm hình thành cơ chế giám sát quốc tế (kiểu như Cơ quan năng lượng nguyên tử quốc tế IAEA).', 1, 0, '2023-11-24 00:12:03', NULL),
(7, 2, 1, 'Rồi sẽ đến lúc con người nhận ra mình là sản phẩm của AI. Những ai muốn bớt khổ thì cần thoát khỏi nó thì cần sống với hiện tại, bớt tham sân si mạn nghi tà kiến dần... Các thứ này là nguồn năng lượng sinh học xấu tác động trực tiếp đến suy nghĩ, hành động, lời nói của chúng ta đi sai hướng.', 1, 0, '2023-11-24 00:12:30', NULL),
(8, 4, 1, 'Đúng thật bị kiện vì lý do tào lao, Nvidia còn chẳng đầu tư mảng nào liên quan xe tự hành.', 1, 0, '2023-11-24 00:13:32', NULL),
(9, 4, 1, 'Nvidia làm chip xe tự lái từ năm 2015 với loạt chip Orin rồi Thor. Hầu hết xe điện của TQ đều xài chip Nvidia vì loại chip này vì chưa bị cấm. Ông nhân viên mới mướn hai năm nay không ảnh hưởng chi tốn công hầu tòa.', 1, 0, '2023-11-24 00:14:22', NULL),
(10, 5, 1, 'Còn Bing chat này tính cách nó kiểu láo cực kỳ. Nó tự cho nó kiểu ngang hàng với người dùng. Có lần tôi chát hỏi nó nó đưa ra kết qua chưa đúng tôi có chê nó vài cầu mà nó bật lại luôn mới ghê. Đôi co vài câu xong nó trả lời thụt lụn một câu rất cục là: Bye! xong nó tự đóng trình chat lại luôn.', 1, 0, '2023-11-24 00:15:44', NULL),
(11, 5, 1, 'Cũng như Bing Chat thôi, chỉ search internet để phân tích kết quả chứ có xử lý và giải quyết bằng kiến thức có sẵn đâu, nhiều câu hỏi mặc dù đã làm rõ vấn đề nhưng vẫn cứ lặp lại câu trả lời phía trên. Chưa thể đối đầu với ChatGPT được.', 1, 0, '2023-11-24 00:15:56', NULL),
(12, 5, 1, 'Cách tiếp cận đúng, nếu nó vẫn nằm trong Bing thì người dùng sẽ nghĩ AI này quy mô nhỏ và thiếu sự tin tưởng. Tuy giờ vẫn chưa thấy nó mạnh như ChatGPT và tốc độ phản hồi còn chậm nhưng cũng có tương lai đáng mong đợi.', 1, 0, '2023-11-24 00:16:07', NULL),
(13, 8, 1, 'Huawei quá đỉnh khi dẫn đầu về công nghệ 5G và 6G, gọi điện qua vệ tinh và chụp ảnh cũng nhất thì các thương hiệu khác bị ế ẩm là cũng phải thôi.', 1, 0, '2023-11-24 00:17:02', NULL),
(14, 8, 1, 'Cứ vào web mà xem họ chụp kiểu gì, so sánh, xét tiêu chí ra sao, tin chắc những người chê bai chưa bao giờ vào trang web này 1 lần.', 1, 0, '2023-11-24 00:17:15', NULL),
(15, 8, 1, 'Tôi không có cơ hội dùng từ P40 về sau do lệnh cấm. Tôi nhận thấy mấy đt TQ dạo này có vẻ nhắm DXO Mark như ở VN luyện thi ĐH. Tôi cầm Honor Magic5 Pro (anh em Huawei) và Find X6, 2 điện thoại chụp hình hàng top nhưng màu sắc nhìn ảo ma canada cứ như là bôi 1 lớp trang điểm trau chuốt cho củ thể để được điểm cao. Tôi vẫn thích cái chất hình tứ iPhone hay Pixel hơn.', 1, 0, '2023-11-24 00:17:46', NULL),
(16, 9, 1, 'Cuối cùng Apple cũng đã sáng chế ra tính năng sideload như hệ điều hành Android, thật là thiên tài!', 1, 0, '2023-11-24 00:18:31', NULL),
(17, 9, 1, 'Mở cho họ cài là đúng. Họ đã bỏ tiền ra mua cái điện thoại (cả cứng và mềm) thì họ thích làm gì trên chiếc điện thoại của họ thì làm. Miễn là những việc làm đó họ tự quyết định và họ tự chịu trách nhiệm nếu xảy ra điều không mong muốn. Vậy thôi.', 1, 0, '2023-11-24 00:18:42', NULL),
(18, 13, 1, 'Nếu bạn thanh toán thông qua Apple thì có thể tạo ticket yêu cầu hoàn tiền, còn thanh toán trực tiếp bằng Visa hay Master Card thì thử contact bên cung cấp dịch vụ xem sao. Còn về quản lý để không bị trừ tiền ngoài kiểm soát thì mình hay dùng cách là tạo 1 tài khoản phụ để liên kết ví điện tử và thẻ visa debit, khi nào cần thanh toán thì dùng tài khoản chính chuyển tiền sang tài khoản phụ để các tài khoản ví hoặc thẻ có thể sử dụng. Tuy có chút bất tiện nhưng như vậy sẽ hạn chế bị trừ tiền ngoài kiểm soát hoặc bị hack thông tin thẻ.', 1, 0, '2023-11-24 00:22:58', NULL),
(19, 13, 1, 'Hủy liên kết tài khoản ngân hàng đi, hết gói thì nó không tự gia hạn được chứ đăng ký rồi thì dùng cho hết thôi chứ không hoàn bồi lại được.', 1, 0, '2023-11-24 00:23:15', NULL),
(20, 12, 1, 'Với các thiết bị điện tử thông thường như máy ảnh, điện thoại, đồng hồ, thì thùng gạo chính là cái máy hút ẩm vạn năng và tuyệt vời.', 1, 0, '2023-11-24 00:27:15', NULL),
(21, 12, 1, 'Bạn tìm hướng dẫn về app này trên mạng nhiều. App có thể đẩy nước khỏi loa, bằng cách phát ra âm thanh trầm, cơ chế kiểu rung bằng âm thanh giúp đẩy nước ra ngoài. Bạn nhanh chóng tìm thêm nhiều cách xử lý ngay, để lâu càng hại máy.', 1, 0, '2023-11-24 00:27:26', '2023-12-16 04:52:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

DROP TABLE IF EXISTS `chude`;
CREATE TABLE IF NOT EXISTS `chude` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenchude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenchude_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chude_tenchude_unique` (`tenchude`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`id`, `tenchude`, `tenchude_slug`, `created_at`, `updated_at`) VALUES
(1, 'Công nghệ', 'cong-nghe', NULL, NULL),
(2, 'Sản phẩm', 'san-pham', NULL, NULL),
(3, 'Kinh nghiệm', 'kinh-nghiem', NULL, NULL),
(4, 'Tuyển dụng', 'tuyen-dung', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `tinhtrang_id` bigint UNSIGNED NOT NULL,
  `dienthoaigiaohang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachigiaohang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donhang_user_id_foreign` (`user_id`),
  KEY `donhang_tinhtrang_id_foreign` (`tinhtrang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang_chitiet`
--

DROP TABLE IF EXISTS `donhang_chitiet`;
CREATE TABLE IF NOT EXISTS `donhang_chitiet` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `donhang_id` bigint UNSIGNED NOT NULL,
  `sanpham_id` bigint UNSIGNED NOT NULL,
  `soluongban` int NOT NULL,
  `dongiaban` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donhang_chitiet_donhang_id_foreign` (`donhang_id`),
  KEY `donhang_chitiet_sanpham_id_foreign` (`sanpham_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsanxuat`
--

DROP TABLE IF EXISTS `hangsanxuat`;
CREATE TABLE IF NOT EXISTS `hangsanxuat` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenhang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenhang_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`id`, `tenhang`, `tenhang_slug`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 'Acer', 'acer', 'hang-san-xuat/acer.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(2, 'Apple', 'apple', 'hang-san-xuat/apple.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(3, 'Asus', 'asus', 'hang-san-xuat/asus.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(4, 'Dell', 'dell', 'hang-san-xuat/dell.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(5, 'HP', 'hp', 'hang-san-xuat/hp.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(6, 'Huawei', 'huawei', 'hang-san-xuat/huawei.jpg', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(7, 'Itel', 'itel', 'hang-san-xuat/itel.jpg', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(8, 'Lenovo', 'lenovo', 'hang-san-xuat/lenovo.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(9, 'LG', 'lg', 'hang-san-xuat/lg.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(10, 'Masstel', 'masstel', 'hang-san-xuat/masstel.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(11, 'Mobell', 'mobell', 'hang-san-xuat/mobell.jpg', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(12, 'MSI', 'msi', 'hang-san-xuat/msi.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(13, 'Nokia', 'nokia', 'hang-san-xuat/nokia.jpg', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(14, 'Oneplus', 'oneplus', 'hang-san-xuat/oneplus.jpg', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(15, 'Oppo', 'oppo', 'hang-san-xuat/oppo.jpg', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(16, 'Realme', 'realme', 'hang-san-xuat/realme.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(17, 'Samsung', 'samsung', 'hang-san-xuat/samsung.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(18, 'Vivo', 'vivo', 'hang-san-xuat/vivo.jpg', '2023-12-12 08:26:04', '2023-12-12 08:26:04'),
(19, 'Xiaomi', 'xiaomi', 'hang-san-xuat/xiaomi.png', '2023-12-12 08:26:04', '2023-12-12 08:26:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloai_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloai`, `tenloai_slug`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 'dien-thoai', '2023-12-12 08:25:30', '2023-12-12 08:25:30'),
(2, 'Điện thoại cũ', 'dien-thoai-cu', '2023-12-12 15:10:22', '2023-12-12 15:10:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_20_011306_create_loai_san_phams_table', 1),
(7, '2023_10_20_011318_create_hang_san_xuats_table', 1),
(8, '2023_10_20_011326_create_san_phams_table', 1),
(9, '2023_10_20_011335_create_tinh_trangs_table', 1),
(10, '2023_10_20_011342_create_don_hangs_table', 1),
(11, '2023_10_20_011349_create_don_hang__chi_tiets_table', 1),
(12, '2023_10_27_103126_update_user_table', 1),
(13, '2023_12_16_101055_create_chu_des_table', 2),
(14, '2023_12_16_101106_create_bai_viets_table', 2),
(15, '2023_12_16_101115_create_binh_luan_bai_viets_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `loaisanpham_id` bigint UNSIGNED NOT NULL,
  `hangsanxuat_id` bigint UNSIGNED NOT NULL,
  `tensanpham` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensanpham_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int NOT NULL,
  `dongia` double NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motasanpham` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sanpham_loaisanpham_id_foreign` (`loaisanpham_id`),
  KEY `sanpham_hangsanxuat_id_foreign` (`hangsanxuat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `loaisanpham_id`, `hangsanxuat_id`, `tensanpham`, `tensanpham_slug`, `soluong`, `dongia`, `hinhanh`, `motasanpham`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'iPhone 11 128GB', 'iphone-11-128gb', 100, 21990000, 'dien-thoai/iphone-11-128gb-green-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(2, 1, 2, 'iPhone 11 128GB (Hộp mới)', 'iphone-11-128gb-hop-moi', 100, 21990000, 'dien-thoai/iphone-11-128gb-hop-moi-292520-102500-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(3, 1, 2, 'iPhone 11 256GB', 'iphone-11-256gb', 100, 23990000, 'dien-thoai/iphone-11-256gb-black-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(4, 1, 2, 'iPhone 11 256GB (Hộp mới)', 'iphone-11-256gb-hop-moi', 100, 23990000, 'dien-thoai/iphone-11-256gb-hop-moi-292520-102539-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(5, 1, 2, 'iPhone 11 64GB', 'iphone-11', 100, 19990000, 'dien-thoai/iphone-11-red-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(6, 1, 2, 'iPhone 11 64GB (Hộp mới)', 'iphone-11-64gb-hop-moi', 100, 19990000, 'dien-thoai/iphone-11-64gb-hop-moi-292420-102454-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(7, 1, 2, 'iPhone 11 Pro 256GB', 'iphone-11-pro-256gb', 100, 30990000, 'dien-thoai/iphone-11-pro-256gb-black-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(8, 1, 2, 'iPhone 11 Pro 64GB', 'iphone-11-pro', 100, 26990000, 'dien-thoai/iphone-11-pro-black-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(9, 1, 2, 'iPhone 11 Pro Max 256GB', 'iphone-11-pro-max-256gb', 100, 33990000, 'dien-thoai/iphone-11-pro-max-256gb-black-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(10, 1, 2, 'iPhone 11 Pro Max 512GB', 'iphone-11-pro-max-512gb', 100, 37990000, 'dien-thoai/iphone-11-pro-max-512gb-gold-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(11, 1, 2, 'iPhone 11 Pro Max 64GB', 'iphone-11-pro-max', 100, 29990000, 'dien-thoai/iphone-11-pro-max-green-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(12, 1, 2, 'iPhone 12 128GB', 'iphone-12-128gb', 100, 26990000, 'dien-thoai/iphone-12-128gb-195820-105824-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(13, 1, 2, 'iPhone 12 256GB', 'iphone-12-256gb', 100, 28990000, 'dien-thoai/iphone-12-256gb-195920-105925-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(14, 1, 2, 'iPhone 12 64GB', 'iphone-12', 100, 24990000, 'dien-thoai/iphone-12-blue-600x600-thumb-hen-gio.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(15, 1, 2, 'iPhone 12 mini 128GB', 'iphone-12-mini-128gb', 100, 23990000, 'dien-thoai/iphone-12-mini-128gb-193420-023429-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(16, 1, 2, 'iPhone 12 mini 256GB', 'iphone-12-mini-256gb', 100, 25990000, 'dien-thoai/iphone-12-mini-256gb-193220-023247-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(17, 1, 2, 'iPhone 12 mini 64GB', 'iphone-12-mini', 100, 21990000, 'dien-thoai/iphone-12-mini-blue-600jpg-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(18, 1, 2, 'iPhone 12 Pro 128GB', 'iphone-12-pro', 100, 30990000, 'dien-thoai/iphone-12-pro-260020-110014-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(19, 1, 2, 'iPhone 12 Pro 256GB', 'iphone-12-pro-256gb', 100, 34990000, 'dien-thoai/iphone-12-pro-256gb-190120-020118-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(20, 1, 2, 'iPhone 12 Pro 512GB', 'iphone-12-pro-512gb', 100, 40990000, 'dien-thoai/iphone-12-pro-512gb-190720-020739-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(21, 1, 2, 'iPhone 12 Pro Max 128GB', 'iphone-12-pro-max', 100, 33990000, 'dien-thoai/iphone-12-pro-max-195420-015420-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(22, 1, 2, 'iPhone 12 Pro Max 256GB', 'iphone-12-pro-max-256gb', 100, 37990000, 'dien-thoai/iphone-12-pro-max-256gb-190320-020344-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(23, 1, 2, 'iPhone 12 Pro Max 512GB', 'iphone-12-pro-max-512gb', 100, 43990000, 'dien-thoai/iphone-12-pro-max-512gb-191020-021035-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(24, 1, 2, 'iPhone 7 128GB', 'iphone-7-128gb', 100, 9990000, 'dien-thoai/iphone-7-128gb-hh-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(25, 1, 2, 'iPhone 7 32GB', 'iphone-7', 100, 8990000, 'dien-thoai/iphone-7-gold-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(26, 1, 2, 'iPhone 8 Plus 128GB', 'iphone-8-plus-128gb', 100, 14190000, 'dien-thoai/iphone-8-plus-128gb-082720-052716-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(27, 1, 2, 'iPhone SE 128GB (2020)', 'iphone-se-128gb-2020', 100, 13990000, 'dien-thoai/iphone-se-128gb-2020-261820-101803-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(28, 1, 2, 'iPhone SE 128GB (2020) (Hộp mới)', 'iphone-se-128gb-2020-hop-moi', 100, 13990000, 'dien-thoai/iphone-se-128gb-2020-hop-moi-292720-102759-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(29, 1, 2, 'iPhone SE 256GB (2020)', 'iphone-se-256gb-2020', 100, 16990000, 'dien-thoai/iphone-se-256gb-2020-265420-035426-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(30, 1, 2, 'iPhone SE 256GB (2020) (Hộp mới)', 'iphone-se-256gb-2020-hop-moi', 100, 16990000, 'dien-thoai/iphone-se-256gb-2020-hop-moi-292720-102747-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(31, 1, 2, 'iPhone SE 64GB (2020)', 'iphone-se-2020', 100, 12990000, 'dien-thoai/iphone-se-2020-thumb-red-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(32, 1, 2, 'iPhone SE 64GB (2020) (Hộp mới)', 'iphone-se-64gb-2020-hop-moi', 100, 12990000, 'dien-thoai/iphone-se-64gb-2020-hop-moi.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(33, 1, 2, 'iPhone Xr 64GB', 'iphone-xr', 100, 14490000, 'dien-thoai/iphone-xr-hopmoi-den-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(34, 1, 2, 'iPhone Xs 64GB', 'iphone-xs', 100, 17990000, 'dien-thoai/iphone-xs-gold-600x600-2-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(35, 1, 7, 'Itel S15 Pro', 'itel-s15-pro', 100, 1690000, 'dien-thoai/itel-s15-pro-purple-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(36, 1, 10, 'Masstel HAPI 10 Fami', 'masstel-hapi-10-fami', 100, 1190000, 'dien-thoai/masstel-hapi-10-fami-den-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(37, 1, 13, 'Nokia 2.4', 'nokia-24', 100, 2490000, 'dien-thoai/nokia-24-015620-025624-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(38, 1, 13, 'Nokia 230', 'nokia-230-khong-the', 100, 1250000, 'dien-thoai/nokia-230-khong-the-gray-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(39, 1, 13, 'Nokia 5.3', 'nokia-53', 100, 2890000, 'dien-thoai/nokia-53-den-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(40, 1, 13, 'Nokia 5310 (2020)', 'nokia-5310-2020', 100, 1000000, 'dien-thoai/nokia-5310-2020-den-do-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(41, 1, 13, 'Nokia 6300 4G', 'nokia-6300-4g', 100, 1290000, 'dien-thoai/nokia-6300-4g-183720-093719-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(42, 1, 13, 'Nokia 8.3 5G', 'nokia-83', 100, 11990000, 'dien-thoai/nokia-83-012020-032021-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(43, 1, 13, 'Nokia 8000 4G', 'nokia-8000-4g', 100, 1790000, 'dien-thoai/nokia-8000-4g-184620-094629-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(44, 1, 13, 'Nokia C2', 'nokia-c2', 100, 1490000, 'dien-thoai/nokia-c2-xanh-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(45, 1, 14, 'OnePlus 8 Pro 5G', 'oneplus-8-pro', 100, 22990000, 'dien-thoai/oneplus-8-pro-600x600-2-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(46, 1, 14, 'OnePlus 8T 5G', 'oneplus-8t', 100, 17490000, 'dien-thoai/oneplus-8t-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(47, 1, 14, 'OnePlus Nord 5G', 'oneplus-nord-5g', 100, 13990000, 'dien-thoai/oneplus-nord-5g-600x600-1-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(48, 1, 15, 'OPPO A31 (4GB/128GB)', 'oppo-a31-4gb-128gb', 100, 4490000, 'dien-thoai/oppo-a31-2020-trang-600x600-1-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(49, 1, 15, 'OPPO A31 (6GB/128GB)', 'oppo-a31-2020-128gb', 100, 4790000, 'dien-thoai/oppo-a31-2020-128gb-den-600x600-1-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(50, 1, 15, 'OPPO A52', 'oppo-a52', 100, 5990000, 'dien-thoai/oppo-a52-black-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(51, 1, 15, 'OPPO A53 (2020)', 'oppo-a53-2020', 100, 4490000, 'dien-thoai/oppo-a53-2020-blue-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(52, 1, 15, 'OPPO A92', 'oppo-a92', 100, 6490000, 'dien-thoai/oppo-a92-17.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(53, 1, 15, 'OPPO A93', 'oppo-a93', 100, 7490000, 'dien-thoai/oppo-a93.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(54, 1, 15, 'OPPO Find X2', 'oppo-find-x2', 100, 19990000, 'dien-thoai/oppo-find-x2-blue-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(55, 1, 15, 'OPPO Reno3', 'oppo-reno3', 100, 6990000, 'dien-thoai/oppo-reno3-trang-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(56, 1, 15, 'OPPO Reno3 Pro', 'oppo-reno3-pro', 100, 8990000, 'dien-thoai/oppo-reno3-pro-den-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(57, 1, 15, 'OPPO Reno4', 'oppo-reno4', 100, 8490000, 'dien-thoai/oppo-reno4-260720-040737-400x460.png', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(58, 1, 15, 'OPPO Reno4 Pro', 'oppo-reno4-pro', 100, 11990000, 'dien-thoai/oppo-reno4-pro-274720-034747-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(59, 1, 16, 'Realme 5i (4GB/64GB)', 'realme-5i-4gb', 100, 3690000, 'dien-thoai/realme-5i-4gb-green-amee-thumb-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(60, 1, 16, 'Realme 6 (4GB/128GB)', 'realme-6', 100, 5690000, 'dien-thoai/realme-6-xanh-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(61, 1, 16, 'Realme 6 Pro', 'realme-6-pro', 100, 7990000, 'dien-thoai/realme-6-pro-do-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(62, 1, 16, 'Realme 6i', 'realme-6i', 100, 4990000, 'dien-thoai/realme-6i-xanh-duong-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(63, 1, 16, 'Realme 7', 'realme-7', 100, 6990000, 'dien-thoai/realme-7-043120-113116-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(64, 1, 16, 'Realme 7 Pro', 'realme-7-pro', 100, 8990000, 'dien-thoai/realme-7-pro-043220-013244-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(65, 1, 16, 'Realme 7i', 'realme-7i', 100, 6290000, 'dien-thoai/realme-7i.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(66, 1, 16, 'Realme C11', 'realme-c11', 100, 2690000, 'dien-thoai/realme-c11-090620-110624-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(67, 1, 16, 'Realme C12', 'realme-c12', 100, 3490000, 'dien-thoai/realme-c12-red-fix-2-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(68, 1, 16, 'Realme C15', 'realme-c15', 100, 4190000, 'dien-thoai/realme-c15-600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(69, 1, 16, 'Realme C3 (3GB/32GB)', 'realme-c3', 100, 2990000, 'dien-thoai/realme-c3-do-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(70, 1, 16, 'Realme C3 (3GB/64GB)', 'realme-c3-64gb', 100, 3590000, 'dien-thoai/realme-c3-64gb-263620-023637-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(71, 1, 17, 'Samsung Galaxy A01', 'samsung-galaxy-a01', 100, 2790000, 'dien-thoai/samsung-galaxy-a01-do-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(72, 1, 17, 'Samsung Galaxy A10s', 'samsung-galaxy-a10s', 100, 3690000, 'dien-thoai/samsung-galaxy-a10s-xanh-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(73, 1, 17, 'Samsung Galaxy A11', 'samsung-galaxy-a11', 100, 3590000, 'dien-thoai/samsung-galaxy-a11-xanh-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(74, 1, 17, 'Samsung Galaxy A20s 32GB', 'samsung-galaxy-a20s-32gb', 100, 4390000, 'dien-thoai/samsung-galaxy-a20s-32gb-192720-022739-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(75, 1, 17, 'Samsung Galaxy A20s 64GB', 'samsung-galaxy-a20s', 100, 5390000, 'dien-thoai/samsung-galaxy-a20s-052920-072944-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(76, 1, 17, 'Samsung Galaxy A21s (3GB/32GB)', 'samsung-galaxy-a21s-3gb', 100, 4690000, 'dien-thoai/samsung-galaxy-a21s-3gb-055520-045548-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(77, 1, 17, 'Samsung Galaxy A21s (6GB/64GB)', 'samsung-galaxy-a21s', 100, 5290000, 'dien-thoai/samsung-galaxy-a21s-055620-045659-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(78, 1, 17, 'Samsung Galaxy A30s', 'samsung-galaxy-a30s', 100, 6290000, 'dien-thoai/samsung-galaxy-a30s-053220-073204-400x460.png', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(79, 1, 17, 'Samsung Galaxy A31', 'samsung-galaxy-a31', 100, 6490000, 'dien-thoai/samsung-galaxy-a31-trang-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(80, 1, 17, 'Samsung Galaxy A50s', 'samsung-galaxy-a50s', 100, 6990000, 'dien-thoai/samsung-galaxy-a50s-050020-050032-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(81, 1, 17, 'Samsung Galaxy A51 (6GB/128GB)', 'samsung-galaxy-a51', 100, 7490000, 'dien-thoai/samsung-galaxy-a51-600x600-new-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(82, 1, 17, 'Samsung Galaxy A51 (8GB/128GB)', 'samsung-galaxy-a51-8gb', 100, 8390000, 'dien-thoai/samsung-galaxy-a51-8gb-blue-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(83, 1, 17, 'Samsung Galaxy A70', 'samsung-galaxy-a70', 100, 9290000, 'dien-thoai/samsung-galaxy-a70-053720-073758-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(84, 1, 17, 'Samsung Galaxy A71', 'samsung-galaxy-a71', 100, 9490000, 'dien-thoai/samsung-galaxy-a71-bac-inox-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(85, 1, 17, 'Samsung Galaxy M51', 'samsung-galaxy-m51', 100, 9490000, 'dien-thoai/samsung-galaxy-m51-white-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(86, 1, 17, 'Samsung Galaxy Note 10 Lite', 'samsung-galaxy-note-10-lite', 100, 10690000, 'dien-thoai/samsung-galaxy-note-10-lite-thumb-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(87, 1, 17, 'Samsung Galaxy Note 10+', 'samsung-galaxy-note-10-plus', 100, 16490000, 'dien-thoai/samsung-galaxy-note-10-plus-24.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(88, 1, 17, 'Samsung Galaxy Note 20', 'samsung-galaxy-note-20', 100, 19990000, 'dien-thoai/samsung-galaxy-note-20.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(89, 1, 17, 'Samsung Galaxy Note 20 Ultra 5G', 'samsung-galaxy-note-20-ultra-5g', 100, 28990000, 'dien-thoai/samsung-galaxy-note-20-ultra-5g-063420-123447-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(90, 1, 17, 'Samsung Galaxy Note 20 Ultra 5G Trắng', 'samsung-galaxy-note-20-ultra-5g-trang', 100, 32990000, 'dien-thoai/samsung-galaxy-note-20-ultra-5g-trang-600x600-2-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(91, 1, 17, 'Samsung Galaxy S10 Lite', 'samsung-galaxy-s10-lite', 100, 12990000, 'dien-thoai/samsung-galaxy-s10-lite-blue-thumb-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(92, 1, 17, 'Samsung Galaxy S20', 'samsung-galaxy-s20', 100, 21490000, 'dien-thoai/samsung-galaxy-s20-600x600-hong-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(93, 1, 17, 'Samsung Galaxy S20 FE', 'samsung-galaxy-s20-fan-edition', 100, 15990000, 'dien-thoai/samsung-galaxy-s20-fan-edition-242020-012039-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(94, 1, 17, 'Samsung Galaxy S20+', 'samsung-galaxy-s20-plus', 100, 23990000, 'dien-thoai/samsung-galaxy-s20-plus-400x460-fix-400x460.png', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(95, 1, 17, 'Samsung Galaxy Z Flip', 'samsung-galaxy-z-flip', 100, 36000000, 'dien-thoai/samsung-galaxy-z-flip-den-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(96, 1, 17, 'Samsung Galaxy Z Fold2 5G', 'samsung-galaxy-z-fold-2', 100, 50000000, 'dien-thoai/samsung-galaxy-z-fold-2-061220-021232-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(97, 1, 18, 'Vivo S1 Pro', 'vivo-s1-pro', 100, 5490000, 'dien-thoai/vivo-s1-pro-white-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(98, 1, 18, 'Vivo U10', 'vivo-u10', 100, 3790000, 'dien-thoai/vivo-u10-1-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(99, 1, 18, 'Vivo V19', 'vivo-v19', 100, 7990000, 'dien-thoai/vivo-v19-xanh-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(100, 1, 18, 'Vivo V19 Neo', 'vivo-v19-neo', 100, 7190000, 'dien-thoai/vivo-v19-neo-den-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(101, 1, 18, 'Vivo V20', 'vivo-v20', 100, 8490000, 'dien-thoai/vivo-v20.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(102, 1, 18, 'Vivo V20 SE', 'vivo-v20-se', 100, 7190000, 'dien-thoai/vivo-v20-se-1-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(103, 1, 18, 'Vivo X50', 'vivo-x50', 100, 11990000, 'dien-thoai/vivo-x50-155420-035433-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(104, 1, 18, 'Vivo X50 Pro', 'vivo-x50-pro', 100, 18990000, 'dien-thoai/vivo-x50-pro-155920-035955-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(105, 1, 18, 'Vivo Y11', 'vivo-y11', 100, 2990000, 'dien-thoai/vivo-y11-600-600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(106, 1, 18, 'Vivo Y12s (3GB/32GB)', 'vivo-y12s', 100, 3290000, 'dien-thoai/vivo-y12s-162620-112633-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(107, 1, 18, 'Vivo Y12s (4GB/128GB)', 'vivo-y12s-4gb-128gb', 100, 4290000, 'dien-thoai/vivo-y12s-4gb-128gb-073420-083440-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(108, 1, 18, 'Vivo Y19', 'vivo-y19', 100, 4790000, 'dien-thoai/vivo-y19-white-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(109, 1, 18, 'Vivo Y1s', 'vivo-y1s', 100, 2490000, 'dien-thoai/vivo-y1s-154420-014445-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(110, 1, 18, 'Vivo Y20', 'vivo-y20', 100, 3990000, 'dien-thoai/vivo-y20-1-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(111, 1, 18, 'Vivo Y20s', 'vivo-y20s', 100, 4990000, 'dien-thoai/vivo-y20s-xanh-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(112, 1, 18, 'Vivo Y30', 'vivo-y30', 100, 4490000, 'dien-thoai/vivo-y30-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(113, 1, 18, 'Vivo Y50', 'vivo-y50', 100, 5990000, 'dien-thoai/vivo-y50-20.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(114, 1, 19, 'Xiaomi Mi 10T Pro 5G', 'xiaomi-mi-10t-pro', 100, 12990000, 'dien-thoai/xiaomi-mi-10t-pro-300420-070407-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(115, 1, 19, 'Xiaomi POCO X3 NFC', 'xiaomi-poco-x3', 100, 6990000, 'dien-thoai/xiaomi-poco-x3-nfc-xam-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(116, 1, 19, 'Xiaomi Redmi 9 (3GB/32GB)', 'xiaomi-redmi-9-3gb', 100, 3590000, 'dien-thoai/xiaomi-redmi-9-3gb-114620-094621-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(117, 1, 19, 'Xiaomi Redmi 9 (4GB/64GB)', 'xiaomi-redmi-9', 100, 3990000, 'dien-thoai/xiaomi-redmi-9-28.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(118, 1, 19, 'Xiaomi Redmi 9A', 'xiaomi-redmi-9a', 100, 1990000, 'dien-thoai/xiaomi-redmi-9a-grey-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(119, 1, 19, 'Xiaomi Redmi 9C (2GB/32GB)', 'xiaomi-redmi-9c', 100, 2490000, 'dien-thoai/xiaomi-redmi-9c-231020-041051-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(120, 1, 19, 'Xiaomi Redmi 9C (3GB/64GB)', 'xiaomi-redmi-9c-3gb', 100, 2990000, 'dien-thoai/xiaomi-redmi-9c-3gb-234920-034900-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(121, 1, 19, 'Xiaomi Redmi Note 7 (4GB/64GB)', 'xiaomi-redmi-note-7', 100, 3990000, 'dien-thoai/xiaomi-redmi-note-7-red-600x600-2-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(122, 1, 19, 'Xiaomi Redmi Note 8 (3GB/32GB)', 'xiaomi-redmi-note-8-32gb', 100, 3990000, 'dien-thoai/xiaomi-redmi-note-8-32gb-white-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(123, 1, 19, 'Xiaomi Redmi Note 8 (4GB/128GB)', 'xiaomi-redmi-note-8-128gb', 100, 4790000, 'dien-thoai/xiaomi-redmi-note-8-128gb-black-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(124, 1, 19, 'Xiaomi Redmi Note 8 (4GB/64GB)', 'xiaomi-redmi-note-8', 100, 4490000, 'dien-thoai/xiaomi-redmi-note-8-white-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(125, 1, 19, 'Xiaomi Redmi Note 8 Pro (6GB/128GB)', 'xiaomi-redmi-note-8-pro-6gb-128gb', 100, 5990000, 'dien-thoai/xiaomi-redmi-note-8-pro-6gb-128gb-white-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(126, 1, 19, 'Xiaomi Redmi Note 9', 'xiaomi-redmi-note-9', 100, 4790000, 'dien-thoai/xiaomi-redmi-note-9-4.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(127, 1, 19, 'Xiaomi Redmi Note 9 Pro (6GB/128GB)', 'xiaomi-redmi-note-9-pro-128gb', 100, 6990000, 'dien-thoai/xiaomi-redmi-note-9-pro-128gb-white-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(128, 1, 19, 'Xiaomi Redmi Note 9 Pro (6GB/64GB)', 'xiaomi-redmi-note-9-pro', 100, 6490000, 'dien-thoai/xiaomi-redmi-note-9-pro-gray-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(129, 1, 19, 'Xiaomi Redmi Note 9S', 'xiaomi-redmi-note-9s', 100, 5990000, 'dien-thoai/xiaomi-redmi-note-9s-xanh-new-600x600-400x400.jpg', NULL, '2023-12-16 07:38:18', '2023-12-16 07:38:18'),
(130, 2, 2, 'iPhone 11 128GB (like new)', 'iphone-11-128gb-cu', 100, 15393000, 'dien-thoai-cu/iphone-11-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(131, 2, 2, 'iPhone 11 256GB (like new)', 'iphone-11-256gb-cu', 100, 16793000, 'dien-thoai-cu/iphone-11-256gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(132, 2, 2, 'iPhone 11 64GB (like new)', 'iphone-11-64gb-cu', 100, 13993000, 'dien-thoai-cu/iphone-11-64gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(133, 2, 2, 'iPhone 11 Pro 256GB (like new)', 'iphone-11-pro-256gb-cu', 100, 21693000, 'dien-thoai-cu/iphone-11-pro-256gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(134, 2, 2, 'iPhone 11 Pro 64GB (like new)', 'iphone-11-pro-64gb-cu', 100, 18893000, 'dien-thoai-cu/iphone-11-pro-64gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(135, 2, 2, 'iPhone 11 Pro Max 256GB (like new)', 'iphone-11-pro-max-256gb-cu', 100, 23793000, 'dien-thoai-cu/iphone-11-pro-max-256gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(136, 2, 2, 'iPhone 11 Pro Max 512GB (like new)', 'iphone-11-pro-max-512gb-cu', 100, 26593000, 'dien-thoai-cu/iphone-11-pro-max-512gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(137, 2, 2, 'iPhone 11 Pro Max 64GB (like new)', 'iphone-11-pro-max-64gb-cu', 100, 20993000, 'dien-thoai-cu/iphone-11-pro-max-64gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(138, 2, 2, 'iPhone 12 128GB (like new)', 'iphone-12-128gb-cu', 100, 18893000, 'dien-thoai-cu/iphone-12-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(139, 2, 2, 'iPhone 12 256GB (like new)', 'iphone-12-256gb-cu', 100, 20293000, 'dien-thoai-cu/iphone-12-256gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(140, 2, 2, 'iPhone 12 64GB (like new)', 'iphone-12-64gb-cu', 100, 17493000, 'dien-thoai-cu/iphone-12-64gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(141, 2, 2, 'iPhone 12 mini 128GB (like new)', 'iphone-12-mini-128gb-cu', 100, 16793000, 'dien-thoai-cu/iphone-12-mini-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(142, 2, 2, 'iPhone 12 mini 256GB (like new)', 'iphone-12-mini-256gb-cu', 100, 18193000, 'dien-thoai-cu/iphone-12-mini-256gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(143, 2, 2, 'iPhone 12 mini 64GB (like new)', 'iphone-12-mini-64gb-cu', 100, 15393000, 'dien-thoai-cu/iphone-12-mini-64gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(144, 2, 2, 'iPhone 12 Pro 128GB (like new)', 'iphone-12-pro-128gb-cu', 100, 21693000, 'dien-thoai-cu/iphone-12-pro-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(145, 2, 2, 'iPhone 12 Pro 256GB (like new)', 'iphone-12-pro-256gb-cu', 100, 24493000, 'dien-thoai-cu/iphone-12-pro-256gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(146, 2, 2, 'iPhone 12 Pro 512GB (like new)', 'iphone-12-pro-512gb-cu', 100, 28693000, 'dien-thoai-cu/iphone-12-pro-512gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(147, 2, 2, 'iPhone 12 Pro Max 128GB (like new)', 'iphone-12-pro-max-128gb-cu', 100, 23793000, 'dien-thoai-cu/iphone-12-pro-max-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(148, 2, 2, 'iPhone 12 Pro Max 256GB (like new)', 'iphone-12-pro-max-256gb-cu', 100, 26593000, 'dien-thoai-cu/iphone-12-pro-max-256gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(149, 2, 2, 'iPhone 12 Pro Max 512GB (like new)', 'iphone-12-pro-max-512gb-cu', 100, 30793000, 'dien-thoai-cu/iphone-12-pro-max-512gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(150, 2, 13, 'Nokia 6300 4G (like new)', 'nokia-6300-4g-cu', 100, 903000, 'dien-thoai-cu/nokia-6300-4g-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(151, 2, 13, 'Nokia 8.3 5G (like new)', 'nokia-8-3-5g-cu', 100, 8393000, 'dien-thoai-cu/nokia-8-3-5g-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(152, 2, 13, 'Nokia 8000 4G (like new)', 'nokia-8000-4g-cu', 100, 1253000, 'dien-thoai-cu/nokia-8000-4g-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(153, 2, 13, 'Nokia C2 (like new)', 'nokia-c2-cu', 100, 1043000, 'dien-thoai-cu/nokia-c2-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(154, 2, 14, 'OnePlus 8 Pro 5G (like new)', 'oneplus-8-pro-5g-cu', 100, 16093000, 'dien-thoai-cu/oneplus-8-pro-5g-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(155, 2, 15, 'OPPO Find X2 (like new)', 'oppo-find-x2-cu', 100, 13993000, 'dien-thoai-cu/oppo-find-x2-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(156, 2, 15, 'OPPO Reno3 (like new)', 'oppo-reno3-cu', 100, 4893000, 'dien-thoai-cu/oppo-reno3-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(157, 2, 15, 'OPPO Reno3 Pro (like new)', 'oppo-reno3-pro-cu', 100, 6293000, 'dien-thoai-cu/oppo-reno3-pro-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(158, 2, 15, 'OPPO Reno4 (like new)', 'oppo-reno4-cu', 100, 5943000, 'dien-thoai-cu/oppo-reno4-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(159, 2, 15, 'OPPO Reno4 Pro (like new)', 'oppo-reno4-pro-cu', 100, 8393000, 'dien-thoai-cu/oppo-reno4-pro-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(160, 2, 16, 'Realme C15 (like new)', 'realme-c15-cu', 100, 2933000, 'dien-thoai-cu/realme-c15-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(161, 2, 16, 'Realme C3 (3GB/32GB) (like new)', 'realme-c3-3gb32gb-like-new', 100, 2093000, 'dien-thoai-cu/realme-c3-3gb32gb-like-new.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:55:53'),
(162, 2, 16, 'Realme C3 (3GB/64GB) (like new)', 'realme-c3-3gb-64gb-cu', 100, 2513000, 'dien-thoai-cu/realme-c3-3gb-64gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(163, 2, 17, 'Samsung Galaxy A51 (6GB/128GB) (like new)', 'samsung-galaxy-a51-6gb-128gb-cu', 100, 5243000, 'dien-thoai-cu/samsung-galaxy-a51-6gb-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(164, 2, 17, 'Samsung Galaxy A51 (8GB/128GB) (like new)', 'samsung-galaxy-a51-8gb-128gb-cu', 100, 5873000, 'dien-thoai-cu/samsung-galaxy-a51-8gb-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(165, 2, 17, 'Samsung Galaxy Note 20 Ultra 5G (like new)', 'samsung-galaxy-note-20-ultra-5g-cu', 100, 20293000, 'dien-thoai-cu/samsung-galaxy-note-20-ultra-5g-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(166, 2, 17, 'Samsung Galaxy Note 20 Ultra 5G Trắng (like new)', 'samsung-galaxy-note-20-ultra-5g-trang-cu', 100, 23093000, 'dien-thoai-cu/samsung-galaxy-note-20-ultra-5g-trang-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(167, 2, 17, 'Samsung Galaxy S20+ (like new)', 'samsung-galaxy-s20+-cu', 100, 16793000, 'dien-thoai-cu/samsung-galaxy-s20+-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(168, 2, 17, 'Samsung Galaxy Z Flip (like new)', 'samsung-galaxy-z-flip-cu', 100, 25200000, 'dien-thoai-cu/samsung-galaxy-z-flip-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(169, 2, 17, 'Samsung Galaxy Z Fold2 5G (like new)', 'samsung-galaxy-z-fold2-5g-cu', 100, 35000000, 'dien-thoai-cu/samsung-galaxy-z-fold2-5g-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(170, 2, 18, 'Vivo Y20 (like new)', 'vivo-y20-cu', 100, 2793000, 'dien-thoai-cu/vivo-y20-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(171, 2, 18, 'Vivo Y20s (like new)', 'vivo-y20s-cu', 100, 3493000, 'dien-thoai-cu/vivo-y20s-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(172, 2, 18, 'Vivo Y30 (like new)', 'vivo-y30-cu', 100, 3493000, 'dien-thoai-cu/vivo-y30-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(173, 2, 18, 'Vivo Y50 (like new)', 'vivo-y50-cu', 100, 4193000, 'dien-thoai-cu/vivo-y50-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(174, 2, 19, 'Xiaomi Redmi Note 9 Pro (6GB/128GB) (like new)', 'xiaomi-redmi-note-9-pro-6gb-128gb-cu', 100, 4893000, 'dien-thoai-cu/xiaomi-redmi-note-9-pro-6gb-128gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(175, 2, 19, 'Xiaomi Redmi Note 9 Pro (6GB/64GB) (like new)', 'xiaomi-redmi-note-9-pro-6gb-64gb-cu', 100, 4543000, 'dien-thoai-cu/xiaomi-redmi-note-9-pro-6gb-64gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(176, 2, 19, 'Xiaomi Redmi Note 9S (like new)', 'xiaomi-redmi-note-9s-cu', 100, 4193000, 'dien-thoai-cu/xiaomi-redmi-note-9s-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(177, 2, 19, 'Xiaomi Redmi 9A (like new)', 'xiaomi-redmi-9a-cu', 100, 1393000, 'dien-thoai-cu/xiaomi-redmi-9a-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(178, 2, 19, 'Xiaomi Redmi 9 (3GB/32GB) (like new)', 'xiaomi-redmi-9-3gb-cu', 100, 2513000, 'dien-thoai-cu/xiaomi-redmi-9-3gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11'),
(179, 2, 19, 'Xiaomi Redmi 9 (4GB/64GB) (like new)', 'xiaomi-redmi-9-4gb-cu', 100, 2793000, 'dien-thoai-cu/xiaomi-redmi-9-4gb-cu.jpg', NULL, '2023-12-16 07:54:11', '2023-12-16 07:54:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

DROP TABLE IF EXISTS `tinhtrang`;
CREATE TABLE IF NOT EXISTS `tinhtrang` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tinhtrang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `role`) VALUES
(1, 'Phan Dương Hóa', 'pdhoa_21th@student.agu.edu.vn', NULL, '$2y$10$DsNSFdlRTQPRQ3TWQChDqOzHOoBSvne7VexxVWqhJMv33M6VFDdpi', '1WJh9OrhfLLj1VUuKEdwPQU3iwrcChAZH1fHOmU1Sf7x8DJEp1mh6XQoUie9', '2023-12-12 08:22:49', '2023-12-12 08:23:13', 'pdhoa_21th', 'admin');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_chude_id_foreign` FOREIGN KEY (`chude_id`) REFERENCES `chude` (`id`),
  ADD CONSTRAINT `baiviet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `binhluanbaiviet`
--
ALTER TABLE `binhluanbaiviet`
  ADD CONSTRAINT `binhluanbaiviet_baiviet_id_foreign` FOREIGN KEY (`baiviet_id`) REFERENCES `baiviet` (`id`),
  ADD CONSTRAINT `binhluanbaiviet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_tinhtrang_id_foreign` FOREIGN KEY (`tinhtrang_id`) REFERENCES `tinhtrang` (`id`),
  ADD CONSTRAINT `donhang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `donhang_chitiet`
--
ALTER TABLE `donhang_chitiet`
  ADD CONSTRAINT `donhang_chitiet_donhang_id_foreign` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `donhang_chitiet_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_hangsanxuat_id_foreign` FOREIGN KEY (`hangsanxuat_id`) REFERENCES `hangsanxuat` (`id`),
  ADD CONSTRAINT `sanpham_loaisanpham_id_foreign` FOREIGN KEY (`loaisanpham_id`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2024 lúc 02:24 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `student_mangement`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `ip_client` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `role_id`, `user_id`, `username`, `password`, `ip_client`, `last_login`, `last_logout`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'vulamphuc', '12345', NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `department_id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 6, 'Databasess', 'Hà Ngọc Linh', '', 0, NULL, '2024-04-08 16:37:13', NULL),
(3, 6, 'PHP', 'Nguyễn Thanh Triều', '', 1, NULL, '2024-04-08 13:04:16', NULL),
(22, 5, 'Topnotch1', 'Dinh Nguyen Do', '', 1, '2024-04-08 12:27:47', '2024-04-08 13:02:34', '2024-04-08 16:37:35'),
(23, 5, 'Topnotch2', 'Linh', '', 1, '2024-04-08 12:28:01', '2024-04-08 13:02:41', NULL),
(27, 5, 'Topnotch3', 'Cao Huyen Nga', '', 1, '2024-04-08 12:52:09', '2024-04-08 13:02:49', NULL),
(28, 6, 'Csharp', 'Nguyễn Trọng Hưng', '', 1, '2024-04-08 12:52:25', '2024-04-08 13:04:54', NULL),
(29, 5, 'Topnotch3', 'Dinh Nguyen Do', '', 1, '2024-04-08 16:38:05', NULL, NULL),
(30, 11, 'lạp triinh bhb', 'trieu', 'df', 1, '2024-04-08 17:09:54', NULL, NULL),
(31, 6, 'Lập trình java', 'Nguyễn Trọng Hưng', '', 0, '2024-04-08 17:26:54', '2024-04-08 17:27:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `leader` varchar(60) DEFAULT NULL,
  `beginning_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `logo` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `leader`, `beginning_date`, `status`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Tieng Anh', 'tieng-anh', 'Ms thoa', '1970-01-14', 1, 'ket_noi.png', '2024-03-18 14:10:57', '2024-04-08 16:38:29', '2024-04-08 17:29:20'),
(6, 'CNTT', 'Do Quoc Binh', 'Do Quoc Binh', '1970-01-05', 1, 'than_thiet.png', '2024-03-18 14:13:57', '2024-04-06 22:59:42', '2024-04-08 17:28:22'),
(7, 'Thiet ke do hoa', 'ms trang ', 'ms trang ', '2024-04-06', 1, 'than_thiet.png', '2024-03-21 06:27:10', '2024-04-06 23:01:38', NULL),
(11, 'd', 'd', 'd', '1970-01-01', 1, NULL, '2024-04-08 17:07:56', NULL, '2024-04-08 17:10:06'),
(12, 'VŨ LÂM PHÚC', 'VŨ LÂM PHÚC', 'asdasd', '1970-01-01', 1, NULL, '2024-04-08 17:16:09', NULL, '2024-04-08 17:16:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `student_number` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Lop truong',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_student`
--

CREATE TABLE `group_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `group_term_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `absent` tinyint(4) NOT NULL DEFAULT 1,
  `present` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_term`
--

CREATE TABLE `group_term` (
  `id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin', 1, NULL, NULL, NULL),
(2, 'student', 'student', 'student', 1, NULL, NULL, NULL),
(3, 'teacher', 'teacher', 'teacher', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_code` varchar(100) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1- nam; 2- nu; 3-khong xac dinh',
  `avatar` varchar(150) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `information` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `extra_code`, `first_name`, `last_name`, `full_name`, `email`, `phone`, `address`, `birthday`, `gender`, `avatar`, `biography`, `information`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BH00630', 'Lam Phuc', 'Vu', 'Vu Lam Phuc', 'vulamphucbh00630@fpt.edu.vn', '0971532900', '', '0000-00-00', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 'BH00630', 'Lam Phuc', 'Vu', 'Vu Lam Phuc', 'vulamphucbh00630@fpt.edu.vn', '0971532900', '', '2004-07-14', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `group_student`
--
ALTER TABLE `group_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_term_id` (`group_term_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `group_student_ibfk_5` (`teacher_id`);

--
-- Chỉ mục cho bảng `group_term`
--
ALTER TABLE `group_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_student`
--
ALTER TABLE `group_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_term`
--
ALTER TABLE `group_term`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `group_student`
--
ALTER TABLE `group_student`
  ADD CONSTRAINT `group_student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_3` FOREIGN KEY (`group_term_id`) REFERENCES `group_term` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_4` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_5` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `group_term`
--
ALTER TABLE `group_term`
  ADD CONSTRAINT `group_term_ibfk_1` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_term_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

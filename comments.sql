-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 15 2019 г., 19:36
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `comments`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_user` text,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `comment_user`, `comment_date`) VALUES
(1, 2, 'lorem2', '2019-05-09 16:42:11'),
(3, 1, 'loremAdmin', '2019-05-09 17:58:29'),
(4, 1, '123123123', '2019-05-09 21:09:48'),
(5, 1, 'hi from admin', '2019-05-09 21:10:19'),
(8, 38, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus.', '2019-05-12 17:54:52'),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci maiores nihil officiis. Ab atque cum deserunt dicta doloremque dolorum eaque earum eos error eum eveniet ex hic illo laudantium nesciunt, nihil obcaecati pariatur quae quisquam quo quod sit tenetur unde vitae voluptas. Dolor laboriosam mollitia nulla quisquam soluta suscipit, veritatis? Assumenda dolor, rerum? Accusantium adipisci asperiores atque commodi consectetur debitis deserunt distinctio dolorum ducimus earum enim, et eum expedita explicabo iusto laudantium maxime molestias mollitia nemo non nostrum odit officiis perspiciatis placeat provident quasi, quis sapiente sit ut voluptas? Assumenda aut ea neque placeat quibusdam quo ullam. Nemo, recusandae temporibus.', '2019-05-12 18:04:50');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `register_date`) VALUES
(1, 'admin', 'admin', '2019-05-09 16:26:26'),
(2, 'user1', 'user1', '2019-05-09 16:26:26'),
(36, 'user2', 'user2', '2019-05-09 20:24:31'),
(38, 'lorem', '100', '2019-05-12 17:54:44'),
(39, '1', '1', '2019-05-15 15:32:57');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

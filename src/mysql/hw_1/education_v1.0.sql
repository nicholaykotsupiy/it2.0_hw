-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 20 2021 г., 12:56
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `education`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `Заголовок` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Текст новости` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Картинка` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Автор` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Дата публикации` date NOT NULL DEFAULT current_timestamp(),
  `Активность новости` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `Регион` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Код` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `Регион`, `Код`) VALUES
(1, 'Винницкая область', 'ВI, ВТ, ВХ(ВИ)'),
(2, 'Волынская область', 'ВО, ВК, ВМ (ВН)'),
(3, 'Донецкая область', 'ЕА, ЕВ, ЕК, ЕН, ЕО, ЕС (ДО, ДЦ, СЛ)'),
(4, 'Днепропетровская область', 'АА, АВ, АЕ, АК, АН (ДН, ДП)'),
(5, 'Херсонская область', 'ХО, ХН (ХО)');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ФИО` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Адрес` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Дата рождения` date NOT NULL,
  `Роль` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `ФИО`, `Адрес`, `Дата рождения`, `Роль`) VALUES
(1, 'Коцупий Николай Дмитриевич', 'Краматорск, Котельная 17', '2002-02-02', 'Студент'),
(3, 'Костенко Юрий Петрович', 'Краматорск, Школьная 6', '1990-06-10', 'Репортёр');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

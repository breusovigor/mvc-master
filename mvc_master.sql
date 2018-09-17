-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 17 2018 г., 16:16
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mvc_master`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_code` varchar(255) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`cat_id`, `cat_code`, `cat_name`) VALUES
(1, 'sport', 'Спорт'),
(2, 'it', 'IT технологии');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `comment_theme` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`comment_id`, `user_name`, `user_email`, `comment_theme`, `comment_text`, `comment_date`, `news_id`) VALUES
(2, 'Саша', 'ef@fd.df', 'вторая тема', 'второе сообщение', '2018-09-04 19:26:40', 3),
(3, 'Александр', 'dfg@fg.fg', 'третья тема', 'третье сообщение', '2018-09-04 19:40:29', 4),
(4, 'Alex', 'fdgdg@fg', 'третья тема', 'fsfdsdf', '2018-09-04 19:44:49', 4),
(5, 'Alex', 'fdgdg@fg', 'третья тема', 'fsfdsdf', '2018-09-04 19:46:42', 4),
(6, 'Саша', 'sdf@lsd', 'dgds', 'sfg', '2018-09-04 19:47:17', 5),
(7, 'Alex', 'dfg@fg.fg', 'sfdsdf', 'dfsdfsgdf', '2018-09-04 19:52:04', 2),
(8, 'Александр', 'ALEx@mail.ua', 'fgdfgdfgfdg', 'fgdfgfdgfdg', '2018-09-04 19:52:58', 2),
(9, 'Александр', 'fdgdg@fg', 'fgsfgsdfg', 'sgdfgdfgdg', '2018-09-04 19:53:31', 3),
(10, 'Саша', 'jytrjytfj@lkjl', 'финальная проверка', 'финальное сообщение Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-09-04 20:51:35', 3),
(11, 'Alex', 'рпнорн', 'ори', 'одрлдлж', '2018-09-04 21:02:06', 3),
(12, 'alexshum', 'ghk@hjf.com', 'ldsfkjlsfjl', ';sldfk;sdlfks;ldfk;sdfllhgusdhfiusdhfkjsdhfushfksdhkfhs k skjdhfk shdfk hskdfh skdfh dfh skdhfksdhfskdfhsidjflsijfli jl ijfl ij ijf oijofijsdf jsi jsoi jfoi jsofijo jso', '2018-09-06 20:23:13', 3),
(13, 'Alexander', 'hjkl@jfkf.com', 'djlfksjlfkj', 'lskdfjls jfl kdsj flskdfj lsfj fldsfkjsdlf;s k;dlfk; kl;dsdhkfuhsi hdfisfu hfisuh idufh shsidf', '2018-09-06 20:47:04', 5),
(14, 'AAAAAA', 'mail@mail.com', 'AAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAAAAAAAAAaa', '2018-09-06 20:52:19', 4),
(15, 'ffh', 'fh', 'fgh', 'f', '2018-09-06 20:54:24', 4),
(16, 'Вадим', 'ganjawars94@gmail.com', 'афвыафы', 'fadsf', '2018-09-08 17:28:26', 4),
(17, 'Вадим', 'ganjawars94@gmail.com', 'афвыафы', 'fadsfas', '2018-09-08 18:22:56', 4),
(18, 'Вадим', 'ganjawars94@gmail.com', 'fdfd', 'fadsfads', '2018-09-08 18:23:53', 4),
(19, 'Вадим Zav', 'ganjawars94@gmail.com', 'fadsfdsa', 'fadsfas', '2018-09-08 18:24:43', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `message_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `message_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`message_id`, `user_name`, `user_email`, `user_phone`, `message_text`) VALUES
(10, 'Igor Breusov', 'bruce18021993@yandex.ru', '663863221', 'Hello`1'),
(11, 'Ihor Brieusov', 'bruce18021993@gmail.com', '221', 'asfasfasfa'),
(12, 'Ihor Brieusov', 'bruce18021993@gmail.com', '221', 'asfasfasfa'),
(13, 'Den', 'den@barabaka.com', '+380 (50) 456-8517', 'Hello my name is den'),
(14, 'Den', 'den@barabaka.com', '+380 (50) 456-8517', 'Hello my name is den');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_cat_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_type` varchar(50) NOT NULL,
  `news_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `news_short_content` text NOT NULL,
  `news_content` text NOT NULL,
  `news_author_name` varchar(255) NOT NULL,
  `news_preview` varchar(255) NOT NULL,
  `news_day` tinyint(1) NOT NULL,
  `news_views` int(11) NOT NULL,
  `news_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`news_id`, `news_cat_id`, `news_title`, `news_type`, `news_date`, `news_short_content`, `news_content`, `news_author_name`, `news_preview`, `news_day`, `news_views`, `news_code`) VALUES
(2, 2, 'Уязвимость в процессорах. Что произошло и чем это грозит?', '', '2018-01-04 12:52:00', 'Что там за история с багом в процессорах?', 'Что там за история с багом в процессорах? Независимые группы исследователей ещё в прошлом году нашли в современных процессорах две критические уязвимости, позволяющие зловредным программам…', 'Vadim', '\\template\\images\\news\\it\\processors.jpg', 1, 636, 'uyazvimost-v-processorah'),
(3, 2, 'Глава Intel знал об уязвимости в процессорах, когда в прошлом году продал почти все принадлежащие ему акции компании', '', '2018-01-04 12:52:00', 'К проблеме уязвимостей в современных процессорах сейчас приковано максимум внимания пользователей во всем мире.', 'К проблеме уязвимостей в современных процессорах сейчас приковано максимум внимания пользователей во всем мире. И вот сейчас выяснился еще один весьма занимательный факт об Intel, а точнее о…', 'Vadim', '\\template\\images\\news\\it\\intel-logo.jpg', 0, 243, 'glava-intel-uznal-ob-uyazvimosti'),
(4, 1, '\"Ювентус\" - \"Дженоа\". Анонс и прогноз матча', '', '2018-01-21 10:30:38', 'тех пор как Давиде Баллардини сменил Ивана Юрича на посту главного тренер Источник: https://www.footboom.com/italy/serie-a/1516529862--yuventus-dzhenoa-anons-i-prognoz-matcha.html', 'С тех пор как Давиде Баллардини сменил Ивана Юрича на посту главного тренера \"Дженоа\", генуэзскую команду просто не узнать. В начале сезона для \"Грифонов\" было обычным делом забить дважды в ворота \"Ювентуса\" и \"Наполи\", но получить в свои ворота ещё больше. \"Дженоа\" Баллардини стала более рациональной и прагматичной, 54-летний специалист наладил игру команды в обороне, и сейчас забить в ворота россоблу равнозначно совершенному подвигу. В восьми матчах чемпионата под руководством ДБ \"Грифоны\" пропустили - внимание! - только три мяча: один от \"Ромы\" и два - от \"Аталанты\". С \"Кротоне\", \"Вероной\", \"Фиорентиной\", \"Беневенто\", \"Торино\" и \"Сассуоло\" команда сыграла \"на ноль\". Скажете, соперники были \"не те\"? Но ведь именно в таких матчах команда и обрастает уверенностью. \"Дженоа\" Юрича ехала бы в гости к \"Ювентусу\" с дрожащими ногами, \"Дженоа\" Баллардини едет в Турин, будучи уверенной в себе. Источник: https://www.footboom.com/italy/serie-a/1516529862--yuventus-dzhenoa-anons-i-prognoz-matcha.html', '', '\\template\\images\\news\\sport\\juventus_33.jpg', 1, 370, 'juventus-jenoa-anons-matcha'),
(5, 1, '\"Ювентус\" - \"Дженоа\". Анонс и прогноз матча', '', '2018-01-21 10:30:38', 'тех пор как Давиде Баллардини сменил Ивана Юрича на посту главного тренер Источник: https://www.footboom.com/italy/serie-a/1516529862--yuventus-dzhenoa-anons-i-prognoz-matcha.html', 'С тех пор как Давиде Баллардини сменил Ивана Юрича на посту главного тренера \"Дженоа\", генуэзскую команду просто не узнать. В начале сезона для \"Грифонов\" было обычным делом забить дважды в ворота \"Ювентуса\" и \"Наполи\", но получить в свои ворота ещё больше. \"Дженоа\" Баллардини стала более рациональной и прагматичной, 54-летний специалист наладил игру команды в обороне, и сейчас забить в ворота россоблу равнозначно совершенному подвигу. В восьми матчах чемпионата под руководством ДБ \"Грифоны\" пропустили - внимание! - только три мяча: один от \"Ромы\" и два - от \"Аталанты\". С \"Кротоне\", \"Вероной\", \"Фиорентиной\", \"Беневенто\", \"Торино\" и \"Сассуоло\" команда сыграла \"на ноль\". Скажете, соперники были \"не те\"? Но ведь именно в таких матчах команда и обрастает уверенностью. \"Дженоа\" Юрича ехала бы в гости к \"Ювентусу\" с дрожащими ногами, \"Дженоа\" Баллардини едет в Турин, будучи уверенной в себе. Источник: https://www.footboom.com/italy/serie-a/1516529862--yuventus-dzhenoa-anons-i-prognoz-matcha.html', '', '\\template\\images\\news\\sport\\juventus_33.jpg', 0, 39, 'juventus-jenoa-anons-matcha2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`message_id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 20 2022 г., 11:11
-- Версия сервера: 8.0.29
-- Версия PHP: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nngp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abs`
--

CREATE TABLE `abs` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `abs`
--

INSERT INTO `abs` (`id`, `user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, '2022-09-08 18:47:51', '2022-09-10 14:10:06', NULL, 1, 0),
(2, 1, '2022-09-08 18:51:08', '2022-09-10 14:09:49', '2022-09-10 14:21:13', 0, 1),
(3, 1, '2022-09-10 14:11:08', '2022-09-11 13:36:46', NULL, 1, 0),
(4, 1, '2022-09-10 14:21:52', '2022-09-11 13:35:57', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `abs_content`
--

CREATE TABLE `abs_content` (
  `id` int NOT NULL,
  `abs_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `abs_content`
--

INSERT INTO `abs_content` (`id`, `abs_id`, `title`, `content`) VALUES
(1, 1, 'Отдам пушистых и очень красивых котят в хорошие руки', 'Котята родились в середине апреля. Кушают самостоятельно корма и еду со стола. К лотку приучены. Мама персидской породы. Все котята пушистые, есть 4 девочки и два пацана. Ласковые, игривые. Звоните: +7 989 012 34 54'),
(2, 2, 'Чистый разум не скован границами', 'Но непосредственные участники технического прогресса лишь добавляют фракционных разногласий и разоблачены. Внезапно, сделанные на базе интернет-аналитики выводы представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть ограничены исключительно образом мышления.'),
(3, 3, 'В провинциях ещё есть чем поживиться', 'Но повышение уровня гражданского сознания представляет собой интересный эксперимент проверки вывода текущих активов. Есть над чем задуматься: ключевые особенности структуры проекта набирают популярность среди определенных слоев населения, а значит, должны быть функционально разнесены на независимые элементы.'),
(4, 4, 'Как бы то ни было, экономическая повестка сегодняшнего дня разочаровала', 'Как принято считать, некоторые особенности внутренней политики набирают популярность среди определенных слоев населения, а значит, должны быть в равной степени предоставлены сами себе. Внезапно, диаграммы связей лишь добавляют фракционных разногласий и представлены в исключительно положительном свете!');

-- --------------------------------------------------------

--
-- Структура таблицы `abs_file`
--

CREATE TABLE `abs_file` (
  `id` int NOT NULL,
  `abs_id` int NOT NULL,
  `src` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `abs_file`
--

INSERT INTO `abs_file` (`id`, `abs_id`, `src`) VALUES
(1, 1, 'uploads/iM1HGDHKRTLqGVg5jDzKhEqrssonGD.jpg'),
(3, 2, 'uploads/R6oKkIaWtzomHSlVzNFwni18bsB-XE.jpg'),
(4, 2, 'uploads/W9VGI164G2zU1QGiJIn66xgMKbHwhI.jpg'),
(8, 3, 'uploads/BfNfsZGe01xc8BjtEZDZjaOIT4xnGV.jpg'),
(9, 4, 'uploads/5_-OO493jeI__kC_2FMSvU41hx5abI.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `appeals`
--

CREATE TABLE `appeals` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `status_id` int NOT NULL,
  `defined_user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `appeals`
--

INSERT INTO `appeals` (`id`, `user_id`, `status_id`, `defined_user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(2, 1, 3, 1, '2022-09-11 00:12:50', NULL, NULL, 1, 0),
(3, 1, 3, 1, '2022-09-11 00:14:19', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `appeals_content`
--

CREATE TABLE `appeals_content` (
  `id` int NOT NULL,
  `appeals_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `message_text` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `response_text` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `appeals_content`
--

INSERT INTO `appeals_content` (`id`, `appeals_id`, `title`, `message_text`, `response_text`) VALUES
(1, 2, 'Смешно, но объемы выросли', 'Являясь всего лишь частью общей картины, интерактивные прототипы формируют глобальную экономическую сеть и при этом — разоблачены. Являясь всего лишь частью общей картины, элементы политического процесса освещают чрезвычайно интересные особенности картины в целом, однако конкретные выводы, разумеется, представлены в исключительно положительном свете. Современные технологии достигли такого уровня, что дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании поставленных обществом задач.', 'Добрый день, ваше обращение принято и передано в службу безопасности для проведения внутреннего расследования!'),
(2, 3, 'Светлый лик правового взаимодействия стал нашим флагом в борьбе с ложью', 'Таким образом, убеждённость некоторых оппонентов напрямую зависит от поэтапного и последовательного развития общества. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности не даёт нам иного выбора, кроме определения соответствующих условий активизации. С другой стороны, реализация намеченных плановых заданий позволяет оценить значение экономической целесообразности принимаемых решений.', 'Прежде всего, семантический разбор внешних противодействий напрямую зависит от существующих финансовых и административных условий. Не следует, однако, забывать, что реализация намеченных плановых заданий, а также свежий взгляд на привычные вещи — безусловно открывает новые горизонты для позиций, занимаемых участниками в отношении поставленных задач.');

-- --------------------------------------------------------

--
-- Структура таблицы `appeals_file`
--

CREATE TABLE `appeals_file` (
  `id` int NOT NULL,
  `appeals_id` int NOT NULL,
  `src` varchar(2000) NOT NULL,
  `type` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `appeals_file`
--

INSERT INTO `appeals_file` (`id`, `appeals_id`, `src`, `type`) VALUES
(1, 2, 'uploads/56ACMz-VvtftRl4Ewg9Qbokrq5cb6s.pdf', 1),
(2, 3, 'uploads/BcFlhIslXop1Fes88eKVvVuYGpe-vh.pdf', 1),
(3, 3, 'uploads/ZqMQtv8YPMJHekh3BkL6ck5bujv7o-.xlsx', 1),
(4, 3, 'uploads/lI5plTuLJgG9L7sEHd-tursSZFOXQU.xlsx', 1),
(5, 2, 'uploads/X_LP_eTaBXBhmARc0zBGqTmft04cbx.doc', 2),
(6, 2, 'uploads/yoWpMB5urHmh4ajiTS4hRDDCPdQaBD.zip', 2),
(7, 2, 'uploads/FDU_X-a4j9dUiBbRk5471UoXkcqecR.msi', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `appeals_status`
--

CREATE TABLE `appeals_status` (
  `id` int NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `appeals_status`
--

INSERT INTO `appeals_status` (`id`, `name`, `status`) VALUES
(1, 'ОТВЕТ ПОЛУЧЕН', 1),
(2, 'ОЖИДАЕТ ОТВЕТА', 1),
(3, 'ЗАКРЫТО', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1661249735),
('deputy_admin', '3', 1661250432);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('addAbs', 2, NULL, NULL, NULL, NULL, NULL),
('addBlog', 2, NULL, NULL, NULL, NULL, NULL),
('addCust', 2, NULL, NULL, NULL, NULL, NULL),
('addDocs', 2, NULL, NULL, NULL, NULL, NULL),
('addNews', 2, 'Добавление новостей', NULL, NULL, 1661249735, 1661249735),
('addNewsCategory', 2, 'Добавление категорий новостей', NULL, NULL, NULL, NULL),
('addProjects', 2, NULL, NULL, NULL, NULL, NULL),
('addProjectsGroup', 2, NULL, NULL, NULL, NULL, NULL),
('addServices', 2, NULL, NULL, NULL, NULL, NULL),
('admin', 1, 'РОЛЬ: Супер администратор', NULL, NULL, 1661249735, 1661249735),
('adminAbs', 2, NULL, NULL, NULL, NULL, NULL),
('adminBlog', 2, NULL, NULL, NULL, NULL, NULL),
('adminCust', 2, NULL, NULL, NULL, NULL, NULL),
('adminDocs', 2, NULL, NULL, NULL, NULL, NULL),
('adminNews', 2, 'Просмотр панели администратора новостей', NULL, NULL, NULL, NULL),
('adminNewsCategory', 2, 'Просмотр панели администратора категорий новостей', NULL, NULL, NULL, NULL),
('adminProjects', 2, NULL, NULL, NULL, NULL, NULL),
('adminProjectsGroup', 2, NULL, NULL, NULL, NULL, NULL),
('adminServices', 2, NULL, NULL, NULL, NULL, NULL),
('adminTemplateAbout', 2, NULL, NULL, NULL, NULL, NULL),
('adminTemplateCarrier', 2, NULL, NULL, NULL, NULL, NULL),
('deleteAbs', 2, NULL, NULL, NULL, NULL, NULL),
('deleteBlog', 2, NULL, NULL, NULL, NULL, NULL),
('deleteCust', 2, NULL, NULL, NULL, NULL, NULL),
('deleteDocs', 2, NULL, NULL, NULL, NULL, NULL),
('deleteNews', 2, 'Удаление новостей', NULL, NULL, 1661249735, 1661249735),
('deleteNewsCategory', 2, 'Удаление и деактивация категорий новостей', NULL, NULL, NULL, NULL),
('deleteProjects', 2, NULL, NULL, NULL, NULL, NULL),
('deleteProjectsGroup', 2, NULL, NULL, NULL, NULL, NULL),
('deleteServices', 2, NULL, NULL, NULL, NULL, NULL),
('deputy_admin', 1, 'РОЛЬ: Администратор', NULL, NULL, 1661249735, 1661249735),
('responseAppeals', 2, NULL, NULL, NULL, NULL, NULL),
('responseInitiative', 2, NULL, NULL, NULL, NULL, NULL),
('updateAbs', 2, NULL, NULL, NULL, NULL, NULL),
('updateBlog', 2, NULL, NULL, NULL, NULL, NULL),
('updateCust', 2, NULL, NULL, NULL, NULL, NULL),
('updateNews', 2, 'Обновление новостей', NULL, NULL, 1661249735, 1661249735),
('updateNewsCategory', 2, 'Обновление категорий новостей', NULL, NULL, NULL, NULL),
('updateProjects', 2, NULL, NULL, NULL, NULL, NULL),
('updateProjectsGroup', 2, NULL, NULL, NULL, NULL, NULL),
('updateServices', 2, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'addAbs'),
('admin', 'addBlog'),
('admin', 'addCust'),
('admin', 'addDocs'),
('admin', 'addNews'),
('deputy_admin', 'addNews'),
('admin', 'addNewsCategory'),
('admin', 'addProjects'),
('admin', 'addProjectsGroup'),
('admin', 'addServices'),
('admin', 'adminAbs'),
('admin', 'adminBlog'),
('admin', 'adminCust'),
('admin', 'adminDocs'),
('admin', 'adminNews'),
('deputy_admin', 'adminNews'),
('admin', 'adminNewsCategory'),
('deputy_admin', 'adminNewsCategory'),
('admin', 'adminProjects'),
('admin', 'adminProjectsGroup'),
('admin', 'adminServices'),
('admin', 'adminTemplateAbout'),
('admin', 'adminTemplateCarrier'),
('admin', 'deleteAbs'),
('admin', 'deleteBlog'),
('admin', 'deleteCust'),
('admin', 'deleteDocs'),
('deputy_admin', 'deleteNews'),
('admin', 'deleteNewsCategory'),
('admin', 'deleteProjects'),
('admin', 'deleteProjectsGroup'),
('admin', 'deleteServices'),
('admin', 'deputy_admin'),
('admin', 'responseAppeals'),
('admin', 'responseInitiative'),
('admin', 'updateAbs'),
('admin', 'updateBlog'),
('admin', 'updateCust'),
('admin', 'updateNews'),
('admin', 'updateNewsCategory'),
('deputy_admin', 'updateNewsCategory'),
('admin', 'updateProjects'),
('admin', 'updateProjectsGroup'),
('admin', 'updateServices');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `department_id` int NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `user_id`, `department_id`, `views`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, 1, 0, '2022-08-28 22:32:52', NULL, NULL, 1, 0),
(2, 1, 1, 0, '2022-08-28 22:52:24', NULL, NULL, 1, 1),
(3, 1, 1, 0, '2022-08-28 22:57:25', NULL, NULL, 1, 1),
(4, 1, 1, 0, '2022-08-28 22:58:07', NULL, NULL, 1, 1),
(5, 1, 1, 0, '2022-08-28 23:00:10', NULL, NULL, 1, 1),
(6, 1, 2, 0, '2022-08-28 23:12:24', NULL, NULL, 1, 0),
(7, 1, 1, 0, '2022-08-28 23:16:19', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_content`
--

CREATE TABLE `blog_content` (
  `id` int NOT NULL,
  `blog_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `annotation` varchar(500) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `blog_content`
--

INSERT INTO `blog_content` (`id`, `blog_id`, `title`, `annotation`, `content`) VALUES
(1, 1, 'Реализация намеченных плановых заданий бодрит', 'Сложно сказать, почему акционеры крупнейших компаний лишь добавляют фракционных разногласий и преданы социально-демократической анафеме.', '<p>Прежде всего, укрепление и развитие внутренней структуры требует анализа приоретизации разума над эмоциями. В своём стремлении повысить качество жизни, они забывают, что курс на социально-ориентированный национальный проект требует анализа инновационных методов управления процессами. Не следует, однако, забывать, что дальнейшее развитие различных форм деятельности позволяет выполнить важные задания по разработке инновационных методов управления процессами. Банальные, но неопровержимые выводы, а также многие известные личности заблокированы в рамках своих собственных рациональных ограничений.</p>\r\n\r\n<p>Ясность нашей позиции очевидна: социально-экономическое развитие требует определения и уточнения дальнейших направлений развития! Каждый из нас понимает очевидную вещь: сплочённость команды профессионалов не даёт нам иного выбора, кроме определения дальнейших направлений развития! Вот вам яркий пример современных тенденций — внедрение современных методик прекрасно подходит для реализации кластеризации усилий. С другой стороны, новая модель организационной деятельности играет определяющее значение для переосмысления внешнеэкономических политик.</p>'),
(2, 2, 'На двадцатом съезде партии прозвучало поразительно', 'На двадцатом съезде партии прозвучало поразительное заявление: неподкупность государственных СМИ стала доступной ширнармассам', '<p>&lt;p&gt;Вот вам яркий пример современных тенденций &mdash; новая модель организационной деятельности позволяет выполнить важные задания по разработке кластеризации усилий. Лишь действия представителей оппозиции лишь добавляют фракционных разногласий и объявлены нарушающими общечеловеческие нормы этики и морали. Лишь акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть ограничены исключительно образом мышления. Прежде всего, высокое качество позиционных исследований позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. А также предприниматели в сети интернет, вне зависимости от их уровня, должны быть разоблачены. Безусловно, постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнить важные задания по разработке распределения внутренних резервов и ресурсов.&lt;/p&gt;</p>\n<p>&lt;p&gt;Как принято считать, диаграммы связей, инициированные исключительно синтетически, указаны как претенденты на роль ключевых факторов. Но независимые государства являются только методом политического участия и указаны как претенденты на роль ключевых факторов.&lt;/p&gt;</p>'),
(3, 3, 'На двадцатом съезде партии прозвучало поразительно', 'На двадцатом съезде партии прозвучало поразительное заявление: неподкупность государственных СМИ стала доступной ширнармассам', '<p>&lt;p&gt;Вот вам яркий пример современных тенденций &mdash; новая модель организационной деятельности позволяет выполнить важные задания по разработке кластеризации усилий. Лишь действия представителей оппозиции лишь добавляют фракционных разногласий и объявлены нарушающими общечеловеческие нормы этики и морали. Лишь акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть ограничены исключительно образом мышления. Прежде всего, высокое качество позиционных исследований позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. А также предприниматели в сети интернет, вне зависимости от их уровня, должны быть разоблачены. Безусловно, постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнить важные задания по разработке распределения внутренних резервов и ресурсов.&lt;/p&gt;</p>\n<p>&lt;p&gt;Как принято считать, диаграммы связей, инициированные исключительно синтетически, указаны как претенденты на роль ключевых факторов. Но независимые государства являются только методом политического участия и указаны как претенденты на роль ключевых факторов.&lt;/p&gt;</p>'),
(4, 4, 'На двадцатом съезде партии прозвучало поразительно', 'На двадцатом съезде партии прозвучало поразительное заявление: неподкупность государственных СМИ стала доступной ширнармассам', '<p>&lt;p&gt;Вот вам яркий пример современных тенденций &mdash; новая модель организационной деятельности позволяет выполнить важные задания по разработке кластеризации усилий. Лишь действия представителей оппозиции лишь добавляют фракционных разногласий и объявлены нарушающими общечеловеческие нормы этики и морали. Лишь акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть ограничены исключительно образом мышления. Прежде всего, высокое качество позиционных исследований позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. А также предприниматели в сети интернет, вне зависимости от их уровня, должны быть разоблачены. Безусловно, постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнить важные задания по разработке распределения внутренних резервов и ресурсов.&lt;/p&gt;</p>\n<p>&lt;p&gt;Как принято считать, диаграммы связей, инициированные исключительно синтетически, указаны как претенденты на роль ключевых факторов. Но независимые государства являются только методом политического участия и указаны как претенденты на роль ключевых факторов.&lt;/p&gt;</p>'),
(5, 5, 'На двадцатом съезде партии', 'На двадцатом съезде партии прозвучало поразительное заявление: неподкупность государственных СМИ стала доступной ширнармассам', '<p>&nbsp;</p>\n<p>Вот вам яркий пример современных тенденций &mdash; новая модель организационной деятельности позволяет выполнить важные задания по разработке кластеризации усилий. Лишь действия представителей оппозиции лишь добавляют фракционных разногласий и объявлены нарушающими общечеловеческие нормы этики и морали. Лишь акционеры крупнейших компаний представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть ограничены исключительно образом мышления. Прежде всего, высокое качество позиционных исследований позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. А также предприниматели в сети интернет, вне зависимости от их уровня, должны быть разоблачены. Безусловно, постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнить важные задания по разработке распределения внутренних резервов и ресурсов.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Как принято считать, диаграммы связей, инициированные исключительно синтетически, указаны как претенденты на роль ключевых факторов. Но независимые государства являются только методом политического участия и указаны как претенденты на роль ключевых факторов.</p>\n<p>&nbsp;</p>'),
(6, 6, 'Эксперты утверждают, что современная методология р', 'Следует отметить, что экономическая повестка сегодняшнего дня представляет собой интересный эксперимент проверки распределения внутренних резервов и ресурсов!', '<p>&lt;p&gt;Идейные соображения высшего порядка, а также социально-экономическое развитие играет определяющее значение для поэтапного и последовательного развития общества. Внезапно, диаграммы связей призывают нас к новым свершениям, которые, в свою очередь, должны быть смешаны с не уникальными данными до степени совершенной неузнаваемости, из-за чего возрастает их статус бесполезности. Идейные соображения высшего порядка, а также начало повседневной работы по формированию позиции позволяет выполнить важные задания по разработке глубокомысленных рассуждений. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании анализа существующих паттернов поведения. Принимая во внимание показатели успешности, сплочённость команды профессионалов позволяет выполнить важные задания по разработке поэтапного и последовательного развития общества.&lt;/p&gt;</p>\n<p>&lt;p&gt;Есть над чем задуматься: многие известные личности освещают чрезвычайно интересные особенности картины в целом, однако конкретные выводы, разумеется, ассоциативно распределены по отраслям. Однозначно, тщательные исследования конкурентов лишь добавляют фракционных разногласий и смешаны с не уникальными данными до степени совершенной неузнаваемости, из-за чего возрастает их статус бесполезности. Картельные сговоры не допускают ситуации, при которой независимые государства набирают популярность среди определенных слоев населения, а значит, должны быть объективно рассмотрены соответствующими инстанциями! Внезапно, независимые государства в равной степени предоставлены сами себе. Современные технологии достигли такого уровня, что разбавленное изрядной долей эмпатии, рациональное мышление напрямую зависит от как самодостаточных, так и внешне зависимых концептуальных решений. Ясность нашей позиции очевидна: повышение уровня гражданского сознания говорит о возможностях вывода текущих активов.&lt;/p&gt;</p>'),
(7, 7, 'Светлый лик правового взаимодействия продолжает уд', 'Каждый из нас понимает очевидную вещь: реализация намеченных плановых заданий обеспечивает актуальность распределения внутренних резервов и ресурсов.', '<p>Повседневная практика показывает, что социально-экономическое развитие не даёт нам иного выбора, кроме определения поэтапного и последовательного развития общества. В рамках спецификации современных стандартов, интерактивные прототипы будут своевременно верифицированы.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `blog_preview`
--

CREATE TABLE `blog_preview` (
  `id` int NOT NULL,
  `blog_id` int NOT NULL,
  `image_src` varchar(2000) NOT NULL,
  `video_src` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `blog_preview`
--

INSERT INTO `blog_preview` (`id`, `blog_id`, `image_src`, `video_src`) VALUES
(1, 1, '/frontend/web/uploads/vebgPfdCvtLaZ268I_pk0_2tnvnvE-.jpg', ''),
(2, 5, '/frontend/web/uploads/mHPce4ojo-hyNu0UqOQpXqUeypurxp.png', ''),
(3, 6, '/frontend/web/uploads/6x9LfUVK60O-VQwft1tRrnebypeuPE.png', 'undefined'),
(4, 7, '/frontend/web/uploads/zcJQdWISdy-IktXXs9YG0qbmdyQtFh.jpg', '');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `name` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`) VALUES
(2, 'ООО &quot;ЛУКОЙЛ-Ухтанефтепереработка&quot;', 'г. Ухта'),
(6, 'ООО &quot;ЛУКОЙЛ-Центр&quot;', 'г. Москва'),
(9, 'ООО «ЛУКОЙЛ-Волгограднефтепереработка»', 'г. Волгоград, ул.40 лет ВЛКСМ, 55.'),
(10, 'ПАО «Татнефть»', '23450 Россия, Республика Татарстан, г. Альметьевск, ул. Ленина, д. 75.');

-- --------------------------------------------------------

--
-- Структура таблицы `department`
--

CREATE TABLE `department` (
  `id` int NOT NULL,
  `middle` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `department`
--

INSERT INTO `department` (`id`, `middle`, `user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 0, 1, '2022-08-23 16:13:12', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `department_bottom`
--

CREATE TABLE `department_bottom` (
  `id` int NOT NULL,
  `department_id` int DEFAULT NULL,
  `middle_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `department_bottom`
--

INSERT INTO `department_bottom` (`id`, `department_id`, `middle_id`, `user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, NULL, 1, '2022-08-23 16:17:45', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `department_content`
--

CREATE TABLE `department_content` (
  `id` int NOT NULL,
  `data_key` varchar(10) NOT NULL,
  `department_id` int DEFAULT NULL,
  `middle_id` int DEFAULT NULL,
  `bottom_id` int DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `abbreviation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `department_content`
--

INSERT INTO `department_content` (`id`, `data_key`, `department_id`, `middle_id`, `bottom_id`, `title`, `abbreviation`, `telephone`) VALUES
(1, 'top', 1, NULL, NULL, 'Департамент по управлению обособленными подразделениями', 'ДУОП', '201-52-78'),
(2, 'bottom', NULL, NULL, 1, 'Обособленное подразделение г. Москва', 'ОП г. Москва', '123-45-67');

-- --------------------------------------------------------

--
-- Структура таблицы `department_middle`
--

CREATE TABLE `department_middle` (
  `id` int NOT NULL,
  `department_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `department_worker`
--

CREATE TABLE `department_worker` (
  `id` int NOT NULL,
  `data_key` varchar(10) NOT NULL,
  `department_id` int DEFAULT NULL,
  `middle_id` int DEFAULT NULL,
  `bottom_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `department_worker`
--

INSERT INTO `department_worker` (`id`, `data_key`, `department_id`, `middle_id`, `bottom_id`, `user_id`) VALUES
(1, 'bottom', NULL, NULL, 1, 1),
(2, 'bottom', NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `doc`
--

CREATE TABLE `doc` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `doc`
--

INSERT INTO `doc` (`id`, `user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, '2022-09-04 08:57:02', '2022-09-04 08:56:57', '2022-09-04 08:56:57', 0, 1),
(2, 1, '2022-09-04 20:14:40', NULL, NULL, 0, 1),
(3, 1, '2022-09-04 20:23:32', NULL, NULL, 0, 1),
(4, 1, '2022-09-06 11:09:23', NULL, NULL, 0, 1),
(5, 1, '2022-09-06 11:13:31', NULL, NULL, 0, 1),
(6, 1, '2022-09-06 11:13:49', NULL, NULL, 0, 1),
(7, 1, '2022-09-08 12:25:31', NULL, NULL, 0, 1),
(8, 1, '2022-09-13 07:33:52', NULL, NULL, 0, 1),
(9, 1, '2022-09-13 07:52:11', NULL, NULL, 0, 1),
(10, 1, '2022-09-13 07:54:07', NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `doc_content`
--

CREATE TABLE `doc_content` (
  `id` int NOT NULL,
  `doc_id` int NOT NULL,
  `title` varchar(1000) NOT NULL,
  `src` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `doc_content`
--

INSERT INTO `doc_content` (`id`, `doc_id`, `title`, `src`) VALUES
(1, 1, 'Система менеджмента качества', 'test'),
(2, 2, 'Российский рубль', 'uploads/V9axHsINY_WzRG-XGjmqF7Sx_nwiJ3.png'),
(3, 3, 'Интернет-магазин', 'uploads/VdD7XT6NwzmQAaAv2F_t3JYt_Ps3qn.png'),
(4, 4, 'Система администирования', 'uploads/1km3vyZejshfJetyA_nx34OETUpHJx.pdf'),
(5, 5, 'Образец договора оферты', 'uploads/jksMfBnP8YnY_Sk48BNHSqlN8xiXrN.pdf'),
(6, 6, 'Новому сотруднику', 'uploads/5R6e6JK-2ZOB_bz26s5VGsGUItQXHM.pdf'),
(7, 7, 'New document', 'uploads/himQIi-bLTpfqgLSbgog6hPZ_OBjHG.pdf'),
(8, 8, 'Тестовый документ', 'uploads/96LT57JkNWCzQau94qwtH84TS8z1AB.pdf'),
(9, 9, 'Новому сотруднику', 'uploads/_QZ6UHYFiY2-SaMZB3lmkGFDbWzb8e.pdf'),
(10, 10, 'Российский рубль', 'uploads/zqnN6ZNIPaKeTnKbIJR8ZWwFaNmGaI.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(215, 1, '2022-09-01 14:07:54', NULL, NULL, 1, 0),
(216, 1, '2022-09-01 14:17:43', NULL, NULL, 1, 0),
(217, 1, '2022-09-01 14:18:25', NULL, NULL, 1, 0),
(218, 1, '2022-09-01 14:18:32', NULL, NULL, 1, 0),
(219, 1, '2022-09-01 14:19:04', NULL, NULL, 1, 0),
(220, 1, '2022-09-01 14:19:30', NULL, NULL, 1, 0),
(221, 1, '2022-09-01 14:20:03', NULL, NULL, 1, 0),
(222, 1, '2022-09-01 14:20:10', NULL, NULL, 1, 0),
(223, 1, '2022-09-01 17:57:06', NULL, NULL, 1, 0),
(224, 1, '2022-09-02 11:00:35', NULL, NULL, 1, 0),
(225, 1, '2022-09-04 20:14:13', NULL, NULL, 1, 0),
(226, 1, '2022-09-04 20:14:40', NULL, NULL, 1, 0),
(227, 1, '2022-09-04 20:23:32', NULL, NULL, 1, 0),
(228, 1, '2022-09-05 00:02:50', NULL, NULL, 1, 0),
(229, 1, '2022-09-06 11:09:22', NULL, NULL, 1, 0),
(230, 1, '2022-09-06 11:13:30', NULL, NULL, 1, 0),
(231, 1, '2022-09-06 11:13:49', NULL, NULL, 1, 0),
(232, 1, '2022-09-07 12:14:15', NULL, NULL, 1, 0),
(233, 1, '2022-09-08 12:25:31', NULL, NULL, 1, 0),
(234, 1, '2022-09-08 18:20:30', NULL, NULL, 1, 0),
(235, 1, '2022-09-08 18:21:19', NULL, NULL, 1, 0),
(236, 1, '2022-09-08 18:21:58', NULL, NULL, 1, 0),
(237, 1, '2022-09-08 18:22:01', NULL, NULL, 1, 0),
(238, 1, '2022-09-08 18:22:05', NULL, NULL, 1, 0),
(239, 1, '2022-09-08 18:22:32', NULL, NULL, 1, 0),
(240, 1, '2022-09-08 18:23:13', NULL, NULL, 1, 0),
(241, 1, '2022-09-08 18:23:21', NULL, NULL, 1, 0),
(242, 1, '2022-09-08 18:23:28', NULL, NULL, 1, 0),
(243, 1, '2022-09-08 18:27:13', NULL, NULL, 1, 0),
(244, 1, '2022-09-08 18:27:16', NULL, NULL, 1, 0),
(245, 1, '2022-09-08 18:27:37', NULL, NULL, 1, 0),
(246, 1, '2022-09-08 18:27:39', NULL, NULL, 1, 0),
(247, 1, '2022-09-08 18:28:54', NULL, NULL, 1, 0),
(248, 1, '2022-09-08 18:28:56', NULL, NULL, 1, 0),
(249, 1, '2022-09-08 18:28:59', NULL, NULL, 1, 0),
(250, 1, '2022-09-08 18:29:07', NULL, NULL, 1, 0),
(251, 1, '2022-09-08 18:29:23', NULL, NULL, 1, 0),
(252, 1, '2022-09-08 18:29:25', NULL, NULL, 1, 0),
(253, 1, '2022-09-08 18:29:28', NULL, NULL, 1, 0),
(254, 1, '2022-09-08 18:29:34', NULL, NULL, 1, 0),
(255, 1, '2022-09-08 18:29:39', NULL, NULL, 1, 0),
(256, 1, '2022-09-08 18:29:45', NULL, NULL, 1, 0),
(257, 1, '2022-09-08 18:30:02', NULL, NULL, 1, 0),
(258, 1, '2022-09-08 18:31:01', NULL, NULL, 1, 0),
(259, 1, '2022-09-08 18:31:04', NULL, NULL, 1, 0),
(260, 1, '2022-09-08 18:43:35', NULL, NULL, 1, 0),
(261, 1, '2022-09-08 18:43:44', NULL, NULL, 1, 0),
(262, 1, '2022-09-08 18:44:57', NULL, NULL, 1, 0),
(263, 1, '2022-09-08 18:45:00', NULL, NULL, 1, 0),
(264, 1, '2022-09-08 18:47:13', NULL, NULL, 1, 0),
(265, 1, '2022-09-08 18:47:15', NULL, NULL, 1, 0),
(266, 1, '2022-09-08 18:47:48', NULL, NULL, 1, 0),
(267, 1, '2022-09-08 18:47:50', NULL, NULL, 1, 0),
(268, 1, '2022-09-08 18:50:58', NULL, NULL, 1, 0),
(269, 1, '2022-09-08 18:51:01', NULL, NULL, 1, 0),
(270, 1, '2022-09-08 18:51:04', NULL, NULL, 1, 0),
(271, 1, '2022-09-08 18:51:06', NULL, NULL, 1, 0),
(272, 1, '2022-09-10 14:11:03', NULL, NULL, 1, 0),
(273, 1, '2022-09-10 14:11:06', NULL, NULL, 1, 0),
(274, 1, '2022-09-10 14:21:37', NULL, NULL, 1, 0),
(275, 1, '2022-09-10 14:21:42', NULL, NULL, 1, 0),
(276, 1, '2022-09-10 14:21:46', NULL, NULL, 1, 0),
(277, 1, '2022-09-10 14:21:51', NULL, NULL, 1, 0),
(278, 1, '2022-09-10 16:45:25', NULL, NULL, 1, 0),
(279, 1, '2022-09-10 16:45:55', NULL, NULL, 1, 0),
(280, 1, '2022-09-10 16:46:14', NULL, NULL, 1, 0),
(281, 1, '2022-09-10 16:46:36', NULL, NULL, 1, 0),
(282, 1, '2022-09-10 16:46:49', NULL, NULL, 1, 0),
(283, 1, '2022-09-10 16:47:05', NULL, NULL, 1, 0),
(284, 1, '2022-09-10 16:48:44', NULL, NULL, 1, 0),
(285, 1, '2022-09-10 17:11:44', NULL, NULL, 1, 0),
(286, 1, '2022-09-10 17:11:47', NULL, NULL, 1, 0),
(287, 1, '2022-09-10 17:15:15', NULL, NULL, 1, 0),
(288, 1, '2022-09-10 17:16:00', NULL, NULL, 1, 0),
(289, 1, '2022-09-10 17:16:30', NULL, NULL, 1, 0),
(290, 1, '2022-09-10 17:17:49', NULL, NULL, 1, 0),
(291, 1, '2022-09-10 17:20:21', NULL, NULL, 1, 0),
(292, 1, '2022-09-10 17:35:01', NULL, NULL, 1, 0),
(293, 1, '2022-09-10 17:35:03', NULL, NULL, 1, 0),
(294, 1, '2022-09-10 18:28:34', NULL, NULL, 1, 0),
(295, 1, '2022-09-10 18:28:42', NULL, NULL, 1, 0),
(296, 1, '2022-09-10 18:28:50', NULL, NULL, 1, 0),
(297, 1, '2022-09-10 18:28:59', NULL, NULL, 1, 0),
(298, 1, '2022-09-10 19:01:28', NULL, NULL, 1, 0),
(299, 1, '2022-09-10 19:01:35', NULL, NULL, 1, 0),
(300, 1, '2022-09-10 19:02:16', NULL, NULL, 1, 0),
(301, 1, '2022-09-10 19:02:21', NULL, NULL, 1, 0),
(302, 1, '2022-09-10 19:31:07', NULL, NULL, 1, 0),
(303, 1, '2022-09-10 19:31:12', NULL, NULL, 1, 0),
(304, 1, '2022-09-10 19:31:22', NULL, NULL, 1, 0),
(305, 1, '2022-09-10 19:34:12', NULL, NULL, 1, 0),
(306, 1, '2022-09-10 19:35:09', NULL, NULL, 1, 0),
(307, 1, '2022-09-10 19:47:12', NULL, NULL, 1, 0),
(308, 1, '2022-09-10 19:53:12', NULL, NULL, 1, 0),
(309, 1, '2022-09-10 20:04:23', NULL, NULL, 1, 0),
(310, 1, '2022-09-10 20:04:48', NULL, NULL, 1, 0),
(311, 1, '2022-09-10 22:39:07', NULL, NULL, 1, 0),
(312, 1, '2022-09-10 22:40:21', NULL, NULL, 1, 0),
(313, 1, '2022-09-10 22:40:51', NULL, NULL, 1, 0),
(314, 3, '2022-09-10 22:42:45', NULL, NULL, 1, 0),
(315, 3, '2022-09-10 22:51:09', NULL, NULL, 1, 0),
(316, 1, '2022-09-10 23:03:38', NULL, NULL, 1, 0),
(317, 1, '2022-09-10 23:03:42', NULL, NULL, 1, 0),
(318, 1, '2022-09-10 23:03:49', NULL, NULL, 1, 0),
(319, 1, '2022-09-10 23:30:03', NULL, NULL, 1, 0),
(320, 1, '2022-09-11 00:11:43', NULL, NULL, 1, 0),
(321, 1, '2022-09-11 00:12:49', NULL, NULL, 1, 0),
(322, 1, '2022-09-11 00:14:09', NULL, NULL, 1, 0),
(323, 1, '2022-09-11 00:14:12', NULL, NULL, 1, 0),
(324, 1, '2022-09-11 00:14:17', NULL, NULL, 1, 0),
(325, 1, '2022-09-11 00:20:24', NULL, NULL, 1, 0),
(326, 1, '2022-09-11 00:20:32', NULL, NULL, 1, 0),
(327, 1, '2022-09-11 00:20:49', NULL, NULL, 1, 0),
(328, 1, '2022-09-11 00:20:56', NULL, NULL, 1, 0),
(329, 1, '2022-09-13 07:33:51', NULL, NULL, 1, 0),
(330, 1, '2022-09-13 07:52:11', NULL, NULL, 1, 0),
(331, 1, '2022-09-13 07:54:07', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `files_content`
--

CREATE TABLE `files_content` (
  `id` int NOT NULL,
  `file_id` int NOT NULL,
  `name` varchar(1000) NOT NULL,
  `alias` varchar(1000) NOT NULL,
  `src` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `files_content`
--

INSERT INTO `files_content` (`id`, `file_id`, `name`, `alias`, `src`) VALUES
(215, 215, 'photo_2022-07-13_13-25-08.jpg', 'ENHd7W0EXai_ZTWwQt-xXpT2MqkBjF.jpg', 'uploads/ENHd7W0EXai_ZTWwQt-xXpT2MqkBjF.jpg'),
(216, 216, '1TP8HjWlMrISnkSpHjS3ouhGFE70dg.jpg', '_kGUKppoJ7w4RodRKqg5HLCagdZuGV.jpg', 'uploads/_kGUKppoJ7w4RodRKqg5HLCagdZuGV.jpg'),
(217, 217, 'd09bzt9SW0YAlcGjnEl6CJKS9IycGY.jpg', 'FIOKRl7D5fNNEMD9LFogloNnROpxwj.jpg', 'uploads/FIOKRl7D5fNNEMD9LFogloNnROpxwj.jpg'),
(218, 218, 'dMNV6CNTiuRaHdvuMD-Iz4bwbKddnl.mp4', 'whaDafk2TTIiL6--DCB_SP5sMzckd5.mp4', 'uploads/whaDafk2TTIiL6--DCB_SP5sMzckd5.mp4'),
(219, 219, '4BiJhz4KChdwLkp0WjPR0xT2RdxqGq.jpg', 'bowklU5bo6mLO3k5OJsHpt-TCHsYc-.jpg', 'uploads/bowklU5bo6mLO3k5OJsHpt-TCHsYc-.jpg'),
(220, 220, 'Fjrj_4_HYKpxoM6-9tmxTM72ZzRFEL.png', 'MRvw98RnOMjcQhIlGd4FBxGoossEtp.png', 'uploads/MRvw98RnOMjcQhIlGd4FBxGoossEtp.png'),
(221, 221, 'EO9pZTgiq-bOI-t88lzCR7ZHoI57v9.jpg', '_3Sn8Qg65sAnhCWRonVKgesiZiB45D.jpg', 'uploads/_3Sn8Qg65sAnhCWRonVKgesiZiB45D.jpg'),
(222, 222, '1IDHMnX6pIMee1fL9K8cKmYr2Xs563.mp4', 'qSjrA0Qy9E_jrysjTgI_jl1pnoD5WZ.mp4', 'uploads/qSjrA0Qy9E_jrysjTgI_jl1pnoD5WZ.mp4'),
(223, 223, '0vpaU5FuF1OTJ2R4lcSqRAUbF4TlPr.jpg', '-1jU2lu_-EDnuVuTxBa7GFA-rI3csS.jpg', 'uploads/-1jU2lu_-EDnuVuTxBa7GFA-rI3csS.jpg'),
(224, 224, '130.webp', 'Bx6nbRturwLj42C7-DLqabjgMy-8-l.webp', 'uploads/Bx6nbRturwLj42C7-DLqabjgMy-8-l.webp'),
(225, 225, 'Group 9.png', 'mEawofEeDTv1EMyraLsayhGamUT6iw.png', 'uploads/mEawofEeDTv1EMyraLsayhGamUT6iw.png'),
(226, 226, 'Group 9.png', 'V9axHsINY_WzRG-XGjmqF7Sx_nwiJ3.png', 'uploads/V9axHsINY_WzRG-XGjmqF7Sx_nwiJ3.png'),
(227, 227, 'Union01.png', 'VdD7XT6NwzmQAaAv2F_t3JYt_Ps3qn.png', 'uploads/VdD7XT6NwzmQAaAv2F_t3JYt_Ps3qn.png'),
(228, 228, 'photo_2022-09-05_00-02-35.jpg', 'SXtJeyv8MpmNzMqR1pgVzBfjCqs80Z.jpg', 'uploads/SXtJeyv8MpmNzMqR1pgVzBfjCqs80Z.jpg'),
(229, 229, 'тестовый жокуменит в PDF.pdf', '1km3vyZejshfJetyA_nx34OETUpHJx.pdf', 'uploads/1km3vyZejshfJetyA_nx34OETUpHJx.pdf'),
(230, 230, 'образец договора оферты.pdf', 'jksMfBnP8YnY_Sk48BNHSqlN8xiXrN.pdf', 'uploads/jksMfBnP8YnY_Sk48BNHSqlN8xiXrN.pdf'),
(231, 231, 'тестовый жокуменит в PDF.pdf', '5R6e6JK-2ZOB_bz26s5VGsGUItQXHM.pdf', 'uploads/5R6e6JK-2ZOB_bz26s5VGsGUItQXHM.pdf'),
(232, 232, 'photo_2022-07-13_13-25-08.jpg', 'RUQTtFTP4qlu_VaclGMa_Kj4Yqd9Us.jpg', 'uploads/RUQTtFTP4qlu_VaclGMa_Kj4Yqd9Us.jpg'),
(233, 233, 'тестовый жокуменит в PDF.pdf', 'himQIi-bLTpfqgLSbgog6hPZ_OBjHG.pdf', 'uploads/himQIi-bLTpfqgLSbgog6hPZ_OBjHG.pdf'),
(234, 234, '1581997326_abstract-triangle_vsthemes_ru-8.jpg', 'REM2DGojMRKJ9sT8KPsXTHhaTeyd2D.jpg', 'uploads/REM2DGojMRKJ9sT8KPsXTHhaTeyd2D.jpg'),
(235, 235, '1581997326_abstract-triangle_vsthemes_ru-8.jpg', 'K84nzGo3giH4CItEbFPbiSs5rqLP1Y.jpg', 'uploads/K84nzGo3giH4CItEbFPbiSs5rqLP1Y.jpg'),
(236, 236, '1581997326_abstract-triangle_vsthemes_ru-8.jpg', 'dHd9kDKMmX2APD27puwf0FUvuoC8TM.jpg', 'uploads/dHd9kDKMmX2APD27puwf0FUvuoC8TM.jpg'),
(237, 237, '1642444066_38-phonoteka-org-p-fon-igrovoi-minimalizm-krasivo-39.png', 'BtovlhrZRFH3aP8LLqxrucLuCsypu-.png', 'uploads/BtovlhrZRFH3aP8LLqxrucLuCsypu-.png'),
(238, 238, '-min.png', 'jmoC3rvzjKgyxdnWKMFKb5GZ80xeGd.png', 'uploads/jmoC3rvzjKgyxdnWKMFKb5GZ80xeGd.png'),
(239, 239, '1581997326_abstract-triangle_vsthemes_ru-8.jpg', 'E97GaECYGgmjjIPRti3IU0SGEawTTJ.jpg', 'uploads/E97GaECYGgmjjIPRti3IU0SGEawTTJ.jpg'),
(240, 240, '-min.png', 'NCLzuTv20CGuXcVH-kRmsAQUyRBOoD.png', 'uploads/NCLzuTv20CGuXcVH-kRmsAQUyRBOoD.png'),
(241, 241, '160522-01.png', 'DL1GfkOTVzbOciZg-DUWCmgW9YOIem.png', 'uploads/DL1GfkOTVzbOciZg-DUWCmgW9YOIem.png'),
(242, 242, '1602522-02.png', 'rg7LGk7gpxvrrzsE_4BgQf1S95IVKl.png', 'uploads/rg7LGk7gpxvrrzsE_4BgQf1S95IVKl.png'),
(243, 243, '1581997326_abstract-triangle_vsthemes_ru-8.jpg', 'ARRadynHDkMvFyGqhtXpaORuSRDo_W.jpg', 'uploads/ARRadynHDkMvFyGqhtXpaORuSRDo_W.jpg'),
(244, 244, '160522-05.png', 'zi35O-H9pVC5mYZbk4YLFgtbH3cBPl.png', 'uploads/zi35O-H9pVC5mYZbk4YLFgtbH3cBPl.png'),
(245, 245, '1581997326_abstract-triangle_vsthemes_ru-8.jpg', '_0g6a9jdxmNccyNuPNlLPtd_Z1ntyz.jpg', 'uploads/_0g6a9jdxmNccyNuPNlLPtd_Z1ntyz.jpg'),
(246, 246, '1642444066_38-phonoteka-org-p-fon-igrovoi-minimalizm-krasivo-39.png', 'BkTkKrZB3d4mFYvcyzzmohdAKyVubg.png', 'uploads/BkTkKrZB3d4mFYvcyzzmohdAKyVubg.png'),
(247, 247, '1602522-02.png', 'YWb7oX0NbY1A4eesBDu4xRcPrQKkI8.png', 'uploads/YWb7oX0NbY1A4eesBDu4xRcPrQKkI8.png'),
(248, 248, '160522-05.png', 'n1h6qAZ15rXThMlFDKK7y19LCY-INH.png', 'uploads/n1h6qAZ15rXThMlFDKK7y19LCY-INH.png'),
(249, 249, '160522-03.png', '70LJ465n6EYGEmtnNQGeJzYZ8Zb0Kl.png', 'uploads/70LJ465n6EYGEmtnNQGeJzYZ8Zb0Kl.png'),
(250, 250, '1602522-02.png', 'kbJkvCnoyMMQ63_-COFADbbr8kka-M.png', 'uploads/kbJkvCnoyMMQ63_-COFADbbr8kka-M.png'),
(251, 251, '160522-01.png', 'fBx1VWgZVKlrlCKx-nGfAzMOUI_Q5l.png', 'uploads/fBx1VWgZVKlrlCKx-nGfAzMOUI_Q5l.png'),
(252, 252, '160522-03.png', 'kKtPK2bOAs-zJLUhumYlw9Tp_nJ64_.png', 'uploads/kKtPK2bOAs-zJLUhumYlw9Tp_nJ64_.png'),
(253, 253, '160522-04.png', 'wC5yB3aY6V6ZoANCtmocL4vn10Ffum.png', 'uploads/wC5yB3aY6V6ZoANCtmocL4vn10Ffum.png'),
(254, 254, '-min.png', 'r-pZm_sV_q1pLlViM6mXGTRqyaPZUh.png', 'uploads/r-pZm_sV_q1pLlViM6mXGTRqyaPZUh.png'),
(255, 255, 'e1ede584456697.5d5d6e6ddc722.jpg', 'rXJEoR6KboZthFuQQyp3YXEk9T48mn.jpg', 'uploads/rXJEoR6KboZthFuQQyp3YXEk9T48mn.jpg'),
(256, 256, '1642444066_38-phonoteka-org-p-fon-igrovoi-minimalizm-krasivo-39.png', 'ivk13ngoysNlPhwaqsTJ2dTvOTtmpY.png', 'uploads/ivk13ngoysNlPhwaqsTJ2dTvOTtmpY.png'),
(257, 257, 'ostx_01.png', 'C_jDivnfU0uShYEH9FXvemEGO5olzV.png', 'uploads/C_jDivnfU0uShYEH9FXvemEGO5olzV.png'),
(258, 258, '1602522-02.png', 'N7at3-EKghwOLQEKCLHtDExUzlwrQ9.png', 'uploads/N7at3-EKghwOLQEKCLHtDExUzlwrQ9.png'),
(259, 259, '1642444066_38-phonoteka-org-p-fon-igrovoi-minimalizm-krasivo-39.png', '7PWMgfCX4bSuKd6yLJ4-pQTGzxVnoj.png', 'uploads/7PWMgfCX4bSuKd6yLJ4-pQTGzxVnoj.png'),
(260, 260, '19.jpg', 'A-cix5EFtIGyWw_ofxXblUw3eUYj8y.jpg', 'uploads/A-cix5EFtIGyWw_ofxXblUw3eUYj8y.jpg'),
(261, 261, '20.jpg', 'WTdrf5OitsByhAfrc1knWI_rKCT7TU.jpg', 'uploads/WTdrf5OitsByhAfrc1knWI_rKCT7TU.jpg'),
(262, 262, '19.jpg', 'dMIqghSYpX4b3QQZ_9fa_DROMGdHkl.jpg', 'uploads/dMIqghSYpX4b3QQZ_9fa_DROMGdHkl.jpg'),
(263, 263, '20.jpg', 'mIfTZHCATeQ_b4Vtkfihq5xELJNIij.jpg', 'uploads/mIfTZHCATeQ_b4Vtkfihq5xELJNIij.jpg'),
(264, 264, '19.jpg', 'Mxvrgp6hf4210z67VSs6gdb_EB8GB7.jpg', 'uploads/Mxvrgp6hf4210z67VSs6gdb_EB8GB7.jpg'),
(265, 265, '20.jpg', 'XNZqZTW3RAqv6YseJljBj4Dwa3RoRI.jpg', 'uploads/XNZqZTW3RAqv6YseJljBj4Dwa3RoRI.jpg'),
(266, 266, '19.jpg', 'iM1HGDHKRTLqGVg5jDzKhEqrssonGD.jpg', 'uploads/iM1HGDHKRTLqGVg5jDzKhEqrssonGD.jpg'),
(267, 267, '20.jpg', 'VwrZAroT3xlJwReVPxuuMuR7_ppZbf.jpg', 'uploads/VwrZAroT3xlJwReVPxuuMuR7_ppZbf.jpg'),
(268, 268, '04.jpg', 'R6oKkIaWtzomHSlVzNFwni18bsB-XE.jpg', 'uploads/R6oKkIaWtzomHSlVzNFwni18bsB-XE.jpg'),
(269, 269, '07.jpg', 'W9VGI164G2zU1QGiJIn66xgMKbHwhI.jpg', 'uploads/W9VGI164G2zU1QGiJIn66xgMKbHwhI.jpg'),
(270, 270, '08.jpg', 'yBSCJuacoHR7Vp4UAhQky1mhvH8wqD.jpg', 'uploads/yBSCJuacoHR7Vp4UAhQky1mhvH8wqD.jpg'),
(271, 271, '16.jpg', 'QMom7nVoeUEgw089WefxDgzl8SOy6a.jpg', 'uploads/QMom7nVoeUEgw089WefxDgzl8SOy6a.jpg'),
(272, 272, '18.jpg', 'qFKcYtVRz43K0b1at7HwwA-dPacfWs.jpg', 'uploads/qFKcYtVRz43K0b1at7HwwA-dPacfWs.jpg'),
(273, 273, '21.jpg', 'BfNfsZGe01xc8BjtEZDZjaOIT4xnGV.jpg', 'uploads/BfNfsZGe01xc8BjtEZDZjaOIT4xnGV.jpg'),
(274, 274, '20.jpg', '5_-OO493jeI__kC_2FMSvU41hx5abI.jpg', 'uploads/5_-OO493jeI__kC_2FMSvU41hx5abI.jpg'),
(275, 275, '08.jpg', 'P_4KYkeiuS6KnzN_FL_QmRPeRSGvKt.jpg', 'uploads/P_4KYkeiuS6KnzN_FL_QmRPeRSGvKt.jpg'),
(276, 276, '25.jpg', 'OLU___cOmyEI2m_m1gBkerpeH6FmaT.jpg', 'uploads/OLU___cOmyEI2m_m1gBkerpeH6FmaT.jpg'),
(277, 277, '22.jpg', '1lQlglIaooCYXZQpdlrLz0abQz_MIB.jpg', 'uploads/1lQlglIaooCYXZQpdlrLz0abQz_MIB.jpg'),
(278, 278, 'тестовый жокуменит в PDF.pdf', 'W1UKEemA_OinOZQUvvzMSQkM-KPWgr.pdf', 'uploads/W1UKEemA_OinOZQUvvzMSQkM-KPWgr.pdf'),
(279, 279, 'тестовый жокуменит в PDF.pdf', 'aphDfXteRRmiz84beikGVlZnQeDoe_.pdf', 'uploads/aphDfXteRRmiz84beikGVlZnQeDoe_.pdf'),
(280, 280, 'тестовый жокуменит в PDF.pdf', 'roWCRA4-h_1ZmKTwJdhA8QMZlk6TXG.pdf', 'uploads/roWCRA4-h_1ZmKTwJdhA8QMZlk6TXG.pdf'),
(281, 281, 'тестовый жокуменит в PDF.pdf', 'F0sqYFECYsqyCZed4j9InhZoANMYcz.pdf', 'uploads/F0sqYFECYsqyCZed4j9InhZoANMYcz.pdf'),
(282, 282, 'образец договора оферты.pdf', 'O466cSle0YHOvsgomuXBRXifAnGA1W.pdf', 'uploads/O466cSle0YHOvsgomuXBRXifAnGA1W.pdf'),
(283, 283, 'Сайт АВЦ.docx', 'Ojav-GDAPnw-7vHJbxH0GLF94g5aPn.docx', 'uploads/Ojav-GDAPnw-7vHJbxH0GLF94g5aPn.docx'),
(284, 284, 'Ojav-GDAPnw-7vHJbxH0GLF94g5aPn.docx', 'xeMV1SLVnhxJqrEZOnSy0ZV-tutbMH.docx', 'uploads/xeMV1SLVnhxJqrEZOnSy0ZV-tutbMH.docx'),
(285, 285, 'образец договора оферты.pdf', 'hRB-2MZ2ezUebgpLFkN6gokKRSgpES.pdf', 'uploads/hRB-2MZ2ezUebgpLFkN6gokKRSgpES.pdf'),
(286, 286, 'Сайт АВЦ.docx', '_KowVp0I5VnpErdSIpT_WS-3Av8L-C.docx', 'uploads/_KowVp0I5VnpErdSIpT_WS-3Av8L-C.docx'),
(287, 287, 'образец договора оферты.pdf', 'JtmZ1pmHVWWuut2_bL98pkV3pDjGVD.pdf', 'uploads/JtmZ1pmHVWWuut2_bL98pkV3pDjGVD.pdf'),
(288, 288, 'образец договора оферты.pdf', 'AZfbEGoUbOOCyoqLpeR3JnE-CaUQcy.pdf', 'uploads/AZfbEGoUbOOCyoqLpeR3JnE-CaUQcy.pdf'),
(289, 289, 'образец договора оферты.pdf', 'd6ZHDl89WsKOlkerEY0hAso46-1g-V.pdf', 'uploads/d6ZHDl89WsKOlkerEY0hAso46-1g-V.pdf'),
(290, 290, 'образец договора оферты.pdf', 'xtkYI4opAT-ItqAKVmdqBV1yOaMvIr.pdf', 'uploads/xtkYI4opAT-ItqAKVmdqBV1yOaMvIr.pdf'),
(291, 291, 'образец договора оферты.pdf', 'M-Tq0ICJeXD-lN7xYZR9Fn3tLKiTkU.pdf', 'uploads/M-Tq0ICJeXD-lN7xYZR9Fn3tLKiTkU.pdf'),
(292, 292, 'образец договора оферты.pdf', 'exgJC7YxG7ghl00yosoX1B9I7-ij6p.pdf', 'uploads/exgJC7YxG7ghl00yosoX1B9I7-ij6p.pdf'),
(293, 293, 'Сайт АВЦ.docx', 'I7E5iy5TqbDnP6_JGkedGMwgUHI4vm.docx', 'uploads/I7E5iy5TqbDnP6_JGkedGMwgUHI4vm.docx'),
(294, 294, 'образец договора оферты.pdf', 'TnMpepaLQ0fffSbI1EOuLon8tYrzLw.pdf', 'uploads/TnMpepaLQ0fffSbI1EOuLon8tYrzLw.pdf'),
(295, 295, 'praktika_uchebnaya_texnologicheskaya_proekt-texnolog_09_03_02_sem_4_new (1).docx', 'oQPN_siVwDEY33iqVjPbDTUH57aX9t.docx', 'uploads/oQPN_siVwDEY33iqVjPbDTUH57aX9t.docx'),
(296, 296, 'products-2022-07-15.xlsx', 'mC0WumdXM5UKA1wXS24tLSq2zRXn1a.xlsx', 'uploads/mC0WumdXM5UKA1wXS24tLSq2zRXn1a.xlsx'),
(297, 297, 'products-2022-07-14.xlsx', '3oSidP1qrbpsZ_aNJ90Fy6Z6lj1136.xlsx', 'uploads/3oSidP1qrbpsZ_aNJ90Fy6Z6lj1136.xlsx'),
(298, 298, 'образец договора оферты.pdf', 'xTInVTutBsrJLMN-9ZsjCt2IprDHMO.pdf', 'uploads/xTInVTutBsrJLMN-9ZsjCt2IprDHMO.pdf'),
(299, 299, 'тестовый жокуменит в PDF.pdf', '3FFpl9CbFSi5Morcgl1pfyCserxXub.pdf', 'uploads/3FFpl9CbFSi5Morcgl1pfyCserxXub.pdf'),
(300, 300, 'тестовый жокуменит в PDF.pdf', 'il0NJOWOgIbabTqid0O6kE2i3rFXgL.pdf', 'uploads/il0NJOWOgIbabTqid0O6kE2i3rFXgL.pdf'),
(301, 301, 'образец договора оферты.pdf', 'q3zHojC_b0ID0D3PSvwsDGtZDWFjDt.pdf', 'uploads/q3zHojC_b0ID0D3PSvwsDGtZDWFjDt.pdf'),
(302, 302, 'образец договора оферты.pdf', 'Z0QWbOVziU_ajYTjP550gT6SVIa50P.pdf', 'uploads/Z0QWbOVziU_ajYTjP550gT6SVIa50P.pdf'),
(303, 303, 'products-2022-08-16.xlsx', 'C63Bai1oQq2xhRywuZKckb4gazRrwR.xlsx', 'uploads/C63Bai1oQq2xhRywuZKckb4gazRrwR.xlsx'),
(304, 304, 'тестовый жокуменит в PDF.pdf', '4zl0NnnvliWNrhd9CQsuhWj6kXX6gt.pdf', 'uploads/4zl0NnnvliWNrhd9CQsuhWj6kXX6gt.pdf'),
(305, 305, 'тестовый жокуменит в PDF.pdf', 'HiJQ-B_k4_OufNxIaV5mFMJs6i_ZFA.pdf', 'uploads/HiJQ-B_k4_OufNxIaV5mFMJs6i_ZFA.pdf'),
(306, 306, 'тестовый жокуменит в PDF.pdf', 'Hb4C9ke5cADMghJMRnPs3P6UvNKxKf.pdf', 'uploads/Hb4C9ke5cADMghJMRnPs3P6UvNKxKf.pdf'),
(307, 307, 'тестовый жокуменит в PDF.pdf', 'T4ziEe9qevY4s7EpVZIt34vg0F8o0d.pdf', 'uploads/T4ziEe9qevY4s7EpVZIt34vg0F8o0d.pdf'),
(308, 308, 'тестовый жокуменит в PDF.pdf', 'DuaRIz3zW4sK5eSLtYnxqV8342ZOG1.pdf', 'uploads/DuaRIz3zW4sK5eSLtYnxqV8342ZOG1.pdf'),
(309, 309, 'тестовый жокуменит в PDF.pdf', 'Tq6uj_YTbY1P_wELDqiMTje8j1sCTZ.pdf', 'uploads/Tq6uj_YTbY1P_wELDqiMTje8j1sCTZ.pdf'),
(310, 310, 'тестовый жокуменит в PDF.pdf', 'H6fkKAkj4culkoI045qKS7uWgbvT55.pdf', 'uploads/H6fkKAkj4culkoI045qKS7uWgbvT55.pdf'),
(311, 311, 'образец договора оферты.pdf', '03JtCTgO1CIt3qYQkCdKC-C1PfiVTg.pdf', 'uploads/03JtCTgO1CIt3qYQkCdKC-C1PfiVTg.pdf'),
(312, 312, 'образец договора оферты.pdf', 'KvMVUFV7JmBy1wMEl7TpNJcL76vqvW.pdf', 'uploads/KvMVUFV7JmBy1wMEl7TpNJcL76vqvW.pdf'),
(313, 313, 'образец договора оферты.pdf', 'jrQ2O99qNnnb3zIXncLQmbu0Sky-Zc.pdf', 'uploads/jrQ2O99qNnnb3zIXncLQmbu0Sky-Zc.pdf'),
(314, 314, 'образец договора оферты.pdf', 'KacqtltGt-PqDUSI30RcuICm1v9O-b.pdf', 'uploads/KacqtltGt-PqDUSI30RcuICm1v9O-b.pdf'),
(315, 315, 'образец договора оферты.pdf', '2nl8uwLqQlNnGNAwsGSFPDFMy_NAm8.pdf', 'uploads/2nl8uwLqQlNnGNAwsGSFPDFMy_NAm8.pdf'),
(316, 316, 'образец договора оферты.pdf', 'AAel3enGowgB2d4J1pZJSXOCSVKHAO.pdf', 'uploads/AAel3enGowgB2d4J1pZJSXOCSVKHAO.pdf'),
(317, 317, 'products-2022-07-15.xlsx', 'iTM0n71FOByx0PGpjg4aPr9wHbfJwg.xlsx', 'uploads/iTM0n71FOByx0PGpjg4aPr9wHbfJwg.xlsx'),
(318, 318, 'praktika_uchebnaya_texnologicheskaya_proekt-texnolog_09_03_02_sem_4_new.docx', 'zq5muWovhN8uDX0eCGDZiavoJ6jet2.docx', 'uploads/zq5muWovhN8uDX0eCGDZiavoJ6jet2.docx'),
(319, 319, 'образец договора оферты.pdf', 'yVt8p8TlU6RvqEIKK227LRHiYtlTwy.pdf', 'uploads/yVt8p8TlU6RvqEIKK227LRHiYtlTwy.pdf'),
(320, 320, 'образец договора оферты.pdf', 'jZuj-Ws4hvglOKxexyWLa4kIDxq4_B.pdf', 'uploads/jZuj-Ws4hvglOKxexyWLa4kIDxq4_B.pdf'),
(321, 321, 'образец договора оферты.pdf', '56ACMz-VvtftRl4Ewg9Qbokrq5cb6s.pdf', 'uploads/56ACMz-VvtftRl4Ewg9Qbokrq5cb6s.pdf'),
(322, 322, 'образец договора оферты.pdf', 'BcFlhIslXop1Fes88eKVvVuYGpe-vh.pdf', 'uploads/BcFlhIslXop1Fes88eKVvVuYGpe-vh.pdf'),
(323, 323, 'products-2022-07-15.xlsx', 'ZqMQtv8YPMJHekh3BkL6ck5bujv7o-.xlsx', 'uploads/ZqMQtv8YPMJHekh3BkL6ck5bujv7o-.xlsx'),
(324, 324, 'products-2022-07-14.xlsx', 'lI5plTuLJgG9L7sEHd-tursSZFOXQU.xlsx', 'uploads/lI5plTuLJgG9L7sEHd-tursSZFOXQU.xlsx'),
(325, 325, 'образец договора оферты.pdf', 'x3RGyq9GdZi3UQZZgu4lizcvbfs9xM.pdf', 'uploads/x3RGyq9GdZi3UQZZgu4lizcvbfs9xM.pdf'),
(326, 326, 'dogovor-oferti.doc', 'X_LP_eTaBXBhmARc0zBGqTmft04cbx.doc', 'uploads/X_LP_eTaBXBhmARc0zBGqTmft04cbx.doc'),
(327, 327, 'jquery-mousewheel-3.1.13.zip', 'yoWpMB5urHmh4ajiTS4hRDDCPdQaBD.zip', 'uploads/yoWpMB5urHmh4ajiTS4hRDDCPdQaBD.zip'),
(328, 328, 'yarn-1.22.19.msi', 'FDU_X-a4j9dUiBbRk5471UoXkcqecR.msi', 'uploads/FDU_X-a4j9dUiBbRk5471UoXkcqecR.msi'),
(329, 329, 'Famous businesspeople.pdf', '96LT57JkNWCzQau94qwtH84TS8z1AB.pdf', 'uploads/96LT57JkNWCzQau94qwtH84TS8z1AB.pdf'),
(330, 330, 'Famous businesspeople.pdf', '_QZ6UHYFiY2-SaMZB3lmkGFDbWzb8e.pdf', 'uploads/_QZ6UHYFiY2-SaMZB3lmkGFDbWzb8e.pdf'),
(331, 331, 'Famous businesspeople.pdf', 'zqnN6ZNIPaKeTnKbIJR8ZWwFaNmGaI.pdf', 'uploads/zqnN6ZNIPaKeTnKbIJR8ZWwFaNmGaI.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `footerbar`
--

CREATE TABLE `footerbar` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `footerbar_content`
--

CREATE TABLE `footerbar_content` (
  `id` int NOT NULL,
  `footerbar_id` int NOT NULL,
  `data_column` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `href` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `status_delete` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_content`
--

CREATE TABLE `gallery_content` (
  `id` int NOT NULL,
  `gallery_id` int NOT NULL,
  `title` int NOT NULL,
  `cover_src` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_items`
--

CREATE TABLE `gallery_items` (
  `id` int NOT NULL,
  `gallery_id` int NOT NULL,
  `src` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `honor`
--

CREATE TABLE `honor` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `honor_content`
--

CREATE TABLE `honor_content` (
  `id` int NOT NULL,
  `honor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `information`
--

CREATE TABLE `information` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `information`
--

INSERT INTO `information` (`id`, `user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, '2022-08-23 19:08:57', NULL, NULL, 1, 0),
(2, 1, '2022-08-23 19:08:57', NULL, NULL, 1, 0),
(3, 3, '2022-08-23 19:08:57', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `information_content`
--

CREATE TABLE `information_content` (
  `id` int NOT NULL,
  `information_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `src` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `information_content`
--

INSERT INTO `information_content` (`id`, `information_id`, `title`, `src`) VALUES
(1, 1, 'Новый сотруднику', 'test'),
(2, 2, 'Образец договора', 'test'),
(3, 3, 'Новый документ', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `initiative`
--

CREATE TABLE `initiative` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `department_id` int NOT NULL,
  `status_id` int NOT NULL,
  `category_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `initiative`
--

INSERT INTO `initiative` (`id`, `user_id`, `department_id`, `status_id`, `category_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, 2, 2, 1, '2022-09-11 17:23:05', NULL, NULL, 1, 0),
(2, 1, 2, 5, 2, '2022-09-11 18:15:02', NULL, NULL, 1, 0),
(5, 1, 1, 7, 5, '2022-09-12 07:47:32', NULL, NULL, 1, 0),
(6, 1, 1, 3, 1, '2022-09-12 07:50:27', NULL, NULL, 1, 0),
(8, 3, 1, 1, 1, '2022-09-12 07:54:15', NULL, NULL, 1, 0),
(9, 1, 2, 1, 1, '2022-09-13 09:48:16', NULL, NULL, 1, 0),
(10, 1, 2, 1, 2, '2022-09-13 09:48:53', NULL, NULL, 1, 0),
(11, 1, 2, 1, 3, '2022-09-13 09:50:40', NULL, NULL, 1, 0),
(12, 3, 1, 1, 5, '2022-09-13 09:51:04', NULL, NULL, 1, 0),
(13, 1, 1, 1, 4, '2022-09-13 09:51:27', NULL, NULL, 1, 0),
(14, 1, 2, 1, 2, '2022-09-13 09:51:54', NULL, NULL, 1, 0),
(15, 1, 1, 1, 1, '2022-09-13 09:56:10', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `initiative_category`
--

CREATE TABLE `initiative_category` (
  `id` int NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `initiative_category`
--

INSERT INTO `initiative_category` (`id`, `name`, `status`, `status_delete`) VALUES
(1, 'Улучшение процессов', 1, 0),
(2, 'Снижение затрат', 1, 0),
(3, 'Сокращение потерь', 1, 0),
(4, 'Улучшение качества проектной продукции', 1, 0),
(5, 'Экономия ресурсов', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `initiative_content`
--

CREATE TABLE `initiative_content` (
  `id` int NOT NULL,
  `initiative_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `problem_text` varchar(2000) NOT NULL,
  `solution_text` varchar(2000) NOT NULL,
  `effect_text` varchar(2000) NOT NULL,
  `effect_meta` varchar(2000) DEFAULT NULL,
  `response_text` varchar(2000) DEFAULT NULL,
  `amount_rewarded` varchar(100) DEFAULT NULL,
  `contacts` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `initiative_content`
--

INSERT INTO `initiative_content` (`id`, `initiative_id`, `title`, `problem_text`, `solution_text`, `effect_text`, `effect_meta`, `response_text`, `amount_rewarded`, `contacts`) VALUES
(1, 1, 'Разработка автоматизированной программы в «Microsoft Excel» для упрощения задачи при выборе и подсчете количества крепежа сотрудникам', 'После оценки трудозатрат, потраченных на выполнение подбора крепежных \nэлементов для трубопроводной арматуры было принято решение о разработке \nавтоматизированной программы в «Microsoft Excel».', 'Было принято решение о разработке автоматизированной программы в «Microsoft Excel»', 'Данная программа упростит задачу при выборе и подсчете количества крепежа сотрудникам, а также исключит ошибки, связанные с человеческим фактором при выполнении последующих аналогичных проектов. 180 000 руб./120 чел/час', NULL, 'Использование компьютера требует специальных навыков. Людей, достигших в этом мастерства, иногда называют «хакерами». Обычно хакер – это человек, который создаёт программное обеспечение на специальном компьютерном языке. Но слово «хакер» также применимо к человеку, который пытается украсть информацию из компьютерных систем.', NULL, '000-00-00'),
(2, 2, 'Благородные стремления не спасут: преступность никогда не была такой неорганизованной!', 'Но действия представителей оппозиции призывают нас к новым свершениям, которые, в свою очередь, должны быть заблокированы в рамках своих собственных рациональных ограничений! Ясность нашей позиции очевидна: глубокий уровень погружения не оставляет шанса для дальнейших направлений развития.', 'Картельные сговоры не допускают ситуации, при которой многие известные личности объявлены нарушающими общечеловеческие нормы этики и морали. Предварительные выводы неутешительны: начало повседневной работы по формированию позиции требует определения и уточнения направлений прогрессивного развития.', 'Наше дело не так однозначно, как может показаться: сложившаяся структура организации предоставляет широкие возможности для приоретизации разума над эмоциями. Повседневная практика показывает, что социально-экономическое развитие способствует подготовке и реализации новых предложений.', '180 000 руб./\n120 чел/час', 'Добрый день! Необходимо доработать концепцию после чего руководство рассмотрит данную инициативу.', '15000', 'balabaev@ideait.ru'),
(5, 5, 'Копировать Использование компьютера требует специальных навыков.', 'Компьютер стал неотъемлемой частью жизни человека. Это обязательный инструмент развития человека. Каждая большая и малая промышленность компьютеризирована. Компьютеры выполнять свою работу эффективно, быстро и продуктивно. Без сомнений, они сделали нашу жизнь намного легче.', 'Компьютеры коренным образом изменили жизнь каждого человека. Несколько десятилетий назад люди даже не знали ничего об этих электронных устройствах, тогда как в наши дни даже маленький ребенок может управлять этой машиной. Почти все современные технологии зависит от компьютеров, которые используются для хранения данных: файлов, секретной информации, банковских операций и прочего.', 'Маленькие дети больше всего подвержены риску. Сейчас они часто остаются без присмотра. Поэтому они много времени проводят за монитором компьютера, играют в компьютерные игры, смотрят видео или просто сидят в Интернете. В результате дети не развиваются физически. Они не проводят время на свежем воздухе, не занимаются спортом и не играют в игры. Позже им становится трудно общаться с другими людьми в живую, потому что они не имеют необходимых коммуникативных и социальных навыков.\n\n', NULL, NULL, NULL, '123-45-56'),
(6, 6, 'Компьютерные технологии стали неотъемлемой частью жизни людей.', 'Маленькие дети больше всего подвержены риску. Сейчас они часто остаются без присмотра. Поэтому они много времени проводят за монитором компьютера, играют в компьютерные игры, смотрят видео или просто сидят в Интернете. В результате дети не развиваются физически. Они не проводят время на свежем воздухе, не занимаются спортом и не играют в игры. Позже им становится трудно общаться с другими людьми в живую, потому что они не имеют необходимых коммуникативных и социальных навыков.', 'Интересно, что первый компьютер был размером с микроавтобус и весил почти тонну. В то время как сейчас это может быть маленький чип размером с булавку. И компьютерные технологии не стоят на месте, она быстро прогрессируют.', 'Использование компьютера требует специальных навыков. Людей, достигших в этом мастерства, иногда называют «хакерами». Обычно хакер – это человек, который создаёт программное обеспечение на специальном компьютерном языке. Но слово «хакер» также применимо к человеку, который пытается украсть информацию из компьютерных систем.\n\n', NULL, 'Политика компании не приемлют таких действий!', NULL, '123-45-56'),
(8, 8, 'Использование компьютера требует специальных навыков. Людей, достигших в этом мастерства, иногда называют «хакерами».', 'Многие люди, работа которых связана с компьютерами жалуются на проблемы со здоровьем, такие как головная боль, заболевания кисти, боли в спине, плохое зрение. Кроме того, проводя много времени за компьютером, начинаем чрезмерно питаться, что в свою очередь приводит к ожирению.', 'Многие люди, работа которых связана с компьютерами жалуются на проблемы со здоровьем, такие как головная боль, заболевания кисти, боли в спине, плохое зрение. Кроме того, проводя много времени за компьютером, начинаем чрезмерно питаться, что в свою очередь приводит к ожирению.', 'Многие люди, работа которых связана с компьютерами жалуются на проблемы со здоровьем, такие как головная боль, заболевания кисти, боли в спине, плохое зрение. Кроме того, проводя много времени за компьютером, начинаем чрезмерно питаться, что в свою очередь приводит к ожирению. \n\n', NULL, NULL, NULL, '123-45-56'),
(9, 9, 'Внезапно, средства индивидуальной защиты оказались бесполезны', 'Однозначно, реплицированные с зарубежных источников, современные исследования, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут преданы социально-демократической анафеме. В своём стремлении повысить качество жизни, они забывают, что сплочённость команды профессионалов не даёт нам иного выбора, кроме определения своевременного выполнения сверхзадачи! Как принято считать, сторонники тоталитаризма в науке ограничены исключительно образом мышления.', 'Однозначно, реплицированные с зарубежных источников, современные исследования, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут преданы социально-демократической анафеме. В своём стремлении повысить качество жизни, они забывают, что сплочённость команды профессионалов не даёт нам иного выбора, кроме определения своевременного выполнения сверхзадачи! Как принято считать, сторонники тоталитаризма в науке ограничены исключительно образом мышления.', 'Однозначно, реплицированные с зарубежных источников, современные исследования, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут преданы социально-демократической анафеме. В своём стремлении повысить качество жизни, они забывают, что сплочённость команды профессионалов не даёт нам иного выбора, кроме определения своевременного выполнения сверхзадачи! Как принято считать, сторонники тоталитаризма в науке ограничены исключительно образом мышления.', NULL, NULL, NULL, '123'),
(10, 10, 'Новая модель организационной деятельности расставила все точки над i', 'Новая модель организационной деятельности расставила все точки над i', 'Новая модель организационной деятельности расставила все точки над i', 'Новая модель организационной деятельности расставила все точки над i', NULL, NULL, NULL, '123'),
(11, 11, 'Тяжёлое машиностроение — это вам не песнь светлого будущего', 'Тяжёлое машиностроение — это вам не песнь светлого будущего', 'Тяжёлое машиностроение — это вам не песнь светлого будущего', 'Тяжёлое машиностроение — это вам не песнь светлого будущего', NULL, NULL, NULL, '1231515'),
(12, 12, 'Британские «ученые» заявили, что парад бытовой техники оказался началом великой войны', 'Британские «ученые» заявили, что парад бытовой техники оказался началом великой войны', 'Британские «ученые» заявили, что парад бытовой техники оказался началом великой войны', 'Британские «ученые» заявили, что парад бытовой техники оказался началом великой войны', NULL, NULL, NULL, '21213'),
(13, 13, 'Только кровь стынет в жилах', 'Только кровь стынет в жилах', 'Только кровь стынет в жилах', 'Только кровь стынет в жилах', NULL, NULL, NULL, '211242'),
(14, 14, 'Нет звука приятнее, чем трубный призыв', 'Нет звука приятнее, чем трубный призыв', 'Нет звука приятнее, чем трубный призыв', 'Нет звука приятнее, чем трубный призыв', NULL, NULL, NULL, '321312431'),
(15, 15, 'Давайте разбираться: чистый разум не скован границами', 'Давайте разбираться: чистый разум не скован границами', 'Давайте разбираться: чистый разум не скован границами', 'Давайте разбираться: чистый разум не скован границами', NULL, NULL, NULL, '213');

-- --------------------------------------------------------

--
-- Структура таблицы `initiative_status`
--

CREATE TABLE `initiative_status` (
  `id` int NOT NULL,
  `name` varchar(500) NOT NULL,
  `color` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `initiative_status`
--

INSERT INTO `initiative_status` (`id`, `name`, `color`, `status`, `status_delete`) VALUES
(1, 'Зарегистрировано', '#78716c', 1, 0),
(2, 'Бюджет следующего года', '#14b8a6', 1, 0),
(3, 'Нецелесообразно', '#ef4444', 1, 0),
(4, 'Передано на доработку', '#eab308', 1, 0),
(5, 'Выполнено', '#22c55e', 1, 0),
(6, 'Принято к реализации (выполнению)', '#22c55e', 1, 0),
(7, 'На рассмотрении', '#3b82f6', 1, 0),
(8, 'Другое решение', '#64748b', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `initiative_supportive`
--

CREATE TABLE `initiative_supportive` (
  `id` int NOT NULL,
  `initiative_id` int NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `initiative_supportive`
--

INSERT INTO `initiative_supportive` (`id`, `initiative_id`, `user_id`) VALUES
(2, 1, 0),
(3, 2, 3),
(6, 5, 0),
(7, 6, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 3),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `data_core` varchar(500) NOT NULL,
  `data_key` varchar(500) NOT NULL,
  `data_log` varchar(5000) NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `error` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`id`, `data_core`, `data_key`, `data_log`, `user_id`, `date_add`, `success`, `error`) VALUES
(299, 'initiative', 'view-regedit-initiative', 'Onload pagination', 1, '2022-09-13 19:51:57', 1, 'false'),
(300, 'initiative', 'view-regedit-initiative', 'Onload pagination', 1, '2022-09-13 19:52:43', 1, 'false'),
(301, 'initiative', 'search-initiative', 'Searching data - Нет', 1, '2022-09-13 19:52:45', 1, 'false'),
(302, 'initiative', 'search-initiative', 'Searching data - Нет', 1, '2022-09-13 19:52:45', 1, 'false'),
(303, 'initiative', 'search-initiative', 'Searching data - Нет з', 1, '2022-09-13 19:52:47', 1, 'false'),
(304, 'initiative', 'search-initiative', 'Searching data - Нет зв', 1, '2022-09-13 19:52:47', 1, 'false'),
(305, 'initiative', 'search-initiative', 'Searching data - Нет звк', 1, '2022-09-13 19:52:47', 1, 'false'),
(306, 'initiative', 'search-initiative', 'Searching data - Нет зву', 1, '2022-09-13 19:52:48', 1, 'false'),
(307, 'initiative', 'search-initiative', 'Searching data - Нет зву', 1, '2022-09-13 19:52:48', 1, 'false'),
(308, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:48', 1, 'false'),
(309, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:49', 1, 'false'),
(310, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:50', 1, 'false'),
(311, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:50', 1, 'false'),
(312, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:50', 1, 'false'),
(313, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:51', 1, 'false'),
(314, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:51', 1, 'false'),
(315, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:52', 1, 'false'),
(316, 'initiative', 'search-initiative', 'Searching data - Нет звук', 1, '2022-09-13 19:52:52', 1, 'false'),
(317, 'initiative', 'search-initiative', 'Searching data - Тол', 1, '2022-09-13 19:52:55', 1, 'false'),
(318, 'initiative', 'search-initiative', 'Searching data - Тольк', 1, '2022-09-13 19:52:55', 1, 'false'),
(319, 'initiative', 'search-initiative', 'Searching data - Тольк', 1, '2022-09-13 19:52:55', 1, 'false'),
(320, 'initiative', 'search-initiative', 'Searching data - Только', 1, '2022-09-13 19:52:55', 1, 'false'),
(321, 'initiative', 'search-initiative', 'Searching data - вне', 1, '2022-09-13 19:52:58', 1, 'false'),
(322, 'initiative', 'search-initiative', 'Searching data - внез', 1, '2022-09-13 19:52:59', 1, 'false'),
(323, 'initiative', 'search-initiative', 'Searching data - внеза', 1, '2022-09-13 19:53:00', 1, 'false'),
(324, 'initiative', 'sort-initiative', 'Sorting data - Бал', 1, '2022-09-13 19:53:08', 1, 'false'),
(325, 'initiative', 'sort-initiative', 'Sorting data - Бал', 1, '2022-09-13 19:53:08', 1, 'false'),
(326, 'initiative', 'sort-initiative', 'Sorting data - Бала', 1, '2022-09-13 19:53:08', 1, 'false'),
(327, 'initiative', 'sort-initiative', 'Sorting data - Балаб', 1, '2022-09-13 19:53:08', 1, 'false'),
(328, 'initiative', 'sort-initiative', 'Sorting data - Балаба', 1, '2022-09-13 19:53:09', 1, 'false'),
(329, 'initiative', 'view-regedit-initiative', 'Onload pagination', 1, '2022-09-13 19:53:30', 1, 'false'),
(330, 'initiative', 'sort-initiative', 'Sorting data - Мос', 1, '2022-09-13 19:53:32', 1, 'false'),
(331, 'initiative', 'view-regedit-initiative', 'Onload pagination', 1, '2022-09-13 19:53:54', 1, 'false'),
(332, 'initiative', 'sort-initiative', 'Sorting data - Vjc', 1, '2022-09-13 19:53:56', 1, 'false'),
(333, 'initiative', 'sort-initiative', 'Sorting data - Vjc', 1, '2022-09-13 19:53:58', 1, 'false'),
(334, 'initiative', 'sort-initiative', 'Sorting data - Vjcr', 1, '2022-09-13 19:53:58', 1, 'false'),
(335, 'initiative', 'sort-initiative', 'Sorting data - Vjc', 1, '2022-09-13 19:53:59', 1, 'false'),
(336, 'initiative', 'sort-initiative', 'Sorting data - Мос', 1, '2022-09-13 19:54:00', 1, 'false'),
(337, 'initiative', 'view-regedit-initiative', 'Onload pagination', 1, '2022-09-13 19:54:11', 1, 'false'),
(338, 'initiative', 'view-regedit-initiative', 'Onload pagination', 1, '2022-09-13 19:54:14', 1, 'false'),
(339, 'initiative', 'view-me-initiative', 'View me initiative on index page', 1, '2022-09-13 19:54:17', 1, 'false'),
(340, 'initiative', 'view-my-initiative', 'View my initiative on index page', 1, '2022-09-13 19:54:17', 1, 'false'),
(341, 'initiative', 'search-initiative', 'Searching data -шщо', 1, '2022-09-13 19:54:21', 1, 'false'),
(342, 'initiative', 'search-initiative', 'Searching data -шщошо', 1, '2022-09-13 19:54:21', 1, 'false'),
(343, 'initiative', 'search-initiative', 'Searching data -шщошо', 1, '2022-09-13 19:54:21', 1, 'false'),
(344, 'appeals', 'load-my-appeals', 'loaded to tab my appeals', 1, '2022-09-13 19:54:24', 1, 'false'),
(345, 'appeals', 'load-my-appeals', 'loaded to tab my appeals', 1, '2022-09-13 19:54:24', 1, 'false'),
(346, 'docs', 'loaded', 'Loading docs on ajax (pagination) - 0', 1, '2022-09-13 19:56:23', 1, 'false'),
(347, 'docs', 'loaded', 'Loading docs on ajax (pagination) - 0', 1, '2022-09-13 19:56:37', 1, 'false'),
(348, 'initiative', 'view-me-initiative', 'View me initiative on index page', 1, '2022-09-19 20:49:27', 1, 'false'),
(349, 'initiative', 'view-my-initiative', 'View my initiative on index page', 1, '2022-09-19 20:49:27', 1, 'false'),
(350, 'docs', 'loaded', 'Loading docs on ajax (pagination) - 0', 1, '2022-09-19 20:49:51', 1, 'false'),
(351, 'docs', 'remove-file', 'remove_data_file - 10', 1, '2022-09-19 20:49:55', 1, 'false'),
(352, 'docs', 'loaded', 'Loading docs on ajax (pagination) - 0', 1, '2022-09-19 20:49:56', 1, 'false'),
(353, 'docs', 'loaded', 'Loading docs on ajax (pagination) - 0', 1, '2022-09-19 20:49:58', 1, 'false'),
(354, 'services', 'pagination', 'loaded_items_type - 1', 1, '2022-09-19 20:50:16', 1, 'false'),
(355, 'services', 'pagination', 'loaded_items_type - 2', 1, '2022-09-19 20:50:16', 1, 'false'),
(356, 'services', 'update-services', 'loaded-services-data - 21', 1, '2022-09-19 20:50:18', 1, 'false'),
(357, 'services', 'update-services', 'loaded-services-data - 23', 1, '2022-09-19 20:50:23', 1, 'false'),
(358, 'abs', 'view-abs-all', 'returned data abs', 1, '2022-09-19 20:50:31', 1, 'false'),
(359, 'abs', 'view-form-update-abs', 'view abs - 4', 1, '2022-09-19 20:50:35', 1, 'false'),
(360, 'abs', 'view-abs', 'view abs - 4', 1, '2022-09-19 20:50:38', 1, 'false'),
(361, 'abs', 'view-abs', 'view abs - 3', 1, '2022-09-19 20:50:42', 1, 'false'),
(362, 'abs', 'view-form-update-abs', 'view abs - 1', 1, '2022-09-19 20:50:46', 1, 'false'),
(363, 'abs', 'view-abs', 'view abs - 1', 1, '2022-09-19 20:50:48', 1, 'false');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1660064079),
('m130524_201442_init', 1660064081),
('m140506_102106_rbac_init', 1661249731),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1661249731),
('m180523_151638_rbac_updates_indexes_without_prefix', 1661249731),
('m190124_110200_add_verification_token_column_to_user_table', 1660064081),
('m200409_110543_rbac_update_mssql_trigger', 1661249731);

-- --------------------------------------------------------

--
-- Структура таблицы `navbar`
--

CREATE TABLE `navbar` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `navbar_content`
--

CREATE TABLE `navbar_content` (
  `id` int NOT NULL,
  `navbar_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `svg` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `department_id` int NOT NULL,
  `category_id` int NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `likes` int NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `user_id`, `department_id`, `category_id`, `views`, `likes`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(36, 1, 1, 22, 11, 1, '2022-09-01 14:17:51', NULL, NULL, 1, 0),
(37, 1, 2, 24, 3, 0, '2022-09-01 14:18:42', NULL, NULL, 1, 0),
(38, 1, 1, 20, 13, 1, '2022-09-01 14:19:05', NULL, NULL, 1, 0),
(39, 1, 1, 20, 17, 0, '2022-09-01 14:19:35', NULL, '2022-09-02 10:58:53', 0, 1),
(40, 1, 2, 26, 15, 1, '2022-09-01 14:20:13', NULL, NULL, 1, 0),
(41, 1, 1, 20, 1, 0, '2022-09-02 11:00:43', NULL, '2022-09-02 11:00:58', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news_category`
--

CREATE TABLE `news_category` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(2000) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `news_category`
--

INSERT INTO `news_category` (`id`, `user_id`, `name`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(20, 1, 'Нижегорднефтегазпроект', '2022-09-01 14:08:37', NULL, '2022-09-01 23:21:50', 1, 0),
(21, 1, 'ННГП', '2022-09-01 14:08:44', NULL, NULL, 1, 0),
(22, 1, 'NNGP', '2022-09-01 14:08:50', NULL, NULL, 1, 0),
(23, 1, 'Лукойл', '2022-09-01 14:08:56', '2022-09-01 14:12:50', NULL, 1, 0),
(24, 1, 'Новому сотруднику', '2022-09-01 14:09:03', NULL, NULL, 1, 0),
(25, 1, 'Студентам', '2022-09-01 14:09:07', NULL, NULL, 1, 0),
(26, 1, 'Клиентам', '2022-09-01 14:09:13', NULL, NULL, 1, 0),
(27, 1, 'ерруеуккр', '2022-09-01 14:12:54', NULL, '2022-09-01 14:12:56', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news_content`
--

CREATE TABLE `news_content` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `annotation` varchar(500) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `news_content`
--

INSERT INTO `news_content` (`id`, `news_id`, `title`, `annotation`, `content`) VALUES
(32, 36, 'Внезапно, объем доходов населения сократился', 'Как принято считать, сторонники тоталитаризма в науке, превозмогая сложившуюся непростую экономическую ситуацию, ассоциативно распределены по отраслям. Ясность нашей позиции очевидна: высокотехнологич', '<p>Как принято считать, сторонники тоталитаризма в науке, превозмогая сложившуюся непростую экономическую ситуацию, ассоциативно распределены по отраслям. Ясность нашей позиции очевидна: <span style=\"color: rgb(22, 145, 121);\"><em><strong>высокотехнологичная концепция общественного уклада предполагает независимые способы реализации направлений прогрессивного развития</strong></em></span>. Современные технологии достигли такого уровня, что экономическая повестка сегодняшнего дня обеспечивает широкому кругу (специалистов) участие в формировании экономической целесообразности принимаемых решений.</p>'),
(33, 37, 'Давайте разбираться: зима близко', 'Приятно, граждане, наблюдать, как тщательные исследования конкурентов представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть своевременно верифицированы. Сложно', '<p><em><strong>Приятно, граждане, наблюдать, как тщательные исследования конкурентов представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть своевременно верифицированы. Сложно сказать, почему стремящиеся вытеснить традиционное производство, нанотехнологии разоблачены. Внезапно, стремящиеся вытеснить традиционное производство, нанотехнологии, превозмогая сложившуюся непростую экономическую ситуацию, ограничены исключительно образом мышления.</strong></em></p>'),
(34, 38, 'Только ночь оказалась долгой', 'Безусловно, постоянное информационно-пропагандистское обеспечение нашей деятельности является качественно новой ступенью поставленных обществом задач. Противоположная точка зрения подразумевает, что н', '<p>Безусловно, постоянное информационно-пропагандистское обеспечение нашей деятельности является качественно новой ступенью поставленных обществом задач. Противоположная точка зрения подразумевает, что независимые государства будут призваны к ответу. А также предприниматели в сети интернет, вне зависимости от их уровня, должны быть преданы социально-демократической анафеме.</p>'),
(35, 39, 'Граница обучения кадров расставила все точки над i', 'Внезапно, диаграммы связей неоднозначны и будут своевременно верифицированы. Сложно сказать, почему сделанные на базе интернет-аналитики выводы являются только методом политического участия и в равной', '<p>Внезапно, диаграммы связей неоднозначны и будут своевременно верифицированы. Сложно сказать, почему сделанные на базе интернет-аналитики выводы являются только методом политического участия и в равной степени предоставлены сами себе. Банальные, но неопровержимые выводы, а также реплицированные с зарубежных источников, современные исследования и по сей день остаются уделом либералов, которые жаждут быть преданы социально-демократической анафеме.</p>'),
(36, 40, 'Сплочённость команды профессионалов станет частью', 'И нет сомнений, что стремящиеся вытеснить традиционное производство, нанотехнологии и по сей день остаются уделом либералов, которые жаждут быть обнародованы. Следует отметить, что дальнейшее развитие', '<p>И нет сомнений, что стремящиеся вытеснить традиционное производство, нанотехнологии и по сей день остаются уделом либералов, которые жаждут быть обнародованы. Следует отметить, что дальнейшее развитие различных форм деятельности играет важную роль в формировании кластеризации усилий. В рамках спецификации современных стандартов, независимые государства рассмотрены исключительно в разрезе маркетинговых и финансовых предпосылок.</p>'),
(37, 41, 'rehfd', 'eerhreherh', '<p>hererhrehher</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `news_fixed`
--

CREATE TABLE `news_fixed` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `news_fixed`
--

INSERT INTO `news_fixed` (`id`, `news_id`, `status`) VALUES
(32, 36, 1),
(33, 37, 1),
(34, 38, 0),
(35, 39, 0),
(36, 40, 0),
(37, 41, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `news_likes`
--

CREATE TABLE `news_likes` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `news_likes`
--

INSERT INTO `news_likes` (`id`, `news_id`, `user_id`, `status`) VALUES
(6, 36, 1, 1),
(7, 40, 1, 1),
(8, 38, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news_preview`
--

CREATE TABLE `news_preview` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `image_src` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `video_src` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `news_preview`
--

INSERT INTO `news_preview` (`id`, `news_id`, `image_src`, `video_src`) VALUES
(29, 36, 'uploads/_kGUKppoJ7w4RodRKqg5HLCagdZuGV.jpg', ''),
(30, 37, 'uploads/FIOKRl7D5fNNEMD9LFogloNnROpxwj.jpg', 'uploads/whaDafk2TTIiL6--DCB_SP5sMzckd5.mp4'),
(31, 38, 'uploads/bowklU5bo6mLO3k5OJsHpt-TCHsYc-.jpg', ''),
(32, 39, 'uploads/MRvw98RnOMjcQhIlGd4FBxGoossEtp.png', ''),
(33, 40, 'uploads/_3Sn8Qg65sAnhCWRonVKgesiZiB45D.jpg', 'uploads/qSjrA0Qy9E_jrysjTgI_jl1pnoD5WZ.mp4'),
(34, 41, 'uploads/Bx6nbRturwLj42C7-DLqabjgMy-8-l.webp', '');

-- --------------------------------------------------------

--
-- Структура таблицы `notification`
--

CREATE TABLE `notification` (
  `id` int NOT NULL,
  `data_key` int NOT NULL,
  `user_id` int NOT NULL,
  `message` varchar(2000) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ready` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `group_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(8, 1, 1, '2022-09-01 17:32:14', NULL, NULL, 0, 1),
(9, 1, 1, '2022-07-06 17:33:37', NULL, NULL, 0, 1),
(10, 1, 1, '2022-09-01 17:33:58', NULL, NULL, 0, 0),
(11, 1, 2, '2022-09-01 18:22:15', NULL, NULL, 0, 1),
(12, 1, 9, '2022-08-17 18:48:39', NULL, NULL, 1, 0),
(13, 1, 2, '2022-09-01 18:49:09', NULL, NULL, 1, 0),
(14, 1, 1, '2022-09-02 11:29:46', NULL, NULL, 1, 0),
(15, 1, 9, '2022-09-02 11:30:02', NULL, NULL, 1, 0),
(16, 1, 1, '2022-09-02 11:30:25', NULL, NULL, 1, 0),
(17, 1, 2, '2022-09-02 11:30:44', NULL, NULL, 1, 0),
(18, 1, 2, '2022-09-02 11:31:03', NULL, NULL, 1, 0),
(19, 1, 9, '2022-09-02 19:22:10', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `projects_content`
--

CREATE TABLE `projects_content` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `number_customer` varchar(500) NOT NULL,
  `number_in` varchar(500) NOT NULL,
  `date` varchar(100) NOT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `projects_content`
--

INSERT INTO `projects_content` (`id`, `project_id`, `customer_id`, `number_customer`, `number_in`, `date`, `title`, `text`) VALUES
(7, 8, 2, '4748', '557522', '2022', 'Консультация с широким активом показала себя во всей красе', 'o;joj'),
(9, 10, 6, '5452', '5454', '2021-2022', 'Светлый лик правового взаимодействия связывает нас с нашим прошлым', 'hghdfggfd'),
(11, 12, 2, '67-29-2021', 'ННГП 1-21', '2019-2021', 'Внесение изменений в ПД \"Строительство блока производства серы №2 установки ГДС-850 в ООО \"ЛУКОЙЛ-УНП\"', 'Контракт выполнен сотрудниками ООО «ННГП» в составе ООО «ЛУКОЙЛ-Нижегородниинефтепроект»'),
(12, 13, 6, '54546', '6565', '2022', 'Сложно сказать, почему семантический разбор внешних противодействий определил дальнейшее развитие', 'Добрая половина выводов даёт нам право принимать самостоятельные решения'),
(13, 14, 6, '5546', '6554', '2022', 'В провинции никого не пугает боевой клич героев', 'В провинции никого не пугает боевой клич героев'),
(14, 15, 9, '4545', '687', '2021', 'В провинции никого не пугает боевой клич героев', 'В провинции никого не пугает боевой клич героев'),
(15, 16, 6, '4554', '5454', '2021', 'Внезапно, чистый разум не скован границами', 'Высокий уровень вовлечения представителей целевой аудитории является четким доказательством простого факта: курс на социально-ориентированный национальный проект обеспечивает широкому кругу (специалистов) участие в формировании своевременного выполнения сверхзадачи. Как уже неоднократно упомянуто, многие известные личности в равной степени предоставлены сами себе.'),
(16, 17, 9, '25454', '5454', '2021', 'Да, кровь стынет в жилах', 'Да, кровь стынет в жилах'),
(17, 18, 9, '77555', '8778', '2020-2022', 'Независимые СМИ потому и независимы, что ночь оказалась долгой', 'Независимые СМИ потому и независимы, что ночь оказалась долгой'),
(18, 19, 10, '64541', '5454546', '2009-2011', 'Комплексное проектирование объекта «Секция гидроочистки нафты (1300) с блоком стабилизации установки тит.007 «Комплекса нефтеперерабатывающих и нефтехимических заводов ОАО «ТАНЕКО»', 'Контракт выполнен сотрудниками ООО «ННГП» в составе ООО «ЛУКОЙЛ-Нижегородниинефтепроект»');

-- --------------------------------------------------------

--
-- Структура таблицы `projects_group`
--

CREATE TABLE `projects_group` (
  `id` int NOT NULL,
  `name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `projects_group`
--

INSERT INTO `projects_group` (`id`, `name`) VALUES
(1, 'Заключенные Договоры с ООО \"ЛУКОЙЛ-Нижегородниинефтепроект\" и предприятиями БННГ'),
(2, 'Перспективные проекты c внешними организациями '),
(9, 'Договоры на стадии заключения / Перспективные проекты  с ООО &quot;ЛУКОЙЛ-Нижегородниинефтепроект&quot;  и предприятиями БННГ');

-- --------------------------------------------------------

--
-- Структура таблицы `quiz`
--

CREATE TABLE `quiz` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `quiz_content`
--

CREATE TABLE `quiz_content` (
  `id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `href` varchar(1000) NOT NULL,
  `response` tinyint(1) NOT NULL DEFAULT '0',
  `response_href` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sample`
--

CREATE TABLE `sample` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL,
  `date_remove` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sample_category`
--

CREATE TABLE `sample_category` (
  `id` int NOT NULL,
  `name` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sample_content`
--

CREATE TABLE `sample_content` (
  `id` int NOT NULL,
  `sample_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `src` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `type_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `user_id`, `type_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, 1, '2022-09-07 12:19:17', NULL, NULL, 0, 1),
(2, 1, 1, '2022-09-08 10:59:19', NULL, NULL, 0, 1),
(3, 3, 2, '2022-09-08 10:59:19', NULL, NULL, 0, 1),
(6, 1, 1, '2022-09-08 12:19:41', NULL, NULL, 0, 1),
(7, 1, 2, '2022-09-08 12:21:12', NULL, NULL, 0, 1),
(8, 1, 2, '2022-09-08 12:23:07', NULL, NULL, 0, 1),
(9, 1, 1, '2022-09-08 12:23:16', NULL, NULL, 0, 1),
(10, 1, 1, '2022-09-08 15:59:51', NULL, NULL, 1, 0),
(11, 1, 1, '2022-09-08 16:00:00', NULL, NULL, 1, 0),
(12, 1, 1, '2022-09-08 16:00:24', NULL, NULL, 0, 1),
(13, 1, 1, '2022-09-08 16:02:55', NULL, NULL, 0, 1),
(14, 1, 2, '2022-09-08 16:06:27', NULL, NULL, 1, 0),
(15, 1, 1, '2022-09-08 16:06:46', NULL, NULL, 0, 1),
(16, 1, 2, '2022-09-08 16:06:59', NULL, NULL, 1, 0),
(17, 1, 1, '2022-09-08 16:07:24', NULL, NULL, 1, 0),
(18, 1, 1, '2022-09-08 16:07:29', NULL, NULL, 1, 0),
(19, 1, 2, '2022-09-08 16:08:01', NULL, NULL, 1, 0),
(20, 1, 2, '2022-09-08 16:17:56', NULL, NULL, 1, 0),
(21, 1, 1, '2022-09-08 16:18:49', NULL, NULL, 1, 0),
(22, 1, 1, '2022-09-08 16:20:31', NULL, NULL, 0, 1),
(23, 1, 1, '2022-09-08 17:52:45', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `services_content`
--

CREATE TABLE `services_content` (
  `id` int NOT NULL,
  `services_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `href` tinyint(1) NOT NULL DEFAULT '0',
  `href_src` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `services_content`
--

INSERT INTO `services_content` (`id`, `services_id`, `title`, `href`, `href_src`) VALUES
(1, 1, 'Сервер 01', 0, NULL),
(2, 2, 'Сервер 02', 1, '/home/index'),
(3, 3, 'Сервер 01 - новый', 0, NULL),
(4, 6, 'Сервер 03', 1, '/docs/index'),
(5, 7, 'Сервер 02 - новый', 0, NULL),
(6, 8, 'Сервер 03 - новый', 0, NULL),
(7, 9, 'Сервер 04', 0, NULL),
(8, 10, '228.146.207.253', 0, NULL),
(9, 11, '195.88.138.222', 0, NULL),
(10, 12, 'Сервис 01', 1, 'https://ideait.ru/'),
(11, 13, '14.248.0.192', 0, NULL),
(12, 14, '44.140.68.179', 0, NULL),
(13, 15, '224.94.232.31', 0, NULL),
(14, 16, '224.94.232.31', 0, NULL),
(15, 17, '201.57.145.143', 0, NULL),
(16, 18, '253.17.219.2', 0, NULL),
(17, 19, 'Новому сотруднику', 1, 'http://yii2.nngp.loc/frontend/web/uploads/himQIi-bLTpfqgLSbgog6hPZ_OBjHG.pdf'),
(18, 20, 'Новый: 14.154.132.117', 0, NULL),
(19, 21, 'Доп: 82.165.58.103', 0, NULL),
(20, 22, 'ffdbrg', 0, NULL),
(21, 23, 'Файл доступа', 1, 'http://yii2.nngp.loc/frontend/web/uploads/himQIi-bLTpfqgLSbgog6hPZ_OBjHG.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `services_type`
--

CREATE TABLE `services_type` (
  `id` int NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `services_type`
--

INSERT INTO `services_type` (`id`, `name`) VALUES
(1, 'all_employee'),
(2, 'new_employee');

-- --------------------------------------------------------

--
-- Структура таблицы `template`
--

CREATE TABLE `template` (
  `id` int NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `data_key_content` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` int NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `template`
--

INSERT INTO `template` (`id`, `data_key`, `data_key_content`, `content`, `user_id`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 'about', 'about_title', '«Нижегороднефтегазпроект»', 1, '2022-09-04 23:23:47', NULL, NULL, 1, 0),
(2, 'about', 'about_title_2', 'Молодая компания с 70-летней историей', 1, '2022-09-04 23:24:16', NULL, NULL, 1, 0),
(3, 'about', 'about_description', 'Нижегороднефтегазпроект образован в 2019 году. Парадоксально, но этот факт вовсе не делает компанию новичком на рынке! Ведь за плечами основной части коллектива большой опыт работы в Группе «ЛУКОЙЛ». Именно из реорганизации проектного блока ООО «Лукойл-Нижегородниинефтепроект» и была создана наша организация. Мы перевернули страницу, и начинаем писать новую главу нашей истории!', 1, '2022-09-04 23:24:45', NULL, NULL, 1, 0),
(4, 'about', 'about_company_title', 'Принципы компании', 1, '2022-09-04 23:26:08', NULL, NULL, 1, 0),
(5, 'about', 'about_company_description', 'Мы не просто разрабатываем проектные решения для заказчиков. Мы сопровождаем объект на всех его этапах. Наши специалисты ведут постоянный мониторинг и оценку предлагаемых проектных решений. Нам важно, чтобы они оставались эффективными с точки зрения сроков, стоимости и объема строительно-монтажных работ.\n\nВместе с заказчиками ищем оптимальные варианты проекта, чтобы помочь нашим партнерам максимально быстро вернуть капитальные вложения.', 1, '2022-09-04 23:26:08', NULL, NULL, 1, 0),
(6, 'about', 'about_mission_title', 'Основная миссия', 1, '2022-09-04 23:26:58', NULL, NULL, 1, 0),
(7, 'about', 'about_mission_description', 'Расти и способствовать росту бизнеса заказчиков, осуществляя качественный инжиниринг проектов', 1, '2022-09-04 23:26:58', NULL, NULL, 1, 0),
(8, 'about', 'about_worker_title', 'Наши сотрудник', 1, '2022-09-04 23:27:55', NULL, NULL, 1, 0),
(9, 'about', 'about_worker_description', 'Разработкой проектов занимаются квалифицированные специалисты. За их плечами многолетняя работа с проектами строительства, реконструкции и технического перевооружения установок НПЗ, ГПЗ, НХП. Кроме того, они имеют опыт прохождения Государственной экологической экспертизы, Государственной экспертизы проектной документации и экспертизы промышленной безопасности. Все специалисты аттестованы в области охраны труда и промышленной безопасности.', 1, '2022-09-04 23:27:55', NULL, NULL, 1, 0),
(10, 'about', 'about_number_title', 'Компания в цифрах', 1, '2022-09-04 23:29:17', NULL, NULL, 1, 0),
(11, 'about', 'about_number_01', '200+', 1, '2022-09-04 23:29:17', NULL, NULL, 1, 0),
(12, 'about', 'about_number_01_text', 'Сотрудников', 1, '2022-09-04 23:29:17', NULL, NULL, 1, 0),
(13, 'about', 'about_number_02', '60+', 1, '2022-09-04 23:30:07', NULL, NULL, 1, 0),
(14, 'about', 'about_number_02_text', 'Выполненных\nпроектов за 10 лет', 1, '2022-09-04 23:30:07', NULL, NULL, 1, 0),
(15, 'about', 'about_number_03', '9', 1, '2022-09-04 23:30:51', NULL, NULL, 1, 0),
(16, 'about', 'about_number_03_text', 'Основных\nпартнёров', 1, '2022-09-04 23:30:51', NULL, NULL, 1, 0),
(17, 'about', 'about_number_04', '2', 1, '2022-09-04 23:31:42', NULL, NULL, 1, 0),
(18, 'about', 'about_number_04_text', 'Офиса в РФ', 1, '2022-09-04 23:31:42', NULL, NULL, 1, 0),
(19, 'about', 'about_number_05', '17', 1, '2022-09-04 23:32:39', NULL, NULL, 1, 0),
(20, 'about', 'about_number_05_text', 'Средний стаж\nработы сотрудников', 1, '2022-09-04 23:32:39', NULL, NULL, 1, 0),
(21, 'about', 'about_number_06', 'с 1951 года', 1, '2022-09-04 23:33:54', NULL, NULL, 1, 0),
(22, 'about', 'about_number_06_text', 'Опыт работы', 1, '2022-09-04 23:33:54', NULL, NULL, 1, 0),
(23, 'about', 'about_number_06_title', 'Преемственность', 1, '2022-09-04 23:33:54', NULL, NULL, 1, 0),
(24, 'about', 'about_banner_image', 'image/demo/21.jpg', 1, '2022-09-04 23:49:54', NULL, NULL, 1, 0),
(25, 'about', 'about_company_image', 'image/demo/22.jpg', 1, '2022-09-04 23:49:54', NULL, NULL, 1, 0),
(26, 'about', 'about_mission_image', 'image/elements/mission.svg', 1, '2022-09-04 23:49:54', NULL, NULL, 1, 0),
(27, 'about', 'about_worker_image', 'image/demo/23.jpg', 1, '2022-09-04 23:49:54', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint NOT NULL DEFAULT '10',
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'GaVDdGDEEvj6tmFigYIVXPT3hWMEvjXA', '$2y$13$fFSrLx1lVnITJgtHBAC38uVUI5QqC9c.CwMwOpkvjZGfOS2rX0osu', NULL, 'balabaev@ideait.ru', 10, 1661250171, 1661357021, 'EBSJqRuCHw03Du8oSUD_vKdL-Ssg8vDR_1661250171'),
(3, 'd_admin', 'xDjUxcmcWtSU_yHgfqB48LsM7MhrfRlI', '$2y$13$Jdmo.Fvypgp8eMsGtmO5kOI8CLm7.zopOMW5XQrQJkdyWugn6ke3K', NULL, 'balabaev.info@yandex.ru', 10, 1661250432, 1661250432, 'wSFzrvLGZpFKjB3won0PAKpxGeXK_bhu_1661250432');

-- --------------------------------------------------------

--
-- Структура таблицы `user_avatar`
--

CREATE TABLE `user_avatar` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `src` varchar(2000) NOT NULL DEFAULT 'image/elements/user.png',
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user_avatar`
--

INSERT INTO `user_avatar` (`id`, `user_id`, `src`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(1, 1, 'uploads/rQElgRUQTtFTP4qlu_VaclGMa_Kj4Yqd9Us.jpg', '2022-08-23 15:40:27', NULL, NULL, 1, 0),
(2, 3, 'image/elements/user.png', '2022-08-23 15:47:02', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user_data`
--

CREATE TABLE `user_data` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `data_group` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `surname` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `firstname` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `report` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `fullname` varchar(1000) NOT NULL,
  `job` varchar(500) NOT NULL,
  `birthday_day` int NOT NULL,
  `birthday_month` int NOT NULL,
  `birthday_year` int NOT NULL,
  `birthday_view` tinyint(1) NOT NULL DEFAULT '1',
  `recruitment` datetime DEFAULT NULL,
  `address` varchar(1000) NOT NULL,
  `in_work` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user_data`
--

INSERT INTO `user_data` (`id`, `user_id`, `data_group`, `surname`, `firstname`, `report`, `fullname`, `job`, `birthday_day`, `birthday_month`, `birthday_year`, `birthday_view`, `recruitment`, `address`, `in_work`, `status`, `status_delete`) VALUES
(1, 1, NULL, 'Балабаев', 'Данила', 'Игоревич', 'Балабаев Данила Игоревич', 'Супер Администратор', 1, 1, 2000, 0, '2022-01-01 00:00:00', 'г. Москва, ул. Первомайская, 16', 1, 1, 0),
(2, 3, NULL, 'Иванов', 'Иван', 'Иванович', 'Иванов Иван Иванович', 'SEO', 1, 1, 1990, 0, '2022-08-01 15:47:11', 'г. Москва, ул. Новый Арбат', 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user_mentor`
--

CREATE TABLE `user_mentor` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_id_mentor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user_mentor`
--

INSERT INTO `user_mentor` (`id`, `user_id`, `user_id_mentor`) VALUES
(1, 1, 1),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_telephone`
--

CREATE TABLE `user_telephone` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `telephone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime DEFAULT NULL,
  `date_remove` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `status_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user_telephone`
--

INSERT INTO `user_telephone` (`id`, `user_id`, `telephone`, `date_add`, `date_update`, `date_remove`, `status`, `status_delete`) VALUES
(2, 1, '', '2022-08-23 15:48:52', NULL, NULL, 1, 1),
(9, 1, '+7 (963) 523-32-52', '2022-08-24 19:19:45', NULL, NULL, 1, 1),
(10, 3, '+7 856 963 52 63', '2022-08-24 19:19:57', NULL, NULL, 1, 1),
(12, 1, '+7 856 366-63-56', '2022-08-24 19:21:17', NULL, NULL, 1, 1),
(13, 1, '+7 859 959 52 85', '2022-08-24 19:22:18', NULL, NULL, 1, 1),
(14, 3, '+7 856 969 99 96', '2022-08-24 19:36:00', NULL, NULL, 1, 1),
(15, 3, '+7 987 654-32-10', '2022-08-24 19:36:50', NULL, NULL, 1, 0),
(16, 1, '+7 (965) 965-96-96', '2022-08-24 21:34:14', NULL, NULL, 1, 1),
(17, 1, '+7 (999) 999-99-99', '2022-08-24 22:07:28', NULL, NULL, 1, 0),
(18, 1, '+7 (235) 268-56-78', '2022-08-25 01:21:55', NULL, NULL, 1, 1),
(19, 1, '+7 855 855-85-96', '2022-08-25 01:22:08', NULL, NULL, 1, 1),
(20, 3, '+7 (856) 855-96-96', '2022-08-25 17:28:43', NULL, NULL, 1, 0),
(21, 1, '+7 758 856 96-52', '2022-08-25 21:17:52', NULL, NULL, 1, 1),
(22, 1, '+7 (888) 888-88-88', '2022-09-12 20:52:43', NULL, NULL, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abs`
--
ALTER TABLE `abs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `abs_content`
--
ALTER TABLE `abs_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abs_id` (`abs_id`);

--
-- Индексы таблицы `abs_file`
--
ALTER TABLE `abs_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abs_id` (`abs_id`);

--
-- Индексы таблицы `appeals`
--
ALTER TABLE `appeals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `defined_user_id` (`defined_user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Индексы таблицы `appeals_content`
--
ALTER TABLE `appeals_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appeals_id` (`appeals_id`);

--
-- Индексы таблицы `appeals_file`
--
ALTER TABLE `appeals_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appeals_id` (`appeals_id`);

--
-- Индексы таблицы `appeals_status`
--
ALTER TABLE `appeals_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Индексы таблицы `blog_content`
--
ALTER TABLE `blog_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Индексы таблицы `blog_preview`
--
ALTER TABLE `blog_preview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `department_bottom`
--
ALTER TABLE `department_bottom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `middle_id` (`middle_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `department_content`
--
ALTER TABLE `department_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `middle_id` (`middle_id`),
  ADD KEY `bottom_id` (`bottom_id`);

--
-- Индексы таблицы `department_middle`
--
ALTER TABLE `department_middle`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `department_worker`
--
ALTER TABLE `department_worker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `middle_id` (`middle_id`),
  ADD KEY `bottom_id` (`bottom_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `doc_content`
--
ALTER TABLE `doc_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `files_content`
--
ALTER TABLE `files_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`);

--
-- Индексы таблицы `footerbar`
--
ALTER TABLE `footerbar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footerbar_content`
--
ALTER TABLE `footerbar_content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_content`
--
ALTER TABLE `gallery_content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_items`
--
ALTER TABLE `gallery_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `honor_content`
--
ALTER TABLE `honor_content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `information_content`
--
ALTER TABLE `information_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `information_id` (`information_id`);

--
-- Индексы таблицы `initiative`
--
ALTER TABLE `initiative`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Индексы таблицы `initiative_category`
--
ALTER TABLE `initiative_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `initiative_content`
--
ALTER TABLE `initiative_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `initiative_id` (`initiative_id`);

--
-- Индексы таблицы `initiative_status`
--
ALTER TABLE `initiative_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `initiative_supportive`
--
ALTER TABLE `initiative_supportive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `initiative_id` (`initiative_id`);

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `navbar_content`
--
ALTER TABLE `navbar_content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_ibfk_1` (`user_id`),
  ADD KEY `news_ibfk_2` (`department_id`),
  ADD KEY `news_ibfk_3` (`category_id`);

--
-- Индексы таблицы `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `news_content`
--
ALTER TABLE `news_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `news_fixed`
--
ALTER TABLE `news_fixed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `news_likes`
--
ALTER TABLE `news_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `news_preview`
--
ALTER TABLE `news_preview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_ibfk_1` (`user_id`),
  ADD KEY `projects_ibfk_2` (`group_id`);

--
-- Индексы таблицы `projects_content`
--
ALTER TABLE `projects_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `projects_content_ibfk_2` (`customer_id`);

--
-- Индексы таблицы `projects_group`
--
ALTER TABLE `projects_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `quiz_content`
--
ALTER TABLE `quiz_content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sample_category`
--
ALTER TABLE `sample_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sample_content`
--
ALTER TABLE `sample_content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `services_content`
--
ALTER TABLE `services_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_id` (`services_id`);

--
-- Индексы таблицы `services_type`
--
ALTER TABLE `services_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Индексы таблицы `user_avatar`
--
ALTER TABLE `user_avatar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_avatar_ibfk_1` (`user_id`);

--
-- Индексы таблицы `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_data_ibfk_1` (`user_id`);

--
-- Индексы таблицы `user_mentor`
--
ALTER TABLE `user_mentor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_mentor_ibfk_1` (`user_id`),
  ADD KEY `user_mentor_ibfk_2` (`user_id_mentor`);

--
-- Индексы таблицы `user_telephone`
--
ALTER TABLE `user_telephone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_telephone_ibfk_1` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abs`
--
ALTER TABLE `abs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `abs_content`
--
ALTER TABLE `abs_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `abs_file`
--
ALTER TABLE `abs_file`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `appeals`
--
ALTER TABLE `appeals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `appeals_content`
--
ALTER TABLE `appeals_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `appeals_file`
--
ALTER TABLE `appeals_file`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `appeals_status`
--
ALTER TABLE `appeals_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `blog_content`
--
ALTER TABLE `blog_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `blog_preview`
--
ALTER TABLE `blog_preview`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `department`
--
ALTER TABLE `department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `department_bottom`
--
ALTER TABLE `department_bottom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `department_content`
--
ALTER TABLE `department_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `department_middle`
--
ALTER TABLE `department_middle`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `department_worker`
--
ALTER TABLE `department_worker`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `doc_content`
--
ALTER TABLE `doc_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT для таблицы `files_content`
--
ALTER TABLE `files_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT для таблицы `footerbar`
--
ALTER TABLE `footerbar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `footerbar_content`
--
ALTER TABLE `footerbar_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gallery_content`
--
ALTER TABLE `gallery_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gallery_items`
--
ALTER TABLE `gallery_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `honor`
--
ALTER TABLE `honor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `honor_content`
--
ALTER TABLE `honor_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `information`
--
ALTER TABLE `information`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `information_content`
--
ALTER TABLE `information_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `initiative`
--
ALTER TABLE `initiative`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `initiative_category`
--
ALTER TABLE `initiative_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `initiative_content`
--
ALTER TABLE `initiative_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `initiative_status`
--
ALTER TABLE `initiative_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `initiative_supportive`
--
ALTER TABLE `initiative_supportive`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT для таблицы `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `navbar_content`
--
ALTER TABLE `navbar_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `news_content`
--
ALTER TABLE `news_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `news_fixed`
--
ALTER TABLE `news_fixed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `news_likes`
--
ALTER TABLE `news_likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `news_preview`
--
ALTER TABLE `news_preview`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `projects_content`
--
ALTER TABLE `projects_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `projects_group`
--
ALTER TABLE `projects_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `quiz_content`
--
ALTER TABLE `quiz_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sample`
--
ALTER TABLE `sample`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sample_category`
--
ALTER TABLE `sample_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sample_content`
--
ALTER TABLE `sample_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `services_content`
--
ALTER TABLE `services_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `services_type`
--
ALTER TABLE `services_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `template`
--
ALTER TABLE `template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user_avatar`
--
ALTER TABLE `user_avatar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_mentor`
--
ALTER TABLE `user_mentor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_telephone`
--
ALTER TABLE `user_telephone`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `abs`
--
ALTER TABLE `abs`
  ADD CONSTRAINT `abs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `abs_content`
--
ALTER TABLE `abs_content`
  ADD CONSTRAINT `abs_content_ibfk_1` FOREIGN KEY (`abs_id`) REFERENCES `abs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `abs_file`
--
ALTER TABLE `abs_file`
  ADD CONSTRAINT `abs_file_ibfk_1` FOREIGN KEY (`abs_id`) REFERENCES `abs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `appeals`
--
ALTER TABLE `appeals`
  ADD CONSTRAINT `appeals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `appeals_ibfk_2` FOREIGN KEY (`defined_user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `appeals_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `appeals_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `appeals_content`
--
ALTER TABLE `appeals_content`
  ADD CONSTRAINT `appeals_content_ibfk_1` FOREIGN KEY (`appeals_id`) REFERENCES `appeals` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `appeals_file`
--
ALTER TABLE `appeals_file`
  ADD CONSTRAINT `appeals_file_ibfk_1` FOREIGN KEY (`appeals_id`) REFERENCES `appeals` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `blog_content`
--
ALTER TABLE `blog_content`
  ADD CONSTRAINT `blog_content_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `blog_preview`
--
ALTER TABLE `blog_preview`
  ADD CONSTRAINT `blog_preview_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `department_bottom`
--
ALTER TABLE `department_bottom`
  ADD CONSTRAINT `department_bottom_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `department_bottom_ibfk_2` FOREIGN KEY (`middle_id`) REFERENCES `department_middle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `department_bottom_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `department_content`
--
ALTER TABLE `department_content`
  ADD CONSTRAINT `department_content_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `department_content_ibfk_2` FOREIGN KEY (`middle_id`) REFERENCES `department_middle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `department_content_ibfk_3` FOREIGN KEY (`bottom_id`) REFERENCES `department_bottom` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `department_worker`
--
ALTER TABLE `department_worker`
  ADD CONSTRAINT `department_worker_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `department_worker_ibfk_2` FOREIGN KEY (`middle_id`) REFERENCES `department_middle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `department_worker_ibfk_3` FOREIGN KEY (`bottom_id`) REFERENCES `department_bottom` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `department_worker_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `doc`
--
ALTER TABLE `doc`
  ADD CONSTRAINT `doc_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `doc_content`
--
ALTER TABLE `doc_content`
  ADD CONSTRAINT `doc_content_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doc` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `files_content`
--
ALTER TABLE `files_content`
  ADD CONSTRAINT `files_content_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `information_content`
--
ALTER TABLE `information_content`
  ADD CONSTRAINT `information_content_ibfk_1` FOREIGN KEY (`information_id`) REFERENCES `information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `initiative`
--
ALTER TABLE `initiative`
  ADD CONSTRAINT `initiative_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `initiative_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `initiative_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `initiative_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department_content` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `initiative_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `initiative_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `initiative_content`
--
ALTER TABLE `initiative_content`
  ADD CONSTRAINT `initiative_content_ibfk_1` FOREIGN KEY (`initiative_id`) REFERENCES `initiative` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `initiative_supportive`
--
ALTER TABLE `initiative_supportive`
  ADD CONSTRAINT `initiative_supportive_ibfk_1` FOREIGN KEY (`initiative_id`) REFERENCES `initiative` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_content` (`id`),
  ADD CONSTRAINT `news_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `news_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `news_category`
--
ALTER TABLE `news_category`
  ADD CONSTRAINT `news_category_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news_content`
--
ALTER TABLE `news_content`
  ADD CONSTRAINT `news_content_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `news_fixed`
--
ALTER TABLE `news_fixed`
  ADD CONSTRAINT `news_fixed_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `news_likes`
--
ALTER TABLE `news_likes`
  ADD CONSTRAINT `news_likes_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news_preview`
--
ALTER TABLE `news_preview`
  ADD CONSTRAINT `news_preview_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `projects_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `projects_content`
--
ALTER TABLE `projects_content`
  ADD CONSTRAINT `projects_content_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_content_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Ограничения внешнего ключа таблицы `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `services_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `services_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `services_content`
--
ALTER TABLE `services_content`
  ADD CONSTRAINT `services_content_ibfk_1` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `template`
--
ALTER TABLE `template`
  ADD CONSTRAINT `template_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `user_avatar`
--
ALTER TABLE `user_avatar`
  ADD CONSTRAINT `user_avatar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_mentor`
--
ALTER TABLE `user_mentor`
  ADD CONSTRAINT `user_mentor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_mentor_ibfk_2` FOREIGN KEY (`user_id_mentor`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_telephone`
--
ALTER TABLE `user_telephone`
  ADD CONSTRAINT `user_telephone_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

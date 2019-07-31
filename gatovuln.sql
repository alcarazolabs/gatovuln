-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2019 a las 01:55:38
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gatovuln`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_noticia`
--

CREATE TABLE `comentario_noticia` (
  `id` int(11) NOT NULL,
  `idnoticia` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(555) NOT NULL,
  `detalle` text NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `detalle`, `categoria`) VALUES
(1, 'Facebook Mistakenly Stored Millions of Users\' Passwords in Plaintext', '<img src=\"https://1.bp.blogspot.com/-9w9raihZxLc/XJPb8OtbcXI/AAAAAAAAzkU/aLshDHudVV09IcnlCMP-Z9iC7_uC5XOyACLcBGAs/s728-e100/hacking-facebook-account-passwords.jpg\" widht=\"200\" height=\"200\">\r\n<br>\r\nHoly moly, Facebook is again at the center of a new privacy controversy after revealing today that its platform mistakenly kept a copy of passwords for \"hundreds of millions\" users in plaintext.\r\n<br>\r\n<br>\r\nWhat\'s more? Not just Facebook, Instagram users are also affected by the latest security incident.<br><br>\r\nSo, if you are one of the affected users, your Facebook or Instagram password was readable to some of the Facebook engineers who have internal access to the servers and the databas\r\n<br>\r\n<br>\r\nThough the social media company did not mention exactly what component or application on its website had the programmatic error that caused the issue, it did reveal that the company discovered the security blunder in January this year during a routine security check.\r\n<br>\r\n<br>\r\nIn a blog post published today, Facebook\'s vice president of engineering Pedro Canahuati said an internal investigation of the incident found no evidence of any Facebook employee abusing those passwords.\r\n<br>\r\n<br>\r\n<To be clear, these passwords were never visible to anyone outside of Facebook, and we have found no evidence to date that anyone internally abused or improperly accessed them,\" Canahuati said>\r\n<br>\r\nCanahuati didn\'t mention the exact number of users affected by the glitch, but confirmed that the company would start notifying its (hundreds of millions of affected Facebook Lite users, tens of millions of other Facebook users, and tens of thousands of Instagram users)\r\n<br>\r\n<br>\r\n\r\n\r\n<a href=\"https://thehackernews.com/2019/03/facebook-account-passwords.html\">source</a>', 'facebook'),
(2, 'Elon Musk launches Neuralink, a venture to merge the human brain with AI', '<img src=\"https://cdn.cnn.com/cnnnext/dam/assets/190719165911-07-neuralink---needle-on-bot-2-exlarge-169.jpg\" widht=\"200\" height=\"200\">\r\n<br>\r\nSpaceX and Tesla CEO Elon Musk is backing a brain-computer interface venture called Neuralink, according to The Wall Street Journal. The company, which is still in the earliest stages of existence and has no public presence whatsoever, is centered on creating devices that can be implanted in the human brain, with the eventual purpose of helping human beings merge with software and keep pace with advancements in artificial intelligence. These enhancements could improve memory or allow for more direct interfacing with computing devices.\r\n<br>\r\n<br>\r\nMusk has hinted at the existence of Neuralink a few times over the last six months or so. More recently, Musk told a crowd in Dubai, “Over time I think we will probably see a closer merger of biological intelligence and digital intelligence.” He added that “it\'s mostly about the bandwidth, the speed of the connection between your brain and the digital version of yourself, particularly output.\" On Twitter, Musk has responded to inquiring fans about his progress on a so-called “neural lace,” which is sci-fi shorthand for a brain-computer interface humans could use to improve themselves.\r\n<br>\r\n<br>\r\n<a href=\"https://www.theverge.com/2017/3/27/15077864/elon-musk-neuralink-brain-computer-interface-ai-cyborgs\">source</a>', 'neuralink'),
(3, 'EE.UU.: Dos ciudades de Florida pagan más de un millón de dólares para recuperar datos tras ser \'hackeadas\'', 'Las ciudades de Lake City y Riviera Beach aceptaron pagar sendos rescates tras sufrir problemas informáticos en sus sistemas por culpa de programas malignos.\r\n<br>\r\n<br>\r\n<iframe width=\"500\" height=\"300\" src=\"https://www.youtube.com/embed/Yv_VJarv2K4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<br>\r\n<br>\r\nLas autoridades de Lake City y Riviera Beach, ciudades ubicadas en Florida (EE.UU.), pagaron en los últimos días un total de 1,1 millones de dólares a piratas informáticos para recuperar los datos que estos les habían \'hackeado\', informaron este miércoles medios locales.\r\n<br>\r\n<br>\r\nLa ciudad de Riviera Beach votó la semana pasada por unanimidad pagar un rescate de 600.000 dólares a los \'hackers\' que controlaron su sistema informático después de que unos días antes uno de sus trabajadores hiciera clic en un enlace de correo electrónico que contenía un programa maligno.\r\n<br>\r\n<a href=\"https://actualidad.rt.com/actualidad/319251-florida-pagar-millon-dolares-ser-hackeadas\">fuente</a>\r\n', 'hacking'),
(4, 'FBI and Federal Trade Commission to investigate the popular smartphone application FaceApp', 'Washington (CNN)Senate Minority Leader Chuck Schumer is calling on the FBI and Federal Trade Commission to investigate the popular smartphone application FaceApp, citing privacy concerns and fears the data could be shared with the Russian government.\r\n<br>\r\n<img src=\"https://cdn.cnn.com/cnnnext/dam/assets/190718102828-faceapp-file-story-body.jpg\" widht=\"200\" height=\"200\">\r\n<br>\r\n<br>\r\n\r\nFaceApp, which was released in 2017, went viral this week with celebrities and other public personalities all around the world sharing photos of themselves edited through the app. The app\'s makers say it uses artificial intelligence technology to edit the photos. On Thursday morning, it was the top app on the US Apple App Store.\r\n<br>\r\n<br>\r\nThe company, which is based in St. Petersburg, does not have known ties to the Russian government and the company denies sharing or selling data with third parties, but the Democratic National Committee sent an alert to presidential campaigns on Wednesday warning them not to use the app in case the company is unscrupulously sharing its data.\r\n<br>\r\n<br>\r\n\"FaceApp\'s location in Russia raises questions regarding how and when the company provides access to the data of U.S. citizens to third parties, including foreign governments,\" Schumer wrote to FBI Director Christopher Wray and Federal Trade Commission Chairman Joseph Simons Wednesday night.\r\n<br>\r\n<br>\r\n<a haref=\"https://edition.cnn.com/2019/07/18/politics/chuck-schumer-faceapp-investigation/index.html\">source</a>\r\n', 'faceapp'),
(5, 'Facebook and Cambridge Analytica: What You Need to Know as Fallout Widens', '<img src=\"https://dla.cdncimeco.com/uploads/2018/05/image5aea2fa3a5e3f.jpg\" widht=\"200\" height=\"200\">\r\n<br>\r\n<br>\r\nOur report that a political firm hired by the Trump campaign acquired access to private data on millions of Facebook users has sparked new questions about how the social media giant protects user information.\r\n<br>\r\n<br>\r\nCambridge Analytica, a political data firm hired by President Trump’s 2016 election campaign, gained access to private information on more than 50 million Facebook users. The firm offered tools that could identify the personalities of American voters and influence their behavior.\r\n<br>\r\n<br>\r\nCambridge has been largely funded by Robert Mercer, the wealthy Republican donor, and Stephen K. Bannon, a former adviser to the president who became an early board member and gave the firm its name. It has pitched its services to potential clients ranging from Mastercard and the New York Yankees to the Joint Chiefs of Staff.\r\n<br><br>\r\n<a href=\"https://www.nytimes.com/2018/03/19/technology/facebook-cambridge-analytica-explained.html\">source</a>', 'facebook');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario_noticia`
--
ALTER TABLE `comentario_noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idnoticia` (`idnoticia`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario_noticia`
--
ALTER TABLE `comentario_noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario_noticia`
--
ALTER TABLE `comentario_noticia`
  ADD CONSTRAINT `comentario_noticia_ibfk_1` FOREIGN KEY (`idnoticia`) REFERENCES `noticias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

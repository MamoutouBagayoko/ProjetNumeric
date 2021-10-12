-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 12:56
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(45) NOT NULL,
  `nom_image` varchar(100) NOT NULL,
  `historique` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_complet`, `nom_image`, `historique`) VALUES
(27, 'Bill Gates', '61645356a37d38.58213977.jpg', 'Bill Gates L’homme le plus riche au monde (selon les caprices quotidiens des marchés boursiers, en réalité), est aussi un est des artisans les plus renommés de la haute technologie. Il a quitté Harvard pour lancer Microsoft, une entreprise que tous les techniciens connaissent très bien, qu’ils l’aiment ou non. Ayant à coeur la direction de son entreprise, Bill Gates est étroitement impliqué dans le développement de produits Microsoft, et ce, depuis la fondation de l’entreprise il y a 30 ans. Même s’il conservera son titre de président de l’entreprise, Gates quittera ses fonctions d’administrateur en juillet prochain pour s’occuper à temps plein de la Fondation Gates, l’organisation sans but lucratif qu’il a fondée avec la rondelette somme de 29 milliards $ afin de venir en aide à la santé mondiale et à l’éducation. Ses détracteurs se plaisent à le décrire comme un tyran corporatif impitoyable, désireux de dominer l’industrie de la technologie d’une main de fer, alors qu’il fait indiscutablement preuve d’une conscience et d’une vision sociales.'),
(28, 'Bob Metcalfe', '616453a66d2fb9.28101961.jpg', 'Bob Metcalfe La loi de Moore est peut-être plus connue, mais celle énoncée par Bob Metcalfe s’applique à plus grande échelle. Établie autour de 1980, la loi de Metcalfe suppose que la valeur d’un réseau de télécommunication est égale au carré du nombre de noeuds sur ce réseau. En d’autres termes, cela signifie que même une légère augmentation du nombre de réseaux le fait progresser énormément, étant donné le nombre accru de nouvelles connexions que chaque utilisateur peut faire. L’invention de l’Ethernet et la création de 3Com par Robert Metcalfe sont sans doute des moments déterminants de l’évolution des hautes technologies, mais sa loi éponyme, utilisée à présent pour quantifier la valeur des espaces comme Facebook ou MySpace, survivra longtemps à la disparition des réseaux câblés.'),
(29, 'Don Estridge', '616454771a1640.99383920.jpg', 'Don Estridge Le vétéran de IBM, Don Estridge , est largement reconnu comme « le père du PC », du moins dans son incarnation IBM. Estridge a mis au point un grand nombre de systèmes informatiques et s’est même amusé à travailler sur de l’équipement radar de la NASA. Il est davantage reconnu pour ses talents de directeur de l’équipe peu conventionnelle de 14 personnes responsable de la conception du PC d’IBM : une plateforme « ouverte » permettant l’utilisation de logiciels indépendants et compatible avec leurs mises à niveau, soit la norme actuelle de l’informatique commerciale. Don Estridge est décédé de façon tragique dans un accident d’avion en 1985 et n’a jamais goûté au succès généralisé qu’a suscité son'),
(30, 'Michael Dell', '6164549e8c1386.74772634.jpg', 'Michael Dell L’histoire de Dell Computer Corporation est célèbre et est devenue une légende dans l’univers des entreprises de haute technologie. Michael Dell a démarré son entreprise PC’s Limited à l’âge de 19 ans, depuis sa résidence à l’université du Texas. Il a finalement abandonné les études pour fonder l’entreprise Dell Computer, qui a connu une croissance fulgurante au cours de années 1990. La méthode de commercialisation de Dell a complètement révolutionné l’industrie : plutôt que d’offrir des ordinateurs à configurations prédéterminées, les appareils Dell étaient entièrement personnalisables et assemblés sur mesure. Par la suite, presque tous les compétiteurs fabricants de PC ont imité Dell… ou fermé leurs portes.'),
(31, 'Ray Tomlinson', '616454d1ac7108.58659293.jpg', 'Ray Tomlinson En 1971, Ray Tomlinson a envoyé le message qui sera plus tard lu partout dans le monde: un courriel expédié d’un hôte du réseau Arpanet à un autre. Lorsque vous ouvrez votre boîte de réception et constatez qu’elle contient 112 courriels non lus, vous n’avez peut-être pas envie de remercier M. Tomlinson, mais imaginez le monde des communications sans courriel. C’est également Ray Tomlinson qui a eu l’idée d’utiliser le symbole @ pour séparer le nom d’utilisateur du nom de l’hôte dans une adresse électronique.'),
(32, 'Sergey Brin et Larry Page', '616455285b9724.83872546.jpg', 'Sergey Brin et Larry Page Comment souligner la contribution apportée à la technologie par Larry Page (à gauche) et Sergey Brin, les fondateurs de Google? L’entreprise est aujourd’hui la plus importante à Silicon Valley, même si les moteurs de recherche existaient bien avant l’arrivée de Google. Ce qui a marqué les inconditionnels de Google dès ses débuts, c’est le perfectionnement et la précision continus de son algorithme de recherche : alors que les autres moteurs de recherche étaient plutôt inondés de contenu indésirable, Google visait habituellement juste. L’entreprise avait également plus d’un tour dans son sac; l’univers à croissance exponentielle de Google compte maintenant des douzaines d’outils de travail et de divertissement, du traitement de texte à la vidéo, souvent gratuits, soutenu par son système publicitaire omniprésent.\r\nSteve Jobs Le roi d’une époque passée et future de Apple, Steve Jobs est connu de presque tous les technophiles. M. Jobs revendique deux événements technologiques historiques : la création des ordinateurs Apple d’origine, avec lesquels il a stimulé l’intégration de l’informatique domestique et, 20 ans plus tard, la sensibilisation à l’échelle mondiale du phénomène de la musique (numérique) portable. Apple n’a peut-être pas inventé le PC, et à fortiori le lecteur MP3, mais le célèbre « champ de distorsion de la réalité » de Steve Jobs a prouvé que le premier arrivé est parfois moins important que les réalisations qu’il a engendrées. Aujourd’hui, après plus d’une mort annoncée de son entreprise, Apple est plus grande que jamais, fière détentrice d’une part de marché jamais vue depuis les années 1980.\r\n'),
(33, 'Tim Berners-Lee', '6164556fd97e43.59977837.jpg', 'Tim Berners-Lee Il n’y a absolument aucun doute. Sans cet homme et son invention de 1989, vous ne liriez pas ceci. Tim Berners-Lee est l’inventeur du Web. Berners-Lee a conçu le Web à sa façon, de la structure de l’adresse URL en passant par les hyperliens. Bien que cette conception ait été révisée en profondeur (en grande partie sous sa supervision, à titre de directeur du World Wide Web Consortium http://www.w3.org/), elle demeure utilisée aujourd’hui. Berners-Lee reste un joueur clé dans le développement des normes Web. Il travaille actuellement à la conception de ce que plusieurs considèrent comme la prochaine étape d’Internet : le Web sémantique.'),
(34, 'Steve Jobs', '616455979b8c76.76941618.jpg', 'Steve Jobs Le roi d’une époque passée et future de Apple, Steve Jobs est connu de presque tous les technophiles. M. Jobs revendique deux événements technologiques historiques : la création des ordinateurs Apple d’origine, avec lesquels il a stimulé l’intégration de l’informatique domestique et, 20 ans plus tard, la sensibilisation à l’échelle mondiale du phénomène de la musique (numérique) portable. Apple n’a peut-être pas inventé le PC, et à fortiori le lecteur MP3, mais le célèbre « champ de distorsion de la réalité » de Steve Jobs a prouvé que le premier arrivé est parfois moins important que les réalisations qu’il a engendrées. Aujourd’hui, après plus d’une mort annoncée de son entreprise, Apple est plus grande que jamais, fière détentrice d’une part de marché jamais vue depuis les années 1980.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

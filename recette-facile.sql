SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recettes-faciles`
--

-- --------------------------------------------------------

--
-- Structure de la table `assoc_hashtags_recettes`
--

CREATE TABLE `assoc_hashtags_recettes` (
  `assoc_hr_id` int NOT NULL,
  `assoc_hr_hashtag_id` int NOT NULL,
  `assoc_hr_recette_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `assoc_hashtags_recettes`
--

INSERT INTO `assoc_hashtags_recettes` (`assoc_hr_id`, `assoc_hr_hashtag_id`, `assoc_hr_recette_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int NOT NULL,
  `hashtag_nom` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `hashtag_nom`) VALUES
(1, 'nourriture'),
(2, 'pain'),
(3, 'bœuf 🐮');

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `recette_id` int NOT NULL,
  `recette_titre` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recette_contenu` text COLLATE utf8mb4_bin NOT NULL,
  `recette_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`recette_id`, `recette_titre`, `recette_contenu`, `recette_datetime`) VALUES
(1, 'ma nouvelle façon de faire du pain au levain', '## Ingrédients\r\n\r\nListe des ingrédients pour faire un pain d\'environ 700g après cuisson. Il est possible de diviser ce gros pain en plusieurs pains moyens, voir plus bas.\r\n\r\n- [Levain liquide actif](levain-express-tuto.html) nourri la veille : 100g\r\n- Eau 40°C tiède sans chlore : 350g\r\n- Sel : 11g\r\n- Farine T65 : 500g\r\n\r\nOn peut aussi mélanger les types de farines, par exemple utiliser 400g de T65 avec 100g de T110. C\'est selon votre goût. Et pour accroître la production on peut facilement multiplier ces quantités et travailler une pâte à pain géante. Quand vos premiers tests seront concluants, par exemple.\r\n\r\n## Matériel\r\n\r\nPour faire du pain on va avoir besoin de tout ça :\r\n\r\n- une pièce ni trop froide (plus de 21°C) ni trop chaude (inférieure à 27°C) \r\n- un grand saladier\r\n- un fouet ou une fourchette\r\n- une cocotte en fonte\r\n- un petit bol contenant une moitié d\'eau sans chlore\r\n- un petit saladier et un torchon propre par pain\r\n- un four\r\n- idéalement : un coupe-pâte\r\n\r\n## Autolyse\r\n\r\nSouvent recommandée, l\'autolyse permet de détendre le gluten et agir sur la texture, la ténacité de la pâte. Je n\'ai encore pu prendre le temps de réaliser des expériences pour voir si de réels changements opéraient avec ou sans autolyse. Les tests que j\'ai pu faire n\'étaient pas trop plaisant parce que l\'ajout du levain après autolyse est assez délicat à la main, ça en met partout, ça colle. Bref, voici en tout cas comment faire une autolyse.\r\n\r\n- Faire tiédir les 350g d\'eau à 40°C max\r\n- Dans le saladier verser l\'eau et ajouter progressivement les 500g de farine tout en mélangeant\r\n- Laisser reposer 30, 45 voir 60 minutes minimum à température ambiante. On peut aussi laisser reposer une nuit ou une journée complète.\r\n\r\n## Préparation\r\n\r\n**Si vous n\'avez pas fait d\'autolyse :**\r\n- Faire tiédir les 350g d\'eau à 40°C max\r\n- Dans le saladier verser l\'eau, les 11g de sel et les 100g de levain\r\n- Bien battre tout ça\r\n- Ajouter progressivement les 500g de farine tout en mélangeant. À la fin, pour bien mélanger on utilise directement ses mains propres\r\n- Se mouiller les mains dans le petit bol contenant une moitié d\'eau sans chlore et essayer de bouler un peu la pâte dans le saladier. On peut en profiter pour décrocher les morceaux de farine collées au paroi.\r\n\r\n**Si vous avez fait une autolyse :**\r\n- Ajouter les 100g de levain et bien mélanger, attention ça colle grave\r\n- Laisser reposer 30-40 minutes\r\n- Ajouter les 11g de sel et pétrir brièvement\r\n- Se mouiller les mains dans le petit bol contenant une moitié d\'eau sans chlore et essayer de bouler un peu la pâte dans le saladier.\r\n\r\nVoilà on a notre pâte à pain. On va laisser le levain - composé de sa centaine de milliards de petites mains - travailler. C\'est la première phase de la fermentation.\r\n\r\n## Première phase de fermentation\r\n\r\nCouvrir et placer le saladier contenant votre pâte dans votre pièce à température ambiante (21°C minimum). Eviter de poser le saladier sur une surface trop froide (carrelage, pierre, etc), ça pourrait grandement retarder la fermentation. Pour cette première phase de la fermentation, enclencher deux minuteurs. Le premier minuteur (3-4 heures) c\'est le temps global de la première fermentation. Le deuxième minuteur (30 minutes) correspond aux 4 séries de rabats qui donneront une belle texture à la mie de votre pain.\r\n\r\n- Couvrir le saladier et le placer dans une pièce ni trop froide (plus de 21°C) ni trop chaude (inférieure à 27°) pendant 3-4 heures, selon la température.\r\n- Toutes les 4 premières demi-heures, faire une série de rabats. Les mains mouillées, on prend la pâte à une extrémité on l\'étire et on vient la rabattre sur le pâton, puis on recommence l\'opération trois fois, depuis les autres extrémités\r\n\r\n## Division & façonnage\r\n\r\nC\'est le moment de diviser votre gros pain en plusieurs pains moyens et de leur donner une belle forme.\r\n\r\n- Fariner un plan de travail et y verser la pâte\r\n- À l\'aide d\'un coupe-pâte ou d\'un couteau diviser la pâte en autant de pains voulus\r\n- Laisser reposer la pâte 15 minutes\r\n- Pendant ce temps placer un torchon propre dans un petit saladier, par pain préparé. Bien fariner le torchon. C\'est ce qu\'on appelle un banneton.\r\n- Bouler chaque pain par le dessous, sans l\'écraser.\r\n- Placer chaque pain dans son banneton, soudures vers le haut. Vérifier que les soudures soient bien... soudées.\r\n- Couvrir chaque banneton\r\n\r\n## Deuxième phase de fermentation\r\n\r\nLa fermentation en deux étapes, c\'est donner le temps suffisant au levain et son armée d\'ouvriers pour travailler toute la pâte\r\n\r\n- Placer chaque banneton dans votre pièce à bonne température\r\n- Enclencher le minuteur sur 3-6 heures (selon la température de la pièce)\r\n- Dans la dernière demi-heure, on lance le préchauffage du four : préchauffer la cocotte vide et son couvercle au four à 250°C pendant au moins 20 minutes\r\n\r\n## Première cuisson\r\n\r\nLa cuisson se fait en deux sessions : la première avec le couvercle et puissance max, la deuxième sans le couvercle à puissance forte\r\n\r\n- Préchauffer la cocotte vide et son couvercle au four à 250°C pendant au moins 20 minutes\r\n- Mettre la cocotte brûlante sur une surface isolante, ouvrir le couvercle archi-brûlant et le poser non-loin\r\n- Transférer le pâton contenu dans le banneton, dans la cocotte brûlante. Le pâton doit être renversé dans la cocotte, soudures vers le bas. Personnellement j\'utilise le torchon contenant le banneton.\r\n- Scarifier brièvement le dessus du pâton\r\n- Refermer la cocotte et faire cuire pendant 25 minutes à 250°C (selon le four)\r\n\r\nSi vous n\'avez qu\'un pain à faire cuire, passer directement à la deuxième cuisson. Mais **si vous avez une série de pains à faire cuire**, sortez le pain de la cocotte, laissez-le reposer sur une grille, puis répétez la première cuisson à chacun des autres pains.\r\n\r\n## Deuxième cuisson\r\n\r\nLa deuxième cuisson est d\'avantages dédiée à la croûte\r\n\r\n- Baisser la température du four à 200°C\r\n- Retirer le couvercle brûlant de la cocotte et le poser à l\'écart\r\n- Faire cuire pendant 20 minutes à 200°C (selon le four)\r\n\r\n## Voili voilou\r\n\r\n- Disposer le pain sur une grille pour le laisser refroidir\r\n- Gratter un peu l\'excédent de farine\r\n\r\nBah voilà, bien joué ;)\r\n', '2021-01-01 11:21:56'),
(2, 'boeuf coréen bulgogi', '## Ingrédients\r\n- 500g de faux-filet de boeuf\r\n- 3.5 cuillères à soupe (CS) de sauce soja légère\r\n- 2 CS de sucre en poudre\r\n- 2 CS d\'huile de sésame\r\n- 2 à 3 gousses d\'ail\r\n- 1cm de gingembre\r\n- 1 petit oignon jaune\r\n- De la ciboule (facultatif)\r\n\r\n## Préparation\r\n- Mettre la viande au congelateur pendant 30mn\r\n- Dans un saladier on met :\r\n    - La sauce de soja (3.5 CS)\r\n    - Le sucre (2 CS)\r\n    - L\'huile de sésame (2 CS)\r\n    - L\'ail écrasé\r\n    - Le gingembre écrasé (1cm)\r\n    - je le coupe en mini cube de 0,5cm et je l\'écrase au presse-ail\r\n    - L\'oignon, coupé en lamelles\r\n- Et on mélange le tout\r\n- Sortir la viande, durcie, et couper des lamelles de 3mm d\'épaisseur\r\n- On met les lamelles de viandes dans le saladier, et on mélange bien\r\n- Laisser mariner 1 heure minimum, au frais\r\n- Prêt pour la cuisson ? Faire chauffer 1 CS d\'huile de tournesol dans une poële (ou wok)\r\n- Lorsque ça commence à fumer, ajouter la viande et faire cuire à feu vif 30 secondes en remuant\r\n- Baisser le feu et laisser mijoter 10mn\r\n- Disposer dans les assiettes (et ajouter dessus un peu de ciboule hachée)\r\n- Éventuelle valse d\'accompagnement : [The Last Waltz - Yeong-wook Jo](https://www.youtube.com/watch?v=_DxjFs_dsR8)', '2021-01-08 08:20:07');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assoc_hashtags_recettes`
--
ALTER TABLE `assoc_hashtags_recettes`
  ADD PRIMARY KEY (`assoc_hr_id`),
  ADD KEY `assoc_hr_hashtag_id` (`assoc_hr_hashtag_id`),
  ADD KEY `assoc_hr_recette_id` (`assoc_hr_recette_id`);

--
-- Index pour la table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`recette_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `assoc_hashtags_recettes`
--
ALTER TABLE `assoc_hashtags_recettes`
  MODIFY `assoc_hr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `recette_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assoc_hashtags_recettes`
--
ALTER TABLE `assoc_hashtags_recettes`
  ADD CONSTRAINT `assoc_hashtags_recettes_ibfk_1` FOREIGN KEY (`assoc_hr_hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `assoc_hashtags_recettes_ibfk_2` FOREIGN KEY (`assoc_hr_recette_id`) REFERENCES `recettes` (`recette_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

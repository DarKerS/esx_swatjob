INSERT INTO `addon_account` (name, label, shared) VALUES 
	('organisation_swat','swat',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('organisation_swat','swat',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('organisation_swat', 'swat', 1)
;

INSERT INTO `org` (`name`, `label`) VALUES
('swat', 'swat');

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `org_gradeorg` (`org_name`, `gradeorg`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('swat', 0, 'membre', 'Membre', 1500, '{}', '{}'),
('swat', 1, 'equipe', 'Équipier', 1800, '{}', '{}'),
('swat', 2, 'chef', 'Chef d equipe', 2100, '{}', '{}'),
('swat', 3, 'boss', 'Commandant', 2700, '{}', '{}');

CREATE TABLE `fine_types_swat` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_swat` (label, amount, category) VALUES 
(1, 'Usage abusif du klaxon', 2000, 0),
(2, 'Franchir une ligne continue', 2000, 0),
(3, 'Circulation à contresens', 5000, 0),
(4, 'Demi-tour non autorisé', 5000, 0),
(5, 'Circulation hors-route', 6000, 0),
(6, 'Non-respect des distances de sécurité', 5000, 0),
(7, 'Arrêt dangereux / interdit', 5000, 0),
(8, 'Stationnement gênant / interdit', 2500, 0),
(9, 'Non respect  de la priorité à droite', 5000, 0),
(10, 'Non-respect à un véhicule prioritaire', 7500, 0),
(11, 'Non-respect d\'un stop', 5000, 0),
(12, 'Non-respect d\'un feu rouge', 5000, 0),
(13, 'Dépassement dangereux', 10000, 0),
(14, 'Véhicule non en état', 15000, 0),
(15, 'Conduite sans permis', 8000, 0),
(16, 'Délit de fuite', 25000, 0),
(17, 'Excès de vitesse < 5 kmh', 2000, 0),
(18, 'Excès de vitesse 5-15 kmh', 5000, 0),
(19, 'Excès de vitesse 15-30 kmh', 8000, 0),
(20, 'Excès de vitesse > 30 kmh', 15000, 0),
(21, 'Entrave de la circulation', 5000, 1),
(22, 'Dégradation de la voie publique', 5000, 1),
(23, 'Trouble à l\'ordre publique', 5000, 1),
(24, 'Entrave opération de police', 45000, 1),
(25, 'Insulte envers / entre civils', 20000, 1),
(26, 'Outrage à agent de police', 30000, 1),
(27, 'Menace verbale ou intimidation envers civil', 20000, 1),
(28, 'Menace verbale ou intimidation envers policier', 25000, 1),
(29, 'Manifestation illégale', 15000, 1),
(30, 'Tentative de corruption', 80000, 1),
(31, 'Arme blanche sortie en ville', 5000, 2),
(32, 'Arme léthale sortie en ville', 15000, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 20000, 2),
(34, 'Port d\'arme illégal', 80000, 2),
(35, 'Pris en flag lockpick', 25000, 2),
(36, 'Vol de voiture', 20000, 2),
(37, 'Vente de drogue', 40000, 2),
(38, 'Fabriquation de drogue', 30000, 2),
(39, 'Possession de drogue', 25000, 2),
(40, 'Prise d\'ôtage civil', 100000, 2),
(41, 'Prise d\'ôtage agent de l\'état', 200000, 2),
(42, 'Braquage particulier', 50000, 2),
(43, 'Braquage magasin', 55000, 2),
(44, 'Braquage de banque', 70000, 2),
(45, 'Tir sur civil', 50000, 3),
(46, 'Tir sur agent de l\'état', 80000, 3),
(47, 'Tentative de meurtre sur civil', 40000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 150000, 3),
(49, 'Meurtre sur civil', 200000, 3),
(50, 'Meurte sur agent de l\'état', 300000, 3),
(51, 'Meurtre involontaire', 100000, 3),
(52, 'Escroquerie à l\'entreprise', 120000, 2);


ALTER TABLE `fine_types_swat`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `fine_types_swat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
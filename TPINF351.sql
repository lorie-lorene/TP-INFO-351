

--
-- Base de données : `TPINF351`
--

-- --------------------------------------------------------

--
-- Structure de la table `Affiliation`
--

CREATE TABLE `Affiliation` (
  `idaffiliation` int(11) NOT NULL,
  `etablissement` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL
) ;

--
-- Déchargement des données de la table `Affiliation`
--

INSERT INTO `Affiliation` (`idaffiliation`, `etablissement`, `ville`, `pays`) VALUES
(1, 'Microsoft Research', 'NY', 'USA'),
(2, 'Columbia University', 'NY', 'USA'),
(3, 'Economics Columbia University', 'NY', 'USA'),
(4, 'Everquote', 'MA', 'USA'),
(5, 'College of Computer Science and Software Engineering Shenzhen University', 'Shenzhen', 'China'),
(6, 'University of Duisburg-Essen', 'Duisburg', 'Germany'),
(7, 'University of Science and Technology of China', 'Hefei', 'China'),
(8, 'Microsoft Research Asia', 'Beijing', 'China'),
(9, 'Tsinghua University', 'Beijing', 'China'),
(10, 'Microsoft Corp.', 'WA', 'USA'),
(11, 'University of Toronto', 'Toronto', 'Canada'),
(12, 'Borealis AI', 'Toronto', 'Canada'),
(13, 'Hong Kong University of Science and Technology', 'Hong Kong', 'China'),
(14, 'AI Group WeBank', 'Shenzhen', 'China'),
(15, 'WeiXin Group Tencent Inc.', 'Shenzhen', 'China'),
(16, 'Indian Institute of Technology Delhi', 'Hauz Khas', 'India'),
(17, 'Indian Institute of Technology Kanpur', 'Kanpur', 'India'),
(18, 'Adobe Research', 'Bangalore', 'India'),
(19, 'Carnegie Mellon University', 'PA', 'USA'),
(20, 'Macquarie University', 'Sydney', 'Australia'),
(21, 'Shanghai Univirsity of Finance and Economics', 'Shanghai', 'China'),
(22, 'Shanghai University of Finance and Economics', 'Shanghai', 'China'),
(23, 'Delft University of Technology', 'Delft', 'Netherlands'),
(24, 'Nanyang Technological University', 'Singapore', 'Singapore'),
(25, 'University of Copenhagen', 'Copenhagen', 'Denmark'),
(26, 'Spotify Research', 'London', 'United Kingdom'),
(27, 'University of Amsterdam', 'Amsterdam', 'Netherlands'),
(28, 'Bloomberg', 'NY', 'USA'),
(29, 'University of Amsterdam and Ahold Delhaize', 'Amsterdam', 'Netherlands'),
(30, 'TU Delft', 'Delft', 'Netherlands'),
(31, 'Insight Centre for Data Analytics University College Cork', 'Galway', 'Ireland'),
(32, 'Computer Science University of Bristol', 'Bristol', 'United Kingdom'),
(33, 'University of Bristol', 'Bristol', 'United Kingdom'),
(34, 'Department of Computer Science Universidade Federal de Minas Gerais', 'Belo Horizonte', 'Brazil'),
(35, 'Relational AI', 'CA', 'USA'),
(36, 'RelationalAI', 'CA', 'USA'),
(37, 'The Home Depot', 'CA', 'USA'),
(38, 'Tokyo Institute of Technology', 'Tokyo', 'Japan'),
(39, 'University of Amsterdam & Ahold Delhaize', 'Amsterdam', 'Netherlands'),
(40, 'Gunosy Inc.', 'Toyko', 'Japan'),
(41, 'RIKEN Center for Advanced Intelligence Project', 'Toyko', 'Japan'),
(42, 'Alibaba Group', 'Hangzhou', 'China'),
(43, 'Alibaba Group', 'Hangzhou', ' China'),
(44, 'Texas A&M University', 'TX', 'USA');

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `idarticle` int(11) NOT NULL,
  `titre_article` varchar(255) DEFAULT NULL
) ;

--
-- Déchargement des données de la table `Article`
--

INSERT INTO `Article` (`idarticle`, `titre_article`) VALUES
(1, 'Debiasing Item-to-Item Recommendations With Small Annotated Datasets'),
(2, 'Deconstructing the Filter Bubble: User Decision-Making and Recommender Systems'),
(3, 'FISSA: Fusing Item Similarity Models with Self-Attention Networks for Sequential Recommendation'),
(4, 'In-Store Augmented Reality-Enabled Product Comparison and Recommendation'),
(5, 'KRED: Knowledge-Aware Document Representation for News Recommendations'),
(6, 'A Ranking Optimization Approach to Latent Linear Critiquing for Conversational Recommender Systems'),
(7, 'Exploring Clustering of Bandits for Online Recommendation System'),
(8, 'Goal-driven Command Recommendations for Analysts'),
(9, 'Are We Evaluating Rigorously? Benchmarking Recommendation for Reproducible Evaluation and Fair Comparison'),
(10, 'Contextual and Sequential User Embeddings for Large-Scale Music Recommendation'),
(11, 'Cascading Hybrid Bandits: Online Learning to Rank for Relevance and Diversity'),
(12, 'Ensuring Fairness in Group Recommendations by Rank-Sensitive Balancing of Relevance'),
(13, 'ImRec: Learning Reciprocal Preferences Using Images'),
(14, 'Exploiting Performance Estimates for Augmenting Recommendation Ensembles'),
(15, 'From the lab to production: A case study of session-based recommendations in the home-improvement domain'),
(16, 'Doubly Robust Estimator for Ranking Metrics with Post-Click Conversions'),
(17, 'Keeping Dataset Biases out of the Simulation: A Debiased Simulator for Reinforcement Learning based Recommender Systems'),
(18, 'A Method to Anonymize Business Metrics to Publishing Implicit Feedback Datasets'),
(19, 'Contextual User Browsing Bandits for Large-Scale Online Mobile Recommendation'),
(20, 'Content-Collaborative Disentanglement Representation Learning for Enhanced Recommendation');

-- --------------------------------------------------------

--
-- Structure de la table `Auteur`
--

CREATE TABLE `Auteur` (
  `idauteur` int(11) NOT NULL,
  `nom_encode` varchar(255) DEFAULT NULL
) ;

--
-- Déchargement des données de la table `Auteur`
--

INSERT INTO `Auteur` (`idauteur`, `nom_encode`) VALUES
(1, 'T. SCHNABEL'),
(2, 'P.N. BENNETT'),
(3, 'G. ARIDOR'),
(4, 'D. GONCALVES'),
(5, 'S. SIKDAR'),
(6, 'J. LIN'),
(7, 'W. PAN'),
(8, 'Z. MING'),
(9, 'J.O.Á. MÁRQUEZ'),
(10, 'J.E. ZIEGLER'),
(11, 'D. LIU'),
(12, 'J. LIAN'),
(13, 'S. WANG'),
(14, 'Y. QIAO'),
(15, 'J. CHEN'),
(16, 'G. SUN'),
(17, 'H. LI'),
(18, 'S.P. SANNER'),
(19, 'K. LUO'),
(20, 'G. WU'),
(21, 'L. YANG'),
(22, 'B. LIU'),
(23, 'L. LIN'),
(24, 'F. XIA'),
(25, 'K. CHEN'),
(26, 'Q. YANG'),
(27, 'S. AGGARWAL'),
(28, 'R. GARG'),
(29, 'A. SANCHETI'),
(30, 'B.P. GUDA'),
(31, 'I.A. BURHANUDDIN'),
(32, 'Z. SUN'),
(33, 'D. YU'),
(34, 'H. FANG'),
(35, 'J. YANG'),
(36, 'X. QU'),
(37, 'J.J. ZHANG'),
(38, 'C. GENG'),
(39, 'C. HANSEN'),
(40, 'L. MAYSTRE'),
(41, 'R. MEHROTRA'),
(42, 'C. LI'),
(43, 'H. FENG'),
(44, 'M.D. RIJKE'),
(45, 'M. KAYA'),
(46, 'D. BRIDGE'),
(47, 'N. TINTAREV'),
(48, 'J. NEVE'),
(49, 'R. MCCONVILLE'),
(50, 'G. PENHA'),
(51, 'R.L.T. SANTOS'),
(52, 'P. KOUKI'),
(53, 'I. FOUNTALIS'),
(54, 'N. VASILOGLOU'),
(55, 'X. CUI'),
(56, 'Y. SAITO'),
(57, 'J. HUANG'),
(58, 'H. OOSTERHUIS'),
(59, 'H.V. HOOF'),
(60, 'Y. SEKI'),
(61, 'T. MAEHARA'),
(62, 'X. HE'),
(63, 'B. AN'),
(64, 'Y. LI'),
(65, 'H. CHEN'),
(66, 'Q. GUO'),
(67, 'X. LI'),
(68, 'Z. WANG'),
(69, 'Y. ZHANG'),
(70, 'Z. ZHU'),
(71, 'Y. HE'),
(72, 'J.A. CAVERLEE');

-- --------------------------------------------------------

--
-- Structure de la table `auteurarticle`
--

CREATE TABLE `auteurarticle` (
  `idauteur` int(11) NOT NULL,
  `idarticle` int(11) NOT NULL
);

--
-- Déchargement des données de la table `auteurarticle`
--

INSERT INTO `auteurarticle` (`idauteur`, `idarticle`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 4),
(10, 4),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 8),
(32, 9),
(33, 9),
(34, 9),
(35, 9),
(36, 9),
(37, 9),
(38, 9),
(39, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 11),
(43, 11),
(44, 11),
(45, 12),
(46, 12),
(47, 12),
(48, 13),
(49, 13),
(50, 14),
(51, 14),
(52, 15),
(53, 15),
(54, 15),
(55, 15),
(56, 16),
(57, 17),
(58, 17),
(44, 17),
(59, 17),
(60, 18),
(61, 18),
(62, 19),
(63, 19),
(64, 19),
(65, 19),
(66, 19),
(67, 19),
(68, 19),
(69, 20),
(70, 20),
(71, 20),
(72, 20);

-- --------------------------------------------------------

--
-- Structure de la table `auteurfiliation`
--

CREATE TABLE `auteurfiliation` (
  `idauteur` int(11) NOT NULL,
  `idaffiliation` int(11) NOT NULL
) ;

--
-- Déchargement des données de la table `auteurfiliation`
--

INSERT INTO `auteurfiliation` (`idauteur`, `idaffiliation`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 5),
(8, 5),
(9, 6),
(10, 6),
(11, 7),
(12, 8),
(13, 9),
(14, 10),
(15, 10),
(16, 7),
(17, 11),
(18, 11),
(19, 11),
(20, 12),
(21, 13),
(22, 14),
(23, 15),
(24, 15),
(25, 13),
(26, 14),
(27, 16),
(28, 17),
(29, 18),
(30, 19),
(31, 18),
(32, 20),
(33, 21),
(34, 22),
(35, 23),
(36, 24),
(37, 24),
(38, 22),
(39, 25),
(39, 25),
(40, 26),
(41, 26),
(42, 27),
(43, 28),
(44, 29),
(45, 30),
(46, 31),
(47, 30),
(48, 32),
(49, 33),
(50, 23),
(51, 34),
(52, 35),
(53, 36),
(54, 35),
(55, 37),
(56, 38),
(57, 27),
(58, 27),
(44, 39),
(59, 27),
(60, 40),
(61, 41),
(62, 24),
(63, 24),
(64, 42),
(65, 42),
(66, 24),
(67, 42),
(68, 43),
(69, 44),
(70, 44),
(71, 44),
(72, 44);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Affiliation`
--
ALTER TABLE `Affiliation`
  ADD PRIMARY KEY (`idaffiliation`);

--
-- Index pour la table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`idarticle`);

--
-- Index pour la table `Auteur`
--
ALTER TABLE `Auteur`
  ADD PRIMARY KEY (`idauteur`);

--
-- Index pour la table `auteurarticle`
--
ALTER TABLE `auteurarticle`
  ADD KEY `idauteur` (`idauteur`),
  ADD KEY `idarticle` (`idarticle`);

--
-- Index pour la table `auteurfiliation`
--
ALTER TABLE `auteurfiliation`
  ADD KEY `idauteur` (`idauteur`),
  ADD KEY `idaffiliation` (`idaffiliation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Affiliation`
--
ALTER TABLE `Affiliation`
  MODIFY `idaffiliation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `Article`
--
ALTER TABLE `Article`
  MODIFY `idarticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `Auteur`
--
ALTER TABLE `Auteur`
  MODIFY `idauteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auteurarticle`
--
ALTER TABLE `auteurarticle`
  ADD CONSTRAINT `auteurarticle_ibfk_1` FOREIGN KEY (`idauteur`) REFERENCES `Auteur` (`idauteur`),
  ADD CONSTRAINT `auteurarticle_ibfk_2` FOREIGN KEY (`idarticle`) REFERENCES `Article` (`idarticle`);

--
-- Contraintes pour la table `auteurfiliation`
--
ALTER TABLE `auteurfiliation`
  ADD CONSTRAINT `auteurfiliation_ibfk_1` FOREIGN KEY (`idauteur`) REFERENCES `Auteur` (`idauteur`),
  ADD CONSTRAINT `auteurfiliation_ibfk_2` FOREIGN KEY (`idaffiliation`) REFERENCES `Affiliation` (`idaffiliation`);
COMMIT;



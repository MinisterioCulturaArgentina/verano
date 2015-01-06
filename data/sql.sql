
--
-- Table structure for table `role`
--

CREATE TABLE `role` (
`id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `roleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `parent_id`, `roleId`) VALUES
(1, NULL, 'Administrador'),
(2, NULL, 'Gestor Noticias'),
(3, NULL, 'Gestor Boletines'),
(4, NULL, 'Publicador'),
(8, NULL, 'Gestor de Certificados'),
(9, NULL, 'Gestor de Reuniones');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displayName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `permisos` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `loged` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `displayName`, `password`, `permisos`, `ruta`, `state`, `loged`) VALUES
(1, 'admin', 'admin@jefatura.gob.ar', 'Admin', '$2y$14$lHTek5OnjRZTFwWOLKbobumrfib7dze.wJ1V.Pq8F4xeAV1UqD0Te', NULL, NULL, 1, 1),

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),

--
-- Indexes for dumped tables
--
--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_57698A6AB8C2FD88` (`roleId`), ADD KEY `IDX_57698A6A727ACA70` (`parent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`), ADD UNIQUE KEY `UNIQ_1483A5E9F85E0677` (`username`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
 ADD PRIMARY KEY (`user_id`,`role_id`), ADD KEY `IDX_51498A8EA76ED395` (`user_id`), ADD KEY `IDX_51498A8ED60322AC` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `role`
--
ALTER TABLE `role`
ADD CONSTRAINT `FK_57698A6A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
ADD CONSTRAINT `FK_51498A8EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
ADD CONSTRAINT `FK_51498A8ED60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

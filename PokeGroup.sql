-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 20 mars 2019 à 15:55
-- Version du serveur :  8.0.15
-- Version de PHP :  7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `PokeGroup`
--

-- --------------------------------------------------------

--
-- Structure de la table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trainerCode` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `id_teams` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `players`
--

INSERT INTO `players` (`id`, `pseudo`, `password`, `mailAddress`, `trainerCode`, `level`, `role`, `id_teams`) VALUES
(1, 'LejeuneKevin', '$2y$10$NEVJTdxqqV8YaPqoMfLF8O760.Nzn8vQtvqXdJ1oyEdEMcznXruNW', 'lejeune-kevin@hotmail.fr', NULL, NULL, NULL, NULL),
(2, 'gentilJury', '$2y$10$SMn8U73C.Dooar/hOw4yB.TWUkOyKaUZN9uFtl6qWUMDMAOkwUeFu', 'merciDavoir@luLeDossi.er', NULL, NULL, NULL, NULL),
(3, 'test', '$2y$10$rQHPbxfaSzjl0FNOndMzH.H7W40xFOqFkq8XK1yIYm7rFg9MStVhG', 'test@test.test', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pokestops`
--

CREATE TABLE `pokestops` (
  `id` int(11) NOT NULL,
  `image` varchar(135) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(135) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `pokestops`
--

INSERT INTO `pokestops` (`id`, `image`, `name`, `latitude`, `longitude`) VALUES
(1, 'http://lh3.googleusercontent.com/IQ2zP3w76DUPBbbUgZLMkJD4VHLdbdTfUzjbUM7tW0sshEEPySpPAZmfV-dtLUYr3etWasKN4eEFg77NPSWt', 'Médaillon Du 105', '49.882861', '2.294174'),
(2, 'http://lh3.ggpht.com/9A4s3Ydgi2-Bdu2kmnk0MjsOx5jHH_K_td3IIWPbgzEDoMKk-tVF8yEZHrxYFmxbV0U7LBH81XzdJxd3FrY', 'Amiens - Square Pierre-Marie Saguez', '49.892174', '2.295971'),
(3, 'http://lh3.ggpht.com/t_aeWQbwdJEWwCJ0VS-BiteDhkIerT0R0hYnSbvMQd5Mbbg7x9DAgRfxcR0ZYOzciK9rDTR0tOhhOrOzj9pF', 'Les Lions', '49.887096', '2.295549'),
(4, 'http://lh3.googleusercontent.com/1Ugo3lJASwS4KCBXq79TWkQYXeokQdVEhLjNeiJFIe2oVp0asZ65wIjKNueVkUgKH3hw4Hjxtl4VnU-JrPc', 'Maison de la BD', '49.891906', '2.312742'),
(5, 'http://lh5.ggpht.com/-pC9A5fJneF9DJyNnh8jEZuSnWLQmqEhgWx_iN9dsVAzTa-tIIN2wyLaG17vqAXscyY34TKeCrDbRtL2HMOLdw', 'Société des Amis des Arts', '49.896961', '2.304450'),
(6, 'http://lh3.ggpht.com/qoJieC1PiKyuxh19d2LSMhbhJpis-_p_H5Ukw1gZGxNVPDLXNTVNHB8YKbdALvcw8RywKoxT-651G3oYo_yO', 'La Vierge De L\'îlot', '49.882693', '2.302363'),
(7, 'http://lh4.ggpht.com/mt_q6HxeqxEzh05aFGR9wE2vcKiO1-cSjRC7WUs_XAujEKE18rdQrHdsjPu7POA6tgok0EOXBVumUZKgGpZI', 'Porte Décorée', '49.889664', '2.293340'),
(8, 'http://lh3.googleusercontent.com/Mhjdb-_8BGslHJ9H5IaikeZXE79mxjdzmH0Y2NY9AohXtPe13AEeE41bdX016OdRqcWfCnpcLXjp_RtWk_k', 'Complexe Sportif Emile Guegan', '49.889148', '2.266642'),
(9, 'http://lh5.ggpht.com/Q2Xg1m7BrkiYVdsq3aiD0FsjI6N9xKcSlvrdu2MmcAs2CRVtR9AXki4JY4_RIfHMIYNSKb2MVGXF6kE-QEhhXyw9u_L9PJVXSNlI3r9TO0zAyiGE', 'Gare du nord Amiens', '49.890811', '2.306950'),
(10, 'http://lh6.ggpht.com/cgdPXF-67-BqY31H37RWVwSYzYMEaYS_kmtZw2x1n4l2M9cWZZ-4bDeQTDv3tTgWkCFvebFD-zYRlxaRm22H6E3kcKH6NiCuXtmljy8lUlOFuM1p', 'Amiens - LaFleur Statue', '49.898335', '2.302688'),
(11, 'http://lh4.ggpht.com/x_6VksHuWYjNBuuJP8lS-c_ENipUA5x13NRIYC6-ZGIau4n7jjMAIG-x5DM6D3I4u3UglU_U5rePNM-q8yA', 'Tissage de Velours', '49.893760', '2.307013'),
(12, 'http://lh5.ggpht.com/lKXXE_YOTdUxb3wP12p7J-aVQ8BiSmFEQufjQSuqLnbFYzL9WH77aWoEr8tyIV7rf4CwUBrqP1fFTP89RsifQQ', 'La Récolte du Cacao, Amiens', '49.894836', '2.299991'),
(13, 'http://lh3.ggpht.com/gWn95cMIc957yB1UlB13AVdKNIlN0NSVC3m7VJ2q_VPbgBQcLD0HLO4STAidisFvrYZImerutLs0QWH9au8', 'Théâtre Jacques Tati', '49.874650', '2.312157'),
(14, 'http://lh6.ggpht.com/tpMwBYoV_lkxlgVcnFQYjgOMYw4IPD7bGBn0hwK_Mq94h5LkbJ9p701rtpNPZ1k90umNYMvzPFSqzK17Dehg', 'Le Soleil', '49.908788', '2.297301'),
(15, 'http://lh3.googleusercontent.com/MJ-7OAb2fOKc_6gEh8QMK7QAnDxEKhCfMFZZP152RCydSGJuf5giXKWjQSRFuJfUF-lZGLSGiCXMLId1FIA', 'Art de fer forgé', '49.910464', '2.324630'),
(16, 'http://lh4.ggpht.com/6AVgBTOEdkGrSdKTE2S48G9AjVahw5iWxHsgBoDTPp5Gs9lP8cSiDDm1LhKAFfAWZatn36Lkj3-7X8VwRY6B', 'Les Grilles De La Hotoie', '49.897744', '2.286057'),
(17, 'http://lh3.googleusercontent.com/sv76va7bMRRKCP7l9lULa9f2svBrmPDqrqAgO7thbNJS0c5jPvWToFXw30tHfW_GEMb79kNxSHV2xG7xDT41', 'Le papillon', '49.901469', '2.297012'),
(18, 'http://lh6.ggpht.com/nSzbAkly0sb2T4FTveo8sbKBe9ud6sScOZYXHn70P2UbLXyvF7votdoazUaqyRenlXYObNZaSslSqiTv5Ps', 'Lookout Point', '49.897594', '2.308214'),
(19, 'http://lh4.ggpht.com/gZZsBOCVfDh_cW6N0x_0ERmJ3xTXof8KH_Jy5AFmcuX4MbHwpBnAWpedIJVt0aFvxssDjSh9e5JIJDZYvR_f', 'Serpent Du Parc St Pierre', '49.899168', '2.307836'),
(20, 'http://lh3.googleusercontent.com/PNu6Z5VEge-mSbXIZciBmzhUFf_9bPM8VFbwHFoQI_KD7BjrLImj3lXTYfftYQV8Lli45X1VbmywpD2j7lqX', 'Maison Du Théâtre', '49.897361', '2.301363'),
(21, 'http://lh3.googleusercontent.com/WmSseFdrR-73lg8UUhcqJIGklispH9PN5NKQ65PlOfd8Cw0pZ5mbQzntQMHcCGrJKRyfbGe1iovAiCeceHQH', 'Amiens - La Poste', '49.902689', '2.272937'),
(22, 'http://lh4.ggpht.com/J4XYcMOW2Oyf7BvqGvcF8mxciHMimvqCJ-NsrKcHLubZtigGSQ-ey_2tfe4UMo0otjWXSBF3XuZz3EkyYxLC', 'Parc de Montières', '49.917425', '2.257178'),
(23, 'http://lh3.googleusercontent.com/HH3_vqKHkls5csxZoDKtNnXN9iz5-_TPqghHIOlxuAFqwtTHkTxGdolQCft_jXvn3TMf6Lke6xUjYqJkHjjC', 'Monument aux Morts', '49.903327', '2.290432'),
(24, 'http://lh4.ggpht.com/s0YNBEgSHvAvM_6L-4aezPVOfg3xVrc1mZwHXPka2K99dD7wabJbZE_W1XB-ut2SpkSmwPcJ7CJiKEIOLUzOpg', 'Tribunal De Commerce, Amiens', '49.893040', '2.301644'),
(25, 'http://lh4.ggpht.com/MFCZXrEDStmOSdI-rb7toOgLy4K5Yb-XQ3LwIL0kGA5Jt1iSuzj01RG0APp45KwVp_FDUazzBFkmCVH8I-l-1Q', 'Araignée Saint Pierre', '49.896756', '2.308683'),
(26, 'http://lh3.ggpht.com/4cnzufRcdravNV1q2kTcM8T-Fs8RnRDIhTL6MhLMXa1tpOHPavseJ50CvHI79C3j1bukGwFCLSFjyPXRrgs', 'Bas Relief', '49.889223', '2.288290'),
(27, 'http://lh6.ggpht.com/C_WQTdSdBedj2-kmmGcvAmlrk4iuy-4la7d18g0p_L3h9Vv6mZhQeviLasY_ZbwYNkijICQyKhpqkE-lvS45', 'Dome Tower', '49.890306', '2.302677'),
(28, 'http://lh3.ggpht.com/j0DukUf_FIYaaCZmwYa4yhPn8GokM0xQD0x0zP-piCxM4tGZHUWwakunvnGu_6mtYNGwiFsr0Eljq7DTiaU', 'Chambre Régionale des Comptes de Picardie', '49.889742', '2.302845'),
(29, 'http://lh5.ggpht.com/i2wYpGYqQSTAT8FtTliQ2CceyB739Mkzph5QkNlDP_AdvxqTrKAUECpqj7D95BdCv89KyVUbHAlsFbbn5r5nyg', 'En Mémoire De Lamarck, 1744-1829', '49.890239', '2.291740'),
(30, 'http://lh5.ggpht.com/kw132E2xK0TgZAuRnISX-mZ_hALZzOZnjjO4qlq81sI8U2pasY3ea1pcweIENoWYhtZhd6_CgDo-TzHPhc5gAA', 'Monument Des Morts Au Feu', '49.897465', '2.285780'),
(31, 'http://lh5.ggpht.com/tsZ2hYwNmTThiXMpm9XghIGH8m_yz686syOi2li3jyQCpKw9QRM1t8M0vvAs8LhD-73CGvnG7I1NkI3x-Vg', 'Comédie De Picardie', '49.890619', '2.301316'),
(32, 'http://lh3.googleusercontent.com/YyBoW11GU7YoSYp8ZEM566yFggD_kxp32jmyvHBumtg6kyYDC-t2B0a_N_elTiheLPT2qFqrXt7Di9bsp-OW', 'Sculpture Murale Masque Grec', '49.883448', '2.326125'),
(33, 'http://lh4.ggpht.com/xTaNr60rT_xXzvOFs84_cTfro0oUykw4t0J09O04xLyDQtP67_bgSS7Z7Cdky8FlXnH5Dy8DekvC3aHK1qTX', 'Samurai Wall Art', '49.891612', '2.287897'),
(34, 'http://lh3.ggpht.com/_DJnnJ6y0r2DeEnkeG6XXw0pUPn6VVR4WcKs0E7SbrDzcPyY_IsqA_FV3KatwAXq9ql2GHmxuUM_nHVCxMe-', 'Le Panthéon d\'Amiens', '49.888261', '2.305345'),
(35, 'http://lh6.ggpht.com/LpiSIEs22MWJ3RmQrfVZtWZxNugOxesD3GcpV8_aWKBlKK-_acYAuxM58HnhEvVLmCftN8dh1EDja_D0OOUjGQ', 'Fontaine', '49.893357', '2.297345'),
(36, 'http://lh4.ggpht.com/JNUFfLruhiEtIYB79O_swSztPLpq2Dxfx75Qvl_I5BII10upTTR48HiiSX3P6uSAWs3VNzgJ-LPNriMXz5PO', 'Banque De France', '49.889759', '2.295663'),
(37, 'http://lh6.ggpht.com/pMxpN2RnINqm9Kpahn582k80fErAeGMqvlgc0-i1NPFjPNBjPg3UtPQW-PODTXmTakgtxBz19D0Xctn4Xza8SQ', 'Armoiries Du Gouverneur', '49.889813', '2.296504'),
(38, 'http://lh3.ggpht.com/T04BnYx4DmTyQoH-e4U6KsoVximJIXmc6-LztCedA-OnYpg64C_m5lUd-Vozg6JPp2EF6xf7gdfpeZho73rr', 'Ile Aux Fagots', '49.895191', '2.313010'),
(39, 'http://lh4.ggpht.com/Bn5MPqKbWO6B7DvjlDC_h2x_UkLUy9FJ8CQFGee3EpPRMAiZbPh4U8d4A3bRkTJpBolrW5-3rK5inaA6zA2D', 'Serre Hollandaise, Jardin Des Plantes - Amiens', '49.901589', '2.297428'),
(40, 'http://lh4.ggpht.com/5QOj0qApNL02rL-jXISXkTX4hG8FdJvzvVeqe_pUUwVujKIgeffnHBcRhr5HFEy2noEl3P2PvTWTCcvQkazB', 'Beffroi Cadran Solaire', '49.895365', '2.295925'),
(41, 'http://lh6.ggpht.com/GYRE0QzzdM0diRG1ecG2tjWqtrOOeX7E8zV9xFufFr80FPhWiH3VWxGqOI-cinXgkdOd9pOU8c1zXGj9Qj5rMA', 'Le fileur', '49.894975', '2.299350'),
(42, 'http://lh3.ggpht.com/rEjdMGqpf1pVSk5p59DjcrZQ9gykgPVDiB1hn47RAeTi3jYQ9ksLrrNqXx_sM1qqeSgjK7WWZGM97f7qCJmr', 'Fronton D\'angle', '49.881474', '2.285072'),
(43, 'http://lh4.ggpht.com/QX4Tz3LTTcyGGrklmSmhV0zl1K2YsvIhIAIj5L7LNWlIFfVACPIIcko7pEH3NLETIVI77zEu1C74KJQ5FdC-', 'Château D\'eau De Longueau', '49.867664', '2.362385'),
(44, 'http://lh3.ggpht.com/DVdsRLhWVAmEsq5TcpbknBJLmw5BUHNCeVm2r3NcXxdEeWs9JyB1Cluu9tCAqJashBKJy7vPInPtj7HOIPAq', 'Place Pierre L\'Hermite', '49.893905', '2.303191'),
(45, 'http://lh3.ggpht.com/T9hewmA45hfr8_zZA2JexwgU9NSXAOJzm3iMUfI_EX_npiKrhdj-JTrsDkjg7pyQSe5c3D8LE3_e__kOX7av', 'Bâtiment Des Minimes - UPJV, Amiens', '49.898906', '2.301569'),
(46, 'http://lh5.ggpht.com/EEqklCHGkZeE7JQHk6J12EgUOD2mMzLpotJB7Ku8vrgmO_66_-s8nprloO8gbpUknsZdJzSNetqcMGBU5hA', 'Hotel Bouctot-Vaniez, Amiens', '49.889118', '2.302683'),
(47, 'http://lh3.googleusercontent.com/i7UAoZ99pdC0f_3NQNrRvd6xb5jkyEh7tTwrWeLZlaoW7yX8T87DHzcmAJ-UOeyPLSnhpvChl8u87-_K7cvD', 'La Maison Au Chat', '49.902108', '2.296992'),
(48, 'http://lh3.googleusercontent.com/y9E-Ibg6c_mUdDTN9XLmkeeObC3P1RrRA2jOBaOEgAzZ4A4N8i1tbugFpgJJxNBXp7fcGwIvAOtF36eCwpRC', 'Ste Clotilde', '49.889901', '2.300141'),
(49, 'http://lh6.ggpht.com/Pldbd8uZ9J794hT-YN8q2Ajw8BEGkRS3Q2yDUsQIInin4VvpYDeLiXjsolEB-3T8pcy-IQ0IMTdquWUEcbNh', 'Fresque', '49.874128', '2.315191'),
(50, 'http://lh5.ggpht.com/MWUpZV25f3G0K46Kxn4rsZq0OGexIze-hjHV5mr8BXgM7X5PwRzFiOK0NmmdNCwlFrsImUjrmByUhYM4ObOgyw', 'Façade Flamande, Amiens', '49.891475', '2.301930'),
(51, 'http://lh6.ggpht.com/9ahlrs7CPbjSgvNoT-xn21pSaHpdBdZ_VeyXpV3NdFoCeaXMnBxxWIt4rv4UbGUVTDTPwrfqqDuXEbCLVVQS', 'Fontaine Dans Un Tunnel', '49.895926', '2.300111'),
(52, 'http://lh6.ggpht.com/d0BOOeBZ_pGrVtqPvVVN_jJBmPchgFRl5__QDFtg-OJxNb9zifx7diD6ehhrwzN2dCAF1p7nst8Rs8bDCjZs', 'Eglise De Hem', '49.901948', '2.278366'),
(53, 'http://lh3.googleusercontent.com/JmXw46zIsDEM001dnL_feLKV-sCL-QR62bZsSfAJ169CP9UjSraSrhW_4Wa-Xzr1eJcC9GZniwr-JN3rWZIrCw', 'Le Porche%u200B au Pélican', '49.888535', '2.287107'),
(54, 'http://lh5.ggpht.com/hBlVAXrkbFzw4Cd_K2BVp2zpnroANbIcat0uwrnm9sBP67TgCpG6PGBl_Q-5eMYussclmZP1-vXo8ig4tK52', 'Le Premier Né, Amiens', '49.907227', '2.291036'),
(55, 'http://lh4.ggpht.com/IBFmRtod44wsD0b__TfyD4Z_e12jxU-N3xMIVhscjmSOOgQaLvqndnVOVugV0I2Q0v5ZAN87--A62qF3vU2g', 'Mimosette 1926', '49.894415', '2.314840'),
(56, 'http://lh3.ggpht.com/5k9sad40ek4QfUTSpKseuimGiLnddX295eE6VVSsk0EyUjvgKEaHz4vGR2SxDYib3ZtaPa6tISasOFcjXoQQ', 'École de St-Leu, Amiens', '49.897736', '2.304668'),
(57, 'http://lh3.ggpht.com/ahZcXWbLMhA4PM3IcSa6NyqX022PBtLdKtOyBHy43XBrKULEJu3C-Dk6iCJwxdcT7gltd04qzzRGAt2iIwcKHA', 'Ancien Cinéma', '49.891854', '2.299870'),
(58, 'http://lh5.ggpht.com/nRH74qI7x7agEe_BgJDuZ3TSfKjRpElt-kBx0-d5nE3uEUKqqKzhQ0j8MAKTihbQ4Lvir-jROxKCIr_6bmgZ', 'Modernist Church', '49.885791', '2.330721'),
(59, 'http://lh3.ggpht.com/9EpiwrXzskmmLwhDTwwsQ75FuLJv1FAVwOqW_4XRWCsTk93osvr7HNIQgtoBaRfknprZWaR5P3piY8VPx50', 'Amiens - Bustes Angle Sud-Est Musée De Picardie', '49.890422', '2.294813'),
(60, 'http://lh3.ggpht.com/2ZCsTukL-aSlokdIRMi3KLusu7K7jPHQQBNcw4EPJUXc6hfKsV0JmCLiWE6Ep4-iHgEMsXEQmLInrpfgEuN0', 'Amiens - Les Demeures', '49.897472', '2.301107'),
(61, 'http://lh5.ggpht.com/s-OIWdDVMzf97fMfspvJRjLY9oNIgA-szTv7PKuGiRW8Ho1MHFHn2T-TJahSgOm2KpDndyK8QlD4fZnWf-yw', 'Huissier De Justice', '49.893131', '2.299102'),
(62, 'http://lh4.ggpht.com/tBzlezojbDBugvjmtIdAxvNaVTElrwaBnzZIyY2hOPmaRP5Wu67UhoieSEz7-90BUE_w0E4dp4vNzcPwlpk', 'Église St Jacques', '49.895859', '2.291041'),
(63, 'http://lh5.ggpht.com/JFURQ9M8RiNtYq0JUP_Bl0pMUIoI8V5kOuh_4l0WnlHHCaLXnJxcidD2ZPp79eokeesJ-5oTQ1Vw5YMB-IH2ZA', 'Le Chameau de la Cité', '49.875405', '2.311320'),
(64, 'http://lh3.ggpht.com/Q2mXD4H398jcZZqvXyms3zTn47XG_ihWFtbe0qGqeKwJxO_uM4mT-yUseX1WLU-qKQFg59kdEr22EPM6R89L', 'Les Dieux Grecs', '49.883258', '2.325772'),
(65, 'http://lh6.ggpht.com/7-Ii6sMxg2HVTP3ot55C6QblkScDgb9ShXBpKa0RPm_R5_oTiL3Np5B7Acmt3hA8MAGqzSPrkWVhK4lnwuo', 'Rosace Du 7', '49.886797', '2.315226'),
(66, 'http://lh3.googleusercontent.com/rz-9EW1n0IG-qeZb-YcToJCP8xdI99ssLeTfdLLtDfjAjjzfAEfkb5ZoMujD9T-PZp5pI4PxZnCMtNeDl0Z3', 'Le fou du G', '49.901453', '2.298016'),
(67, 'http://lh5.ggpht.com/k0pz8-4Vgy3Pv4QZRGtsaAbhc3w3c40fJDzm4CFmfsyUsU90LADKBkTCql4vHYJNRzVqhxtKHiDDxSU1RXZUVA', 'Piscine Le Nautilus', '49.910739', '2.312196'),
(68, 'http://lh6.ggpht.com/NCTnffkmMQH1L1QiFMRUd97msdIYeC6QfJczjsXePvQpJHIK3NBT6xVBOuMpevn9LJNlUOvq6RuB6UL1sbYn', 'Porte Sculptée', '49.884431', '2.303914'),
(69, 'http://lh3.ggpht.com/j-HGEskPHZbZdk3Koc6pKBVnsPUE68NV4pwzTVe-QaxYLJG4ofYPEvO9s7ER0CBK2BmVpsHnQ0CoL_1byG1g', 'La Poste Perchée', '49.874373', '2.312857'),
(70, 'http://lh4.ggpht.com/gn5Uq54iQOdhBBu0vMaP4EyvTf_53UqVL--CHqZnacjVC6t-wvAHvpr1n357as274_eB1WB2zwXrx5_0-eWX', 'Église Protestante Évangélique d\'Amiens', '49.895502', '2.296627'),
(71, 'http://lh5.ggpht.com/7_e4PvLb8YGA0jIytSiW2yAGqa3kztxgeG5tPRO5tULCpgMGO3vPAUq4NW5RDio5utwMGhUF5K6tgfdjHlDemg', 'Peinture Murale', '49.893235', '2.286714'),
(72, 'http://lh5.ggpht.com/B_F6lUS_ca3PUmk6_5l9aAqRnRfYj-Y6NLeDqeejz_toBlPUacIBKSSNoOCBZaiGAi_pvSqhhZ3rOMwi11da', 'Armoiries Étoilées', '49.891113', '2.296424'),
(73, 'http://lh3.googleusercontent.com/I4g4WXfiTtMyuCJefFy--aQTIClNA40uPiNZGb8xMVQsH5bc9T9IVUwhiwvEwupAYL_YV2P4ygYboxsbm8g', 'Beffroi, Amiens, Somme, Picard', '49.895492', '2.296155'),
(74, 'http://lh4.ggpht.com/KJ69-2XZu7_zK_PLZ5CbLXmHADdw5VPDq_J3xCREcBtO9_m9cqgFPcnMDCFTz4UzxDUbOijaRjNEbh3F9vd6mQ', 'L\'Orange Bleue', '49.888075', '2.307017'),
(75, 'http://lh3.googleusercontent.com/0Zi4GqXQoriSw_Ua-_xpJARpP1imPzF3o9RFgtBIy7Bl4tS3JScA8ofad8KH7plKJiFedqsxnjoJszNR5xEOQg', 'Hommage de l\'Amiens Athletic Club', '49.880843', '2.302223'),
(76, 'http://lh5.ggpht.com/qw5tB1tvaUTSt-ysgEJb5eqBbnkXKa-xosjGKp4lZ5xWSOm-bXvtqFdqgBu2U--m5leFDXXiPyTEW8zWPwk', 'Giant Dachshund Mural', '49.904559', '2.273697'),
(77, 'http://lh5.ggpht.com/qd2_AKAZCi013rf4BdBEBESpHJzioXqaKF6FaQl8cx5PeDEHSC9T3c6WGs1EXQHK5RlHClS-hNOgpUe-v1RJ', 'Fresque Jules Verne', '49.887650', '2.301746'),
(78, 'https://lh5.googleusercontent.com/p/AF1QipMT5AbJsLSmj1PE_0TH7SxKE9lywhrtxGJZisYw=w408-h288-k-no', 'Cathédrale d\'Amiens', '49.898892', '2.310820'),
(79, 'http://lh3.googleusercontent.com/3qsBJEwDYIMz2OKPwDpqGM4AejTz3MlZ-4AXmacGE-oEenN85bLRoS-z4VLomXf13V-lDEby-h4cxunSLJ2j', 'Attractions Enfantines De Saint Leu', '49.898643', '2.303544'),
(80, 'http://lh3.googleusercontent.com/s4ftlz9ayDlTHgJNT-t9QCCBXph2DTyAD0P_d-RkFMZennrJMcaJMNhnvjIyaGNj8V0xYyVYp9s36OHnAzA', 'Fresque De La Vallée', '49.891968', '2.309228'),
(81, 'http://lh5.ggpht.com/jbJCIJzxu_BgDkFjkCkyxNFae0XxZ7JptuuW1XaIsSeytaep4-bUVrouB6KBsZWpqO_Z32FJmIS9uNbuGw', 'Amiens Haltérophilie', '49.885825', '2.328546'),
(82, 'http://lh3.googleusercontent.com/5d0B37g72J5iFMDjhSx2IhrFtIjyii89VX9yA8Zq_Epb1Ffd-kfA7EIx6tlZ9JnKcQpZjF0zrUdimzsrG75dLw', 'Maison Jean Trogneux', '49.893251', '2.296758'),
(83, 'http://lh3.googleusercontent.com/WmSYrtwxU74Eb9gJMqFAV_xxS-Q69Tr751vkl6VWyf1bsFrk2icWsjgEy6seQtlcyKG6BK-T1W5e1WKFXDTyig', 'La rose du 108', '49.882146', '2.313718'),
(84, 'http://lh3.googleusercontent.com/ck_WancGxeS8_uPJtmKfSqc_PREkDQgrgkhUl8Roxb4pjP3tW_BCut9_zbVKs6LFY66gatcTVN5-elV6tU32', 'Plaque 1894', '49.884014', '2.326206'),
(85, 'http://lh4.ggpht.com/u7Q1ZlYTTM1dzXnJRTnMjUncFoQLKtiJNejFcYCQnPfr4-OGNarZuICySiwRulLJ9yREpjfywfO4CsuUkL_gow', 'Hôtel du Préfet', '49.890571', '2.296556'),
(86, 'http://lh3.googleusercontent.com/914JgBIE7wwbI-3v8583YonJoBMvIuCns2Y0c_8L9uLRsyv9x5WCDKZ4uV5EUgbhCaNxjTZHS_wR9MpJPfQO', 'Tour D\'observation', '49.878845', '2.329236'),
(87, 'http://lh3.googleusercontent.com/2-5Kavk36RkWzoHz3QnixOPazl5km-4Skj6TYpYTRIBHoH79_MRvpJ66DkUTqiLBsqGEasx6G0dH30jintvQ', 'Gargouilles', '49.880783', '2.304883'),
(88, 'http://lh3.googleusercontent.com/AjUW1NLaqPFB81vJde8x-O4Vu6W_TsEA2asRsvPwmbLIxACnG2dgkfsBDWRMjm0vOVFLLUEJsPu8miBnUcK9', 'Parc Urbain', '49.892742', '2.313268'),
(89, 'http://lh3.googleusercontent.com/ZeRLv6tPjlpYEHheSX24DLnPaZVoE7RiVK9rLzpc3J2T7ndO6du_a7Tbs1BeaTmRa54Pf1ilH3wEgMb9G4sv', 'Dancing du Pavillon Bleu', '49.899860', '2.274953'),
(90, 'http://lh4.ggpht.com/30_dq6QVfe5MTEJ3AwOlMGTeyga2-XMVxLDF48AjWHKTxVVZSL1e8rfskp__xjSvwq4ikxiniqI3bBvrnvw', 'Vieille Façade Sur Batiment Rénové', '49.892320', '2.297944'),
(91, 'http://lh5.ggpht.com/kS0UcwjH4ldx673dpqWIa-82iwZVxzL1cOypdEclxO5jA5V_xVQ0EjPTjTBXwcdGEKy5ZmpflG3qhjkhDDSW_Q', 'Théâtre Imaginaire', '49.890670', '2.305668'),
(92, 'http://lh3.googleusercontent.com/QysBrXWV08g7ICeEwvWGWnZHMcyBuPDuj8sJzreovaWFGzEJPKUuJ5ZUDuwgR2WmcY8mMhw4xm6IdxGbwAU2', 'Aire de jeux - Amiens', '49.898683', '2.273623'),
(93, 'http://lh4.ggpht.com/dQyj8uMxUcCSEMzPtRBAm2PgIAzanw_I9lD0AJCLdttskoqz9KAtRRMUjrJdUzGauO93AkDwp7E-SQjLQ7zi', 'Marais des Trois Vaches', '49.877402', '2.339692'),
(94, 'http://lh4.ggpht.com/ufFyS0smEhQvd7v8-lrNzPqbQ7m6xJoPLXkndmOdL9fR0jP_UdvwvQTQP4qowx3Orz2VMM7bqESO29jMpaTZ6Q', 'Façade des Trois Maillets', '49.894503', '2.300844'),
(95, 'http://lh3.googleusercontent.com/ZcJefHd2yejs8QbB2S_rPEUCegNvgqYjIhbRT89W4LDcgHq-Aji5YJlwu_r9ESXF0BG2WYI3DJevQwa_DBBp', 'Ancienne Entrée du Gardien', '49.871173', '2.279868'),
(96, 'http://lh3.ggpht.com/O6m5yM6vC-WUwX3LwlrGDrmVJvE1vJJ7tqi_Hvs7B5OREUaS82wfHX_BBhaGwJFxnj4I7Z_7iunULva8DzgR', 'Serre Napoleon III', '49.901032', '2.296691'),
(97, 'http://lh4.ggpht.com/hzO3yw93YS_7FNBnwDdoMkqwe_ovaXMeljEqEXCzKzmrvxdJxKuhOFyYBJHiMm5zXv1R9bquKL8EqVBv_Hw2', 'Jardin Médiéval Amiens', '49.895274', '2.302087'),
(98, 'http://lh5.ggpht.com/fs8vsEV8CEgapo-diuQnmKkqLJP2gI9iv3yN4RwLj2Avk94jUFD8BHpO5LgYvPMwtBLJjKt1xsZaUbrSdyBj', 'Statue - Square Arlette Gruss Amiens', '49.888083', '2.295028'),
(99, 'http://lh6.ggpht.com/nDZk5NEH7635jI-ph89c34SZLoLaZMhgQD2SOnWwXOxSNMghc1y-lLtI90Tyqg0SKcqbHMwZZUmaV_5dJ4r2kw', 'Totem', '49.870275', '2.285501'),
(100, 'http://lh5.ggpht.com/W2l9wu4iktVCeVtNYPXqgyC5FsXeo4ni6SLd-Zl6o_DC2veuI048c7WfHHCLfOUtpx09VKJb9UOQAma8iNBqzA', 'Statue Des Beaux Arts', '49.891602', '2.290816'),
(101, 'http://lh4.ggpht.com/FL5gS0P28nQrU6ECdW6vC8oNvz-EVn08U5X_XMaXFQ3j2I-920GR_y_c21q4AzL-D6eImb8dlPasItnGM60H', 'Plaque Jules Verne, Amiens', '49.887977', '2.300585'),
(102, 'http://lh4.ggpht.com/MdV5Fs7JGJ77yhQ6Q0Gu-FuzpXLPJ04sdOdb6xrfDroxIbYBiMHLdGnxPYsADtYy3dZoS9jEwNTcfnErGwp2', 'notre dame des anges', '49.885903', '2.306301'),
(103, 'http://lh3.googleusercontent.com/_wovAKmTpgGHm2FOpnDyFuEuvK8ddPeOuULH4tn6DaxBdwI3dB44Ms4EqNxyCrVKHYB5UOHFJrVPmPXc5uM', 'Blason de Beauvillé', '49.894991', '2.309788'),
(104, 'http://lh3.ggpht.com/0EFKv2qHwbJ8CwY81-wpxdms_dJlA4_ARJxb3DgMfKnAr9mwEgJG3dXtmTFN5h4vmlFle2-ibfGkscV4A1wEVZy4zz3kd5OB3aAruVgkOhsQ24_L', 'Cour d\'appel', '49.892495', '2.302009'),
(105, 'http://lh4.ggpht.com/FyYxp6nBcECOIHkfSeGyRfvfuTtqFp-NPyX9vWlLomHi--Va0odWBXD7M_0lhr_Ksaa96gF5En9GaA9984fD', 'L\'aigle impérial', '49.889463', '2.297164'),
(106, 'http://lh3.ggpht.com/5I4JdP9ndXHHE3K2z1qJmNN8B2zHWSX5oM-aYepcr02Noxso1iafVtYTn7Py73vwqdZj95OFshEHylDV_ihHHKtbG6xBP5Hh00XDvl0S0CjirXj2', 'Caserne De Jean, Amiens', '49.888511', '2.311894'),
(107, 'http://lh4.ggpht.com/nbrOXZBc1ZH7nlglrTNOxlcb8gGT6Neu67pUUua4UAOO5UD4zzOCWN6rMOEVJxAvAL_jh1NfO4D8ObQFvrQ', 'Le Porche Au Loup', '49.892097', '2.302267'),
(108, 'http://lh6.ggpht.com/X3TXPWX1eWnJjVP-2tIJOnIIxVTEiSKi-HK2FnogpNuqTwqYOsSxQxf67mN5G_3zKCfRw6iBV5VWPfpkUjc9', 'Statue Lhomond', '49.892283', '2.290098'),
(109, 'http://lh3.googleusercontent.com/pY3qBSOR0qixRFkNOBQMtqv9vt6VcG3X6DR6jL51c9iHIbcHO45KhBdD14RnEKma8bCI6CaZ9ZSK2xn_WPTZ', 'Gallérie Des Antiquaires', '49.897131', '2.305799'),
(110, 'http://lh3.ggpht.com/zH21AJ2gAmQvI-sFae7oLA9JIActi1DZI1aaXZlXORYgqzAkIawpeYTjGemglCzdORc0VZg8owjU8zMuXkiJ', 'Chérubins Peints', '49.894407', '2.300007'),
(111, 'http://lh5.ggpht.com/96mFGAI_fW5yYEYQNvXYb5ES-jzOmzmDsV7pnUXj3ziEupT1aD1BR0sm0k67wbSzbOT4Dbdy_UKzEkNr2dmK', 'Historic \"Double B\" House', '49.890705', '2.290523'),
(112, 'http://lh6.ggpht.com/mP0ddRmoCN9gbbgZj1wg3F61zlMICndqC0heJYmTo8wENSk_0a_SrnV0ihYCmOnldQz7-sWMl4ZI_vG-c5I', 'Saint Maurice Church', '49.903580', '2.288232'),
(113, 'http://lh3.googleusercontent.com/T1zrOOg4kTeo7Hu3nJJNqjMhqXLPPatvvaTG2qT7PUuv20ng_-2Ce6ZqLjCR39vOND-IE3D2xfEjRQ67uXbW', 'Jeu d\'eau', '49.892542', '2.313949'),
(114, 'http://lh3.ggpht.com/kG75zXHZ0jBQcnXTMsLu6c36MG8-ZTwH6OyDMFrFAfpBLquDCRzo7r_GOBiMrcZ13inzOsI3DiuxsFmNgM_k0A', 'Conservatoire et Auditorium', '49.891750', '2.291221'),
(115, 'http://lh3.ggpht.com/zjU3vNvVrbraXxOTKU9DikfX4O0FR_GX4Oj9YDHES4p9JDOIcl6PjykFMIhzsc1U725Frn_yJSPljuMdAd4', 'L\'église Saint Germain L\'Écossais', '49.896422', '2.296247'),
(116, 'http://lh5.ggpht.com/w-Z7HsMYfOorKWrTfWXfmJxolWvMFH7R79r06cdEtd8F42mXpj9hShG4d2XsjR56ryst1yTUYeGU8LKHIDgyVA', 'a la mémoire des combattants du 7ème bataillon du régiment royal du sussex qui resistèrent à l\'offensive allemande du 18 au 20 mai 1940', '49.883884', '2.262029'),
(117, 'http://lh3.googleusercontent.com/SpeypNfyalXqKh-y_FzQUQmeqmfWSD0FAzAQOLWa1RGvQD07OqPea078-A9UpiwmPnY67fh8STWhSLfuiqIl', 'Le kiosque de la Hotoie', '49.897503', '2.282023'),
(118, 'http://lh3.ggpht.com/qDBPKWsfV0BUIonAy6Zke1lsBR6KBoe9oaROmW6VgtsJHYm2INFjY0jM9hXF9uyNWrN4ibMAPgKSpCMi2LeB', 'Bibliothéque Le Petit Prince', '49.877974', '2.326631'),
(119, 'http://lh3.ggpht.com/4RGPXaCOMCKoRTOQ0bxqB-bl4l3vrxu6a8Y3HoY5_8J5PlkJbhDg9uoiHoAiwHRdAHCbdcnvLkGlkoIwMroQ1w', 'Parc De Jeux Du Coliseum', '49.895075', '2.287130'),
(120, 'http://lh4.ggpht.com/3ee27MS4un8T-d_7hbuCJA6E_lTHh4pkRo7f5YRcd4TL8aRv2Ovxf3ICBxS5Ak2fg3QSXEt2J-9wxXufvBg', 'Plaque', '49.892428', '2.303505'),
(121, 'http://lh4.ggpht.com/pe_tz1q7cVvUfJm4HFE3yG5Q-aeeD-Nwsnf1S9DQQ1T8T7UCVmeaqM0Khis2U7b4GV-pgSU1_NCOxoK7flPVYQ', 'Église', '49.893035', '2.305662'),
(122, 'http://lh3.googleusercontent.com/tLWoJQ88zTaKddAodV-Iy_gX53s5VoLcTUk9PLqW9uAo3BRHiZ1O1DCW3KPQVIykkFEdeH6fScI9Am7qxw', 'Théâtre De Marionnettes Chès Cabotans', '49.896829', '2.301709'),
(123, 'http://lh5.ggpht.com/8uyJlzMs8qe59khLBfWOTRhvMWVnxfKEIunC_ohGPaQsar-_985mKqzrAvi6KnbvMOiq_bZ1KCSbFbh6JS8', 'Hôtel de Ville De Longueau', '49.870141', '2.357319'),
(124, 'http://lh6.ggpht.com/VcPJXc3tFrG_JUWez_PFfY4zWoTplMYhND3pr7lpmFgCe6ar2QihU77gxWcvv6SKokfkbCEOdUOKytFIi4Ho1A', 'Amiens - Ancienne Chapelle', '49.898706', '2.300418'),
(125, 'http://lh3.ggpht.com/IRplGZR1YHuTGbk1mY-OEI_ilA3rbp8FFsrcRlHVhgJmVNTJ7zCV8PpCNTB-5NJF6st1oK7-5f_ccmJnFpE', 'Aux Martyrs De La Résistance', '49.891179', '2.303849'),
(126, 'http://lh6.ggpht.com/GlklQ0BN_i9IksZc_dTjoLaNAWwGDEurOWSFnMyN_ZhW8oAZPFGH3gcSqFmKe4BZ_foCCfb0fGLEVp7wcN4', 'Jules Barni, 1818-1878', '49.914386', '2.285688'),
(127, 'http://lh6.ggpht.com/PjO45vdGf88R6CqZjfu_7W6p47cKrKRW32sm03a-S3cMAmCvasH0TgAs5VCl5qnCKErpPUu3K-nxVrqzsYuhDg', 'Hôtel Particulier Historique', '49.888592', '2.291976'),
(128, 'http://lh3.googleusercontent.com/ttk-xg08goNtqwElomgZFgbTqktFDOTZriYvS9KV041upCTVOzrHNgj4DQ9xhRD2-OteDUiP8EUFSAEoUpt2', 'Le BMB', '49.893066', '2.274593'),
(129, 'http://lh6.ggpht.com/iqKjIPznKpRPP1NArzPqawvdwdtPVNB8ZCEdWHOPIeF6oAQFC6vTmgjFLeSxC-rkOHrOOhHgr9ggaviTUgI', 'Croix De La Sainte Famille', '49.889653', '2.307828'),
(130, 'http://lh5.ggpht.com/J2kvsJ62nG10-DoxZVQb2Jk5VCXZbSnQPv1aAoUC7nGmfDaX7L0oiJu9_R2JhFrfsITivI-nAYZktrBw7He8', 'Fresque de la Ferme', '49.893010', '2.289690'),
(131, 'http://lh6.ggpht.com/BQPhwEUi89JvTC9GN4ryxXZP0XdZqx8FuEKQvR9MeF_MJNTC85QbCJSslXRP0e1uX1hKv5Q0rLAXQTY2gtUw', 'L\'aquarium', '49.911561', '2.300441'),
(132, 'http://lh4.ggpht.com/FCfTV3pUZatfP6SfzPJipFA_cnA9vJVdmk725kcI3kvq9cR8IwuOLYfW09FuvyaTdw-0Q66hXYdbc8t09FlQ', 'Le Crocodile', '49.894683', '2.298909'),
(133, 'http://lh3.googleusercontent.com/sMsE56H4AAuuxdMUAl-lUsZqfb7-PQn2bWhI3NdQmdSjjNyRWYnqW_30rYCbc6GJ12RIkMtObG0qGM_va-zR', 'Les Cubes Rouges', '49.891330', '2.311010'),
(134, 'http://lh5.ggpht.com/7kYBvXVg-OHyWiTpPgO_do_PSMH9psPstT7LTMMzbxkAhq3qofMKUKZHTL_KAC7LWX8FeUmNIt77dQYTjU9RBg', 'Place Vogel', '49.897613', '2.295387'),
(135, 'http://lh4.ggpht.com/xMMQktDESXwOzJuXlC9dUc46lBUCGqKnaJvtvH78l2uaw1hf1W963bhvGTifdsyhAA_ixmzXeIAuVP4c464', 'Restaurant D\'application', '49.884311', '2.294729'),
(136, 'http://lh3.ggpht.com/PNQN-YayquQnkST1njO_jCQUFqHuDqiTh0RwKuM07PmjGVJAM0_y9N7U-ti4FjJ1R-esZhZS4e_9G3kLxWo', 'Les 3 Vierges', '49.894712', '2.291263'),
(137, 'http://lh5.ggpht.com/HXSWi2rvbeb-BvyxHVERr_TqVFeGMtc2VwvLAaRvFZdns87IM_7i8jBO1zXcmbZaF9pUcSfTQ2lL6T_VTqRVNg', 'Portrait d\'Albert 1er, Roi des Belges, Amiens', '49.889127', '2.295320'),
(138, 'http://lh5.ggpht.com/BPhstIZUirm_wNIlKl8wwTZOxr2dnusGfetO5P4XFMKRuEJxqegIR11s8IUXMjbCgJ9PNIYgA-qaehq7-i54Tz-9FyUHZH2PSq4m6keGAPrvllWC', 'église Saint Martin (Paroisse du Saint Esprit)', '49.885447', '2.300480'),
(139, 'http://lh3.ggpht.com/lSm_n-IOSt-6V-f-LWLaqrkoP0K0vuy6y1aTUvbQyer1Jy2BZkmiYaJ75K-OEOasiQAibwQfGot9WrBLhGUX', 'Institut du Monde Arabo-Musulman de Picardie', '49.897259', '2.289897'),
(140, 'http://lh6.ggpht.com/Pse4ygNVWNSfc5udJE3cwr3xNztkM478VFgEF2gtXua2RPZWIqVuDmDXOaQGpUUvAxT8gUtVghv9qe_FEDAH', 'Lion Gardien de L\'entrée', '49.885873', '2.297425'),
(141, 'http://lh6.ggpht.com/CMfMSqfXB66H-r3VJolgRTJohpcvQFARn5vL5YTyAxyGbSD7YWzgbDF7UIjvNpysFHl3xOvasSm3my0j7RQ', 'Fleurs Du 148', '49.884315', '2.292055'),
(142, 'http://lh4.ggpht.com/fBhqSJdFNdG5YpqPHEkCgpLQuuZhhBZHPF_m3E6UOxhTXg5KGOpwnZ5zimgVDhMGbvUkTiekxCryr5z_-PiQ', 'La Borne de Camon', '49.887056', '2.336484'),
(143, 'http://lh3.ggpht.com/c9yQ2zpVRSaUV5lKzYHp5roZObsiQdJiNW4vbdQe859DiBSLvDeZtV2DdoL_N_a_3p9VuYH-MOqzZRKiL5Fu', 'Fontaine dans une arche  Amiens', '49.897024', '2.297288'),
(144, 'http://lh6.ggpht.com/S7RtNn8M8EDX2i51y_ATbhZeSIKDNYCHtOSlHnO5rc6jpFN5B47gNrzJrRhlrmbxachU-O58VWltYJnlF_pz', 'Les Pingouins, Amiens', '49.900029', '2.275661'),
(145, 'http://lh6.ggpht.com/EXSbf6FFe0YT4x1YgGgbfJ47Yzo89qxFLZepi2k3BECH8sPwXDZzYaKBQO9XVR6bsADYAdEpkN_FqShrMX6wKg', 'Clock On Wall', '49.866934', '2.379886'),
(146, 'http://lh4.ggpht.com/KF5UugBgqmJkTSJJjfwZxXwXR3fg-IWKDrlJLMGuBnIO5ipVAkORwwSnsoUktCNyap21GQl7mYV7maucLpVOIg', 'Amiens - Club D\'aviron', '49.895913', '2.306492'),
(147, 'http://lh5.ggpht.com/EpnW43QqLSLCSu1E9HwnRdYGm3Dqi2khelk3KWocj67hKcIO064G_SQUlrvXrK5XfDcOJyoQEeCJU0k6xJE0', 'Fresque du Centre Culturel Africain', '49.897545', '2.286852'),
(148, 'http://lh6.ggpht.com/dpFEUI8Yp7YfHfECCxUx8q5tTh1YnzJZ1IOUvyXtW0OoXIi0L3z5isGJWfFoErdtsN4FCHbQwDkvj-buFCz0', 'La Cathédrale', '49.894019', '2.321155'),
(149, 'http://lh5.ggpht.com/exliNBZyW6MkDt7cuIsaz2LlT5brdpf22rmqWp3ybgLnOZQ7ZvoFGwkYUSVSMQyhsJqrsLK4EbmhyP40EC_YpA', 'Human and Lion Melted', '49.891345', '2.301377'),
(150, 'http://lh4.ggpht.com/Oi9ra9ZE52VX36oGhIwiQB-xD8AFkku49Y7_L9XNbC7Sli3n6NdXPDeAcemXZlofQlDs4GG0mfj8tbbXl3OJ', 'Chapelle D\'Auteuil', '49.886738', '2.297253'),
(151, 'http://lh4.ggpht.com/cdM8WpJB2BVZYBwOjZIKK4tJnsTMF650yvm6t0EYrQcVoTo9UtQYZW-EQ-6VUcK-n-3jO4bNgMseM_fe7Qf0', 'Église St-Leu', '49.897594', '2.300886'),
(152, 'http://lh3.ggpht.com/i-3Zw7kuGNzhWit_hTTKr3DpIyCM6UbieV6bZj-k2oNQWn4N4OGS6F1AR31Ogu9yMeKjIOV8kmJ9xW98Fg84DQuD1S3FGw4UsbKUXBEVuv5w5zc', 'Amiens - Bibliothèque Communale', '49.890003', '2.294913'),
(153, 'http://lh3.ggpht.com/B9m6sOUizHuBRPVp75E19qvIaj1xjSa9ECdBMcRM4SjBmSIYal5XZ5buAPjH74bYaBrFL3mfkZLNfdUHssE', 'Square Aimé Césaire', '49.889045', '2.305608'),
(154, 'http://lh4.ggpht.com/CdpPPCmuG-xQuFxMTDdf3B5DZ-NdcpMWRlwyFTSECFONx8lWiMjal2dCyO5YnGeluOUCIOAXNlc-KwQpvgIh', 'Plaques Commémoratives Lemaire', '49.885278', '2.279879'),
(155, 'http://lh4.ggpht.com/Q8iqRL8l7gvL7buxh5-WR3CSc2luxAMwvx3vAI3IB0PRdi8MEjPTcJVDIauSWujcfs7J-Un_Pe3HiIR_gqM8', 'La SNCF A Ses Morts', '49.890293', '2.308296'),
(156, 'http://lh6.ggpht.com/u8ENFS1buW5hjO9T3qo2RpclBgVwPRtrTyr5jouyhiVC44mcFelB4hC1P5yMu7MY9hVEgZJ0BWPYOdSZzT0AZA', 'Plaque Commémorative', '49.883940', '2.281721'),
(157, 'http://lh4.ggpht.com/oGrzATEk1CtRVhgY_ZSqN0NFrq1qZf5k-x3F53Te3_uwVkPs52RDqqzrRcsTVUzrpVJMbDTkeBOgX1S4pRS2VQ', 'Vieux Chateau D\'eau, Amiens', '49.897966', '2.293913'),
(158, 'http://lh3.googleusercontent.com/_ddXa3PVxUtf76IBuz_Zou4plafUanZzMdQkQTcfjO_1kmqMul3mnsT2Jf4sLrffdYWOROT0urwODCK9PLaD', 'Anciens Garages St Christophe', '49.882432', '2.326161'),
(159, 'http://lh6.ggpht.com/DbdXvpPLyx2E942-bo_1wjBsANRvOnZGEnlkXdKj2rm30BWEN__JFGOXe4gabUMgDBth7lRyGrku8zMLS-Ga', 'École Notre Dame', '49.894862', '2.304426'),
(160, 'http://lh5.ggpht.com/AnPrlu6vJ9rBcZ9sMXWAGoi5ek2euqDVbEhtA20x5dZaT8vADhjS7liRHnu5zzGVuseXLKLBWWDxqsDC6Dt9', 'Façade Des Nouvelles Galeries', '49.892666', '2.298704'),
(161, 'http://lh4.ggpht.com/GQXHG2dtVxmZct6n5KS5FGu19nZ_Gg6HNWn5UKBp15zjrGKBfaRT5mhjfcYxoj7P3jgKc1B0hOsbMrap6hIgLg', 'Tête Du 84', '49.886014', '2.292719'),
(162, 'http://lh3.googleusercontent.com/WeDh7u6L_7NZrDcd3fkF5B4fkpe_ECfGNYcgqFPb_oVIUcQJTzoNty8GI0b9eYKAaviu1yFyo1GiSPxhMlo', 'Mimi La Fourmi', '49.900521', '2.296870'),
(163, 'http://lh4.ggpht.com/pBoNLH0VYLj34JvhBILCfYNSHmOgr4bOLpgSJ-nL24HoDv_fpJy6xGPV6YClcASJVgFhGJpoEpPWTkFHlUY', 'Château D\'eau', '49.866160', '2.350618'),
(164, 'http://lh4.ggpht.com/AuSmKED8Bt-8f1LA3dVVHWjr0EYAF6iJ49A_Pk8kBR5vNJ5MlfnmS2cuqd1H-EtLghdeEWbz1H_fJFIvQN8tLg', 'Parc Saint Pierre', '49.895489', '2.309272'),
(165, 'http://lh6.ggpht.com/A5QuGFnv8m5annZJns4Y9JKTnHAWMQmnIeMepDLTTOJg190LAY-xSCRW2eEcX6WjDMa4fWUSmfjKHww_DDEwvQ', 'Memorial Corine Seguin', '49.889751', '2.289552'),
(166, 'http://lh4.ggpht.com/d3GV5XtBI3sxahvIUW7eRn94x_h_TPtxxSwY1dGSprKssT64ad6wXrf0i6Qk_5owGxYD_StW3Jdswjx9nAAnxQ', 'Labyrinthe Du Parc St Pierre', '49.901267', '2.304131'),
(167, 'http://lh4.ggpht.com/xJBGR6rAq6dgsyUxwJgA4hhZuRBc9wAMsf9aVb7cFk5ZIzB-4J3WHLYKLQEFdKOhap0p29A4Pha-z7iywH23', 'Jardin Urbain De Plantes Médicinales', '49.893657', '2.301398'),
(168, 'http://lh4.ggpht.com/t8nQz_bbJPfPgF-77qGNK0MN2pKpXzgC-JTJr8LnRRwv6YSAMTvkhvpLJ-VZHwA5tTcjzDHOknihTW7XaVBA', 'Porte François 1er', '49.903915', '2.300297'),
(169, 'http://lh5.ggpht.com/QnxV9TQPHi0zuMoBqjkSJQyL1tIjGs4_Fk6C4bQn7yzbWAes7fAIyQtFAJgobpEVBaKwbub7DaMWztp4UVOh', 'Façade De l\'ancien Théâtre Amiens', '49.892412', '2.299916'),
(170, 'http://lh3.ggpht.com/J45OSD5l9WjklbrprcctmNwMrtWIU7bPmMy-D7h1HfHCUd2eLGC3AU4zCBNZJ1oLicyEVd-wrhGjUgwLEPMj', 'Virgin in a Box', '49.892276', '2.305323'),
(171, 'http://lh3.googleusercontent.com/58O_mKUz6WTQPMcnUhqFHrtUd8L7A9fY3jNWcyIUPxngKMqi6kLwjU31Lzle24KKukx3A08j5DpCnftQOd8', 'Aire De Jeux Geante', '49.922645', '2.308667'),
(172, 'http://lh3.ggpht.com/bXK4KCcpXG7U5u3h_pCRo3a5sPZgkBKNm6B4qgreyD4UoY-SVkyxtWYnIbS90awMCBU_XjQVcy1X6wK37dg_', 'Fructus Laboris', '49.882748', '2.307508'),
(173, 'http://lh3.googleusercontent.com/A8izyLs7IM5oy8rTD2dOqZv7leLBii6hABvu1ZjWKesIDv4UcYu4txAjCUD1bXGt3y9plTmhk80yyW6WRSOn', 'Amiens - Ange de la cathédrale', '49.894643', '2.301705'),
(174, 'http://lh4.ggpht.com/qa6ggK-xdl0iT6t8epS8i-Nu_Wz_wol0w_Ig0bPaAvmJk3VAD149qJ6dtacKix_DHbHPt73oale1tuLrKgyt', 'Fresque', '49.873625', '2.314998'),
(175, 'http://lh3.ggpht.com/_96iyM60kXuV4VOr4DFj220lg1la6vHxgGT4kgOi_qOc-EeZeZU64e_n-rkrW5bEnTNCCQmSZ9cKbHX5qxF5', 'Christ Aux Épines', '49.877299', '2.314948'),
(176, 'http://lh4.ggpht.com/BAZ-hfweTPyWLLO_1GaS6lg7HYtf65MLrkxKR2yabnEs1Hrc5K3iWW0P8hNKdJNfjGSPFLMJk9F_Mv0N_DVD', 'Facade HUBAULT', '49.892505', '2.295988'),
(177, 'http://lh3.googleusercontent.com/wVITWYNuB0rWICuu9kIT098PeLMXMA73O8VATX5LBXKKg010FRZNIuJgAzvU0ksH1vdYYb9t0hSduL-b2lBl', 'Pomme D\'amour Géante', '49.922911', '2.305872'),
(178, 'http://lh4.ggpht.com/J32rM6LDHoTZwzbmuBuxmI4ku6TfCnpYmmCqACvM07G0rcQ24ntpKS_codbRgRIg5lbPYAtQ8ulxRWxbvaeB', 'Résidence Des Échevins Art', '49.887788', '2.318067'),
(179, 'http://lh5.ggpht.com/2Q6m5GDhi-pwFGWcw6TDDTDq_TN8KyhqwEtFwtgq-UN0sOvXmJumwAQpr3ZV5S69xVPDPMH8-WoLGTfmMWH8', 'Hotoie\'s Spider', '49.898566', '2.275662'),
(180, 'http://lh3.googleusercontent.com/96yxt7NZZGFwq9cv7mGT6oveRRnG67pyDzP4Lyv99nqBWjFNzM7nMFgGBLlveOADf8eZvI_Ya7csOAcp8uVt', 'Fresque Murale', '49.903348', '2.306592'),
(181, 'http://lh6.ggpht.com/wmDpf4Extd-Cuk_2Mz6dw5MtlVXavPOyjYHrae9kvmAfNNgs7kwa-0V4IhBuoG54uEShGv0KbWoM8wytNV8Now', 'Centre Culturel Léo Lagrange', '49.897673', '2.296873'),
(182, 'http://lh6.ggpht.com/mbwq8yEbuZ8qxgXFzYltkpqS5-HkOLHiLUCEoZ3tYs44dH_SPIO6LWHVVzFfP2kBP-gY160arYVcG1Nj2CO6', 'Historical Bow Window', '49.893410', '2.300696'),
(183, 'http://lh3.ggpht.com/YkDK5MNO6TNlAcGfW9LGjrJUXgZSfRvSb96I_e6BRzOtLEjFVcD9ub_jp3WQRxY7IwyA0oIfSKGIyeVoU-R_', 'Fresque Grand Canyon', '49.896347', '2.293068'),
(184, 'http://lh3.googleusercontent.com/Wer8e2SLtF7AeAUs2oY-4UYQGgP-nt1OlNeY_8sir0v4HfscrmBpx-SoSIbNTB7217sct0szmKwXw7gmipp9Kw', 'Street Art Courrier Picard', '49.890547', '2.298315'),
(185, 'http://lh6.ggpht.com/3JkJy9lVfkhbZM-ehhaX8DRWRtSsyjeGLYsEVIYm-S6SQf1z3eHg96ZklKBR3CEt-EmdvQ3e15ecu2uXvb_cvA', 'Porche Du 151', '49.886616', '2.288407'),
(186, 'http://lh4.ggpht.com/x3qsStlE5mce0G5h_tZD1C54y6HzCPuTT55s-jDYB1hwBHe-QIMZ6h3H4AGGZV515EDFXWJ9-IWUW0VLRWg', 'Bâtiment des Archives', '49.890942', '2.295403'),
(187, 'http://lh6.ggpht.com/Muvxe4fUfAO45pY_odOD5Cj9KIDG1EN62bD08hjQjv6HcXBz82MeEIQBVy18DMWX-g6hjlvYdDWDlyP75I03', 'Terrain de Street Hockey', '49.886468', '2.327349'),
(188, 'http://lh6.ggpht.com/9HYCk87k_KbJe00b9bdU5Joc5Xuuf3t5In4qa1ny6fB8nqKpM7TmTgW5U2rKKjJRMO0zsj9YKzqegp1S-3JUzA', 'Amiens - Totem Fac de Sciences', '49.898453', '2.299609'),
(189, 'http://lh5.ggpht.com/lcBNeTO0JNnPzeIq_cFlhc73MW6gySYkeeCpBfhrnKxu0LYV8fDIyg-FPw5t5VWjtxNNYrK7aKMOC4NfHcNh', 'Gare Saint-Roch', '49.893434', '2.283748'),
(190, 'http://lh3.ggpht.com/xssXUP83yplEwlXGz64mR_BZ46ab-7qKlVaQ9KOR5J8w4jtNFjjtK2_24HkJS-K9s2pqfx-fzwaB7ymCXRU', 'Ancienne Borne Kilométrique', '49.898969', '2.305795'),
(191, 'http://lh4.ggpht.com/XoAwQgJ2qMRda9cLlznRbDCdSXwX_ARr-BBUOdWG4R7hz0iizhyxgAwp2zaPd0IAMdDxHTY4YoiSl2VsHEwO', 'Mediathèque Leopold Sedar Senghor', '49.873313', '2.312468'),
(192, 'http://lh3.googleusercontent.com/6Ax9Y2zPzOW40w8HbZ3LZO4lThe4hhbQR1C5yn_Vr_iJDSurWqpaeZfd8sQ5pTq1QCGoE-kQoErB7HB940c', 'Maison Écusson Royal', '49.884502', '2.321475'),
(193, 'http://lh3.googleusercontent.com/O7MA_CLKwIhRs5JUezYt2xaCdCul1lRKEvH9IhMtOHJPeY3TQPhcO8kVR7bMwlb3c7bYaVX42CDkssaq-rT5', 'Parc de jeux Dejean', '49.888332', '2.311460'),
(194, 'http://lh6.ggpht.com/2PPdr3ni-jYdtAgJeo5G7FCaAeKbxMEsw0K_igrJMtzhfz9dCEsTFHkADRNorV_xLaSXY6tArp2DLdbjifwQ', 'Le Grand Wazoo', '49.889243', '2.307086'),
(195, 'http://lh4.ggpht.com/wvgWUPt_r6nVoEyWGUERasYrLf2Lz4eHLw3_2B7RqLGJ1HPqL6yL2GGEl9DvDftxy_xX08g3m0Lldw1Xw8X6', 'Hommage Aux Sapeurs Pompiers', '49.897766', '2.299270'),
(196, 'http://lh3.ggpht.com/MbuSsDRaIRrH-mf6vAVo_f7ouAQv_BGmEwOlqjSvhIAzhXtRDiVUntF9vRV9REFDafpOoq09sh8_wS22M3w', 'Triple Chaton', '49.910201', '2.300299'),
(197, 'http://lh6.ggpht.com/NQ25eK-JKM1ZrjqVanbQtNz-U1zcepT-Ha04L4wupBhc8mYCHWA3k8lkgKWpLavPWfK1Zl1t3Lr3-8md8E4', 'Plaque, Amphi Fernel', '49.890603', '2.292902'),
(198, 'http://lh6.ggpht.com/2KQsqf6CmES-fiRAsbPDiNcc6AS8fR4H7HZkYz3oBomOTe6suwx_zD4DTmkoFdarA-OLK9BpPqNRfQGOYJI', 'Salamandre Jeanne D\'arc', '49.883831', '2.294388'),
(199, 'http://lh3.ggpht.com/eTiNmfPyl2ivYpnggl5JIIJZoshW07a4RY1audE7LcK8v4jBAYC0uAzsBWPTJ2PxBW2iDsDtWGTE5LqCunnsVw', 'Monument Des Mutilés Du Travail', '49.888281', '2.302344'),
(200, 'http://lh4.ggpht.com/9h7JQY9Nk90JR_3bxlBGA2h3K53OBTXzenZD3cP8T_LUU3NVORjQLmvVr0JwxXH2s3JO76CvEeuFRVzAwLCwbw', 'La Poste, Amiens', '49.894712', '2.296181'),
(201, 'http://lh6.ggpht.com/mCzNeIiWgnU6EgQFliGMBPPaL7_jTWt9fN37SjjAbgqHl6z1SI-VYg72kHygG5ldAygNsv2sNhkMJlvBo7nMcg', 'Blason Feuillu', '49.886319', '2.299706'),
(202, 'http://lh3.googleusercontent.com/ZjJCxNn7CxA9Rcgsam6e05EyVoCrqpw0usQsGV-sFLKK3-Nw-dOfjX8-UvxI2fUeBFrkdRVKa3qajT7Ru7Lq', 'Amiens : la cathédrale vue du', '49.896224', '2.304683'),
(203, 'http://lh4.ggpht.com/t-Qn3En4MBkFqf0GORUruh5FShRZ1OFN8b0hmfQasKcpYv1eQb_NJhLdZFgcXEIiZVcA7CRWfwQ1V2PfDVzF', 'Statue Faculté De Pharmacie', '49.890364', '2.292759'),
(204, 'http://lh3.ggpht.com/bC311bhngSizGO7fxXwlAtXxsPsHIFKB9sWz-tsmBFqgOGa0nFL7tnkgyFPNDDnVhiFJiuVuH8ncRJqVHqDZFA', 'Stèle Yolanda Gutiérrez, Amiens', '49.900285', '2.307973'),
(205, 'http://lh5.ggpht.com/Cn13V269sXFNAwhCHwz2xz-JOSRhDdyMyUHz-dsae6b860Iyv0Bqur64FMKuIzlQF33TGX0AXeONWHFljAc', 'Ancienne Borne Kilométrique', '49.892234', '2.328605'),
(206, 'http://lh4.ggpht.com/MgEAYKo3WLOFOdbGbHugmYK8OaRM7kaZqFCTjSeIqGE4stXEVrFk-eMvcSs0sSlgq4YET_1v7QcaDdaOTxFe', 'Fontaine Du Jardin Des Plantes, Amiens', '49.900551', '2.296470'),
(207, 'http://lh3.ggpht.com/VUsTzln6Jo4GYx_4lPA9xYEoCQbzpXTKOX0FIkO79XkedlyubJrFEqLorWoXRxjr70MfdquBObfzyscxduEe', 'Pôle Scientifique Saint Leu, Amiens', '49.898548', '2.296510'),
(208, 'http://lh3.ggpht.com/oIuziD3czi7FE8RD9_Z-vuAzuGtW-yzEuVClXC0L_xnyu5LRfhjUWy7JUeWm-5ZQ9A_oVeQzsJf22O4C7EKQWw', 'Amiens, le chevet de la cathéd', '49.894600', '2.303320'),
(209, 'http://lh4.ggpht.com/c_qLrB_ZuJpTS4cQSK7GbSa12bLFPsA--tHeHHFFonVuOkA7GYowuIotbx1mVj3absaHIslweL2c3UMdBuwxHQ', 'Amiens, Somme, statue déguisée', '49.896282', '2.303982'),
(210, 'http://lh3.googleusercontent.com/IW_czzH7RBU-pngBSIKkwEnCT_2hVN58pum-1E9Sg5f4vvbqnZAHqngmol_eLHBFfarNXT_eXZyZ13V1zsOS', 'Parcours De Santé', '49.883908', '2.352884'),
(211, 'http://lh5.ggpht.com/rG4Es6HNalk6alNw29E0cV641_ukv7QM7a1B4hZZKwK_Yqhd3BlhKq53oN7jb3CwwVS69I_mJ-dTxOG8cate', 'Eglise Reformée De La Somme, Amiens', '49.895398', '2.291084'),
(212, 'http://lh3.googleusercontent.com/aIh9-qEybZCtsFBOVp3PDAA_FguM6Opasl6oTL0tVHKZk-R5PjKKt1Zl9nVZMXhlvbuEqRjBK7EH-sLJ1I4', 'Porche Du Lion', '49.889302', '2.294550'),
(213, 'http://lh4.ggpht.com/CP6lrut0_4rzAj_kBtRnRS4DFw8vWTx3mmUV4zoavrSZ1Ld-zlpSoywpS0foU90JcYmea-5cDKhi299Kg_b7', 'Club House De L\'Amiens University Club', '49.870972', '2.311120'),
(214, 'http://lh4.ggpht.com/WQ6oSPYKLBJnIDV6NKnpLu92oFjfe4KdSWO0a3XH27WjdwazkOfTIVDpi8qNZwLcNCmxuoHsCF44tqXdyjQkeKlIsavIhlqz8O6tTtC4ZvaEtsfZCA', 'Eglise Sainte Anne', '49.887438', '2.307310'),
(215, 'http://lh5.ggpht.com/kmePn0HquMnAhw5TRhKUegASG3XYmyIAuFWuUw-HC9IyTU4cRaKa8VVCzRuFLCY-ZHfYXcoPGuQ4t0Q67bs', 'Sueur Manorhouse Façade', '49.912319', '2.282399'),
(216, 'http://lh4.ggpht.com/uOBrlMvuisvXc0k7z__lgdYBsM3jPJz_H8QCsuLW54Tx2eI6mi75GQ9ttHBnlel6ZmTOEULYdHbCZanOy0M', 'Charles Dallery', '49.888073', '2.302008'),
(217, 'http://lh5.ggpht.com/eKRJj_6cgEiF8q9Kr8QkInoO55mihmNt7mYRUnSSQ5EWu6RHUq1C8vKSWodsGNsXzs477fRB8FXNBLXFD-uCEQ', 'Les Sapeurs', '49.895798', '2.290350'),
(218, 'http://lh3.googleusercontent.com/6mjzuuXiDBZvEQ9T6ZeUx6ne2tGHiqjYNpOxQxM1X_N5dGF9Gx7RCCRxnXNYgUV_rK9aRrPLKEyE_Aw1AT8I', 'Amiens, place de la cathédrale', '49.894807', '2.300820'),
(219, 'http://lh3.ggpht.com/8GO9mcBF1WVQRMe002VjNLdfVpQDT_mStv2gfAXzaVoi6e900lqTbSUb_nM5zJtJYRJX6gutq5qgMIh-AoLb', 'Hotel De Berny, Musée D\'art Local', '49.892939', '2.302454'),
(220, 'http://lh4.ggpht.com/41oUhXi2XAMZCoenihdFv21kPbkfXLWu7GDOrzlOO_6lBV87LwArEMx2M7rM_ZSH9I54CgyBX5FdR_Ym3fDenw', 'La Cloche', '49.869980', '2.352674'),
(221, 'http://lh5.ggpht.com/2vcCWC0qjcVoLcbgwyLz_t_tLIbUwyuRanDorr2qRrAh1WZBwsElLNBBwTHP2NTulSfbbWOg8kRbZqXYzR8xgg', 'Faculté des Arts, Amiens', '49.902078', '2.294082'),
(222, 'http://lh3.ggpht.com/DR2ttFWanCjU5exBwKRjNFqAkoveUR5um_9BBPm0srNKYnr2rAW0XhSJS1Uug6k-RFPN4tQDoNpNLoK9fe4', 'Les Petites Soeurs Des Pauvres', '49.886616', '2.312918'),
(223, 'http://lh5.ggpht.com/pzudEKxXx7r588Qoz8_VgTfFo__OYmjnTxphBWPgaJ_Za8GCboDC-AJC5RYAnEEfUyDr4HPE-U7AWRfRtM1n8A', 'Statue de l\'Ours', '49.897569', '2.294675'),
(224, 'http://lh6.ggpht.com/LdOkt-DAhV-69ZNG4PrwCNaD6bePPfnnSQPr9W94JITexYYa6q9DNj5yAqdBDgR3tjpQQasVwgturPBkCcK4', 'A Coeur Ouvert - Leon Lamotte 1958 - Amiens', '49.890427', '2.293619'),
(225, 'http://lh5.ggpht.com/z35SeexX1ZhtgBBnxhdbg5IDnehGwmIZP1dYFAnS_fZG_wzlqyl3n-3W8OLaJETbF4n0Hk5vQ1naVpvdRBM9', 'Notre Dame De La Route', '49.874142', '2.306365'),
(226, 'http://lh6.ggpht.com/kmKYJDvGM4h1XKWQQa7rB_f_fEybBzdNxLoFUdE5XlgT8uu3DjFSlIBKfiDDh6yAfjJtf3KyIVcflkANyd8Arw', 'La Poste De Camon', '49.887679', '2.343282'),
(227, 'http://lh6.ggpht.com/O-9t20YCcjUHp3Voq-gRVh89PylESFlgTr9i_arVwCkDq7s8iKRY8uNSRNo7NMXONPc5ZE6y1qvT8Kjl8sx05A', 'Piscine Georges Vallerey', '49.871618', '2.298984'),
(228, 'http://lh5.ggpht.com/fhi-Avso1gKD3aiD4AHR0nlxgI5-3Z8C-t7oOyodq3KWStqDvzca9n4EFLp6d9DIdqgq_JCrbrgOO1rTT79R', 'La Conscience', '49.888436', '2.304784'),
(229, 'http://lh6.ggpht.com/a6x6SC3WcO5Z3JTVA-M0f0fVvEj_P6gQhRn6fx0EPZvy_Zf05N4BuuNCRDW6DcCCrpsN2E29vmGlJgipJDk', 'L\'école de Natation', '49.894629', '2.313268'),
(230, 'http://lh6.ggpht.com/P2xMFreNnpcYE7b2YATlNpmJ8EkXphiP4ULeCdqZ4rnjXHxJHcrLB8oqGUB79OTxEBuxsdI_7c6oNul0Hq0', 'Fille Dans Le Mur', '49.886523', '2.296347'),
(231, 'http://lh5.ggpht.com/1OYXL0DLQMGGLCuisybGTQwPaEL0TXwxUJ3RhVKEAHvn2daLZQxeq2FMf3BJ1F14eobQOK1paaqytmyx5BfJbg', 'Les Colonnes', '49.892129', '2.298140'),
(232, 'http://lh6.ggpht.com/UcfoyfOPbo70LJaSHtW6bBV3lyKie2YMxwmWAS5QlfgeAL-sBlZhwCoGEs86h2dBGGM-gzuWiyfY3W1tWucQ', 'Skatepark', '49.897873', '2.307957'),
(233, 'http://lh6.ggpht.com/e3n4GymfNqT8EI9a0IRYd05FSTr8KSnW-JreJMksziUgd6ypcXtsqELo9gbzthKbUyRvHKB_TJSCL5wn8BOq', 'Saint Louis Statue', '49.887108', '2.296694'),
(234, 'http://lh4.ggpht.com/RbCKakW_g7baNvW0bdBQDG3J4oKB-RfDBscmiqVVKS5d9MARGb8EHPemGtwM-BRua5VNTEEHYvDT9_geXRcbfw', 'Maison des Associations', '49.892348', '2.290464'),
(235, 'http://lh6.ggpht.com/bDpEJkIV6fohzw-TwRYkFCeXNgALzPcSHrH8pi8z5EHBU36zaiO09ZLlyrJCS21LVDb7556xmoTmVGM1587u', 'Les Deux Grasses', '49.893778', '2.292627'),
(236, 'http://lh4.ggpht.com/-RUodcuwWYuFbFT63FfL29OWb6B5j71VG1ojkcrT4qDINuG3vsYaHWM0xxQUL4NXC-ap6B3KmKiYB1YSRbMU', 'Plaque Du Parc Public', '49.883544', '2.306874'),
(237, 'http://lh3.ggpht.com/KgZtGZ5cZ-_lIad_xD_uT_SZzVGGt6jmUTADyvcuSkcDvCs7t2EAYXh66kn6cc7hKyVUabRfGRxAIGOY5BCz', 'Le Gardien', '49.883084', '2.305697'),
(238, 'http://lh5.ggpht.com/48R55LP9hxQwc5zXUJPGIWZnJGaAAFwZrCEnCKWa8Lvtl6PlJRyRJqh-BgZLf6xLwMxnblS1qBZCUGTMFZQ-ag', 'Monument Aux Morts De Longueau', '49.873318', '2.351174'),
(239, 'http://lh4.ggpht.com/Ed3a-NGWrveb75caPp0psSxrPNfGI_vQTeCqy-TmyN779iAJQRs9pFUP2NcYa-futkriaXHEc1NXEQMXFZVR', 'Château D\'eau De Dury', '49.859445', '2.275066'),
(240, 'http://lh4.ggpht.com/8-6723Be8uE5FTP3IMQNTranfuKE06nLdfwYwmC34jfS66BItGrhShBqdaydpvZYwtCradrgbENN3P2XLm-8', 'Chés Intailles', '49.891199', '2.333536'),
(241, 'http://lh4.ggpht.com/xC4Aqf-ghChJPECY9k7iEllrTwOJNC9WwwivwpWYQpzfS5vUPjqOuQ8vynw8xlcCAO-jR98pkb3Dou5FPUS4', 'Les Sangliers', '49.900016', '2.277450'),
(242, 'http://lh4.ggpht.com/u5x13UiEFYqpymJFduydMJU2wO2DTH3RCSiU46ZP8-mjXw0jhdX4Fgi6ACVPdgP_SUDV2T3vMtg4rjEw8WZ-', 'Hommage Aux Morts De La Commune De Camon', '49.887402', '2.345266'),
(243, 'http://lh6.ggpht.com/755RwOdkAFHt3IcUMqeVQpxh5sQVxr4NgngyE-o_iVUQV2Oxi17PPponeB47TCnp8T2VqpEE8tc6ofO0V60', 'Maison des roses', '49.892033', '2.300578'),
(244, 'http://lh3.googleusercontent.com/gy0tbMszcS_ZkbRdiverbmTLkSpIFbMyoe7zeiyjFkoo1GqEqYR8mh-xlqFzNR3O_0uqF1K-s2K7p-Cq0R8', 'Sculpture Moyen Age', '49.884269', '2.299275'),
(245, 'http://lh3.googleusercontent.com/VelIBH8A_K5cYCwpR5qwxG4bKYC-QNykUo1A6TQIjyFXU9TqSu0NsjQYe2X0MzbaM0lGgqPoSZ9i1gluS_oO', 'Plaques commémoratives', '49.902429', '2.299018'),
(246, 'http://lh5.ggpht.com/fcIxItlk4YGFR6i-mQP3KOnZ9k2skcQMqnuCzDp4SQFitclB-gSIk9HHoUhEGyZLC73LxQNFyCSul7eGhXGJ', 'Immeuble À Petite Barres', '49.894221', '2.309412'),
(247, 'http://lh5.ggpht.com/yULxypZBNAhnesUJrrufgSy8Xy2p4qU4mBT-fINF6XEgg-If8XwdaT9zLE5n2jXTe7dd5Q2b4G61KXogFuyt', 'Bird Statue', '49.895547', '2.289282'),
(248, 'http://lh3.googleusercontent.com/MLu9gtfPBrcROcW9pUx1fY2WAZxDQDCTq6pmwXTDAwkTtvHPZEH1U6ycRPQfwbql1orQwLwZkSdXlt4-W2iV', 'Parmi nous, Les Infirmières', '49.895345', '2.301018'),
(249, 'http://lh4.ggpht.com/XxA4sI4WVACn1Pf5ol-I9sIQ7_QnYROkbZNPE-6SzMMvbjohBWPwxlGFYi9PJWTCbZEm2AaaKhZUL_yBUc0vVg', 'Ancient Ornate Gate', '49.893017', '2.303900'),
(250, 'http://lh6.ggpht.com/kyHcFnqvONPwA3KXVBJ3Y-xiQEzIpazpip_I33MTagHNDXcX0azTqMcesfe5PfngvKPnZr6F0sOcJt3KGBA', 'Eglise Du Petit Saint Jean', '49.887784', '2.264135'),
(251, 'http://lh3.googleusercontent.com/cEVvhzT8OfLwLeuF-2RXmskdR2c66rLnCDMNMjkBYR7LCGwYE7fNAmIsuYlHVRGoifM8m0d_tKnG0hDrp9i8', 'Le poilu', '49.886475', '2.308841'),
(252, 'http://lh3.googleusercontent.com/3aUwqeSJz4BBMjKXIuP3RHhGJL_5ZN8lg3S-iiEhrBAyjlshR9xLT2gpN6Xr02evHXl0CwDS_bznUHDdazS1', 'Chapelle', '49.888272', '2.312510'),
(253, 'http://lh3.ggpht.com/ksqZJYE19CH-6tVSTV4fcW7n_PguiB4je1CguGE3f6tlDC4g49e9tXn6BsaBDMZODvYrPVIXqxvOVoZXdfo', 'Peinture Murale', '49.892486', '2.308506'),
(254, 'http://lh3.ggpht.com/z1UlAaTnYCmLr_-Ig7siRlRruFenlOhYGVfF9xpoqZOaNjutSyz92aWL4AizpcimBiVxBQ_dq-4g22_hjveedA', 'Mairie de Cagny', '49.862002', '2.343556'),
(255, 'http://lh6.ggpht.com/IzkerYQ840JCTxh9TQGhKZV8BU60SnhUgkJSEA5OZ_Y9tz5SqYiZ4fA1sc3yPGAbSra4Tuo6p1OWkOGXnl40', 'Ange Sur Un Mur', '49.886584', '2.300917'),
(256, 'http://lh5.ggpht.com/Q15EMU3u203lt6Ob7D7sds1QG4Icz8-OUllhhUDaOnM2efGzRYpM6XeFCfzmeMEUh8on2g2DjARo2P914nNP', 'Cathédrale Et Hortillonnages', '49.895197', '2.310261'),
(257, 'http://lh3.ggpht.com/-mltlgF672ppUGj7x3_ce1A783bihLE589jgdtNVyR3ck4QN_5BSyfZ6udchT5Zn0irND9lXCF40OW7BhQJ8', 'Art and Design in Amiens', '49.902240', '2.293641'),
(258, 'http://lh4.ggpht.com/7hZGA0Vrl3X2DFudKt--k2-tRCIXRb4FWmpFPYFEGlNYMPVnSaObQUGJM6o7jvlb7l2DT8vS6zFkzx0j2lMB', 'Birds and Fronds', '49.886072', '2.295928'),
(259, 'http://lh6.ggpht.com/AV4rNtpTYDkvZaQRe32FkyvT16pkEE7SiqybfNVkBmgGWm9wsP114SI0_XnAK1zFUtuLCML8RqZXFDzLfWs', 'Marie sans Chemise', '49.894043', '2.298661'),
(260, 'http://lh4.ggpht.com/qoGLeq4NOz6Q0E8JUI39-zj_j4dqX_FWNQCiqp-4dSSfoy3DNgNz2nNCgS4ioBUxOlD3r4_jRcNtMJTw13-h', 'Zénith D Amiens', '49.895710', '2.268630'),
(261, 'http://lh6.ggpht.com/mc71cE6XrjgTmzx-gm30xJHMOg6YqGSTIf0ZDlL9sOpYIuMcsCYKDtpBMzFYbqh_EuqGb6XQHf7IUH3cYqxi', 'Hq of the Somme Résistance durIng WWII', '49.891500', '2.299887'),
(262, 'http://lh5.ggpht.com/byOz1LUQFq04RVS2S9y4LEp6QNcyDQs-mP6LCvVsRA_FabjL4bKbR__O1Uy9ReptGh1Nr5s6-n8GRYngwgZz', 'Immaculée Conception', '49.885820', '2.305446'),
(263, 'http://lh3.ggpht.com/wXqxoownI8Vd0ar2caPTwRZIvLImhuFax30gHYiVNS9SiRm49gskrrlWxWMqsyJzsrl0K14ClYfl7uJdrNA1LA', 'Église De Longueau', '49.869729', '2.352795'),
(264, 'http://lh5.ggpht.com/RrhqEgPWxLi8uGOzr5GWHg567M6kg_ZzbP0x7wxezQrLiT-BUEuoRln6YC5qx7TSwHwvcNqCms-fd5P8ZPYDmQ', 'église Saint Riquier', '49.883253', '2.324759'),
(265, 'http://lh5.ggpht.com/9PT-nqmFLEyvqDpLIjqtsSNkEAr01VgNqhjb75tWZXNbD1fER8yBUFgo30yUh-YUf_3trdZxpzsZ-6qbPLc', 'Silly Girl', '49.895827', '2.302859'),
(266, 'http://lh4.ggpht.com/OsJvRQc2H-qQF2o3TF0l8OhnJoKp6u4PwbQp8EjfuUnLBp7ZsSST7wz7V1UrwsJ3wh0y6JmLM0d9RxyfQjicJg', 'Former Vinegar Factory, Amiens', '49.900520', '2.300921'),
(267, 'http://lh3.googleusercontent.com/0948IU5eaBcwvEymzMUMgZcDEtgpdiVVdKtU_TJt8wu062oXnFAXPdmGNAuyB6JAxSUq6lEvG_05Yt-nzGGv', 'Fresque Grecque', '49.884051', '2.326586'),
(268, 'http://lh3.googleusercontent.com/0UMOir5rHa3aQhNKk38IrXVoQ5Ato9pCr9lNviescnIzeY3JeNHTRxiFILx_uqSiH80gieFqUZscy9rWQcQg', 'Cathédrale Notre-Dame d\'Amiens', '49.894307', '2.302907'),
(269, 'http://lh3.ggpht.com/XFAKbgMIU3WfhowA8NRhwQ7E9xanNZsTO4SatYFSF1mRtyh1N7dKNh2O77O2waLHdQj6NPpLkWB7AhZ1-LKm', 'La Poste André Chénier', '49.877452', '2.287644'),
(270, 'http://lh6.ggpht.com/18g7tuyI2sJTzhO9e4r2OG8YqqJb3W1PwtPbhvJx9jra4jfYi-_sUNt4WgOI1aC5PgUCTHtzNfsbpriMUPKC', 'La Poste Façade Moderne', '49.894523', '2.297331'),
(271, 'http://lh4.ggpht.com/t6CLkdCTCT0RUUAnCeADVWbhzZPDN1TSn4qYrPWCVWFQn1q8Zf3whQxXDZvRXG-xGvP8BxJSnuLhbtWJbvqjeQ', 'La Citadelle', '49.903205', '2.298693'),
(272, 'http://lh3.ggpht.com/OuO9P-pieTpuEcZ2ew0-wKsdH8380dqPG0s8TLixMaNlaVbQJufpBUFlMeFE0ylgiWHuOYqPY3ZB4tOCbEZL', 'Sculpture sur une maison', '49.892515', '2.308130'),
(273, 'http://lh6.ggpht.com/D7NE8xLW-qXGSfKKwRkdZxzkTZu2u2DMUxIOOdaKtnxoPD767UcBor82luW9NF4gqUEoFOnVuyqJu04C418', 'Facade Art Deco', '49.892133', '2.289916'),
(274, 'http://lh5.ggpht.com/lh-mrCX8HQKa94yCWqJJn-Iuu1H1T_vJGLKTQSx2iLDvsqX-d-KSqrQna4UxDR-TOLKhVLokj8D_8u8GitUcow', 'Plate-Forme De Tri - La Poste', '49.890435', '2.321479'),
(275, 'http://lh5.ggpht.com/6hsw9W6k_h4GzHhCY5b3iVVBjDGIGdJh9c6OrR_bqlvOKM3eOsmnPIdiBcfUkuhM_8X5PF30iix_DVg6hiBD', 'Le Vert Galant', '49.894409', '2.315189'),
(276, 'http://lh3.ggpht.com/gGQ1d8Yd46ncOymc2cfdzRhYkE8PlIoTIiy9Q8UhX7qdeJ1RZn0jcX9a0oyudU-1PvG-QRhMUMCi1yl5kBiK', 'La Ronde des Anges', '49.887491', '2.323058'),
(277, 'http://lh4.ggpht.com/YFwzs1gAsAmRTH78DZ-R8tmX7Zvr1myeiltpAJQMlgExyrSgBrC60OmEK0zpz_VaV1XG1KaagPEgaROCstI', 'Église Du Sacré Coeur', '49.893633', '2.304961'),
(278, 'http://lh6.ggpht.com/bzJtxNeuNMd4Y4o9hoBWPFlMvr099cp80B6TIsuF8rDHYCXEWzHvIuyKoWfVvZfmXS0IyflKcV_FLOcUcBq3', 'Sculpture, Amiens', '49.897975', '2.289116'),
(279, 'http://lh4.ggpht.com/OSOdlrQIjibHteoF9ABMdXbMCYRzo9LZrg1bE_eEl_7EGnEjxDvb2Phw3xUCwUkv83YiZG7T0IKK3UzDUAz9RQ', 'Crucifix', '49.864836', '2.337877'),
(280, 'http://lh4.ggpht.com/MIrGgn7z2mvXe4HavBojRQPIhpEdVPy16fHM2EEA_T-5LkykSBhs_ode5juwjQtomKk7vM2440y287abGNCd', 'Biscuiterie Vieville', '49.886573', '2.293361'),
(281, 'http://lh3.ggpht.com/QFuQYR1VgEUFOkjFsuHQOE0ltOETs8MTDWOn94c0eimmRQxUB-Qq1FfriMXOw87If6muw5PfDVNFkQqCDXfd', 'Comedia Del Arte', '49.896626', '2.292186'),
(282, 'http://lh3.googleusercontent.com/L6dONFB4cEFTyy9TYHW13EIipdA5HRhHDDSapHP8AOyjA7TDtY-yVc7hqxlB8JJ7mprkOJGcoKGMXYPEs1Ja', 'Aux Portes Des Hortillonnages', '49.884595', '2.351070'),
(283, 'http://lh4.ggpht.com/_b1lTI58ia7zEvUOkCdX7ca812xIdJ8PtgvGIC5P1Im4TEKPBqOKRXdRz5iqw0T0-zJH-coJlfte7BAGCA-Zmg', 'Car Wash Mural', '49.907994', '2.304004'),
(284, 'http://lh5.ggpht.com/Cx9OayMlGttQ8luSQDH9FOawu8fqatGXdLlqg0F7ryXInu9nOTljA9LvX7dO0pgueQ_VWdWQFfN5fq9jW3Ow', 'La Porte Du Roi', '49.887087', '2.303534'),
(285, 'http://lh3.googleusercontent.com/zfJM941N40jAl8-rpJN6VlYKM1xLBaWn9HcuBRLyNG4kVx6jIz-ecmhCRFTSbNTm05bSbnzH2qmqgapW_iw', 'À la mémoire des déportés juifs français', '49.893460', '2.300319'),
(286, 'http://lh3.ggpht.com/xPrr8hjtp735bbFNKIjEtseG4xeOIKrM-4-0FpD19JMla6iPJS9_BOJq1LqrZhk-dQIYz6b-rItPDWdz8KBN', 'House of the Pine Cones', '49.882166', '2.306575'),
(287, 'http://lh6.ggpht.com/YxfNpBmQZGvl88tDrsHNYMDC96bSSQP5JJLFwRQdUP_DdfuH3RRuCCntred9GrnHeCwvL776DRSD9CwgWDw', 'cabine de téléphone anglaise', '49.884042', '2.323562'),
(288, 'http://lh6.ggpht.com/o9LQpGjEU1DgKWwb9I-yWeGs72sDRKrKvh91VsIOYPFV7XY8EpxTFMwxEnNvMX4Pn3-ox57Nkiox6je3-F1yQA', 'Statue Square Annie Fratellini, Amiens', '49.888145', '2.296428'),
(289, 'http://lh6.ggpht.com/TczXhXhZhtSjCTBV23dmgSrqHfoX_hwPIn_Wf-v3NRbf3Vnq7SB8BU7iB2Dzx6m-YfrpunomudVQ1fSIMOw1hg', 'Maison Du Baillage', '49.894701', '2.295023'),
(290, 'http://lh4.ggpht.com/P-MMPv34A9Mfd79CGEJ_gVoR75qA9UNLMWMtc0APcpKs9MPyLwuTXS_iCgfdajCDlM5cdfiXWFn1vTtrSzZr', 'L\'Ours Noir', '49.898095', '2.283642'),
(291, 'http://lh3.ggpht.com/50u60PiBOXnLnh9gV6ew92Vi53OOLfE4JriU9jMGGqRaFwdHwe6V4Z6G3Pw2LRytfR_m_wFdHzy7VTxrmsmW', 'Le Jardin des Plantes, Amiens', '49.901578', '2.296407'),
(292, 'http://lh3.ggpht.com/HL8MPi27nfZseBQKBRtrUlrALdISaQ8FN7nbFs5xrJoTcLkzwM8nWdaldcKnxNxLPiSu45lXMkx9HnyqbvM', 'Librairie Evrard', '49.893833', '2.296220'),
(293, 'http://lh3.googleusercontent.com/VxW49n6Kzgovmo2W4r0vIGUZBRiRN0mT8vtOxCrq38EONm79vnoPfb8wBbOrOHowB6KSuTUnb_2DrNtWvN7CHA', 'Maison du peintre', '49.893500', '2.299489'),
(294, 'http://lh4.ggpht.com/832xP3zbicWnqXmw3uQtT8HqNIx2Sdi4BlLt7D5udkVWClqmexEWDr8R8dKMPAp9qeNH7cIOn1hw94jfcX9zWQ', 'Armoiries De St Michel', '49.886852', '2.305398'),
(295, 'http://lh4.ggpht.com/Wjbc8kQ6mJQel5YIIY73aMVKycWdZmPDNjwPUIFSc6g5sgQEcLZhkEnLfiS5fh_Jms_sBrmBcElo0eAASysU', 'Les Nymphes', '49.889447', '2.297985'),
(296, 'http://lh3.ggpht.com/CN9PegI49ujIOuzq2qneiv9o-CmXtMK7aqoZfNsVB-FZKp16imCQqw8AYBIj1SkGFgRaZ7D529nQe8s7cSEk', 'Maison Rococo', '49.889097', '2.310918'),
(297, 'http://lh3.ggpht.com/N29s2rZwGMhuv8jwSiavbQydFUsVneCbqN-nsMxti-0_4X4BfpYQU_fY8CcYMUlBdt6tEiFawitRo_rfRgOD', 'Requin Sous le Pont', '49.895334', '2.310594'),
(298, 'http://lh5.ggpht.com/_rYfJxiwCB5Q9Bzo7zCXKnBm0xnPfTH5PNGiVDVuY-nL0FXSQaqyQ4zxZvpm1IpnpIYoU6-i_GIfs8VVtPE', 'T\'chtio Zinc', '49.890936', '2.304738');
INSERT INTO `pokestops` (`id`, `image`, `name`, `latitude`, `longitude`) VALUES
(299, 'http://lh5.ggpht.com/1E2sOGazVhVS6TZtQ9ztsQgviTslIhNhpiQgIT_hUwF8ku_p91tJHv5pmK4xZ68UK3GSY90B0etL7170fFUN', 'Madeleine Pyramid', '49.915070', '2.281830'),
(300, 'http://lh3.googleusercontent.com/yxFSzQU1KgadeH8iWdmOgMRrVvjfN7Z09cgAgmIeCJ47MN0Q_ZQ9B82ZA-eTfVzpzORMGEHTnOEVBQBRTnaj', 'Portail Crèche Jules Verne', '49.885242', '2.301531'),
(301, 'http://lh6.ggpht.com/cQ1rynu9Gy3EIBSesq97DZEEg2FAgoJb_qyqiZ_TNV1XzWKzaXAmCOb5PSi9zHQ-0KWX8Q0kd5zSUj3W7ErP', 'Place de l\'Hôtel de Ville', '49.893421', '2.295454'),
(302, 'http://lh3.ggpht.com/m_wHDWGf23MS3NblJzUTgDJNliUVKatLUIn3umkJN8lDChDww_OwLQACxIEHNUJ1boTb-9CcSkjUp8EP1WA', 'Chapeau Melon et Piles de Livres', '49.894610', '2.297888'),
(303, 'http://lh3.googleusercontent.com/jFRACoCEcSWs8XUmUuc1qja8Y2uZpnZ3Ozhm7gc7GpWYxnsjWMwTk2_Q5Bb6Z8ML695CFZtGFiZKLCNpTtJ8', 'Wooden Pylon', '49.891161', '2.337138'),
(304, 'http://lh5.ggpht.com/eCMj1s1_BJljrGxxOp0mjj2MsCGJoNLY6XW7h5zIxCG_OvbMrCIEkksqLYQiuwSzXM_pM_nGQpcjFysQO1zA', 'Square Beau Regard', '49.880641', '2.302952'),
(305, 'http://lh3.googleusercontent.com/POEp16OPaKpGFabViD-QK6SKxIbA20xIxhvZ2HkoI0TPbRPVMHMJ0oEC1OfNl_fotsBuHhB0uCJL1Z5_bifRDQ', 'Protectrice', '49.890874', '2.288678'),
(306, 'http://lh3.ggpht.com/SHm77dxKZmLyjQZEmw9y39Z4Hf2GRgQJ8TQGK_ps2-FSfSqUHLhMkGSK_KLRgKtxmIvZgyy948spx2Ms0-nX', 'Église Du Conservatoire De Picardie', '49.886017', '2.310660'),
(307, 'http://lh3.googleusercontent.com/02X8_I-suttSa3DqpuiouMumIPZiAvXpa5ExWrp3AuG6OVb2NHDs7nFnB5ZaGDPLvNo8eCa6JT3yzUWR5PUo', 'Blazon Dheilly', '49.888654', '2.285067'),
(308, 'http://lh6.ggpht.com/-RMmOoxy7QrLN6HX-5cB-9phYvO2VkQX97Zz2kmE2CnKamBXsLnCONqROSCiA1ghjEUINd1pjsnGHPRuWyzI8Q', 'Palais De Justice, Amiens', '49.892730', '2.301278'),
(309, 'http://lh3.googleusercontent.com/R1P0U87lMEV4ypuChz7ZWubjJSd7_HtPzn9wLth5G8Bi8d53IMwHiyB7B7W5JrEThPa915qY6u1QjeKz2shD', 'Amiens Presbytère', '49.895044', '2.302899'),
(310, 'http://lh5.ggpht.com/jumzrFdUWBucMbgIK9DM1cihsv0FVC5t8eJoPL-S22Zw4rXuzK3QpZW0oEpEcIsKQUvZqVztRhj-JDQyNN7Q', 'Au Rendez-vous des Pêcheurs', '49.887957', '2.332907'),
(311, 'http://lh4.ggpht.com/R-KC8ECKMeq8ESWRrK6zdA0nwqzLbCN5I_vcbVEVfhiZtSF1vlDq-iptUszYT64oG8XVQEwi6XNIoRS0giu_', 'Plaque Commemorative', '49.888061', '2.313068'),
(312, 'http://lh6.ggpht.com/gkGc8PgA1wkJuU6dmrJSFjOxITs4tB7QNHzh6W5IHUvBmYGNWPP6YAF0yukVpjKRZPLrl5IeLy7QQ0RFGgKx', 'Centre Sportif Auguste Janvier', '49.887424', '2.313436'),
(313, 'http://lh3.ggpht.com/oLECax0NocS06PRcC-uZDi8TaF4vVZvJFGtIN4_XT9hoppapMffHyLH8EZLQ61YypbfOizfGH6hXRSi-jZOr', 'Haut Bas-relief', '49.892072', '2.298718'),
(314, 'http://lh3.ggpht.com/3Sz1Gw7LGxpkmhssWMkvl31_sCqiSOXEMBY4CFcQPi6LJ5MmRKyI0U8BL9Sv5X9UN-XLfhzDJvHGuQkdXVeH', 'Bison Couché', '49.867742', '2.279621'),
(315, 'http://lh5.ggpht.com/h2ssWBw6eagX3jsn9aZlyR0eHJIR_tP0nJCSxFR_IkVJKD-4GlpZC4INtW0tcs49sfAa42r1wnJO6dPozrh6', 'Fille Triste Avec Un Ballon', '49.888995', '2.310512'),
(316, 'http://lh4.ggpht.com/dSoMWyP1Rwm9C28yo2Zo8hlbJM4sUZLJdYd8XJQMhcyCMpCCkSBhsT7aOG6emnXlE3Cl4jNgbxWKvE4iAwFZ', 'Dominois Rivillon', '49.877618', '2.315793'),
(317, 'http://lh3.googleusercontent.com/_XmIKp2ChuVLY7pGiftH5UHN3wecTdU8ZPIp3TXgL1utnWK5RgB-Fe9mtzQDieDmScxZHZRBSdQw2BHXZIA', 'Croix de la rue Sobo', '49.879386', '2.335155'),
(318, 'http://lh3.ggpht.com/79r0OJOdkYbjO7MOaUhdgiwquu4lxtchSMQAD-23QatHIK3Yca5_8DKMuITIv7uAVkOE1kLVQNAoCRxxyDk5', 'Bâtiment De La Société D\'horticulture', '49.888293', '2.292840'),
(319, 'http://lh3.googleusercontent.com/Z2e32a34ekCMlDu5SxNJ1Z-DNBnMRJnJM-MDje_18OcKaDuL-3IOpmJ3d7a-JEV5lvoBYcVKbT2a9L8IN6w', 'La Vierge dorée De La Cathédrale d\'Amiens', '49.894276', '2.301819'),
(320, 'http://lh4.ggpht.com/VR6q3INmJNTVGTTKK3ZHYURqrC3NoHnkl6rpJ_5eIKN8el5lTBs7nLWHm_uLApe1IPwxEkG5wH2B9EkKcK68HA', 'Plaque commémorative d\'Ernest Prarond', '49.885436', '2.313855'),
(321, 'http://lh6.ggpht.com/3lTe7Bo7se6SzNOeyZ1wM4D00AQ6_JNzuHBxK6SWtxvY1Zg-3sgXAWcoqVWXzsJKb4tNrx9tmCaqbMD2dviM', 'Les Guinguettes', '49.887721', '2.335723'),
(322, 'http://lh6.ggpht.com/-xxHB9wI8WOvIXobuDtlfV1r0Sy0IZX5qYBFTKTk4_nCZQD6se1UsExCNuHjctcyHkrhVYhadLqzbH79iyY', 'Forever Flying', '49.894366', '2.304290'),
(323, 'http://lh5.ggpht.com/UttB9F0Jc1eGDuapXMyQUPhAxd0374DgQRXZe7XAR1_rsQdqiQBX-lt_eZnvKLUDL7CT22WPh9_1SHWxS3xm', 'Préfecture Annexe', '49.891392', '2.295370'),
(324, 'http://lh3.ggpht.com/egsHQNpKcBcmnGgBs9ONaPHSOdHNMWh3i4WSGR_EA-ga-vHF9tt5nzAxX2284XBpi0Rs5N3TqdnugCIKTrlZ', 'Tête De Porte', '49.885575', '2.299400'),
(325, 'http://lh4.ggpht.com/3kCq23d4bLNm0ZnZ_Mc77YumFlObnMqIUfq9Ofx1vzl64sA29CUWX-iALiqUHTATmcc1WLE4csndvSOrTlM', 'La Chasse aux Cygnes', '49.890755', '2.335169'),
(326, 'http://lh4.ggpht.com/0plFPsN65qxWzYKB3ZhW4lq4C__MiVsBrK16s9o4zRTbf2E7jah1_-P0FsM80kVczUiWhSd-mwzoCD5QSUg', 'Église Saint Geoffroy', '49.884011', '2.304414'),
(327, 'http://lh6.ggpht.com/pzd9X8x9p6q5TWFao1R7nvSPvj3CDYYQKaLmM9996f66DJqaTvZq6wQu80TxXPhoqH_qEfHaTSAJqFr8nZo6', 'Jules Verne', '49.888248', '2.303730'),
(328, 'http://lh5.ggpht.com/CXUiDm-VCHePHTl74wt0aEULrTV6Wj7Q_GgR23n4bT40OrL2lOO6Oclj0uVQejLmBjyVMwkIWAtK4S6f0xHI', 'Immeuble Des Centurions Romains', '49.893751', '2.290819'),
(329, 'http://lh4.ggpht.com/v34xV9CFpAt3dbv4MjBoISkRK1-RDIIvb9LEbjq42Ze0uG8B3nn-ef684lKflYUw5SeTbNE9fbeIuIoXqmvEig', 'Saint Acheul Archeological Garden Entrance', '49.877100', '2.331226'),
(330, 'http://lh6.ggpht.com/XTeVNkMig9R0Q39wOs_wQrXQ2bqe5Da198wENEbDppRHwJddk5sYP79s52GpAdqJYPgeMggg_uQcmmAO4vgc', 'Leonidas On Door', '49.891071', '2.300415'),
(331, 'http://lh3.ggpht.com/_WVqIn_bss-BpuJE5uBq4A3iqKdfp0q_ocUPDAOTV0MqxRMuxge_-Jc7pHw3sZ0ambGHOKEHxh4AvrYNXbnv', 'La Passerelle', '49.897493', '2.309789'),
(332, 'http://lh3.googleusercontent.com/RXP9qdhjW96YXYHM0h0xYSet1W94wLncnlJ1OCXbmPjbfQekuF2PqX8Epf2mLOcJDEqbsB37wcFz5Qq0IT5Cfw', 'Mitraillage Allemand', '49.868553', '2.278873'),
(333, 'http://lh6.ggpht.com/rc2eU2jg_MVkO6xz81wLFX1w44MiQS0sjVmDUmiRA-6GL7SOEgMrLdpZ_XnbNDmpMKcmZN4Iid8V-JLPQNYWaw', 'Panda Mural', '49.899089', '2.303912'),
(334, 'http://lh3.ggpht.com/F9ZTywFNhYYFpEpfcfSoVYOdr6Q9Lgetfj2zhTd71kkfKgl9D-pGNX79-TBArkKQugk9oHVkxDThBRvMpWm0jA', 'Amiens - Blason de l\'évêque Pierre Sabatier', '49.890923', '2.292621'),
(335, 'http://lh3.ggpht.com/aAZfVyio6xHcSetUNsL_aL3Wm-EK2r2RhkWvwMFI-JQ3ZFzjnPkZn_Mi_2MPAGUHEkBoTJ59JzqN3ERgGEY', 'Facade Historique De La Cité', '49.876338', '2.294980'),
(336, 'http://lh3.ggpht.com/b7AqfhMf_-eRxPoOE90MakeMP9WrM1rpHJ37bdxK1cuWIHAjmwT28_F_MQvksh210cJ7R6QFCMDMtvvZeNY', 'Maison des Mascarons', '49.892487', '2.299406'),
(337, 'http://lh5.ggpht.com/Xuri-mktf4av0hr62d1v3-VOeTk1OepxOONEWFV-7xUXAahO9_dmMmIe7QVyWDEf7Ft-EkGVv6q8ZX1EeK2z', 'Le Courrier picard', '49.891509', '2.296850'),
(338, 'http://lh4.ggpht.com/8kQvR1tsErKt0p0gBFsXe0q_vCBW1ykNpdloPa1JA8WVNbkORYtJLjY07rMik2HVvedV2sLCfna4xqW25rM', 'Ronds Mosaïque', '49.882399', '2.285632');

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(72) COLLATE utf8_unicode_ci NOT NULL,
  `reward` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `shiny` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pcMin` int(11) NOT NULL,
  `pcMax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `reward`, `shiny`, `pcMin`, `pcMax`) VALUES
(1, 'Attrape 10 Pokémon', 'Magicarpe', 'true', 99, 117),
(2, 'Attrape 10 Pokémon', 'Malosse', 'true', 491, 529),
(3, 'Attrape un Pokémon de type Dragon', 'Minidraco', 'true', 397, 430),
(4, 'Attrape 5 Pokémon de type Combat', 'Magnéti', 'true', 544, 583),
(5, 'Attrape 5 Pokémon de type Normal, Electrique ou Poison', 'Staross', 'false', 1053, 1107),
(6, 'Attrape 7 Pokémon de type Vol, Psy ou Ténèbres', 'Anorith', 'false', 613, 655),
(7, 'Attrape 10 Pokémon de type Glace', 'Kabuto', 'true', 548, 587),
(8, 'Attrape 10 Pokémon de type Sol', 'Sabelette', 'true', 503, 540),
(9, 'Attrape 5 Pokémon boostés par la météo', 'Ptitard', 'false', 324, 355),
(10, 'Attrape 5 Pokémon boostés par la météo', 'Goupix', 'false', 347, 378),
(11, 'Utiliser 5 baies pour attraper des Pokémon', 'Caninos', 'true', 495, 533),
(12, 'Utiliser 5 baies Framby pour attraper des Pokémon', 'Osselait', 'true', 402, 436),
(13, 'Utilise 10 baies Nanana pour attraper des Pokémon', 'Magicarpe', 'true', 99, 117),
(14, 'Faire 5 jolis lancers', 'Voltorbe', 'false', 399, 432),
(15, 'Faire 5 jolis lancers', 'Keunotor', 'false', 280, 309),
(16, 'Faire 3 super lancers', 'Fantominus', 'true', 487, 527),
(17, 'Faire 3 super lancers', 'Lilia', 'false', 515, 553),
(18, 'Faire 3 super lancers', 'Anorith', 'false', 613, 655),
(19, 'Faire 3 super lancers à la suite', 'Onix', 'false', 435, 472),
(20, 'Faire 5 super lancers à effets à la suite', 'Spinda (Forme 5)', 'false', 486, 523),
(21, 'Faire 3 excellent lancers à la suite', 'Embrylex', 'true', 411, 445),
(22, 'Combat dans une arène', 'Machoc', 'false', 509, 548),
(23, 'Combat dans une arène', 'Férosinge', 'false', 462, 499),
(24, 'Combat 5 fois dans une arène', 'Machoc', 'false', 509, 548),
(25, 'Gagne un combat d’arène', 'Bulbizarre', 'true', 442, 477),
(26, 'Gagne un combat d’arène', 'Salamèche', 'true', 387, 420),
(27, 'Gagne un combat d’arène', 'Carapuce', 'true', 372, 405),
(28, 'Gagne 3 combats d’arène', 'Lippoutou', 'false', 1040, 2095),
(29, 'Gagne 5 combats d’arène', 'Lokhlass', 'false', 1076, 1131),
(30, 'Utilise une attaque chargée super efficace 7 fois dans un combat d’arène', 'Élektek', 'false', 949, 1000),
(31, 'Gagne un combat de Raid', 'Soporifik', 'true', 411, 446),
(32, 'Gagne un raid de niveau 3 ou supérieur', 'Amonita', 'true', 620, 662),
(33, 'Gagne un raid de niveau 3 ou supérieur', 'Kabuto', 'true', 548, 587),
(34, 'Gagne 5 raids', 'Ptéra', 'true', 1136, 1193),
(35, 'Faire éclore un oeuf', 'Snubbull', 'true', 492, 530),
(36, 'Faire éclore un oeuf', 'Noeunoeuf', 'false', 467, 503),
(37, 'Faire éclore 3 oeufs', 'Magmar', 'false', 973, 1026),
(38, 'Faire éclore 5 oeufs', 'Leveinard', 'false', 490, 537),
(39, 'Recharge 5 fois un Pokémon', 'Bulbizarre', 'true', 442, 477),
(40, 'Recharge 5 fois un Pokémon', 'Salamèche', 'true', 387, 420),
(41, 'Recharge 5 fois un Pokémon', 'Carapuce', 'true', 372, 405),
(42, 'Faire évoluer un Pokémon', 'Évoli', 'true', 424, 459),
(43, 'Faire évoluer un Pokémon', 'Tournegrin', 'true', 148, 169),
(44, 'Utilise un objet pour faire évoluer un Pokémon', 'Ptéra', 'true', 1136, 1193),
(45, 'Envoyer 2 cadeaux à des amis', 'Fantominus', 'true', 487, 527),
(46, 'Echange un Pokémon', 'Élecsprint', 'false', 951, 1003),
(47, 'Transfère 3 Pokémon', 'Goupix', 'false', 347, 378),
(48, 'Gagne 5 bonbons en marchant avec ton Pokémon', 'Tentacruel', 'false', 986, 1038);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_teams` (`id_teams`);

--
-- Index pour la table `pokestops`
--
ALTER TABLE `pokestops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pokestops`
--
ALTER TABLE `pokestops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`id_teams`) REFERENCES `teams` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

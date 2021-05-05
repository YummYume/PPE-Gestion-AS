INSERT INTO dbo.UTILISATEUR (Login_utilisateur, Mdp_utilisateur, Droit_utilisateur)
VALUES ('Lythis', 'admin', 'admin'),
('Yam', 'admin','admin'),
('Fuzzy', 'admin', 'admin'),
('Comptable', '123', 'compta'),
('Léo', '123', 'élève');

INSERT INTO dbo.CLASSE(Libelle_classe)
VALUES('BTS1'),
('BTS2'),
('TerminaleA'),
('SecondeA'),
('PremiereA'),
('TerminaleB'),
('SecondeB'),
('PremiereB');

INSERT INTO dbo.ADHERENT (Nom_adherent, Prenom_adherent, Ddn_adherent, Sexe_adherent, Login_adherent, Mdp_adherent, Numtel_adherent, Email_adherent, Numparent_adherent, Prelevement_autorise_adherent, Sweet_adherent, Archive_adherent, #Id_Utilisateur, #Id_classe)
VALUES('Bruant', 'Léo', '2001-06-14', 'Homme', 'Lespectre', 'UwUOwO', '0659393020', 'LéoBruant@gmail.com', '0628592053', 0, 1, 0, 1, 2),
('Louis-Joseph', 'Kyllian', '2001-04-21', 'Homme', 'Prxph3te', 'LoliWtf', '0623256939', 'KykyLeBg@gmail.com', '0632235649', 0, 1, 0, 2, 1),
('Evenot', 'Tristan', '2001-03-12', 'Homme', 'Inconious', 'OsuProPlayer', '0724526930', 'Tristou@gmail.com', '0635693496', 1, 1, 0, 3, 3),
('Jeon', 'So-Yeon', '1998-08-28', 'Femme', 'So-Yeon', 'Akali', '0603569360', 'Akali@gmail.com', '0643604030', 0, 0, 1, 1, 6),
('Maxence', 'lilcock', '1998-06-12', 'Homme', 'Maxmlk', 'bold', '0634935935', 'Maxence@gmail.com', '064739539', 1, 0, 0, 2, 7);

GO
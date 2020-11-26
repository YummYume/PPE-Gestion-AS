-- On crée la base
-- CREATE DATABASE PPE;

-- On se positionne sur la base PPE pour insérer les tables
USE PPE;

-- Table UTILISATEUR
CREATE TABLE UTILISATEUR (
	ID_utilisateur int NOT NULL IDENTITY (1, 1),
	Login_utilisateur nvarchar(255) NOT NULL,
	Mdp_utilisateur nvarchar(255) NOT NULL,
	Droit_utilisateur nvarchar(255) NOT NULL,
	CONSTRAINT ID_utilisateur PRIMARY KEY CLUSTERED (ID_utilisateur),
);

-- Table CLASSE
CREATE TABLE CLASSE (
	ID_classe int NOT NULL IDENTITY (1, 1),
	Libelle_classe varchar(255) NOT NULL,
	CONSTRAINT ID_class PRIMARY KEY NONCLUSTERED (ID_classe),
);

-- Table ADHERENT
CREATE TABLE ADHERENT (
	ID_adherent int NOT NULL,
	Nom_adherent varchar(255) NOT NULL,
	Prenom_adherent varchar(255) NOT NULL,
	Ddn_adherent date NOT NULL,
	Sexe_adherent varchar(255) NOT NULL,
	Login_adherent_adherent varchar(255) NOT NULL,
	Mdp_adherent varchar(255) NOT NULL,
	Numtel_adherent int NOT NULL,
	Email_adherent varchar(255) NOT NULL,
	Numparent_adherent int NOT NULL,
	Datemaj_adherent date NOT NULL,
	Archive_adherent tinyint NOT NULL,
	#ID_Utilisateur int NOT NULL,
	#ID_classe int NOT NULL,
	CONSTRAINT ID_eleve PRIMARY KEY NONCLUSTERED (ID_adherent),
	CONSTRAINT ID_utilisateur_ajout FOREIGN KEY (#ID_utilisateur)
        REFERENCES UTILISATEUR (ID_utilisateur)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT ID_classe_eleve FOREIGN KEY (#ID_classe)
        REFERENCES CLASSE (ID_classe)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Table BUDGET
CREATE TABLE BUDGET (
	ID_budget int NOT NULL IDENTITY (1, 1),
	Libelle_budget varchar(255) NOT NULL,
	Montantinitial_budget varchar(255) NOT NULL,
	CONSTRAINT ID_budget PRIMARY KEY NONCLUSTERED (ID_budget),
);

-- Table TYPE_FLUX
CREATE TABLE TYPE_FLUX (
	ID_typeflux int NOT NULL IDENTITY (1, 1),
	Libelle_typeflux varchar(255) NOT NULL,
	CONSTRAINT ID_typeflux PRIMARY KEY NONCLUSTERED (ID_typeflux),
);

-- Table EVENEMENT
CREATE TABLE EVENEMENT (
	ID_evenement int NOT NULL IDENTITY (1, 1),
	Libelle_evenement varchar(255) NOT NULL,
	Date_evenement date NOT NULL,
	Lieu_evenement varchar(255) NOT NULL,
	Cout_evenement float NOT NULL,
	CONSTRAINT ID_evenement PRIMARY KEY NONCLUSTERED (ID_evenement),
);

-- Table FLUX
CREATE TABLE FLUX (
	ID_flux int NOT NULL IDENTITY (1, 1),
	Libelle_flux varchar(255) NOT NULL,
	Date_flux date NOT NULL,
	Montant_flux float NOT NULL,
	Prelevementeff_flux varchar(255) NOT NULL,
	#ID_adherent int NOT NULL,
	#ID_typeflux int NOT NULL,
	#ID_evenement int NOT NULL,
	CONSTRAINT ID_flux PRIMARY KEY NONCLUSTERED (ID_flux),
	CONSTRAINT ID_adherent_flux FOREIGN KEY (#ID_adherent)
        REFERENCES ADHERENT (ID_adherent)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT ID_type_flux FOREIGN KEY (#ID_typeflux)
        REFERENCES TYPE_FLUX (ID_typeflux)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT ID_evenement_flux FOREIGN KEY (#ID_evenement)
        REFERENCES EVENEMENT (ID_evenement)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- On exécute le script
GO

-- Recharger la DB!
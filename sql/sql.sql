#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        id_user    Int  Auto_increment  NOT NULL ,
        first_name Varchar (50) NOT NULL ,
        last_name  Varchar (50) NOT NULL ,
        email      Varchar (50) NOT NULL ,
        password   Varchar (255) NOT NULL
	,CONSTRAINT User_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mystery_word
#------------------------------------------------------------

CREATE TABLE Mystery_word(
        id_mystery_word Int  Auto_increment  NOT NULL ,
        word            Varchar (70) NOT NULL
	,CONSTRAINT Mystery_word_PK PRIMARY KEY (id_mystery_word)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: User_Mystery_Word
#------------------------------------------------------------

CREATE TABLE User_Mystery_Word(
        id_mystery_word Int NOT NULL ,
        id_user         Int NOT NULL
	,CONSTRAINT User_Mystery_Word_PK PRIMARY KEY (id_mystery_word,id_user)

	,CONSTRAINT User_Mystery_Word_Mystery_word_FK FOREIGN KEY (id_mystery_word) REFERENCES Mystery_word(id_mystery_word)
	,CONSTRAINT User_Mystery_Word_User0_FK FOREIGN KEY (id_user) REFERENCES User(id_user)
)ENGINE=InnoDB;

INSERT INTO Mystery_word (id_mystery_word, word)
VALUES (1, 'Félicitation =) ');

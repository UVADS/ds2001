CREATE TABLE COURSES (
    mnemonic varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255),
    PRIMARY KEY (mnemonic)
);

CREATE TABLE LEARNING_OUTCOMES (
    mnemonic varchar(255) NOT NULL,
    learning_outcome_description varchar(500),
    PRIMARY KEY (mnemonic, learning_outcome_description),
	FOREIGN KEY (mnemonic) REFERENCES COURSES(mnemonic)
);
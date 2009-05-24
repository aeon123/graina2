CREATE 
    TABLE BK_BRANCH
    ( 
        BRANCH_NM VARCHAR(255) NOT NULL,
        CONSTRAINT IXSECAPPLIC PRIMARY KEY (BRANCH_NM)
    )
    ; 
    
CREATE 
    TABLE BK_LOCATION
    ( 
        LOCATION_ID INTEGER NOT NULL,
        LOCATION_NM VARCHAR(255) NOT NULL,
        CONSTRAINT IXSECROLE PRIMARY KEY (LOCATION_ID) 
    )
    ; 
    
    
CREATE
	TABLE BK_MANAGER
	(
		BRANCH_NM VARCHAR(50) NOT NULL,
		LOCATION_ID INTEGER NOT NULL,
		NAME VARCHAR(12) NOT NULL, 
		MGMT_RATING_VAL SMALLINT NOT NULL
	)
	;
    
    
    
CREATE 
    TABLE BK_SECTION
    ( 
        SECTION_ID INTEGER NOT NULL,
        SECTION_NM VARCHAR(50) NOT NULL,
        START_DT DATE NOT NULL,
        END_DT DATE NOT NULL, 
        CONSTRAINT IXSECRESGRP PRIMARY KEY (SECTION_ID)
    )
    ; 
    
    
CREATE 
    TABLE BK_FILE
    ( 
        FILE_ID INTEGER NOT NULL,
        FILE_TYPE_CD CHARACTER(3) NOT NULL,
        FILE_NM VARCHAR(50) NOT NULL,
        SECURITY_RATING_VAL SMALLINT NOT NULL,
        FILE_OWNER_ID INTEGER NOT NULL,
        START_DT DATE NOT NULL, 
        END_DT DATE NOT NULL, 
        FILE_DESC VARCHAR(255) DEFAULT 'No description entered' NOT NULL,
        CONSTRAINT IXSECPK PRIMARY KEY (FILE_ID)
    )
    ; 
    

    

    
CREATE 
    TABLE BK_FILE_TYPE
    ( 
        FILE_TYPE_CD CHARACTER(3) NOT NULL,
        FILE_TYPE_NM VARCHAR(24) NOT NULL,
        FILE_TYPE_DESC VARCHAR(255) DEFAULT 'No description entered' NOT NULL,
        CONSTRAINT IXSECTYPE PRIMARY KEY (FILE_TYPE_CD) 
    )
    ;
    

CREATE 
    TABLE BK_BRANCH_TO_FILE
    ( 
        FILE_ID INTEGER NOT NULL,
        BRANCH_NM VARCHAR(255) NOT NULL,
        CONSTRAINT IXSECAPPIT PRIMARY KEY (FILE_ID, BRANCH_NM)
    )
    ; 


CREATE 
    TABLE BK_FILE_OWNER
    ( 
        FILE_OWNER_ID INTEGER NOT NULL,
        OWNER_DESC VARCHAR(255) DEFAULT 'No description entered' NOT NULL,
        OWNER_NM VARCHAR(50) NOT NULL,
        CONSTRAINT IXSECADMIN PRIMARY KEY (FILE_OWNER_ID) 
    )
    ; 
    
CREATE 
    TABLE BK_FILE_SECTION_MAP
    ( 
        FILE_ID INTEGER NOT NULL,
        SECTION_ID INTEGER NOT NULL,
        START_DT DATE  NOT NULL, 
        END_DT DATE NOT NULL, 
        CONSTRAINT IXSECRGMAP PRIMARY KEY (FILE_ID, SECTION_ID)
    )
    ; 
    
CREATE 
    TABLE BK_LOCATION_SECTION_MAP
    ( 
        LOCATION_ID INTEGER NOT NULL,
        SECTION_ID INTEGER NOT NULL,
        START_DT DATE  NOT NULL, 
        END_DT DATE NOT NULL, 
        CONSTRAINT IXSECROLGRP PRIMARY KEY (LOCATION_ID, SECTION_ID)
    )
    ; 
    
CREATE 
    TABLE BK_BRANCH_TO_SECTION
    ( 
        SECTION_ID INTEGER NOT NULL,
        BRANCH_NM VARCHAR(255) NOT NULL,
        CONSTRAINT IXSECRESAPP PRIMARY KEY (SECTION_ID, BRANCH_NM) 
    )
    ; 

CHECKPOINT;

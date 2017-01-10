CREATE TABLE incsitfoundsub (
  IncSitFoundSub_ID INTEGER NOT NULL,
  IncSitFoundClass_ID INTEGER NOT NULL,
  Description VARCHAR(50),
  SortOrder INTEGER,

  PRIMARY KEY (IncSitFoundSub_ID)
  --FOREIGN KEY (IncSitFoundClass_ID) REFERENCES incsitfoundclass (IncSitFoundClass_ID)
);

CREATE TABLE responderunit (
  "ResponderUnit_ID" INTEGER NOT NULL,
  "Description" VARCHAR(50),
  "ID_911" VARCHAR(6),
  "Station_ID" INTEGER,
  "TranslateTo" VARCHAR(50),
  "Agency_ID" INTEGER,
  "Process" INTEGER,
  "VersaTerm" VARCHAR(10),

  PRIMARY KEY ("ResponderUnit_ID")
  FOREIGN KEY ("Station_ID") REFERENCES station ("Station_ID"),
  FOREIGN KEY ("Agency_ID") REFERENCES agency ("Agency_ID")
);

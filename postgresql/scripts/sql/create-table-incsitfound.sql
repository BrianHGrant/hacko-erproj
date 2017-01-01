CREATE TABLE incsitfound (
  "IncSitFound_ID" INTEGER NOT NULL,
  "IncSitFoundSub_ID" INTEGER NOT NULL,
  "Description" VARCHAR(50),
  "StateCode" VARCHAR(3),
  "SortOrder" INTEGER,
  "Inactive" INTEGER,
  "NFIRS" VARCHAR(3),

  PRIMARY KEY ("IncSitFound_ID"),
  FOREIGN KEY ("IncSitFoundSub_ID") REFERENCES incsitfoundsub ("IncSitFoundSub_ID")
);

CREATE TABLE inctimes (
  "IncTimes_ID"  INTEGER NOT NULL,
  "TimeDesc_ID" INTEGER NOT NULL,
  "Incident_ID" INTEGER NOT NULL,
  "Responder_ID" INTEGER,
  "RealTime" TIMESTAMP,

  PRIMARY KEY ("IncTimes_ID")
  --FOREIGN KEY ("Incident_ID", "Responder_ID") REFERENCES responder ("Incident_ID", "Responder_ID"),
  --FOREIGN KEY ("TimeDesc_ID") REFERENCES timedesc ("TimeDesc_ID")
);

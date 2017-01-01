CREATE TABLE responder (
  "Incident_ID" INTEGER NOT NULL,
  "Responder_ID" INTEGER NOT NULL,
  "ResponderUnit_ID" INTEGER NOT NULL,
  "CodeToSc" INTEGER,

  PRIMARY KEY ("Incident_ID", "Responder_ID"),
  FOREIGN KEY ("ResponderUnit_ID")
    REFERENCES responderunit ("ResponderUnit_ID")
  FOREIGN KEY ("Incident_ID", "Responder_ID")
    REFERENCES inctimes ("Incident_ID", "Responder_ID")
);

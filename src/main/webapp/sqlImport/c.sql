CREATE TABLE IF NOT EXISTS cryovial (
  edtaTubeId CHAR(8) NOT NULL,
  cryovialId CHAR(8) NOT NULL,
  cryovialType VARCHAR(10) NOT NULL,
  cryovialBoxId CHAR(8) NULL,
  cryovialBoxRow INT(11) NULL,
  cryovialBoxColumn INT(11) NULL,
  remarks VARCHAR(255) NULL,
  PRIMARY KEY (cryovialId));
CREATE TABLE IF NOT EXISTS cryovialBox (
  cryovialBoxId CHAR(8) NOT NULL,
  freezerRackId CHAR(8) NULL,
  cryovialType VARCHAR(255) NOT NULL,
  PRIMARY KEY (cryovialBoxId));
CREATE TABLE IF NOT EXISTS FreezerUnit (
  freezerUnitId CHAR(8) NOT NULL,
  freezerRackId CHAR(8) NOT NULL,
  position INT(11) NOT NULL,
  PRIMARY KEY (freezerRackId));

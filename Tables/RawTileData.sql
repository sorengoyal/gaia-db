CREATE TABLE gaiadb.`RawTileData` (
  `RawTileId` bigint(20) NOT NULL AUTO_INCREMENT,
  `JSON` JSON NOT NULL,
  PRIMARY KEY (`RawTileId`),
  UNIQUE KEY `RawTileId_UNIQUE` (`RawTileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE gaiadb.`RapidEyeTileData` (
  `RapidEyeTileId` bigint(20) NOT NULL AUTO_INCREMENT,
  `NorthLatitude` double NOT NULL,
  `NorthLongitude` double NOT NULL,
  `EastLatitude` double NOT NULL,
  `EastLongitude` double NOT NULL,
  `SouthLatitude` double NOT NULL,
  `SouthLongitude` double NOT NULL,
  `WestLatitude` double NOT NULL,
  `WestLongitude` double NOT NULL,
  `DateAcquired` timestamp NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AssetLink` varchar(1000) NOT NULL,
  `RawTileId` bigint(20) NOT NULL,
  PRIMARY KEY (`RapidEyeTileId`,`NorthLatitude`,`NorthLongitude`,`EastLatitude`,`EastLongitude`,`SouthLatitude`,`SouthLongitude`,`WestLongitude`,`DateAcquired`,`WestLatitude`,`DateCreated`),
  UNIQUE KEY `RapidEyeTileId_UNIQUE` (`RapidEyeTileId`),
  KEY `fk_RapidEyeTileData_1_idx` (`RawTileId`),
  CONSTRAINT `fk_RapidEyeTileData_1` FOREIGN KEY (`RawTileId`) REFERENCES `RawTileData` (`RawTileId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

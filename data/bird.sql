-- Schema-only export from merged_bird.sqlite
-- Data INSERT rows intentionally omitted.

CREATE TABLE `Country` (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT UNIQUE
);

CREATE TABLE Examination
(
    ID                 INTEGER          null,
    `Examination Date` DATE         null,
    `aCL IgG`          REAL        null,
    `aCL IgM`          REAL        null,
    ANA                INTEGER          null,
    `ANA Pattern`      TEXT null,
    `aCL IgA`          INTEGER          null,
    Diagnosis          TEXT null,
    KCT                TEXT null,
    RVVT              TEXT null,
    LAC                TEXT null,
    Symptoms           TEXT null,
    Thrombosis         INTEGER          null,
    foreign key (ID) references Patient (ID)
            on update cascade on delete cascade
);

CREATE TABLE Laboratory
(
    ID        INTEGER  default 0            not null,
    Date      DATE default '0000-00-00' not null,
    GOT       INTEGER                       null,
    GPT       INTEGER                        null,
    LDH       INTEGER                        null,
    ALP       INTEGER                        null,
    TP        REAL             null,
    ALB       REAL             null,
    UA        REAL             null,
    UN        INTEGER                       null,
    CRE       REAL             null,
    `T-BIL`   REAL             null,
    `T-CHO`   INTEGER                       null,
    TG        INTEGER                       null,
    CPK       INTEGER                       null,
    GLU       INTEGER                       null,
    WBC       REAL             null,
    RBC       REAL             null,
    HGB       REAL             null,
    HCT       REAL             null,
    PLT       INTEGER                       null,
    PT        REAL             null,
    APTT      INTEGER                       null,
    FG        REAL             null,
    PIC       INTEGER                       null,
    TAT       INTEGER                       null,
    TAT2      INTEGER                       null,
    `U-PRO`   TEXT              null,
    IGG       INTEGER                       null,
    IGA       INTEGER                       null,
    IGM       INTEGER                       null,
    CRP       TEXT              null,
    RA        TEXT              null,
    RF        TEXT              null,
    C3        INTEGER                       null,
    C4        INTEGER                       null,
    RNP       TEXT              null,
    SM        TEXT              null,
    SC170     TEXT              null,
    SSA       TEXT              null,
    SSB       TEXT              null,
    CENTROMEA TEXT              null,
    DNA       TEXT              null,
    `DNA-II`  INTEGER                       null,
    primary key (ID, Date),
        foreign key (ID) references Patient (ID)
            on update cascade on delete cascade
);

CREATE TABLE `League` (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`country_id`	INTEGER,
	`name`	TEXT UNIQUE,
	FOREIGN KEY(`country_id`) REFERENCES `country`(`id`)
);

CREATE TABLE "Match"
(
    id               INTEGER
        primary key autoincrement,
    country_id       INTEGER
        references Country,
    league_id        INTEGER
        references League,
    season           TEXT,
    stage            INTEGER,
    date             TEXT,
    match_api_id     INTEGER
        unique,
    home_team_api_id INTEGER
        references Team (team_api_id),
    away_team_api_id INTEGER
        references Team (team_api_id),
    home_team_goal   INTEGER,
    away_team_goal   INTEGER,
    home_player_X1   INTEGER,
    home_player_X2   INTEGER,
    home_player_X3   INTEGER,
    home_player_X4   INTEGER,
    home_player_X5   INTEGER,
    home_player_X6   INTEGER,
    home_player_X7   INTEGER,
    home_player_X8   INTEGER,
    home_player_X9   INTEGER,
    home_player_X10  INTEGER,
    home_player_X11  INTEGER,
    away_player_X1   INTEGER,
    away_player_X2   INTEGER,
    away_player_X3   INTEGER,
    away_player_X4   INTEGER,
    away_player_X5   INTEGER,
    away_player_X6   INTEGER,
    away_player_X7   INTEGER,
    away_player_X8   INTEGER,
    away_player_X9   INTEGER,
    away_player_X10  INTEGER,
    away_player_X11  INTEGER,
    home_player_Y1   INTEGER,
    home_player_Y2   INTEGER,
    home_player_Y3   INTEGER,
    home_player_Y4   INTEGER,
    home_player_Y5   INTEGER,
    home_player_Y6   INTEGER,
    home_player_Y7   INTEGER,
    home_player_Y8   INTEGER,
    home_player_Y9   INTEGER,
    home_player_Y10  INTEGER,
    home_player_Y11  INTEGER,
    away_player_Y1   INTEGER,
    away_player_Y2   INTEGER,
    away_player_Y3   INTEGER,
    away_player_Y4   INTEGER,
    away_player_Y5   INTEGER,
    away_player_Y6   INTEGER,
    away_player_Y7   INTEGER,
    away_player_Y8   INTEGER,
    away_player_Y9   INTEGER,
    away_player_Y10  INTEGER,
    away_player_Y11  INTEGER,
    home_player_1    INTEGER
        references Player (player_api_id),
    home_player_2    INTEGER
        references Player (player_api_id),
    home_player_3    INTEGER
        references Player (player_api_id),
    home_player_4    INTEGER
        references Player (player_api_id),
    home_player_5    INTEGER
        references Player (player_api_id),
    home_player_6    INTEGER
        references Player (player_api_id),
    home_player_7    INTEGER
        references Player (player_api_id),
    home_player_8    INTEGER
        references Player (player_api_id),
    home_player_9    INTEGER
        references Player (player_api_id),
    home_player_10   INTEGER
        references Player (player_api_id),
    home_player_11   INTEGER
        references Player (player_api_id),
    away_player_1    INTEGER
        references Player (player_api_id),
    away_player_2    INTEGER
        references Player (player_api_id),
    away_player_3    INTEGER
        references Player (player_api_id),
    away_player_4    INTEGER
        references Player (player_api_id),
    away_player_5    INTEGER
        references Player (player_api_id),
    away_player_6    INTEGER
        references Player (player_api_id),
    away_player_7    INTEGER
        references Player (player_api_id),
    away_player_8    INTEGER
        references Player (player_api_id),
    away_player_9    INTEGER
        references Player (player_api_id),
    away_player_10   INTEGER
        references Player (player_api_id),
    away_player_11   INTEGER
        references Player (player_api_id),
    goal             TEXT,
    shoton           TEXT,
    shotoff          TEXT,
    foulcommit       TEXT,
    card             TEXT,
    "cross"          TEXT,
    corner           TEXT,
    possession       TEXT,
    B365H            REAL,
    B365D            REAL,
    B365A            REAL,
    BWH              REAL,
    BWD              REAL,
    BWA              REAL,
    IWH              REAL,
    IWD              REAL,
    IWA              REAL,
    LBH              REAL,
    LBD              REAL,
    LBA              REAL,
    PSH              REAL,
    PSD              REAL,
    PSA              REAL,
    WHH              REAL,
    WHD              REAL,
    WHA              REAL,
    SJH              REAL,
    SJD              REAL,
    SJA              REAL,
    VCH              REAL,
    VCD              REAL,
    VCA              REAL,
    GBH              REAL,
    GBD              REAL,
    GBA              REAL,
    BSH              REAL,
    BSD              REAL,
    BSA              REAL
);

CREATE TABLE Patient
(
    ID           INTEGER default 0 not null
        primary key,
    SEX          TEXT  null,
    Birthday     DATE          null,
    Description  DATE          null,
    `First Date` DATE          null,
    Admission    TEXT  null,
    Diagnosis    TEXT  null
);

CREATE TABLE `Player` (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`player_api_id`	INTEGER UNIQUE,
	`player_name`	TEXT,
	`player_fifa_api_id`	INTEGER UNIQUE,
	`birthday`	TEXT,
	`height`	INTEGER,
	`weight`	INTEGER
);

CREATE TABLE "Player_Attributes" (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`player_fifa_api_id`	INTEGER,
	`player_api_id`	INTEGER,
	`date`	TEXT,
	`overall_rating`	INTEGER,
	`potential`	INTEGER,
	`preferred_foot`	TEXT,
	`attacking_work_rate`	TEXT,
	`defensive_work_rate`	TEXT,
	`crossing`	INTEGER,
	`finishing`	INTEGER,
	`heading_accuracy`	INTEGER,
	`short_passing`	INTEGER,
	`volleys`	INTEGER,
	`dribbling`	INTEGER,
	`curve`	INTEGER,
	`free_kick_accuracy`	INTEGER,
	`long_passing`	INTEGER,
	`ball_control`	INTEGER,
	`acceleration`	INTEGER,
	`sprint_speed`	INTEGER,
	`agility`	INTEGER,
	`reactions`	INTEGER,
	`balance`	INTEGER,
	`shot_power`	INTEGER,
	`jumping`	INTEGER,
	`stamina`	INTEGER,
	`strength`	INTEGER,
	`long_shots`	INTEGER,
	`aggression`	INTEGER,
	`interceptions`	INTEGER,
	`positioning`	INTEGER,
	`vision`	INTEGER,
	`penalties`	INTEGER,
	`marking`	INTEGER,
	`standing_tackle`	INTEGER,
	`sliding_tackle`	INTEGER,
	`gk_diving`	INTEGER,
	`gk_handling`	INTEGER,
	`gk_kicking`	INTEGER,
	`gk_positioning`	INTEGER,
	`gk_reflexes`	INTEGER,
	FOREIGN KEY(`player_fifa_api_id`) REFERENCES `Player`(`player_fifa_api_id`),
	FOREIGN KEY(`player_api_id`) REFERENCES `Player`(`player_api_id`)
);

CREATE TABLE "Team" (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`team_api_id`	INTEGER UNIQUE,
	`team_fifa_api_id`	INTEGER,
	`team_long_name`	TEXT,
	`team_short_name`	TEXT
);

CREATE TABLE `Team_Attributes` (
	`id`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`team_fifa_api_id`	INTEGER,
	`team_api_id`	INTEGER,
	`date`	TEXT,
	`buildUpPlaySpeed`	INTEGER,
	`buildUpPlaySpeedClass`	TEXT,
	`buildUpPlayDribbling`	INTEGER,
	`buildUpPlayDribblingClass`	TEXT,
	`buildUpPlayPassing`	INTEGER,
	`buildUpPlayPassingClass`	TEXT,
	`buildUpPlayPositioningClass`	TEXT,
	`chanceCreationPassing`	INTEGER,
	`chanceCreationPassingClass`	TEXT,
	`chanceCreationCrossing`	INTEGER,
	`chanceCreationCrossingClass`	TEXT,
	`chanceCreationShooting`	INTEGER,
	`chanceCreationShootingClass`	TEXT,
	`chanceCreationPositioningClass`	TEXT,
	`defencePressure`	INTEGER,
	`defencePressureClass`	TEXT,
	`defenceAggression`	INTEGER,
	`defenceAggressionClass`	TEXT,
	`defenceTeamWidth`	INTEGER,
	`defenceTeamWidthClass`	TEXT,
	`defenceDefenderLineClass`	TEXT,
	FOREIGN KEY(`team_fifa_api_id`) REFERENCES `Team`(`team_fifa_api_id`),
	FOREIGN KEY(`team_api_id`) REFERENCES `Team`(`team_api_id`)
);

CREATE TABLE account
(
    account_id  INTEGER default 0 not null
        primary key,
    district_id INTEGER default 0 not null,
    frequency   TEXT   not null,
    date        DATE          not null,
    foreign key (district_id) references district (district_id)
);

CREATE TABLE alignment
(
    id        INTEGER not null
            primary key,
    alignment TEXT default NULL
);

CREATE TABLE `atom` (
  `atom_id` TEXT NOT NULL,
  `molecule_id` TEXT DEFAULT NULL,
  `element` TEXT DEFAULT NULL,
  PRIMARY KEY (`atom_id`),
  FOREIGN KEY (`molecule_id`) REFERENCES `molecule` (`molecule_id`)
);

CREATE TABLE "attendance"
(
    link_to_event  TEXT,
    link_to_member TEXT,
    primary key (link_to_event, link_to_member),
    foreign key (link_to_event) references event(event_id),
    foreign key (link_to_member) references member(member_id)
);

CREATE TABLE attribute
(
    id             INTEGER not null
            primary key,
    attribute_name TEXT default NULL
);

CREATE TABLE badges
(
    Id     INTEGER          not null
        primary key,
    UserId INTEGER          null,
    Name   TEXT null,
    Date   DATETIME     null,
        foreign key (UserId) references users (Id)
            on update cascade on delete cascade
);

CREATE TABLE `bond` (
  `bond_id` TEXT NOT NULL,
  `molecule_id` TEXT DEFAULT NULL,
  `bond_type` TEXT DEFAULT NULL,
  PRIMARY KEY (`bond_id`),
  FOREIGN KEY (`molecule_id`) REFERENCES `molecule` (`molecule_id`)
);

CREATE TABLE "budget"
(
    budget_id     TEXT
            primary key,
    category      TEXT,
    spent         REAL,
    remaining     REAL,
    amount        INTEGER,
    event_status  TEXT,
    link_to_event TEXT,
    foreign key (link_to_event) references event(event_id)
);

CREATE TABLE card
(
    card_id INTEGER default 0 not null
        primary key,
    disp_id INTEGER           not null,
    type    TEXT    not null,
    issued  DATE          not null,
    foreign key (disp_id) references disp (disp_id)
);

CREATE TABLE "cards"
(
    id                      INTEGER           not null
        primary key autoincrement,
    artist                  TEXT,
    asciiName               TEXT,
    availability            TEXT,
    borderColor             TEXT,
    cardKingdomFoilId       TEXT,
    cardKingdomId           TEXT,
    colorIdentity           TEXT,
    colorIndicator          TEXT,
    colors                  TEXT,
    convertedManaCost       REAL,
    duelDeck                TEXT,
    edhrecRank              INTEGER,
    faceConvertedManaCost   REAL,
    faceName                TEXT,
    flavorName              TEXT,
    flavorText              TEXT,
    frameEffects            TEXT,
    frameVersion            TEXT,
    hand                    TEXT,
    hasAlternativeDeckLimit INTEGER default 0 not null,
    hasContentWarning       INTEGER default 0 not null,
    hasFoil                 INTEGER default 0 not null,
    hasNonFoil              INTEGER default 0 not null,
    isAlternative           INTEGER default 0 not null,
    isFullArt               INTEGER default 0 not null,
    isOnlineOnly            INTEGER default 0 not null,
    isOversized             INTEGER default 0 not null,
    isPromo                 INTEGER default 0 not null,
    isReprint               INTEGER default 0 not null,
    isReserved              INTEGER default 0 not null,
    isStarter               INTEGER default 0 not null,
    isStorySpotlight        INTEGER default 0 not null,
    isTextless              INTEGER default 0 not null,
    isTimeshifted           INTEGER default 0 not null,
    keywords                TEXT,
    layout                  TEXT,
    leadershipSkills        TEXT,
    life                    TEXT,
    loyalty                 TEXT,
    manaCost                TEXT,
    mcmId                   TEXT,
    mcmMetaId               TEXT,
    mtgArenaId              TEXT,
    mtgjsonV4Id             TEXT,
    mtgoFoilId              TEXT,
    mtgoId                  TEXT,
    multiverseId            TEXT,
    name                    TEXT,
    number                  TEXT,
    originalReleaseDate     TEXT,
    originalText            TEXT,
    originalType            TEXT,
    otherFaceIds            TEXT,
    power                   TEXT,
    printings               TEXT,
    promoTypes              TEXT,
    purchaseUrls            TEXT,
    rarity                  TEXT,
    scryfallId              TEXT,
    scryfallIllustrationId  TEXT,
    scryfallOracleId        TEXT,
    setCode                 TEXT,
    side                    TEXT,
    subtypes                TEXT,
    supertypes              TEXT,
    tcgplayerProductId      TEXT,
    text                    TEXT,
    toughness               TEXT,
    type                    TEXT,
    types                   TEXT,
    uuid                    TEXT              not null
        unique,
    variations              TEXT,
    watermark               TEXT
);

CREATE TABLE circuits
(
    circuitId  INTEGER
        primary key autoincrement,
    circuitRef TEXT default '' not null,
    name       TEXT default '' not null,
    location   TEXT,
    country    TEXT,
    lat        REAL,
    lng        REAL,
    alt        INTEGER,
    url        TEXT default '' not null
        unique
);

CREATE TABLE client
(
    client_id   INTEGER        not null
        primary key,
    gender      TEXT not null,
    birth_date  DATE       not null,
    district_id INTEGER        not null,
    foreign key (district_id) references district (district_id)
);

CREATE TABLE colour
(
    id     INTEGER not null
            primary key,
    colour TEXT default NULL
);

CREATE TABLE comments
(
    Id              INTEGER          not null
        primary key,
    PostId          INTEGER          null,
    Score           INTEGER          null,
    Text            TEXT     null,
    CreationDate    DATETIME     null,
    UserId          INTEGER          null,
    UserDisplayName TEXT null,
        foreign key (PostId) references posts (Id)
            on update cascade on delete cascade,
        foreign key (UserId) references users (Id)
            on update cascade on delete cascade
);

CREATE TABLE `connected` (
  `atom_id` TEXT NOT NULL,
  `atom_id2` TEXT NOT NULL,
  `bond_id` TEXT DEFAULT NULL,
  PRIMARY KEY (`atom_id`,`atom_id2`),
  FOREIGN KEY (`atom_id`) REFERENCES `atom` (`atom_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`atom_id2`) REFERENCES `atom` (`atom_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`bond_id`) REFERENCES `bond` (`bond_id`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE constructorResults
(
    constructorResultsId INTEGER
        primary key autoincrement,
    raceId               INTEGER default 0 not null,
    constructorId        INTEGER default 0 not null,
    points               REAL,
    status               TEXT,
    foreign key (raceId) references races(raceId),
    foreign key (constructorId) references constructors(constructorId)

);

CREATE TABLE constructorStandings
(
    constructorStandingsId INTEGER
        primary key autoincrement,
    raceId                 INTEGER default 0 not null,
    constructorId          INTEGER default 0 not null,
    points                 REAL   default 0 not null,
    position               INTEGER,
    positionText           TEXT,
    wins                   INTEGER default 0 not null,
    foreign key (raceId) references races(raceId),
    foreign key (constructorId) references constructors(constructorId)
);

CREATE TABLE constructors
(
    constructorId  INTEGER
        primary key autoincrement,
    constructorRef TEXT default '' not null,
    name           TEXT default '' not null
        unique,
    nationality    TEXT,
    url            TEXT default '' not null
);

CREATE TABLE customers
(
    CustomerID INTEGER UNIQUE     not null
        primary key,
    Segment    TEXT null,
    Currency   TEXT null
);

CREATE TABLE disp
(
    disp_id    INTEGER        not null
        primary key,
    client_id  INTEGER        not null,
    account_id INTEGER        not null,
    type      TEXT not null,
    foreign key (account_id) references account (account_id),
    foreign key (client_id) references client (client_id)
);

CREATE TABLE district
(
    district_id INTEGER default 0 not null
        primary key,
    A2          TEXT   not null,
    A3          TEXT   not null,
    A4          TEXT       not null,
    A5          TEXT           not null,
    A6          TEXT           not null,
    A7          TEXT           not null,
    A8          INTEGER        not null,
    A9          INTEGER           not null,
    A10         REAL not null,
    A11         INTEGER           not null,
    A12         REAL null,
    A13         REAL not null,
    A14         INTEGER           not null,
    A15         INTEGER        null,
    A16         INTEGER          not null
);

CREATE TABLE driverStandings
(
    driverStandingsId INTEGER
        primary key autoincrement,
    raceId            INTEGER default 0 not null,
    driverId          INTEGER default 0 not null,
    points            REAL   default 0 not null,
    position          INTEGER,
    positionText      TEXT,
    wins              INTEGER default 0 not null,
    foreign key (raceId) references races(raceId),
    foreign key (driverId) references drivers(driverId)
);

CREATE TABLE drivers
(
    driverId    INTEGER
        primary key autoincrement,
    driverRef   TEXT default '' not null,
    number      INTEGER,
    code        TEXT,
    forename    TEXT default '' not null,
    surname     TEXT default '' not null,
    dob         DATE,
    nationality TEXT,
    url         TEXT default '' not null
        unique
);

CREATE TABLE event
(
    event_id   TEXT
        constraint event_pk
            primary key,
    event_name TEXT,
    event_date TEXT,
    type       TEXT,
    notes      TEXT,
    location   TEXT,
    status     TEXT
);

CREATE TABLE "expense"
(
    expense_id          TEXT
            primary key,
    expense_description TEXT,
    expense_date        TEXT,
    cost                REAL,
    approved            TEXT,
    link_to_member      TEXT,
    link_to_budget      TEXT,
    foreign key (link_to_budget) references budget(budget_id),
    foreign key (link_to_member) references member(member_id)
);

CREATE TABLE "foreign_data"
(
    id           INTEGER not null
        primary key autoincrement,
    flavorText   TEXT,
    language     TEXT,
    multiverseid INTEGER,
    name         TEXT,
    text         TEXT,
    type         TEXT,
    uuid         TEXT
        references cards (uuid)
);

CREATE TABLE frpm
(
    CDSCode                                       TEXT not null
        primary key,
    `Academic Year`                               TEXT  null,
    `County Code`                                 TEXT  null,
    `District Code`                               INTEGER         null,
    `School Code`                                 TEXT  null,
    `County Name`                                 TEXT null,
    `District Name`                               TEXT null,
    `School Name`                                 TEXT null,
    `District Type`                               TEXT null,
    `School Type`                                 TEXT null,
    `Educational Option Type`                     TEXT null,
    `NSLP Provision Status`                       TEXT null,
    `Charter School (Y/N)`                        INTEGER    null,
    `Charter School Number`                       TEXT  null,
    `Charter Funding Type`                        TEXT null,
    IRC                                           INTEGER    null,
    `Low Grade`                                   TEXT  null,
    `High Grade`                                  TEXT null,
    `Enrollment (K-12)`                           REAL      null,
    `Free Meal Count (K-12)`                      REAL       null,
    `Percent (%) Eligible Free (K-12)`            REAL       null,
    `FRPM Count (K-12)`                           REAL       null,
    `Percent (%) Eligible FRPM (K-12)`            REAL       null,
    `Enrollment (Ages 5-17)`                      REAL       null,
    `Free Meal Count (Ages 5-17)`                 REAL       null,
    `Percent (%) Eligible Free (Ages 5-17)`       REAL       null,
    `FRPM Count (Ages 5-17)`                      REAL       null,
    `Percent (%) Eligible FRPM (Ages 5-17)`       REAL       null,
    `2013-14 CALPADS Fall 1 Certification Status` INTEGER    null,
    foreign key (CDSCode) references schools (CDSCode)
);

CREATE TABLE gasstations
(
    GasStationID INTEGER    UNIQUE   not null
        primary key,
    ChainID      INTEGER          null,
    Country      TEXT null,
    Segment      TEXT null
);

CREATE TABLE gender
(
    id     INTEGER not null
            primary key,
    gender TEXT default NULL
);

CREATE TABLE hero_attribute
(
    hero_id         INTEGER default NULL,
    attribute_id    INTEGER default NULL,
    attribute_value INTEGER default NULL,
    foreign key (attribute_id) references attribute(id),
    foreign key (hero_id) references superhero(id)
);

CREATE TABLE hero_power
(
    hero_id  INTEGER default NULL,
    power_id INTEGER default NULL,
    foreign key (hero_id) references superhero(id),
    foreign key (power_id) references superpower(id)
);

CREATE TABLE "income"
(
    income_id      TEXT
        constraint income_pk
            primary key,
    date_received  TEXT,
    amount         INTEGER,
    source         TEXT,
    notes          TEXT,
    link_to_member TEXT,
    foreign key (link_to_member) references member(member_id)
);

CREATE TABLE lapTimes
(
    raceId       INTEGER not null,
    driverId     INTEGER not null,
    lap          INTEGER not null,
    position     INTEGER,
    time         TEXT,
    milliseconds INTEGER,
    primary key (raceId, driverId, lap),
    foreign key (raceId) references races(raceId),
    foreign key (driverId) references drivers(driverId)
);

CREATE TABLE "legalities"
(
    id     INTEGER not null
        primary key autoincrement,
    format TEXT,
    status TEXT,
    uuid   TEXT
        references cards (uuid)
            on update cascade on delete cascade
);

CREATE TABLE loan
(
    loan_id    INTEGER default 0 not null
        primary key,
    account_id INTEGER           not null,
    date       DATE          not null,
    amount     INTEGER           not null,
    duration   INTEGER           not null,
    payments   REAL not null,
    status     TEXT    not null,
    foreign key (account_id) references account (account_id)
);

CREATE TABLE major
(
    major_id   TEXT
        constraint major_pk
            primary key,
    major_name TEXT,
    department TEXT,
    college    TEXT
);

CREATE TABLE "member"
(
    member_id     TEXT
        constraint member_pk
            primary key,
    first_name    TEXT,
    last_name     TEXT,
    email         TEXT,
    position      TEXT,
    t_shirt_size  TEXT,
    phone         TEXT,
    zip           INTEGER,
    link_to_major TEXT,
    foreign key (link_to_major) references major(major_id),
    foreign key (zip) references zip_code(zip_code)
);

CREATE TABLE `molecule` (
  `molecule_id` TEXT NOT NULL,
  `label` TEXT DEFAULT NULL,
  PRIMARY KEY (`molecule_id`)
);

CREATE TABLE `order`
(
    order_id   INTEGER default 0 not null
        primary key,
    account_id INTEGER           not null,
    bank_to    TEXT    not null,
    account_to INTEGER           not null,
    amount     REAL not null,
    k_symbol   TEXT    not null,
    foreign key (account_id) references account (account_id)
);

CREATE TABLE pitStops
(
    raceId       INTEGER not null,
    driverId     INTEGER not null,
    stop         INTEGER not null,
    lap          INTEGER not null,
    time         TEXT    not null,
    duration     TEXT,
    milliseconds INTEGER,
    primary key (raceId, driverId, stop),
    foreign key (raceId) references races(raceId),
    foreign key (driverId) references drivers(driverId)
);

CREATE TABLE postHistory
(
    Id                INTEGER          not null UNIQUE
        primary key,
    PostHistoryTypeId INTEGER          null,
    PostId            INTEGER          null,
    RevisionGUID      TEXT null,
    CreationDate      DATETIME     null,
    UserId            INTEGER          null,
    Text              TEXT     null,
    Comment           TEXT         null,
    UserDisplayName   TEXT null,
        foreign key (PostId) references posts (Id)
            on update cascade on delete cascade,
        foreign key (UserId) references users (Id)
            on update cascade on delete cascade
);

CREATE TABLE postLinks
(
    Id            INTEGER      not null
        primary key,
    CreationDate  DATETIME null,
    PostId        INTEGER      null,
    RelatedPostId INTEGER      null,
    LinkTypeId    INTEGER      null,
        foreign key (PostId) references posts (Id)
            on update cascade on delete cascade,
        foreign key (RelatedPostId) references posts (Id)
            on update cascade on delete cascade
);

CREATE TABLE posts
(
    Id                    INTEGER          not null UNIQUE
        primary key,
    PostTypeId            INTEGER          null,
    AcceptedAnswerId      INTEGER          null,
    CreaionDate           DATETIME     null,
    Score                 INTEGER          null,
    ViewCount             INTEGER          null,
    Body                  TEXT     null,
    OwnerUserId           INTEGER          null,
    LasActivityDate       DATETIME     null,
    Title                 TEXT null,
    Tags                  TEXT null,
    AnswerCount           INTEGER          null,
    CommentCount          INTEGER          null,
    FavoriteCount         INTEGER          null,
    LastEditorUserId      INTEGER          null,
    LastEditDate          DATETIME     null,
    CommunityOwnedDate    DATETIME    null,
    ParentId              INTEGER          null,
    ClosedDate            DATETIME     null,
    OwnerDisplayName      TEXT null,
    LastEditorDisplayName TEXT null,
        foreign key (LastEditorUserId) references users (Id)
            on update cascade on delete cascade,
        foreign key (OwnerUserId) references users (Id)
            on update cascade on delete cascade,
        foreign key (ParentId) references posts (Id)
            on update cascade on delete cascade
);

CREATE TABLE products
(
    ProductID   INTEGER   UNIQUE      not null
        primary key,
    Description TEXT null
);

CREATE TABLE publisher
(
    id             INTEGER not null
            primary key,
    publisher_name TEXT default NULL
);

CREATE TABLE qualifying
(
    qualifyId     INTEGER
        primary key autoincrement,
    raceId        INTEGER default 0 not null,
    driverId      INTEGER default 0 not null,
    constructorId INTEGER default 0 not null,
    number        INTEGER default 0 not null,
    position      INTEGER,
    q1            TEXT,
    q2            TEXT,
    q3            TEXT,
    foreign key (raceId) references races(raceId),
    foreign key (driverId) references drivers(driverId),
    foreign key (constructorId) references constructors(constructorId)
);

CREATE TABLE race
(
    id   INTEGER not null
            primary key,
    race TEXT default NULL
);

CREATE TABLE races
(
    raceId    INTEGER
        primary key autoincrement,
    year      INTEGER default 0            not null,
    round     INTEGER default 0            not null,
    circuitId INTEGER default 0            not null,
    name      TEXT    default ''           not null,
    date      DATE    default '0000-00-00' not null,
    time      TEXT,
    url       TEXT unique,
    foreign key (year) references seasons(year),
    foreign key (circuitId) references circuits(circuitId)
);

CREATE TABLE results
(
    resultId        INTEGER
        primary key autoincrement,
    raceId          INTEGER default 0  not null,
    driverId        INTEGER default 0  not null,
    constructorId   INTEGER default 0  not null,
    number          INTEGER,
    grid            INTEGER default 0  not null,
    position        INTEGER,
    positionText    TEXT    default '' not null,
    positionOrder   INTEGER default 0  not null,
    points          REAL   default 0  not null,
    laps            INTEGER default 0  not null,
    time            TEXT,
    milliseconds    INTEGER,
    fastestLap      INTEGER,
    rank            INTEGER default 0,
    fastestLapTime  TEXT,
    fastestLapSpeed TEXT,
    statusId        INTEGER default 0  not null,
    foreign key (raceId) references races(raceId),
    foreign key (driverId) references drivers(driverId),
    foreign key (constructorId) references constructors(constructorId),
    foreign key (statusId) references status(statusId)
);

CREATE TABLE "rulings"
(
    id   INTEGER not null
        primary key autoincrement,
    date DATE,
    text TEXT,
    uuid TEXT
        references cards (uuid)
            on update cascade on delete cascade
);

CREATE TABLE satscores
(
    cds         TEXT not null
        primary key,
    rtype       TEXT  not null,
    sname       TEXT null,
    dname       TEXT null,
    cname       TEXT null,
    enroll12    INTEGER         not null,
    NumTstTakr  INTEGER          not null,
    AvgScrRead  INTEGER          null,
    AvgScrMath  INTEGER          null,
    AvgScrWrite INTEGER          null,
    NumGE1500   INTEGER          null,
--     PctGE1500   double      null,
        foreign key (cds) references schools (CDSCode)
);

CREATE TABLE schools
(
    CDSCode     TEXT not null
        primary key,
    NCESDist    TEXT  null,
    NCESSchool  TEXT  null,
    StatusType  TEXT  not null,
    County      TEXT not null,
    District    TEXT not null,
    School      TEXT null,
    Street      TEXT null,
    StreetAbr   TEXT null,
    City        TEXT null,
    Zip         TEXT null,
    State       TEXT  null,
    MailStreet  TEXT null,
    MailStrAbr  TEXT null,
    MailCity    TEXT null,
    MailZip     TEXT null,
    MailState   TEXT  null,
    Phone       TEXT null,
    Ext         TEXT  null,
    Website     TEXT null,
    OpenDate    DATE        null,
    ClosedDate  DATE        null,
    Charter     INTEGER    null,
    CharterNum  TEXT  null,
    FundingType TEXT null,
    DOC         TEXT  not null,
    DOCType     TEXT not null,
    SOC         TEXT  null,
    SOCType     TEXT null,
    EdOpsCode   TEXT  null,
    EdOpsName   TEXT null,
    EILCode     TEXT  null,
    EILName     TEXT null,
    GSoffered   TEXT null,
    GSserved    TEXT  null,
    Virtual     TEXT  null,
    Magnet      INTEGER   null,
    Latitude    REAL      null,
    Longitude   REAL      null,
    AdmFName1   TEXT null,
    AdmLName1   TEXT null,
    AdmEmail1   TEXT null,
    AdmFName2   TEXT null,
    AdmLName2   TEXT null,
    AdmEmail2   TEXT null,
    AdmFName3   TEXT  null,
    AdmLName3   TEXT null,
    AdmEmail3   TEXT null,
    LastUpdate  DATE        not null
);

CREATE TABLE seasons
(
    year INTEGER default 0  not null
        primary key,
    url  TEXT    default '' not null
        unique
);

CREATE TABLE "set_translations"
(
    id          INTEGER not null
        primary key autoincrement,
    language    TEXT,
    setCode     TEXT
        references sets (code)
            on update cascade on delete cascade,
    translation TEXT
);

CREATE TABLE "sets"
(
    id               INTEGER           not null
        primary key autoincrement,
    baseSetSize      INTEGER,
    block            TEXT,
    booster          TEXT,
    code             TEXT              not null
        unique,
    isFoilOnly       INTEGER default 0 not null,
    isForeignOnly    INTEGER default 0 not null,
    isNonFoilOnly    INTEGER default 0 not null,
    isOnlineOnly     INTEGER default 0 not null,
    isPartialPreview INTEGER default 0 not null,
    keyruneCode      TEXT,
    mcmId            INTEGER,
    mcmIdExtras      INTEGER,
    mcmName          TEXT,
    mtgoCode         TEXT,
    name             TEXT,
    parentCode       TEXT,
    releaseDate      DATE,
    tcgplayerGroupId INTEGER,
    totalSetSize     INTEGER,
    type             TEXT
);

CREATE TABLE status
(
    statusId INTEGER
        primary key autoincrement,
    status   TEXT default '' not null
);

CREATE TABLE superhero
(
    id             INTEGER not null
            primary key,
    superhero_name TEXT default NULL,
    full_name      TEXT default NULL,
    gender_id      INTEGER          default NULL,
    eye_colour_id  INTEGER          default NULL,
    hair_colour_id INTEGER          default NULL,
    skin_colour_id INTEGER          default NULL,
    race_id        INTEGER          default NULL,
    publisher_id   INTEGER          default NULL,
    alignment_id   INTEGER          default NULL,
    height_cm      INTEGER          default NULL,
    weight_kg      INTEGER          default NULL,
    foreign key (alignment_id) references alignment(id),
    foreign key (eye_colour_id) references colour(id),
    foreign key (gender_id) references gender(id),
    foreign key (hair_colour_id) references colour(id),
    foreign key (publisher_id) references publisher(id),
    foreign key (race_id) references race(id),
    foreign key (skin_colour_id) references colour(id)
);

CREATE TABLE superpower
(
    id         INTEGER not null
            primary key,
    power_name TEXT default NULL
);

CREATE TABLE tags
(
    Id            INTEGER          not null
        primary key,
    TagName       TEXT null,
    Count         INTEGER          null,
    ExcerptPostId INTEGER          null,
    WikiPostId    INTEGER          null,
    foreign key (ExcerptPostId) references posts (Id)
        on update cascade on delete cascade
);

CREATE TABLE trans
(
    trans_id   INTEGER default 0    not null
        primary key,
    account_id INTEGER default 0    not null,
    date       DATE             not null,
    type       TEXT       not null,
    operation  TEXT      null,
    amount     INTEGER              not null,
    balance    INTEGER             not null,
    k_symbol   TEXT      null,
    bank       TEXT       null,
    account    INTEGER          null,
    foreign key (account_id) references account (account_id)
);

CREATE TABLE "transactions_1k"
(
    TransactionID INTEGER
        primary key autoincrement,
    Date          DATE,
    Time          TEXT,
    CustomerID    INTEGER,
    CardID        INTEGER,
    GasStationID  INTEGER,
    ProductID     INTEGER,
    Amount        INTEGER,
    Price         REAL
);

CREATE TABLE users
(
    Id              INTEGER          not null UNIQUE
        primary key,
    Reputation      INTEGER          null,
    CreationDate    DATETIME     null,
    DisplayName     TEXT null,
    LastAccessDate  DATETIME     null,
    WebsiteUrl      TEXT null,
    Location        TEXT null,
    AboutMe         TEXT     null,
    Views           INTEGER          null,
    UpVotes         INTEGER          null,
    DownVotes       INTEGER          null,
    AccountId       INTEGER          null,
    Age             INTEGER          null,
    ProfileImageUrl TEXT null
);

CREATE TABLE votes
(
    Id           INTEGER  not null
        primary key,
    PostId       INTEGER  null,
    VoteTypeId   INTEGER  null,
    CreationDate DATE null,
    UserId       INTEGER  null,
    BountyAmount INTEGER  null,
        foreign key (PostId) references posts (Id)
            on update cascade on delete cascade,
        foreign key (UserId) references users (Id)
            on update cascade on delete cascade
);

CREATE TABLE "yearmonth"
(
    CustomerID  INTEGER not null
        references customers
            on update cascade on delete cascade
        references customers,
    Date        TEXT    not null,
    Consumption REAL,
    primary key (Date, CustomerID)
);

CREATE TABLE zip_code
(
    zip_code    INTEGER
        constraint zip_code_pk
            primary key,
    type        TEXT,
    city        TEXT,
    county      TEXT,
    state       TEXT,
    short_state TEXT
);

CREATE VIEW `Country_join_League` AS
SELECT
  `Country`.`id` AS `Country_id`,
  `Country`.`name` AS `Country_name`,
  `League`.`id` AS `League_id`,
  `League`.`country_id`,
  `League`.`name` AS `League_name`
FROM `Country`
JOIN `League` ON `Country`.`id` = `League`.`country_id`;

CREATE VIEW `Country_join_Match_join_TEAM` AS
SELECT
  `Country`.`id` AS `Country_id`,
  `Country`.`name`,
  `Match`.`id` AS `Match_id`,
  `Match`.`country_id`,
  `Match`.`league_id`,
  `Match`.`season`,
  `Match`.`stage`,
  `Match`.`date`,
  `Match`.`match_api_id`,
  `Match`.`home_team_api_id`,
  `Match`.`away_team_api_id`,
  `Match`.`home_team_goal`,
  `Match`.`away_team_goal`,
  `Match`.`home_player_X1`,
  `Match`.`home_player_X2`,
  `Match`.`home_player_X3`,
  `Match`.`home_player_X4`,
  `Match`.`home_player_X5`,
  `Match`.`home_player_X6`,
  `Match`.`home_player_X7`,
  `Match`.`home_player_X8`,
  `Match`.`home_player_X9`,
  `Match`.`home_player_X10`,
  `Match`.`home_player_X11`,
  `Match`.`away_player_X1`,
  `Match`.`away_player_X2`,
  `Match`.`away_player_X3`,
  `Match`.`away_player_X4`,
  `Match`.`away_player_X5`,
  `Match`.`away_player_X6`,
  `Match`.`away_player_X7`,
  `Match`.`away_player_X8`,
  `Match`.`away_player_X9`,
  `Match`.`away_player_X10`,
  `Match`.`away_player_X11`,
  `Match`.`home_player_Y1`,
  `Match`.`home_player_Y2`,
  `Match`.`home_player_Y3`,
  `Match`.`home_player_Y4`,
  `Match`.`home_player_Y5`,
  `Match`.`home_player_Y6`,
  `Match`.`home_player_Y7`,
  `Match`.`home_player_Y8`,
  `Match`.`home_player_Y9`,
  `Match`.`home_player_Y10`,
  `Match`.`home_player_Y11`,
  `Match`.`away_player_Y1`,
  `Match`.`away_player_Y2`,
  `Match`.`away_player_Y3`,
  `Match`.`away_player_Y4`,
  `Match`.`away_player_Y5`,
  `Match`.`away_player_Y6`,
  `Match`.`away_player_Y7`,
  `Match`.`away_player_Y8`,
  `Match`.`away_player_Y9`,
  `Match`.`away_player_Y10`,
  `Match`.`away_player_Y11`,
  `Match`.`home_player_1`,
  `Match`.`home_player_2`,
  `Match`.`home_player_3`,
  `Match`.`home_player_4`,
  `Match`.`home_player_5`,
  `Match`.`home_player_6`,
  `Match`.`home_player_7`,
  `Match`.`home_player_8`,
  `Match`.`home_player_9`,
  `Match`.`home_player_10`,
  `Match`.`home_player_11`,
  `Match`.`away_player_1`,
  `Match`.`away_player_2`,
  `Match`.`away_player_3`,
  `Match`.`away_player_4`,
  `Match`.`away_player_5`,
  `Match`.`away_player_6`,
  `Match`.`away_player_7`,
  `Match`.`away_player_8`,
  `Match`.`away_player_9`,
  `Match`.`away_player_10`,
  `Match`.`away_player_11`,
  `Match`.`goal`,
  `Match`.`shoton`,
  `Match`.`shotoff`,
  `Match`.`foulcommit`,
  `Match`.`card`,
  `Match`.`cross`,
  `Match`.`corner`,
  `Match`.`possession`,
  `Match`.`B365H`,
  `Match`.`B365D`,
  `Match`.`B365A`,
  `Match`.`BWH`,
  `Match`.`BWD`,
  `Match`.`BWA`,
  `Match`.`IWH`,
  `Match`.`IWD`,
  `Match`.`IWA`,
  `Match`.`LBH`,
  `Match`.`LBD`,
  `Match`.`LBA`,
  `Match`.`PSH`,
  `Match`.`PSD`,
  `Match`.`PSA`,
  `Match`.`WHH`,
  `Match`.`WHD`,
  `Match`.`WHA`,
  `Match`.`SJH`,
  `Match`.`SJD`,
  `Match`.`SJA`,
  `Match`.`VCH`,
  `Match`.`VCD`,
  `Match`.`VCA`,
  `Match`.`GBH`,
  `Match`.`GBD`,
  `Match`.`GBA`,
  `Match`.`BSH`,
  `Match`.`BSD`,
  `Match`.`BSA`,
  `TEAM`.`id` AS `TEAM_id`,
  `TEAM`.`team_api_id`,
  `TEAM`.`team_fifa_api_id`,
  `TEAM`.`team_long_name`,
  `TEAM`.`team_short_name`
FROM `Match`
JOIN `Team` ON `Match`.`away_team_api_id` = `Team`.`team_api_id`
JOIN `Country` ON `Match`.`country_id` = `Country`.`id`;

CREATE VIEW `Examination_join_Laboratory` AS
SELECT
  `Examination`.`ID` AS `Examination_ID`,
  `Examination`.`Examination Date`,
  `Examination`.`aCL IgG`,
  `Examination`.`aCL IgM`,
  `Examination`.`ANA`,
  `Examination`.`ANA Pattern`,
  `Examination`.`aCL IgA`,
  `Examination`.`Diagnosis`,
  `Examination`.`KCT`,
  `Examination`.`RVVT`,
  `Examination`.`LAC`,
  `Examination`.`Symptoms`,
  `Examination`.`Thrombosis`,
  `Laboratory`.`ID` AS `Laboratory_ID`,
  `Laboratory`.`Date`,
  `Laboratory`.`GOT`,
  `Laboratory`.`GPT`,
  `Laboratory`.`LDH`,
  `Laboratory`.`ALP`,
  `Laboratory`.`TP`,
  `Laboratory`.`ALB`,
  `Laboratory`.`UA`,
  `Laboratory`.`UN`,
  `Laboratory`.`CRE`,
  `Laboratory`.`T-BIL`,
  `Laboratory`.`T-CHO`,
  `Laboratory`.`TG`,
  `Laboratory`.`CPK`,
  `Laboratory`.`GLU`,
  `Laboratory`.`WBC`,
  `Laboratory`.`RBC`,
  `Laboratory`.`HGB`,
  `Laboratory`.`HCT`,
  `Laboratory`.`PLT`,
  `Laboratory`.`PT`,
  `Laboratory`.`APTT`,
  `Laboratory`.`FG`,
  `Laboratory`.`PIC`,
  `Laboratory`.`TAT`,
  `Laboratory`.`TAT2`,
  `Laboratory`.`U-PRO`,
  `Laboratory`.`IGG`,
  `Laboratory`.`IGA`,
  `Laboratory`.`IGM`,
  `Laboratory`.`CRP`,
  `Laboratory`.`RA`,
  `Laboratory`.`RF`,
  `Laboratory`.`C3`,
  `Laboratory`.`C4`,
  `Laboratory`.`RNP`,
  `Laboratory`.`SM`,
  `Laboratory`.`SC170`,
  `Laboratory`.`SSA`,
  `Laboratory`.`SSB`,
  `Laboratory`.`CENTROMEA`,
  `Laboratory`.`DNA`,
  `Laboratory`.`DNA-II`
FROM `Examination`
JOIN `Laboratory` ON `Examination`.`ID` = `Laboratory`.`ID`;

CREATE VIEW `Examination_join_Laboratory_join_Patient` AS
SELECT
  `Examination`.`ID` AS `Examination_ID`,
  `Examination`.`Examination Date`,
  `Examination`.`aCL IgG`,
  `Examination`.`aCL IgM`,
  `Examination`.`ANA`,
  `Examination`.`ANA Pattern`,
  `Examination`.`aCL IgA`,
  `Examination`.`Diagnosis` AS `Examination_Diagnosis`,
  `Examination`.`KCT`,
  `Examination`.`RVVT`,
  `Examination`.`LAC`,
  `Examination`.`Symptoms`,
  `Examination`.`Thrombosis`,
  `Laboratory`.`ID` AS `Laboratory_ID`,
  `Laboratory`.`Date`,
  `Laboratory`.`GOT`,
  `Laboratory`.`GPT`,
  `Laboratory`.`LDH`,
  `Laboratory`.`ALP`,
  `Laboratory`.`TP`,
  `Laboratory`.`ALB`,
  `Laboratory`.`UA`,
  `Laboratory`.`UN`,
  `Laboratory`.`CRE`,
  `Laboratory`.`T-BIL`,
  `Laboratory`.`T-CHO`,
  `Laboratory`.`TG`,
  `Laboratory`.`CPK`,
  `Laboratory`.`GLU`,
  `Laboratory`.`WBC`,
  `Laboratory`.`RBC`,
  `Laboratory`.`HGB`,
  `Laboratory`.`HCT`,
  `Laboratory`.`PLT`,
  `Laboratory`.`PT`,
  `Laboratory`.`APTT`,
  `Laboratory`.`FG`,
  `Laboratory`.`PIC`,
  `Laboratory`.`TAT`,
  `Laboratory`.`TAT2`,
  `Laboratory`.`U-PRO`,
  `Laboratory`.`IGG`,
  `Laboratory`.`IGA`,
  `Laboratory`.`IGM`,
  `Laboratory`.`CRP`,
  `Laboratory`.`RA`,
  `Laboratory`.`RF`,
  `Laboratory`.`C3`,
  `Laboratory`.`C4`,
  `Laboratory`.`RNP`,
  `Laboratory`.`SM`,
  `Laboratory`.`SC170`,
  `Laboratory`.`SSA`,
  `Laboratory`.`SSB`,
  `Laboratory`.`CENTROMEA`,
  `Laboratory`.`DNA`,
  `Laboratory`.`DNA-II`,
  `Patient`.`ID` AS `Patient_ID`,
  `Patient`.`SEX`,
  `Patient`.`Birthday`,
  `Patient`.`Description`,
  `Patient`.`First Date`,
  `Patient`.`Admission`,
  `Patient`.`Diagnosis` AS `Patient_Diagnosis`
FROM `Examination`
JOIN `Patient` ON `Examination`.`ID` = `Patient`.`ID`
JOIN `Laboratory` ON `Examination`.`ID` = `Laboratory`.`ID`;

CREATE VIEW `Examination_join_Patient` AS
SELECT
  `Examination`.`ID` AS `Examination_ID`,
  `Examination`.`Examination Date`,
  `Examination`.`aCL IgG`,
  `Examination`.`aCL IgM`,
  `Examination`.`ANA`,
  `Examination`.`ANA Pattern`,
  `Examination`.`aCL IgA`,
  `Examination`.`Diagnosis` AS `Examination_Diagnosis`,
  `Examination`.`KCT`,
  `Examination`.`RVVT`,
  `Examination`.`LAC`,
  `Examination`.`Symptoms`,
  `Examination`.`Thrombosis`,
  `Patient`.`ID` AS `Patient_ID`,
  `Patient`.`SEX`,
  `Patient`.`Birthday`,
  `Patient`.`Description`,
  `Patient`.`First Date`,
  `Patient`.`Admission`,
  `Patient`.`Diagnosis` AS `Patient_Diagnosis`
FROM `Examination`
JOIN `Patient` ON `Examination`.`ID` = `Patient`.`ID`;

CREATE VIEW `Laboratory_join_Patient` AS
SELECT
  `Laboratory`.`ID` AS `Laboratory_ID`,
  `Laboratory`.`Date`,
  `Laboratory`.`GOT`,
  `Laboratory`.`GPT`,
  `Laboratory`.`LDH`,
  `Laboratory`.`ALP`,
  `Laboratory`.`TP`,
  `Laboratory`.`ALB`,
  `Laboratory`.`UA`,
  `Laboratory`.`UN`,
  `Laboratory`.`CRE`,
  `Laboratory`.`T-BIL`,
  `Laboratory`.`T-CHO`,
  `Laboratory`.`TG`,
  `Laboratory`.`CPK`,
  `Laboratory`.`GLU`,
  `Laboratory`.`WBC`,
  `Laboratory`.`RBC`,
  `Laboratory`.`HGB`,
  `Laboratory`.`HCT`,
  `Laboratory`.`PLT`,
  `Laboratory`.`PT`,
  `Laboratory`.`APTT`,
  `Laboratory`.`FG`,
  `Laboratory`.`PIC`,
  `Laboratory`.`TAT`,
  `Laboratory`.`TAT2`,
  `Laboratory`.`U-PRO`,
  `Laboratory`.`IGG`,
  `Laboratory`.`IGA`,
  `Laboratory`.`IGM`,
  `Laboratory`.`CRP`,
  `Laboratory`.`RA`,
  `Laboratory`.`RF`,
  `Laboratory`.`C3`,
  `Laboratory`.`C4`,
  `Laboratory`.`RNP`,
  `Laboratory`.`SM`,
  `Laboratory`.`SC170`,
  `Laboratory`.`SSA`,
  `Laboratory`.`SSB`,
  `Laboratory`.`CENTROMEA`,
  `Laboratory`.`DNA`,
  `Laboratory`.`DNA-II`,
  `Patient`.`ID` AS `Patient_ID`,
  `Patient`.`SEX`,
  `Patient`.`Birthday`,
  `Patient`.`Description`,
  `Patient`.`First Date`,
  `Patient`.`Admission`,
  `Patient`.`Diagnosis`
FROM `Laboratory`
JOIN `Patient` ON `Laboratory`.`ID` = `Patient`.`ID`;

CREATE VIEW `League_join_Match` AS
SELECT
  `League`.`id` AS `League_id`,
  `League`.`country_id` AS `League_country_id`,
  `League`.`name`,
  `Match`.`id` AS `Match_id`,
  `Match`.`country_id` AS `Match_country_id`,
  `Match`.`league_id`,
  `Match`.`season`,
  `Match`.`stage`,
  `Match`.`date`,
  `Match`.`match_api_id`,
  `Match`.`home_team_api_id`,
  `Match`.`away_team_api_id`,
  `Match`.`home_team_goal`,
  `Match`.`away_team_goal`,
  `Match`.`home_player_X1`,
  `Match`.`home_player_X2`,
  `Match`.`home_player_X3`,
  `Match`.`home_player_X4`,
  `Match`.`home_player_X5`,
  `Match`.`home_player_X6`,
  `Match`.`home_player_X7`,
  `Match`.`home_player_X8`,
  `Match`.`home_player_X9`,
  `Match`.`home_player_X10`,
  `Match`.`home_player_X11`,
  `Match`.`away_player_X1`,
  `Match`.`away_player_X2`,
  `Match`.`away_player_X3`,
  `Match`.`away_player_X4`,
  `Match`.`away_player_X5`,
  `Match`.`away_player_X6`,
  `Match`.`away_player_X7`,
  `Match`.`away_player_X8`,
  `Match`.`away_player_X9`,
  `Match`.`away_player_X10`,
  `Match`.`away_player_X11`,
  `Match`.`home_player_Y1`,
  `Match`.`home_player_Y2`,
  `Match`.`home_player_Y3`,
  `Match`.`home_player_Y4`,
  `Match`.`home_player_Y5`,
  `Match`.`home_player_Y6`,
  `Match`.`home_player_Y7`,
  `Match`.`home_player_Y8`,
  `Match`.`home_player_Y9`,
  `Match`.`home_player_Y10`,
  `Match`.`home_player_Y11`,
  `Match`.`away_player_Y1`,
  `Match`.`away_player_Y2`,
  `Match`.`away_player_Y3`,
  `Match`.`away_player_Y4`,
  `Match`.`away_player_Y5`,
  `Match`.`away_player_Y6`,
  `Match`.`away_player_Y7`,
  `Match`.`away_player_Y8`,
  `Match`.`away_player_Y9`,
  `Match`.`away_player_Y10`,
  `Match`.`away_player_Y11`,
  `Match`.`home_player_1`,
  `Match`.`home_player_2`,
  `Match`.`home_player_3`,
  `Match`.`home_player_4`,
  `Match`.`home_player_5`,
  `Match`.`home_player_6`,
  `Match`.`home_player_7`,
  `Match`.`home_player_8`,
  `Match`.`home_player_9`,
  `Match`.`home_player_10`,
  `Match`.`home_player_11`,
  `Match`.`away_player_1`,
  `Match`.`away_player_2`,
  `Match`.`away_player_3`,
  `Match`.`away_player_4`,
  `Match`.`away_player_5`,
  `Match`.`away_player_6`,
  `Match`.`away_player_7`,
  `Match`.`away_player_8`,
  `Match`.`away_player_9`,
  `Match`.`away_player_10`,
  `Match`.`away_player_11`,
  `Match`.`goal`,
  `Match`.`shoton`,
  `Match`.`shotoff`,
  `Match`.`foulcommit`,
  `Match`.`card`,
  `Match`.`cross`,
  `Match`.`corner`,
  `Match`.`possession`,
  `Match`.`B365H`,
  `Match`.`B365D`,
  `Match`.`B365A`,
  `Match`.`BWH`,
  `Match`.`BWD`,
  `Match`.`BWA`,
  `Match`.`IWH`,
  `Match`.`IWD`,
  `Match`.`IWA`,
  `Match`.`LBH`,
  `Match`.`LBD`,
  `Match`.`LBA`,
  `Match`.`PSH`,
  `Match`.`PSD`,
  `Match`.`PSA`,
  `Match`.`WHH`,
  `Match`.`WHD`,
  `Match`.`WHA`,
  `Match`.`SJH`,
  `Match`.`SJD`,
  `Match`.`SJA`,
  `Match`.`VCH`,
  `Match`.`VCD`,
  `Match`.`VCA`,
  `Match`.`GBH`,
  `Match`.`GBD`,
  `Match`.`GBA`,
  `Match`.`BSH`,
  `Match`.`BSD`,
  `Match`.`BSA`
FROM `Match`
JOIN `League` ON `Match`.`league_id` = `League`.`id`;

CREATE VIEW `Player_join_Player_Attributes` AS
SELECT
  `Player`.`id` AS `Player_id`,
  `Player`.`player_api_id` AS `Player_player_api_id`,
  `Player`.`player_name`,
  `Player`.`player_fifa_api_id` AS `Player_player_fifa_api_id`,
  `Player`.`birthday`,
  `Player`.`height`,
  `Player`.`weight`,
  `Player_Attributes`.`id` AS `Player_Attributes_id`,
  `Player_Attributes`.`player_fifa_api_id` AS `Player_Attributes_player_fifa_api_id`,
  `Player_Attributes`.`player_api_id` AS `Player_Attributes_player_api_id`,
  `Player_Attributes`.`date`,
  `Player_Attributes`.`overall_rating`,
  `Player_Attributes`.`potential`,
  `Player_Attributes`.`preferred_foot`,
  `Player_Attributes`.`attacking_work_rate`,
  `Player_Attributes`.`defensive_work_rate`,
  `Player_Attributes`.`crossing`,
  `Player_Attributes`.`finishing`,
  `Player_Attributes`.`heading_accuracy`,
  `Player_Attributes`.`short_passing`,
  `Player_Attributes`.`volleys`,
  `Player_Attributes`.`dribbling`,
  `Player_Attributes`.`curve`,
  `Player_Attributes`.`free_kick_accuracy`,
  `Player_Attributes`.`long_passing`,
  `Player_Attributes`.`ball_control`,
  `Player_Attributes`.`acceleration`,
  `Player_Attributes`.`sprint_speed`,
  `Player_Attributes`.`agility`,
  `Player_Attributes`.`reactions`,
  `Player_Attributes`.`balance`,
  `Player_Attributes`.`shot_power`,
  `Player_Attributes`.`jumping`,
  `Player_Attributes`.`stamina`,
  `Player_Attributes`.`strength`,
  `Player_Attributes`.`long_shots`,
  `Player_Attributes`.`aggression`,
  `Player_Attributes`.`interceptions`,
  `Player_Attributes`.`positioning`,
  `Player_Attributes`.`vision`,
  `Player_Attributes`.`penalties`,
  `Player_Attributes`.`marking`,
  `Player_Attributes`.`standing_tackle`,
  `Player_Attributes`.`sliding_tackle`,
  `Player_Attributes`.`gk_diving`,
  `Player_Attributes`.`gk_handling`,
  `Player_Attributes`.`gk_kicking`,
  `Player_Attributes`.`gk_positioning`,
  `Player_Attributes`.`gk_reflexes`
FROM `Player_Attributes`
JOIN `Player` ON `Player_Attributes`.`player_api_id` = `Player`.`player_api_id`;

CREATE VIEW `Team_join_Team_Attributes` AS
SELECT
  `Team`.`id` AS `Team_id`,
  `Team`.`team_api_id` AS `Team_team_api_id`,
  `Team`.`team_fifa_api_id` AS `Team_team_fifa_api_id`,
  `Team`.`team_long_name`,
  `Team`.`team_short_name`,
  `Team_Attributes`.`id` AS `Team_Attributes_id`,
  `Team_Attributes`.`team_fifa_api_id` AS `Team_Attributes_team_fifa_api_id`,
  `Team_Attributes`.`team_api_id` AS `Team_Attributes_team_api_id`,
  `Team_Attributes`.`date`,
  `Team_Attributes`.`buildUpPlaySpeed`,
  `Team_Attributes`.`buildUpPlaySpeedClass`,
  `Team_Attributes`.`buildUpPlayDribbling`,
  `Team_Attributes`.`buildUpPlayDribblingClass`,
  `Team_Attributes`.`buildUpPlayPassing`,
  `Team_Attributes`.`buildUpPlayPassingClass`,
  `Team_Attributes`.`buildUpPlayPositioningClass`,
  `Team_Attributes`.`chanceCreationPassing`,
  `Team_Attributes`.`chanceCreationPassingClass`,
  `Team_Attributes`.`chanceCreationCrossing`,
  `Team_Attributes`.`chanceCreationCrossingClass`,
  `Team_Attributes`.`chanceCreationShooting`,
  `Team_Attributes`.`chanceCreationShootingClass`,
  `Team_Attributes`.`chanceCreationPositioningClass`,
  `Team_Attributes`.`defencePressure`,
  `Team_Attributes`.`defencePressureClass`,
  `Team_Attributes`.`defenceAggression`,
  `Team_Attributes`.`defenceAggressionClass`,
  `Team_Attributes`.`defenceTeamWidth`,
  `Team_Attributes`.`defenceTeamWidthClass`,
  `Team_Attributes`.`defenceDefenderLineClass`
FROM `Team`
JOIN `Team_Attributes` ON `Team`.`team_api_id` = `Team_Attributes`.`team_api_id`;

CREATE VIEW `account_join_client_join_disp_join_district` AS
SELECT
  `account`.`account_id` AS `account_account_id`,
  `account`.`district_id` AS `account_district_id`,
  `account`.`frequency`,
  `account`.`date`,
  `client`.`client_id` AS `client_client_id`,
  `client`.`gender`,
  `client`.`birth_date`,
  `client`.`district_id` AS `client_district_id`,
  `disp`.`disp_id`,
  `disp`.`client_id` AS `disp_client_id`,
  `disp`.`account_id` AS `disp_account_id`,
  `disp`.`type`,
  `district`.`district_id` AS `district_district_id`,
  `district`.`A2`,
  `district`.`A3`,
  `district`.`A4`,
  `district`.`A5`,
  `district`.`A6`,
  `district`.`A7`,
  `district`.`A8`,
  `district`.`A9`,
  `district`.`A10`,
  `district`.`A11`,
  `district`.`A12`,
  `district`.`A13`,
  `district`.`A14`,
  `district`.`A15`,
  `district`.`A16`
FROM `account`
JOIN `district` ON `account`.`district_id` = `district`.`district_id`
JOIN `disp` ON `account`.`account_id` = `disp`.`account_id`
JOIN `client` ON `client`.`district_id` = `district`.`district_id`;

CREATE VIEW `account_join_client_join_disp_join_loan` AS
SELECT
  `account`.`account_id` AS `account_account_id`,
  `account`.`district_id` AS `account_district_id`,
  `account`.`frequency`,
  `account`.`date` AS `account_date`,
  `client`.`client_id` AS `client_client_id`,
  `client`.`gender`,
  `client`.`birth_date`,
  `client`.`district_id` AS `client_district_id`,
  `disp`.`disp_id`,
  `disp`.`client_id` AS `disp_client_id`,
  `disp`.`account_id` AS `disp_account_id`,
  `disp`.`type`,
  `loan`.`loan_id`,
  `loan`.`account_id` AS `loan_account_id`,
  `loan`.`date` AS `loan_date`,
  `loan`.`amount`,
  `loan`.`duration`,
  `loan`.`payments`,
  `loan`.`status`
FROM `account`
JOIN `loan` ON `account`.`account_id` = `loan`.`account_id`
JOIN `disp` ON `account`.`account_id` = `disp`.`account_id`
JOIN `client` ON `client`.`client_id` = `disp`.`client_id`;

CREATE VIEW `account_join_district` AS
SELECT
  `account`.`account_id`,
  `account`.`district_id` AS `account_district_id`,
  `account`.`frequency`,
  `account`.`date`,
  `district`.`district_id` AS `district_district_id`,
  `district`.`A2`,
  `district`.`A3`,
  `district`.`A4`,
  `district`.`A5`,
  `district`.`A6`,
  `district`.`A7`,
  `district`.`A8`,
  `district`.`A9`,
  `district`.`A10`,
  `district`.`A11`,
  `district`.`A12`,
  `district`.`A13`,
  `district`.`A14`,
  `district`.`A15`,
  `district`.`A16`
FROM `account`
JOIN `district` ON `account`.`district_id` = `district`.`district_id`;

CREATE VIEW `account_join_district_join_loan` AS
SELECT
  `account`.`account_id` AS `account_account_id`,
  `account`.`district_id` AS `account_district_id`,
  `account`.`frequency`,
  `account`.`date` AS `account_date`,
  `district`.`district_id` AS `district_district_id`,
  `district`.`A2`,
  `district`.`A3`,
  `district`.`A4`,
  `district`.`A5`,
  `district`.`A6`,
  `district`.`A7`,
  `district`.`A8`,
  `district`.`A9`,
  `district`.`A10`,
  `district`.`A11`,
  `district`.`A12`,
  `district`.`A13`,
  `district`.`A14`,
  `district`.`A15`,
  `district`.`A16`,
  `loan`.`loan_id`,
  `loan`.`account_id` AS `loan_account_id`,
  `loan`.`date` AS `loan_date`,
  `loan`.`amount`,
  `loan`.`duration`,
  `loan`.`payments`,
  `loan`.`status`
FROM `account`
JOIN `district` ON `account`.`district_id` = `district`.`district_id`
JOIN `loan` ON `account`.`Account_id` = `loan`.`Account_id`;

CREATE VIEW `account_join_district_join_order` AS
SELECT
  `account`.`account_id` AS `account_account_id`,
  `account`.`district_id` AS `account_district_id`,
  `account`.`frequency`,
  `account`.`date`,
  `district`.`district_id` AS `district_district_id`,
  `district`.`A2`,
  `district`.`A3`,
  `district`.`A4`,
  `district`.`A5`,
  `district`.`A6`,
  `district`.`A7`,
  `district`.`A8`,
  `district`.`A9`,
  `district`.`A10`,
  `district`.`A11`,
  `district`.`A12`,
  `district`.`A13`,
  `district`.`A14`,
  `district`.`A15`,
  `district`.`A16`,
  `order`.`order_id`,
  `order`.`account_id` AS `order_account_id`,
  `order`.`bank_to`,
  `order`.`account_to`,
  `order`.`amount`,
  `order`.`k_symbol`
FROM `account`
JOIN `district` ON `account`.`district_id` = `district`.`district_id`
JOIN `order` ON `order`.`account_id` = `account`.`account_id`;

CREATE VIEW `account_join_district_join_trans` AS
SELECT
  `account`.`account_id` AS `account_account_id`,
  `account`.`district_id` AS `account_district_id`,
  `account`.`frequency`,
  `account`.`date` AS `account_date`,
  `district`.`district_id` AS `district_district_id`,
  `district`.`A2`,
  `district`.`A3`,
  `district`.`A4`,
  `district`.`A5`,
  `district`.`A6`,
  `district`.`A7`,
  `district`.`A8`,
  `district`.`A9`,
  `district`.`A10`,
  `district`.`A11`,
  `district`.`A12`,
  `district`.`A13`,
  `district`.`A14`,
  `district`.`A15`,
  `district`.`A16`,
  `trans`.`trans_id`,
  `trans`.`account_id` AS `trans_account_id`,
  `trans`.`date` AS `trans_date`,
  `trans`.`type`,
  `trans`.`operation`,
  `trans`.`amount`,
  `trans`.`balance`,
  `trans`.`k_symbol`,
  `trans`.`bank`,
  `trans`.`account`
FROM `account`
JOIN `district` ON `account`.`district_id` = `district`.`district_id`
JOIN `trans` ON `account`.`account_id` = `trans`.`account_id`;

CREATE VIEW `account_join_loan` AS
SELECT
  `account`.`account_id` AS `account_account_id`,
  `account`.`district_id`,
  `account`.`frequency`,
  `account`.`date` AS `account_date`,
  `loan`.`loan_id`,
  `loan`.`account_id` AS `loan_account_id`,
  `loan`.`date` AS `loan_date`,
  `loan`.`amount`,
  `loan`.`duration`,
  `loan`.`payments`,
  `loan`.`status`
FROM `account`
JOIN `loan` ON `account`.`account_id` = `loan`.`account_id`;

CREATE VIEW `alignment_join_publisher_join_superhero` AS
SELECT
  `alignment`.`id` AS `alignment_id`,
  `alignment`.`alignment`,
  `publisher`.`id` AS `publisher_id`,
  `publisher`.`publisher_name`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `publisher` ON `superhero`.`publisher_id` = `publisher`.`id`
JOIN `alignment` ON `superhero`.`alignment_id` = `alignment`.`id`;

CREATE VIEW `atom_join_bond` AS
SELECT
  `atom`.`atom_id`,
  `atom`.`molecule_id` AS `atom_molecule_id`,
  `atom`.`element`,
  `bond`.`bond_id`,
  `bond`.`molecule_id` AS `bond_molecule_id`,
  `bond`.`bond_type`
FROM `atom`
JOIN `bond` ON `atom`.`molecule_id` = `bond`.`molecule_id`;

CREATE VIEW `atom_join_bond_join_connected` AS
SELECT
  `atom`.`atom_id` AS `atom_atom_id`,
  `atom`.`molecule_id` AS `atom_molecule_id`,
  `atom`.`element`,
  `bond`.`bond_id` AS `bond_bond_id`,
  `bond`.`molecule_id` AS `bond_molecule_id`,
  `bond`.`bond_type`,
  `connected`.`atom_id` AS `connected_atom_id`,
  `connected`.`atom_id2`,
  `connected`.`bond_id` AS `connected_bond_id`
FROM `atom`
JOIN `bond` ON `atom`.`molecule_id` = `bond`.`molecule_id`
JOIN `connected` ON `atom`.`atom_id` = `connected`.`atom_id`;

CREATE VIEW `atom_join_bond_join_molecule` AS
SELECT
  `atom`.`atom_id`,
  `atom`.`molecule_id` AS `atom_molecule_id`,
  `atom`.`element`,
  `bond`.`bond_id`,
  `bond`.`molecule_id` AS `bond_molecule_id`,
  `bond`.`bond_type`,
  `molecule`.`molecule_id` AS `molecule_molecule_id`,
  `molecule`.`label`
FROM `molecule`
JOIN `bond` ON `molecule`.`molecule_id` = `bond`.`molecule_id`
JOIN `atom` ON `molecule`.`molecule_id` = `atom`.`molecule_id`;

CREATE VIEW `atom_join_connected` AS
SELECT
  `atom`.`atom_id` AS `atom_atom_id`,
  `atom`.`molecule_id`,
  `atom`.`element`,
  `connected`.`atom_id` AS `connected_atom_id`,
  `connected`.`atom_id2`,
  `connected`.`bond_id`
FROM `connected`
JOIN `atom` ON `connected`.`atom_id2` = `atom`.`atom_id`;

CREATE VIEW `atom_join_molecule` AS
SELECT
  `atom`.`atom_id`,
  `atom`.`molecule_id` AS `atom_molecule_id`,
  `atom`.`element`,
  `molecule`.`molecule_id` AS `molecule_molecule_id`,
  `molecule`.`label`
FROM `atom`
JOIN `molecule` ON `atom`.`molecule_id` = `molecule`.`molecule_id`;

CREATE VIEW `attendance_join_event` AS
SELECT
  `attendance`.`link_to_event`,
  `attendance`.`link_to_member`,
  `event`.`event_id`,
  `event`.`event_name`,
  `event`.`event_date`,
  `event`.`type`,
  `event`.`notes`,
  `event`.`location`,
  `event`.`status`
FROM `attendance`
JOIN `event` ON `attendance`.`link_to_event` = `event`.`event_id`;

CREATE VIEW `attendance_join_event_join_member` AS
SELECT
  `attendance`.`link_to_event`,
  `attendance`.`link_to_member`,
  `event`.`event_id`,
  `event`.`event_name`,
  `event`.`event_date`,
  `event`.`type`,
  `event`.`notes`,
  `event`.`location`,
  `event`.`status`,
  `member`.`member_id`,
  `member`.`first_name`,
  `member`.`last_name`,
  `member`.`email`,
  `member`.`position`,
  `member`.`t_shirt_size`,
  `member`.`phone`,
  `member`.`zip`,
  `member`.`link_to_major`
FROM `member`
JOIN `attendance` ON `member`.`member_id` = `attendance`.`link_to_member`
JOIN `event` ON `event`.`event_id` = `attendance`.`link_to_event`;

CREATE VIEW `attribute_join_gender_join_hero_attribute_join_superhero` AS
SELECT
  `attribute`.`id` AS `attribute_id`,
  `attribute`.`attribute_name`,
  `gender`.`id` AS `gender_id`,
  `gender`.`gender`,
  `hero_attribute`.`hero_id`,
  `hero_attribute`.`attribute_id`,
  `hero_attribute`.`attribute_value`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `gender` ON `superhero`.`gender_id` = `gender`.`id`
JOIN `hero_attribute` ON `superhero`.`id` = `hero_attribute`.`hero_id`
JOIN `attribute` ON `hero_attribute`.`attribute_id` = `attribute`.`id`;

CREATE VIEW `attribute_join_hero_attribute_join_publisher_join_superhero` AS
SELECT
  `attribute`.`id` AS `attribute_id`,
  `attribute`.`attribute_name`,
  `hero_attribute`.`hero_id`,
  `hero_attribute`.`attribute_id`,
  `hero_attribute`.`attribute_value`,
  `publisher`.`id` AS `publisher_id`,
  `publisher`.`publisher_name`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `publisher` ON `superhero`.`publisher_id` = `publisher`.`id`
JOIN `hero_attribute` ON `superhero`.`id` = `hero_attribute`.`hero_id`
JOIN `attribute` ON `hero_attribute`.`attribute_id` = `attribute`.`id`;

CREATE VIEW `attribute_join_hero_attribute_join_superhero` AS
SELECT
  `attribute`.`id` AS `attribute_id`,
  `attribute`.`attribute_name`,
  `hero_attribute`.`hero_id`,
  `hero_attribute`.`attribute_id`,
  `hero_attribute`.`attribute_value`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `hero_attribute` ON `superhero`.`id` = `hero_attribute`.`hero_id`
JOIN `attribute` ON `hero_attribute`.`attribute_id` = `attribute`.`id`;

CREATE VIEW `badges_join_users` AS
SELECT
  `badges`.`Id` AS `badges_Id`,
  `badges`.`UserId`,
  `badges`.`Name`,
  `badges`.`Date`,
  `users`.`Id` AS `users_Id`,
  `users`.`Reputation`,
  `users`.`CreationDate`,
  `users`.`DisplayName`,
  `users`.`LastAccessDate`,
  `users`.`WebsiteUrl`,
  `users`.`Location`,
  `users`.`AboutMe`,
  `users`.`Views`,
  `users`.`UpVotes`,
  `users`.`DownVotes`,
  `users`.`AccountId`,
  `users`.`Age`,
  `users`.`ProfileImageUrl`
FROM `badges`
JOIN `users` ON `badges`.`UserId` = `users`.`Id`;

CREATE VIEW `bond_join_connected` AS
SELECT
  `bond`.`bond_id` AS `bond_bond_id`,
  `bond`.`molecule_id`,
  `bond`.`bond_type`,
  `connected`.`atom_id`,
  `connected`.`atom_id2`,
  `connected`.`bond_id` AS `connected_bond_id`
FROM `connected`
JOIN `bond` ON `connected`.`bond_id` = `bond`.`bond_id`;

CREATE VIEW `bond_join_molecule` AS
SELECT
  `bond`.`bond_id`,
  `bond`.`molecule_id` AS `bond_molecule_id`,
  `bond`.`bond_type`,
  `molecule`.`molecule_id` AS `molecule_molecule_id`,
  `molecule`.`label`
FROM `bond`
JOIN `molecule` ON `bond`.`molecule_id` = `molecule`.`molecule_id`;

CREATE VIEW `budget_join_event` AS
SELECT
  `budget`.`budget_id`,
  `budget`.`category`,
  `budget`.`spent`,
  `budget`.`remaining`,
  `budget`.`amount`,
  `budget`.`event_status`,
  `budget`.`link_to_event`,
  `event`.`event_id`,
  `event`.`event_name`,
  `event`.`event_date`,
  `event`.`type`,
  `event`.`notes`,
  `event`.`location`,
  `event`.`status`
FROM `budget`
JOIN `event` ON `budget`.`link_to_event` = `event`.`event_id`;

CREATE VIEW `budget_join_event_join_expense` AS
SELECT
  `budget`.`budget_id`,
  `budget`.`category`,
  `budget`.`spent`,
  `budget`.`remaining`,
  `budget`.`amount`,
  `budget`.`event_status`,
  `budget`.`link_to_event`,
  `event`.`event_id`,
  `event`.`event_name`,
  `event`.`event_date`,
  `event`.`type`,
  `event`.`notes`,
  `event`.`location`,
  `event`.`status`,
  `expense`.`expense_id`,
  `expense`.`expense_description`,
  `expense`.`expense_date`,
  `expense`.`cost`,
  `expense`.`approved`,
  `expense`.`link_to_member`,
  `expense`.`link_to_budget`
FROM `budget`
JOIN `event` ON `budget`.`link_to_event` = `event`.`event_id`
JOIN `expense` ON `budget`.`budget_id` = `expense`.`link_to_budget`;

CREATE VIEW `card_join_client_join_disp` AS
SELECT
  `card`.`card_id`,
  `card`.`disp_id` AS `card_disp_id`,
  `card`.`type` AS `card_type`,
  `card`.`issued`,
  `client`.`client_id` AS `client_client_id`,
  `client`.`gender`,
  `client`.`birth_date`,
  `client`.`district_id`,
  `disp`.`disp_id` AS `disp_disp_id`,
  `disp`.`client_id` AS `disp_client_id`,
  `disp`.`account_id`,
  `disp`.`type` AS `disp_type`
FROM `disp`
JOIN `client` ON `disp`.`client_id` = `client`.`client_id`
JOIN `card` ON `disp`.`disp_id` = `card`.`disp_id`;

CREATE VIEW `cards_join_foreign_data` AS
SELECT
  `cards`.`id` AS `cards_id`,
  `cards`.`artist`,
  `cards`.`asciiName`,
  `cards`.`availability`,
  `cards`.`borderColor`,
  `cards`.`cardKingdomFoilId`,
  `cards`.`cardKingdomId`,
  `cards`.`colorIdentity`,
  `cards`.`colorIndicator`,
  `cards`.`colors`,
  `cards`.`convertedManaCost`,
  `cards`.`duelDeck`,
  `cards`.`edhrecRank`,
  `cards`.`faceConvertedManaCost`,
  `cards`.`faceName`,
  `cards`.`flavorName`,
  `cards`.`flavorText` AS `cards_flavorText`,
  `cards`.`frameEffects`,
  `cards`.`frameVersion`,
  `cards`.`hand`,
  `cards`.`hasAlternativeDeckLimit`,
  `cards`.`hasContentWarning`,
  `cards`.`hasFoil`,
  `cards`.`hasNonFoil`,
  `cards`.`isAlternative`,
  `cards`.`isFullArt`,
  `cards`.`isOnlineOnly`,
  `cards`.`isOversized`,
  `cards`.`isPromo`,
  `cards`.`isReprint`,
  `cards`.`isReserved`,
  `cards`.`isStarter`,
  `cards`.`isStorySpotlight`,
  `cards`.`isTextless`,
  `cards`.`isTimeshifted`,
  `cards`.`keywords`,
  `cards`.`layout`,
  `cards`.`leadershipSkills`,
  `cards`.`life`,
  `cards`.`loyalty`,
  `cards`.`manaCost`,
  `cards`.`mcmId`,
  `cards`.`mcmMetaId`,
  `cards`.`mtgArenaId`,
  `cards`.`mtgjsonV4Id`,
  `cards`.`mtgoFoilId`,
  `cards`.`mtgoId`,
  `cards`.`multiverseId`,
  `cards`.`name` AS `cards_name`,
  `cards`.`number`,
  `cards`.`originalReleaseDate`,
  `cards`.`originalText`,
  `cards`.`originalType`,
  `cards`.`otherFaceIds`,
  `cards`.`power`,
  `cards`.`printings`,
  `cards`.`promoTypes`,
  `cards`.`purchaseUrls`,
  `cards`.`rarity`,
  `cards`.`scryfallId`,
  `cards`.`scryfallIllustrationId`,
  `cards`.`scryfallOracleId`,
  `cards`.`setCode`,
  `cards`.`side`,
  `cards`.`subtypes`,
  `cards`.`supertypes`,
  `cards`.`tcgplayerProductId`,
  `cards`.`text` AS `cards_text`,
  `cards`.`toughness`,
  `cards`.`type` AS `cards_type`,
  `cards`.`types`,
  `cards`.`uuid` AS `cards_uuid`,
  `cards`.`variations`,
  `cards`.`watermark`,
  `foreign_data`.`id` AS `foreign_data_id`,
  `foreign_data`.`flavorText` AS `foreign_data_flavorText`,
  `foreign_data`.`language`,
  `foreign_data`.`multiverseid`,
  `foreign_data`.`name` AS `foreign_data_name`,
  `foreign_data`.`text` AS `foreign_data_text`,
  `foreign_data`.`type` AS `foreign_data_type`,
  `foreign_data`.`uuid` AS `foreign_data_uuid`
FROM `cards`
JOIN `foreign_data` ON `cards`.`uuid` = `foreign_data`.`uuid`;

CREATE VIEW `cards_join_legalities` AS
SELECT
  `cards`.`id` AS `cards_id`,
  `cards`.`artist`,
  `cards`.`asciiName`,
  `cards`.`availability`,
  `cards`.`borderColor`,
  `cards`.`cardKingdomFoilId`,
  `cards`.`cardKingdomId`,
  `cards`.`colorIdentity`,
  `cards`.`colorIndicator`,
  `cards`.`colors`,
  `cards`.`convertedManaCost`,
  `cards`.`duelDeck`,
  `cards`.`edhrecRank`,
  `cards`.`faceConvertedManaCost`,
  `cards`.`faceName`,
  `cards`.`flavorName`,
  `cards`.`flavorText`,
  `cards`.`frameEffects`,
  `cards`.`frameVersion`,
  `cards`.`hand`,
  `cards`.`hasAlternativeDeckLimit`,
  `cards`.`hasContentWarning`,
  `cards`.`hasFoil`,
  `cards`.`hasNonFoil`,
  `cards`.`isAlternative`,
  `cards`.`isFullArt`,
  `cards`.`isOnlineOnly`,
  `cards`.`isOversized`,
  `cards`.`isPromo`,
  `cards`.`isReprint`,
  `cards`.`isReserved`,
  `cards`.`isStarter`,
  `cards`.`isStorySpotlight`,
  `cards`.`isTextless`,
  `cards`.`isTimeshifted`,
  `cards`.`keywords`,
  `cards`.`layout`,
  `cards`.`leadershipSkills`,
  `cards`.`life`,
  `cards`.`loyalty`,
  `cards`.`manaCost`,
  `cards`.`mcmId`,
  `cards`.`mcmMetaId`,
  `cards`.`mtgArenaId`,
  `cards`.`mtgjsonV4Id`,
  `cards`.`mtgoFoilId`,
  `cards`.`mtgoId`,
  `cards`.`multiverseId`,
  `cards`.`name`,
  `cards`.`number`,
  `cards`.`originalReleaseDate`,
  `cards`.`originalText`,
  `cards`.`originalType`,
  `cards`.`otherFaceIds`,
  `cards`.`power`,
  `cards`.`printings`,
  `cards`.`promoTypes`,
  `cards`.`purchaseUrls`,
  `cards`.`rarity`,
  `cards`.`scryfallId`,
  `cards`.`scryfallIllustrationId`,
  `cards`.`scryfallOracleId`,
  `cards`.`setCode`,
  `cards`.`side`,
  `cards`.`subtypes`,
  `cards`.`supertypes`,
  `cards`.`tcgplayerProductId`,
  `cards`.`text`,
  `cards`.`toughness`,
  `cards`.`type`,
  `cards`.`types`,
  `cards`.`uuid` AS `cards_uuid`,
  `cards`.`variations`,
  `cards`.`watermark`,
  `legalities`.`id` AS `legalities_id`,
  `legalities`.`format`,
  `legalities`.`status`,
  `legalities`.`uuid` AS `legalities_uuid`
FROM `cards`
JOIN `legalities` ON `cards`.`uuid` = `legalities`.`uuid`;

CREATE VIEW `cards_join_rulings` AS
SELECT
  `cards`.`id` AS `cards_id`,
  `cards`.`artist`,
  `cards`.`asciiName`,
  `cards`.`availability`,
  `cards`.`borderColor`,
  `cards`.`cardKingdomFoilId`,
  `cards`.`cardKingdomId`,
  `cards`.`colorIdentity`,
  `cards`.`colorIndicator`,
  `cards`.`colors`,
  `cards`.`convertedManaCost`,
  `cards`.`duelDeck`,
  `cards`.`edhrecRank`,
  `cards`.`faceConvertedManaCost`,
  `cards`.`faceName`,
  `cards`.`flavorName`,
  `cards`.`flavorText`,
  `cards`.`frameEffects`,
  `cards`.`frameVersion`,
  `cards`.`hand`,
  `cards`.`hasAlternativeDeckLimit`,
  `cards`.`hasContentWarning`,
  `cards`.`hasFoil`,
  `cards`.`hasNonFoil`,
  `cards`.`isAlternative`,
  `cards`.`isFullArt`,
  `cards`.`isOnlineOnly`,
  `cards`.`isOversized`,
  `cards`.`isPromo`,
  `cards`.`isReprint`,
  `cards`.`isReserved`,
  `cards`.`isStarter`,
  `cards`.`isStorySpotlight`,
  `cards`.`isTextless`,
  `cards`.`isTimeshifted`,
  `cards`.`keywords`,
  `cards`.`layout`,
  `cards`.`leadershipSkills`,
  `cards`.`life`,
  `cards`.`loyalty`,
  `cards`.`manaCost`,
  `cards`.`mcmId`,
  `cards`.`mcmMetaId`,
  `cards`.`mtgArenaId`,
  `cards`.`mtgjsonV4Id`,
  `cards`.`mtgoFoilId`,
  `cards`.`mtgoId`,
  `cards`.`multiverseId`,
  `cards`.`name`,
  `cards`.`number`,
  `cards`.`originalReleaseDate`,
  `cards`.`originalText`,
  `cards`.`originalType`,
  `cards`.`otherFaceIds`,
  `cards`.`power`,
  `cards`.`printings`,
  `cards`.`promoTypes`,
  `cards`.`purchaseUrls`,
  `cards`.`rarity`,
  `cards`.`scryfallId`,
  `cards`.`scryfallIllustrationId`,
  `cards`.`scryfallOracleId`,
  `cards`.`setCode`,
  `cards`.`side`,
  `cards`.`subtypes`,
  `cards`.`supertypes`,
  `cards`.`tcgplayerProductId`,
  `cards`.`text` AS `cards_text`,
  `cards`.`toughness`,
  `cards`.`type`,
  `cards`.`types`,
  `cards`.`uuid` AS `cards_uuid`,
  `cards`.`variations`,
  `cards`.`watermark`,
  `rulings`.`id` AS `rulings_id`,
  `rulings`.`date`,
  `rulings`.`text` AS `rulings_text`,
  `rulings`.`uuid` AS `rulings_uuid`
FROM `cards`
JOIN `rulings` ON `cards`.`uuid` = `rulings`.`uuid`;

CREATE VIEW `cards_join_set_translations` AS
SELECT
  `cards`.`id` AS `cards_id`,
  `cards`.`artist`,
  `cards`.`asciiName`,
  `cards`.`availability`,
  `cards`.`borderColor`,
  `cards`.`cardKingdomFoilId`,
  `cards`.`cardKingdomId`,
  `cards`.`colorIdentity`,
  `cards`.`colorIndicator`,
  `cards`.`colors`,
  `cards`.`convertedManaCost`,
  `cards`.`duelDeck`,
  `cards`.`edhrecRank`,
  `cards`.`faceConvertedManaCost`,
  `cards`.`faceName`,
  `cards`.`flavorName`,
  `cards`.`flavorText`,
  `cards`.`frameEffects`,
  `cards`.`frameVersion`,
  `cards`.`hand`,
  `cards`.`hasAlternativeDeckLimit`,
  `cards`.`hasContentWarning`,
  `cards`.`hasFoil`,
  `cards`.`hasNonFoil`,
  `cards`.`isAlternative`,
  `cards`.`isFullArt`,
  `cards`.`isOnlineOnly`,
  `cards`.`isOversized`,
  `cards`.`isPromo`,
  `cards`.`isReprint`,
  `cards`.`isReserved`,
  `cards`.`isStarter`,
  `cards`.`isStorySpotlight`,
  `cards`.`isTextless`,
  `cards`.`isTimeshifted`,
  `cards`.`keywords`,
  `cards`.`layout`,
  `cards`.`leadershipSkills`,
  `cards`.`life`,
  `cards`.`loyalty`,
  `cards`.`manaCost`,
  `cards`.`mcmId`,
  `cards`.`mcmMetaId`,
  `cards`.`mtgArenaId`,
  `cards`.`mtgjsonV4Id`,
  `cards`.`mtgoFoilId`,
  `cards`.`mtgoId`,
  `cards`.`multiverseId`,
  `cards`.`name`,
  `cards`.`number`,
  `cards`.`originalReleaseDate`,
  `cards`.`originalText`,
  `cards`.`originalType`,
  `cards`.`otherFaceIds`,
  `cards`.`power`,
  `cards`.`printings`,
  `cards`.`promoTypes`,
  `cards`.`purchaseUrls`,
  `cards`.`rarity`,
  `cards`.`scryfallId`,
  `cards`.`scryfallIllustrationId`,
  `cards`.`scryfallOracleId`,
  `cards`.`setCode` AS `cards_setCode`,
  `cards`.`side`,
  `cards`.`subtypes`,
  `cards`.`supertypes`,
  `cards`.`tcgplayerProductId`,
  `cards`.`text`,
  `cards`.`toughness`,
  `cards`.`type`,
  `cards`.`types`,
  `cards`.`uuid`,
  `cards`.`variations`,
  `cards`.`watermark`,
  `set_translations`.`id` AS `set_translations_id`,
  `set_translations`.`language`,
  `set_translations`.`setCode` AS `set_translations_setCode`,
  `set_translations`.`translation`
FROM `set_translations`
JOIN `cards` ON `set_translations`.`setCode` = `cards`.`setCode`;

CREATE VIEW `cards_join_sets` AS
SELECT
  `cards`.`id` AS `cards_id`,
  `cards`.`artist`,
  `cards`.`asciiName`,
  `cards`.`availability`,
  `cards`.`borderColor`,
  `cards`.`cardKingdomFoilId`,
  `cards`.`cardKingdomId`,
  `cards`.`colorIdentity`,
  `cards`.`colorIndicator`,
  `cards`.`colors`,
  `cards`.`convertedManaCost`,
  `cards`.`duelDeck`,
  `cards`.`edhrecRank`,
  `cards`.`faceConvertedManaCost`,
  `cards`.`faceName`,
  `cards`.`flavorName`,
  `cards`.`flavorText`,
  `cards`.`frameEffects`,
  `cards`.`frameVersion`,
  `cards`.`hand`,
  `cards`.`hasAlternativeDeckLimit`,
  `cards`.`hasContentWarning`,
  `cards`.`hasFoil`,
  `cards`.`hasNonFoil`,
  `cards`.`isAlternative`,
  `cards`.`isFullArt`,
  `cards`.`isOnlineOnly` AS `cards_isOnlineOnly`,
  `cards`.`isOversized`,
  `cards`.`isPromo`,
  `cards`.`isReprint`,
  `cards`.`isReserved`,
  `cards`.`isStarter`,
  `cards`.`isStorySpotlight`,
  `cards`.`isTextless`,
  `cards`.`isTimeshifted`,
  `cards`.`keywords`,
  `cards`.`layout`,
  `cards`.`leadershipSkills`,
  `cards`.`life`,
  `cards`.`loyalty`,
  `cards`.`manaCost`,
  `cards`.`mcmId` AS `cards_mcmId`,
  `cards`.`mcmMetaId`,
  `cards`.`mtgArenaId`,
  `cards`.`mtgjsonV4Id`,
  `cards`.`mtgoFoilId`,
  `cards`.`mtgoId`,
  `cards`.`multiverseId`,
  `cards`.`name` AS `cards_name`,
  `cards`.`number`,
  `cards`.`originalReleaseDate`,
  `cards`.`originalText`,
  `cards`.`originalType`,
  `cards`.`otherFaceIds`,
  `cards`.`power`,
  `cards`.`printings`,
  `cards`.`promoTypes`,
  `cards`.`purchaseUrls`,
  `cards`.`rarity`,
  `cards`.`scryfallId`,
  `cards`.`scryfallIllustrationId`,
  `cards`.`scryfallOracleId`,
  `cards`.`setCode`,
  `cards`.`side`,
  `cards`.`subtypes`,
  `cards`.`supertypes`,
  `cards`.`tcgplayerProductId`,
  `cards`.`text`,
  `cards`.`toughness`,
  `cards`.`type` AS `cards_type`,
  `cards`.`types`,
  `cards`.`uuid`,
  `cards`.`variations`,
  `cards`.`watermark`,
  `sets`.`id` AS `sets_id`,
  `sets`.`baseSetSize`,
  `sets`.`block`,
  `sets`.`booster`,
  `sets`.`code`,
  `sets`.`isFoilOnly`,
  `sets`.`isForeignOnly`,
  `sets`.`isNonFoilOnly`,
  `sets`.`isOnlineOnly` AS `sets_isOnlineOnly`,
  `sets`.`isPartialPreview`,
  `sets`.`keyruneCode`,
  `sets`.`mcmId` AS `sets_mcmId`,
  `sets`.`mcmIdExtras`,
  `sets`.`mcmName`,
  `sets`.`mtgoCode`,
  `sets`.`name` AS `sets_name`,
  `sets`.`parentCode`,
  `sets`.`releaseDate`,
  `sets`.`tcgplayerGroupId`,
  `sets`.`totalSetSize`,
  `sets`.`type` AS `sets_type`
FROM `sets`
JOIN `cards` ON `sets`.`code` = `cards`.`setCode`;

CREATE VIEW `circuits_join_pitStops_join_races_join_results` AS
SELECT
  `circuits`.`circuitId` AS `circuits_circuitId`,
  `circuits`.`circuitRef`,
  `circuits`.`name` AS `circuits_name`,
  `circuits`.`location`,
  `circuits`.`country`,
  `circuits`.`lat`,
  `circuits`.`lng`,
  `circuits`.`alt`,
  `circuits`.`url` AS `circuits_url`,
  `pitStops`.`raceId` AS `pitStops_raceId`,
  `pitStops`.`driverId` AS `pitStops_driverId`,
  `pitStops`.`stop`,
  `pitStops`.`lap`,
  `pitStops`.`time` AS `pitStops_time`,
  `pitStops`.`duration`,
  `pitStops`.`milliseconds` AS `pitStops_milliseconds`,
  `races`.`raceId` AS `races_raceId`,
  `races`.`year`,
  `races`.`round`,
  `races`.`circuitId` AS `races_circuitId`,
  `races`.`name` AS `races_name`,
  `races`.`date`,
  `races`.`time` AS `races_time`,
  `races`.`url` AS `races_url`,
  `results`.`resultId`,
  `results`.`raceId` AS `results_raceId`,
  `results`.`driverId` AS `results_driverId`,
  `results`.`constructorId`,
  `results`.`number`,
  `results`.`grid`,
  `results`.`position`,
  `results`.`positionText`,
  `results`.`positionOrder`,
  `results`.`points`,
  `results`.`laps`,
  `results`.`time` AS `results_time`,
  `results`.`milliseconds` AS `results_milliseconds`,
  `results`.`fastestLap`,
  `results`.`rank`,
  `results`.`fastestLapTime`,
  `results`.`fastestLapSpeed`,
  `results`.`statusId`
FROM `results`
JOIN `races` ON `results`.`raceId` = `races`.`raceId`
JOIN `circuits` ON `races`.`circuitId` = `circuits`.`circuitId`
JOIN `pitStops` ON `pitStops`.`raceId` = `races`.`raceId`;

CREATE VIEW `circuits_join_races` AS
SELECT
  `circuits`.`circuitId` AS `circuits_circuitId`,
  `circuits`.`circuitRef`,
  `circuits`.`name` AS `circuits_name`,
  `circuits`.`location`,
  `circuits`.`country`,
  `circuits`.`lat`,
  `circuits`.`lng`,
  `circuits`.`alt`,
  `circuits`.`url` AS `circuits_url`,
  `races`.`raceId`,
  `races`.`year`,
  `races`.`round`,
  `races`.`circuitId` AS `races_circuitId`,
  `races`.`name` AS `races_name`,
  `races`.`date`,
  `races`.`time`,
  `races`.`url` AS `races_url`
FROM `races`
JOIN `circuits` ON `races`.`circuitId` = `circuits`.`circuitId`;

CREATE VIEW `client_join_district` AS
SELECT
  `client`.`client_id`,
  `client`.`gender`,
  `client`.`birth_date`,
  `client`.`district_id` AS `client_district_id`,
  `district`.`district_id` AS `district_district_id`,
  `district`.`A2`,
  `district`.`A3`,
  `district`.`A4`,
  `district`.`A5`,
  `district`.`A6`,
  `district`.`A7`,
  `district`.`A8`,
  `district`.`A9`,
  `district`.`A10`,
  `district`.`A11`,
  `district`.`A12`,
  `district`.`A13`,
  `district`.`A14`,
  `district`.`A15`,
  `district`.`A16`
FROM `client`
JOIN `district` ON `client`.`district_id` = `district`.`district_id`;

CREATE VIEW `colour_join_gender_join_race_join_superhero` AS
SELECT
  `colour`.`id` AS `colour_id`,
  `colour`.`colour`,
  `gender`.`id` AS `gender_id`,
  `gender`.`gender`,
  `race`.`id` AS `race_id`,
  `race`.`race`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `colour` ON `superhero`.`skin_colour_id` = `colour`.`id`
JOIN `race` ON `superhero`.`race_id` = `race`.`id`
JOIN `gender` ON `superhero`.`gender_id` = `gender`.`id`;

CREATE VIEW `colour_join_superhero` AS
SELECT
  `colour`.`id` AS `colour_id`,
  `colour`.`colour`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `colour` ON `superhero`.`skin_colour_id` = `colour`.`id`;

CREATE VIEW `comments_join_posts` AS
SELECT
  `comments`.`Id` AS `comments_Id`,
  `comments`.`PostId`,
  `comments`.`Score` AS `comments_Score`,
  `comments`.`Text`,
  `comments`.`CreationDate`,
  `comments`.`UserId`,
  `comments`.`UserDisplayName`,
  `posts`.`Id` AS `posts_Id`,
  `posts`.`PostTypeId`,
  `posts`.`AcceptedAnswerId`,
  `posts`.`CreaionDate`,
  `posts`.`Score` AS `posts_Score`,
  `posts`.`ViewCount`,
  `posts`.`Body`,
  `posts`.`OwnerUserId`,
  `posts`.`LasActivityDate`,
  `posts`.`Title`,
  `posts`.`Tags`,
  `posts`.`AnswerCount`,
  `posts`.`CommentCount`,
  `posts`.`FavoriteCount`,
  `posts`.`LastEditorUserId`,
  `posts`.`LastEditDate`,
  `posts`.`CommunityOwnedDate`,
  `posts`.`ParentId`,
  `posts`.`ClosedDate`,
  `posts`.`OwnerDisplayName`,
  `posts`.`LastEditorDisplayName`
FROM `posts`
JOIN `comments` ON `posts`.`Id` = `comments`.`PostId`;

CREATE VIEW `comments_join_users` AS
SELECT
  `comments`.`Id` AS `comments_Id`,
  `comments`.`PostId`,
  `comments`.`Score`,
  `comments`.`Text`,
  `comments`.`CreationDate` AS `comments_CreationDate`,
  `comments`.`UserId`,
  `comments`.`UserDisplayName`,
  `users`.`Id` AS `users_Id`,
  `users`.`Reputation`,
  `users`.`CreationDate` AS `users_CreationDate`,
  `users`.`DisplayName`,
  `users`.`LastAccessDate`,
  `users`.`WebsiteUrl`,
  `users`.`Location`,
  `users`.`AboutMe`,
  `users`.`Views`,
  `users`.`UpVotes`,
  `users`.`DownVotes`,
  `users`.`AccountId`,
  `users`.`Age`,
  `users`.`ProfileImageUrl`
FROM `comments`
JOIN `users` ON `comments`.`UserId` = `users`.`Id`;

CREATE VIEW `constructorResults_join_constructors` AS
SELECT
  `constructorResults`.`constructorResultsId`,
  `constructorResults`.`raceId`,
  `constructorResults`.`constructorId` AS `constructorResults_constructorId`,
  `constructorResults`.`points`,
  `constructorResults`.`status`,
  `constructors`.`constructorId` AS `constructors_constructorId`,
  `constructors`.`constructorRef`,
  `constructors`.`name`,
  `constructors`.`nationality`,
  `constructors`.`url`
FROM `constructorResults`
JOIN `constructors` ON `constructorResults`.`constructorId` = `constructors`.`constructorId`;

CREATE VIEW `constructorStandings_join_constructors` AS
SELECT
  `constructorStandings`.`constructorStandingsId`,
  `constructorStandings`.`raceId`,
  `constructorStandings`.`constructorId` AS `constructorStandings_constructorId`,
  `constructorStandings`.`points`,
  `constructorStandings`.`position`,
  `constructorStandings`.`positionText`,
  `constructorStandings`.`wins`,
  `constructors`.`constructorId` AS `constructors_constructorId`,
  `constructors`.`constructorRef`,
  `constructors`.`name`,
  `constructors`.`nationality`,
  `constructors`.`url`
FROM `constructorStandings`
JOIN `constructors` ON `constructorStandings`.`constructorId` = `constructors`.`constructorId`;

CREATE VIEW `customers_join_yearmonth` AS
SELECT
  `customers`.`CustomerID` AS `customers_CustomerID`,
  `customers`.`Segment`,
  `customers`.`Currency`,
  `yearmonth`.`CustomerID` AS `yearmonth_CustomerID`,
  `yearmonth`.`Date`,
  `yearmonth`.`Consumption`
FROM `yearmonth`
JOIN `customers` ON `yearmonth`.`CustomerID` = `customers`.`CustomerID`;

CREATE VIEW `driverStandings_join_drivers_join_races` AS
SELECT
  `driverStandings`.`driverStandingsId`,
  `driverStandings`.`raceId` AS `driverStandings_raceId`,
  `driverStandings`.`driverId` AS `driverStandings_driverId`,
  `driverStandings`.`points`,
  `driverStandings`.`position`,
  `driverStandings`.`positionText`,
  `driverStandings`.`wins`,
  `drivers`.`driverId` AS `drivers_driverId`,
  `drivers`.`driverRef`,
  `drivers`.`number`,
  `drivers`.`code`,
  `drivers`.`forename`,
  `drivers`.`surname`,
  `drivers`.`dob`,
  `drivers`.`nationality`,
  `drivers`.`url` AS `drivers_url`,
  `races`.`raceId` AS `races_raceId`,
  `races`.`year`,
  `races`.`round`,
  `races`.`circuitId`,
  `races`.`name`,
  `races`.`date`,
  `races`.`time`,
  `races`.`url` AS `races_url`
FROM `races`
JOIN `driverStandings` ON `races`.`raceId` = `driverStandings`.`raceId`
JOIN `drivers` ON `drivers`.`driverId` = `driverStandings`.`driverId`;

CREATE VIEW `drivers_join_lapTimes` AS
SELECT
  `drivers`.`driverId` AS `drivers_driverId`,
  `drivers`.`driverRef`,
  `drivers`.`number`,
  `drivers`.`code`,
  `drivers`.`forename`,
  `drivers`.`surname`,
  `drivers`.`dob`,
  `drivers`.`nationality`,
  `drivers`.`url`,
  `lapTimes`.`raceId`,
  `lapTimes`.`driverId` AS `lapTimes_driverId`,
  `lapTimes`.`lap`,
  `lapTimes`.`position`,
  `lapTimes`.`time`,
  `lapTimes`.`milliseconds`
FROM `lapTimes`
JOIN `drivers` ON `lapTimes`.`driverId` = `drivers`.`driverId`;

CREATE VIEW `drivers_join_pitStops` AS
SELECT
  `drivers`.`driverId` AS `drivers_driverId`,
  `drivers`.`driverRef`,
  `drivers`.`number`,
  `drivers`.`code`,
  `drivers`.`forename`,
  `drivers`.`surname`,
  `drivers`.`dob`,
  `drivers`.`nationality`,
  `drivers`.`url`,
  `pitStops`.`raceId`,
  `pitStops`.`driverId` AS `pitStops_driverId`,
  `pitStops`.`stop`,
  `pitStops`.`lap`,
  `pitStops`.`time`,
  `pitStops`.`duration`,
  `pitStops`.`milliseconds`
FROM `pitStops`
JOIN `drivers` ON `pitStops`.`driverId` = `drivers`.`driverId`;

CREATE VIEW `drivers_join_qualifying` AS
SELECT
  `drivers`.`driverId` AS `drivers_driverId`,
  `drivers`.`driverRef`,
  `drivers`.`number` AS `drivers_number`,
  `drivers`.`code`,
  `drivers`.`forename`,
  `drivers`.`surname`,
  `drivers`.`dob`,
  `drivers`.`nationality`,
  `drivers`.`url`,
  `qualifying`.`qualifyId`,
  `qualifying`.`raceId`,
  `qualifying`.`driverId` AS `qualifying_driverId`,
  `qualifying`.`constructorId`,
  `qualifying`.`number` AS `qualifying_number`,
  `qualifying`.`position`,
  `qualifying`.`q1`,
  `qualifying`.`q2`,
  `qualifying`.`q3`
FROM `qualifying`
JOIN `drivers` ON `qualifying`.`driverId` = `drivers`.`driverId`;

CREATE VIEW `drivers_join_races_join_results` AS
SELECT
  `drivers`.`driverId` AS `drivers_driverId`,
  `drivers`.`driverRef`,
  `drivers`.`number` AS `drivers_number`,
  `drivers`.`code`,
  `drivers`.`forename`,
  `drivers`.`surname`,
  `drivers`.`dob`,
  `drivers`.`nationality`,
  `drivers`.`url` AS `drivers_url`,
  `races`.`raceId` AS `races_raceId`,
  `races`.`year`,
  `races`.`round`,
  `races`.`circuitId`,
  `races`.`name`,
  `races`.`date`,
  `races`.`time` AS `races_time`,
  `races`.`url` AS `races_url`,
  `results`.`resultId`,
  `results`.`raceId` AS `results_raceId`,
  `results`.`driverId` AS `results_driverId`,
  `results`.`constructorId`,
  `results`.`number` AS `results_number`,
  `results`.`grid`,
  `results`.`position`,
  `results`.`positionText`,
  `results`.`positionOrder`,
  `results`.`points`,
  `results`.`laps`,
  `results`.`time` AS `results_time`,
  `results`.`milliseconds`,
  `results`.`fastestLap`,
  `results`.`rank`,
  `results`.`fastestLapTime`,
  `results`.`fastestLapSpeed`,
  `results`.`statusId`
FROM `results`
JOIN `drivers` ON `results`.`driverId` = `drivers`.`driverId`
JOIN `races` ON `results`.`raceId` = `races`.`raceId`;

CREATE VIEW `drivers_join_results` AS
SELECT
  `drivers`.`driverId` AS `drivers_driverId`,
  `drivers`.`driverRef`,
  `drivers`.`number` AS `drivers_number`,
  `drivers`.`code`,
  `drivers`.`forename`,
  `drivers`.`surname`,
  `drivers`.`dob`,
  `drivers`.`nationality`,
  `drivers`.`url`,
  `results`.`resultId`,
  `results`.`raceId`,
  `results`.`driverId` AS `results_driverId`,
  `results`.`constructorId`,
  `results`.`number` AS `results_number`,
  `results`.`grid`,
  `results`.`position`,
  `results`.`positionText`,
  `results`.`positionOrder`,
  `results`.`points`,
  `results`.`laps`,
  `results`.`time`,
  `results`.`milliseconds`,
  `results`.`fastestLap`,
  `results`.`rank`,
  `results`.`fastestLapTime`,
  `results`.`fastestLapSpeed`,
  `results`.`statusId`
FROM `results`
JOIN `drivers` ON `results`.`driverId` = `drivers`.`driverId`;

CREATE VIEW `drivers_join_results_join_status` AS
SELECT
  `drivers`.`driverId` AS `drivers_driverId`,
  `drivers`.`driverRef`,
  `drivers`.`number` AS `drivers_number`,
  `drivers`.`code`,
  `drivers`.`forename`,
  `drivers`.`surname`,
  `drivers`.`dob`,
  `drivers`.`nationality`,
  `drivers`.`url`,
  `results`.`resultId`,
  `results`.`raceId`,
  `results`.`driverId` AS `results_driverId`,
  `results`.`constructorId`,
  `results`.`number` AS `results_number`,
  `results`.`grid`,
  `results`.`position`,
  `results`.`positionText`,
  `results`.`positionOrder`,
  `results`.`points`,
  `results`.`laps`,
  `results`.`time`,
  `results`.`milliseconds`,
  `results`.`fastestLap`,
  `results`.`rank`,
  `results`.`fastestLapTime`,
  `results`.`fastestLapSpeed`,
  `results`.`statusId` AS `results_statusId`,
  `status`.`statusId` AS `status_statusId`,
  `status`.`status`
FROM `results`
JOIN `status` ON `results`.`statusId` = `status`.`statusId`
JOIN `drivers` ON `results`.`driverId` = `drivers`.`driverId`;

CREATE VIEW `expense_join_member` AS
SELECT
  `expense`.`expense_id`,
  `expense`.`expense_description`,
  `expense`.`expense_date`,
  `expense`.`cost`,
  `expense`.`approved`,
  `expense`.`link_to_member`,
  `expense`.`link_to_budget`,
  `member`.`member_id`,
  `member`.`first_name`,
  `member`.`last_name`,
  `member`.`email`,
  `member`.`position`,
  `member`.`t_shirt_size`,
  `member`.`phone`,
  `member`.`zip`,
  `member`.`link_to_major`
FROM `member`
JOIN `expense` ON `member`.`member_id` = `expense`.`link_to_member`;

CREATE VIEW `frpm_join_satscores` AS
SELECT
  `frpm`.`CDSCode`,
  `frpm`.`Academic Year`,
  `frpm`.`County Code`,
  `frpm`.`District Code`,
  `frpm`.`School Code`,
  `frpm`.`County Name`,
  `frpm`.`District Name`,
  `frpm`.`School Name`,
  `frpm`.`District Type`,
  `frpm`.`School Type`,
  `frpm`.`Educational Option Type`,
  `frpm`.`NSLP Provision Status`,
  `frpm`.`Charter School (Y/N)`,
  `frpm`.`Charter School Number`,
  `frpm`.`Charter Funding Type`,
  `frpm`.`IRC`,
  `frpm`.`Low Grade`,
  `frpm`.`High Grade`,
  `frpm`.`Enrollment (K-12)`,
  `frpm`.`Free Meal Count (K-12)`,
  `frpm`.`Percent (%) Eligible Free (K-12)`,
  `frpm`.`FRPM Count (K-12)`,
  `frpm`.`Percent (%) Eligible FRPM (K-12)`,
  `frpm`.`Enrollment (Ages 5-17)`,
  `frpm`.`Free Meal Count (Ages 5-17)`,
  `frpm`.`Percent (%) Eligible Free (Ages 5-17)`,
  `frpm`.`FRPM Count (Ages 5-17)`,
  `frpm`.`Percent (%) Eligible FRPM (Ages 5-17)`,
  `frpm`.`2013-14 CALPADS Fall 1 Certification Status`,
  `satscores`.`cds`,
  `satscores`.`rtype`,
  `satscores`.`sname`,
  `satscores`.`dname`,
  `satscores`.`cname`,
  `satscores`.`enroll12`,
  `satscores`.`NumTstTakr`,
  `satscores`.`AvgScrRead`,
  `satscores`.`AvgScrMath`,
  `satscores`.`AvgScrWrite`,
  `satscores`.`NumGE1500`
FROM `frpm`
JOIN `satscores` ON `frpm`.`CDSCode` = `satscores`.`cds`;

CREATE VIEW `frpm_join_schools` AS
SELECT
  `frpm`.`CDSCode` AS `frpm_CDSCode`,
  `frpm`.`Academic Year`,
  `frpm`.`County Code`,
  `frpm`.`District Code`,
  `frpm`.`School Code`,
  `frpm`.`County Name`,
  `frpm`.`District Name`,
  `frpm`.`School Name`,
  `frpm`.`District Type`,
  `frpm`.`School Type`,
  `frpm`.`Educational Option Type`,
  `frpm`.`NSLP Provision Status`,
  `frpm`.`Charter School (Y/N)`,
  `frpm`.`Charter School Number`,
  `frpm`.`Charter Funding Type`,
  `frpm`.`IRC`,
  `frpm`.`Low Grade`,
  `frpm`.`High Grade`,
  `frpm`.`Enrollment (K-12)`,
  `frpm`.`Free Meal Count (K-12)`,
  `frpm`.`Percent (%) Eligible Free (K-12)`,
  `frpm`.`FRPM Count (K-12)`,
  `frpm`.`Percent (%) Eligible FRPM (K-12)`,
  `frpm`.`Enrollment (Ages 5-17)`,
  `frpm`.`Free Meal Count (Ages 5-17)`,
  `frpm`.`Percent (%) Eligible Free (Ages 5-17)`,
  `frpm`.`FRPM Count (Ages 5-17)`,
  `frpm`.`Percent (%) Eligible FRPM (Ages 5-17)`,
  `frpm`.`2013-14 CALPADS Fall 1 Certification Status`,
  `schools`.`CDSCode` AS `schools_CDSCode`,
  `schools`.`NCESDist`,
  `schools`.`NCESSchool`,
  `schools`.`StatusType`,
  `schools`.`County`,
  `schools`.`District`,
  `schools`.`School`,
  `schools`.`Street`,
  `schools`.`StreetAbr`,
  `schools`.`City`,
  `schools`.`Zip`,
  `schools`.`State`,
  `schools`.`MailStreet`,
  `schools`.`MailStrAbr`,
  `schools`.`MailCity`,
  `schools`.`MailZip`,
  `schools`.`MailState`,
  `schools`.`Phone`,
  `schools`.`Ext`,
  `schools`.`Website`,
  `schools`.`OpenDate`,
  `schools`.`ClosedDate`,
  `schools`.`Charter`,
  `schools`.`CharterNum`,
  `schools`.`FundingType`,
  `schools`.`DOC`,
  `schools`.`DOCType`,
  `schools`.`SOC`,
  `schools`.`SOCType`,
  `schools`.`EdOpsCode`,
  `schools`.`EdOpsName`,
  `schools`.`EILCode`,
  `schools`.`EILName`,
  `schools`.`GSoffered`,
  `schools`.`GSserved`,
  `schools`.`Virtual`,
  `schools`.`Magnet`,
  `schools`.`Latitude`,
  `schools`.`Longitude`,
  `schools`.`AdmFName1`,
  `schools`.`AdmLName1`,
  `schools`.`AdmEmail1`,
  `schools`.`AdmFName2`,
  `schools`.`AdmLName2`,
  `schools`.`AdmEmail2`,
  `schools`.`AdmFName3`,
  `schools`.`AdmLName3`,
  `schools`.`AdmEmail3`,
  `schools`.`LastUpdate`
FROM `frpm`
JOIN `schools` ON `frpm`.`CDSCode` = `schools`.`CDSCode`;

CREATE VIEW `gasstations_join_transactions_1k` AS
SELECT
  `gasstations`.`GasStationID` AS `gasstations_GasStationID`,
  `gasstations`.`ChainID`,
  `gasstations`.`Country`,
  `gasstations`.`Segment`,
  `transactions_1k`.`TransactionID`,
  `transactions_1k`.`Date`,
  `transactions_1k`.`Time`,
  `transactions_1k`.`CustomerID`,
  `transactions_1k`.`CardID`,
  `transactions_1k`.`GasStationID` AS `transactions_1k_GasStationID`,
  `transactions_1k`.`ProductID`,
  `transactions_1k`.`Amount`,
  `transactions_1k`.`Price`
FROM `transactions_1k`
JOIN `gasstations` ON `transactions_1k`.`GasStationID` = `gasstations`.`GasStationID`;

CREATE VIEW `hero_power_join_superhero_join_superpower` AS
SELECT
  `hero_power`.`hero_id`,
  `hero_power`.`power_id`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`,
  `superpower`.`id` AS `superpower_id`,
  `superpower`.`power_name`
FROM `superhero`
JOIN `hero_power` ON `superhero`.`id` = `hero_power`.`hero_id`
JOIN `superpower` ON `superpower`.`id` = `hero_power`.`power_id`;

CREATE VIEW `hero_power_join_superpower` AS
SELECT
  `hero_power`.`hero_id`,
  `hero_power`.`power_id`,
  `superpower`.`id`,
  `superpower`.`power_name`
FROM `hero_power`
JOIN `superpower` ON `hero_power`.`power_id` = `superpower`.`id`;

CREATE VIEW `income_join_member` AS
SELECT
  `income`.`income_id`,
  `income`.`date_received`,
  `income`.`amount`,
  `income`.`source`,
  `income`.`notes`,
  `income`.`link_to_member`,
  `member`.`member_id`,
  `member`.`first_name`,
  `member`.`last_name`,
  `member`.`email`,
  `member`.`position`,
  `member`.`t_shirt_size`,
  `member`.`phone`,
  `member`.`zip`,
  `member`.`link_to_major`
FROM `member`
JOIN `income` ON `member`.`member_id` = `income`.`link_to_member`;

CREATE VIEW `major_join_member` AS
SELECT
  `major`.`major_id`,
  `major`.`major_name`,
  `major`.`department`,
  `major`.`college`,
  `member`.`member_id`,
  `member`.`first_name`,
  `member`.`last_name`,
  `member`.`email`,
  `member`.`position`,
  `member`.`t_shirt_size`,
  `member`.`phone`,
  `member`.`zip`,
  `member`.`link_to_major`
FROM `member`
JOIN `major` ON `member`.`link_to_major` = `major`.`major_id`;

CREATE VIEW `member_join_zip_code` AS
SELECT
  `member`.`member_id`,
  `member`.`first_name`,
  `member`.`last_name`,
  `member`.`email`,
  `member`.`position`,
  `member`.`t_shirt_size`,
  `member`.`phone`,
  `member`.`zip`,
  `member`.`link_to_major`,
  `zip_code`.`zip_code`,
  `zip_code`.`type`,
  `zip_code`.`city`,
  `zip_code`.`county`,
  `zip_code`.`state`,
  `zip_code`.`short_state`
FROM `member`
JOIN `zip_code` ON `member`.`zip` = `zip_code`.`zip_code`;

CREATE VIEW `postHistory_join_posts_join_users` AS
SELECT
  `postHistory`.`Id` AS `postHistory_Id`,
  `postHistory`.`PostHistoryTypeId`,
  `postHistory`.`PostId`,
  `postHistory`.`RevisionGUID`,
  `postHistory`.`CreationDate` AS `postHistory_CreationDate`,
  `postHistory`.`UserId`,
  `postHistory`.`Text`,
  `postHistory`.`Comment`,
  `postHistory`.`UserDisplayName`,
  `posts`.`Id` AS `posts_Id`,
  `posts`.`PostTypeId`,
  `posts`.`AcceptedAnswerId`,
  `posts`.`CreaionDate`,
  `posts`.`Score`,
  `posts`.`ViewCount`,
  `posts`.`Body`,
  `posts`.`OwnerUserId`,
  `posts`.`LasActivityDate`,
  `posts`.`Title`,
  `posts`.`Tags`,
  `posts`.`AnswerCount`,
  `posts`.`CommentCount`,
  `posts`.`FavoriteCount`,
  `posts`.`LastEditorUserId`,
  `posts`.`LastEditDate`,
  `posts`.`CommunityOwnedDate`,
  `posts`.`ParentId`,
  `posts`.`ClosedDate`,
  `posts`.`OwnerDisplayName`,
  `posts`.`LastEditorDisplayName`,
  `users`.`Id` AS `users_Id`,
  `users`.`Reputation`,
  `users`.`CreationDate` AS `users_CreationDate`,
  `users`.`DisplayName`,
  `users`.`LastAccessDate`,
  `users`.`WebsiteUrl`,
  `users`.`Location`,
  `users`.`AboutMe`,
  `users`.`Views`,
  `users`.`UpVotes`,
  `users`.`DownVotes`,
  `users`.`AccountId`,
  `users`.`Age`,
  `users`.`ProfileImageUrl`
FROM `posts`
JOIN `users` ON `posts`.`OwnerUserId` = `users`.`Id`
JOIN `postHistory` ON `posts`.`Id` = `postHistory`.`PostId`;

CREATE VIEW `postLinks_join_posts` AS
SELECT
  `postLinks`.`Id` AS `postLinks_Id`,
  `postLinks`.`CreationDate`,
  `postLinks`.`PostId`,
  `postLinks`.`RelatedPostId`,
  `postLinks`.`LinkTypeId`,
  `posts`.`Id` AS `posts_Id`,
  `posts`.`PostTypeId`,
  `posts`.`AcceptedAnswerId`,
  `posts`.`CreaionDate`,
  `posts`.`Score`,
  `posts`.`ViewCount`,
  `posts`.`Body`,
  `posts`.`OwnerUserId`,
  `posts`.`LasActivityDate`,
  `posts`.`Title`,
  `posts`.`Tags`,
  `posts`.`AnswerCount`,
  `posts`.`CommentCount`,
  `posts`.`FavoriteCount`,
  `posts`.`LastEditorUserId`,
  `posts`.`LastEditDate`,
  `posts`.`CommunityOwnedDate`,
  `posts`.`ParentId`,
  `posts`.`ClosedDate`,
  `posts`.`OwnerDisplayName`,
  `posts`.`LastEditorDisplayName`
FROM `posts`
JOIN `postLinks` ON `posts`.`Id` = `postLinks`.`PostId`;

CREATE VIEW `posts_join_tags` AS
SELECT
  `posts`.`Id` AS `posts_Id`,
  `posts`.`PostTypeId`,
  `posts`.`AcceptedAnswerId`,
  `posts`.`CreaionDate`,
  `posts`.`Score`,
  `posts`.`ViewCount`,
  `posts`.`Body`,
  `posts`.`OwnerUserId`,
  `posts`.`LasActivityDate`,
  `posts`.`Title`,
  `posts`.`Tags`,
  `posts`.`AnswerCount`,
  `posts`.`CommentCount`,
  `posts`.`FavoriteCount`,
  `posts`.`LastEditorUserId`,
  `posts`.`LastEditDate`,
  `posts`.`CommunityOwnedDate`,
  `posts`.`ParentId`,
  `posts`.`ClosedDate`,
  `posts`.`OwnerDisplayName`,
  `posts`.`LastEditorDisplayName`,
  `tags`.`Id` AS `tags_Id`,
  `tags`.`TagName`,
  `tags`.`Count`,
  `tags`.`ExcerptPostId`,
  `tags`.`WikiPostId`
FROM `posts`
JOIN `tags` ON `posts`.`Id` = `tags`.`ExcerptPostId`;

CREATE VIEW `posts_join_users` AS
SELECT
  `posts`.`Id` AS `posts_Id`,
  `posts`.`PostTypeId`,
  `posts`.`AcceptedAnswerId`,
  `posts`.`CreaionDate`,
  `posts`.`Score`,
  `posts`.`ViewCount`,
  `posts`.`Body`,
  `posts`.`OwnerUserId`,
  `posts`.`LasActivityDate`,
  `posts`.`Title`,
  `posts`.`Tags`,
  `posts`.`AnswerCount`,
  `posts`.`CommentCount`,
  `posts`.`FavoriteCount`,
  `posts`.`LastEditorUserId`,
  `posts`.`LastEditDate`,
  `posts`.`CommunityOwnedDate`,
  `posts`.`ParentId`,
  `posts`.`ClosedDate`,
  `posts`.`OwnerDisplayName`,
  `posts`.`LastEditorDisplayName`,
  `users`.`Id` AS `users_Id`,
  `users`.`Reputation`,
  `users`.`CreationDate`,
  `users`.`DisplayName`,
  `users`.`LastAccessDate`,
  `users`.`WebsiteUrl`,
  `users`.`Location`,
  `users`.`AboutMe`,
  `users`.`Views`,
  `users`.`UpVotes`,
  `users`.`DownVotes`,
  `users`.`AccountId`,
  `users`.`Age`,
  `users`.`ProfileImageUrl`
FROM `posts`
JOIN `users` ON `posts`.`OwnerUserId` = `users`.`Id`;

CREATE VIEW `posts_join_votes` AS
SELECT
  `posts`.`Id` AS `posts_Id`,
  `posts`.`PostTypeId`,
  `posts`.`AcceptedAnswerId`,
  `posts`.`CreaionDate`,
  `posts`.`Score`,
  `posts`.`ViewCount`,
  `posts`.`Body`,
  `posts`.`OwnerUserId`,
  `posts`.`LasActivityDate`,
  `posts`.`Title`,
  `posts`.`Tags`,
  `posts`.`AnswerCount`,
  `posts`.`CommentCount`,
  `posts`.`FavoriteCount`,
  `posts`.`LastEditorUserId`,
  `posts`.`LastEditDate`,
  `posts`.`CommunityOwnedDate`,
  `posts`.`ParentId`,
  `posts`.`ClosedDate`,
  `posts`.`OwnerDisplayName`,
  `posts`.`LastEditorDisplayName`,
  `votes`.`Id` AS `votes_Id`,
  `votes`.`PostId`,
  `votes`.`VoteTypeId`,
  `votes`.`CreationDate`,
  `votes`.`UserId`,
  `votes`.`BountyAmount`
FROM `posts`
JOIN `votes` ON `posts`.`Id` = `votes`.`PostId`;

CREATE VIEW `products_join_transactions_1k_join_yearmonth` AS
SELECT
  `products`.`ProductID` AS `products_ProductID`,
  `products`.`Description`,
  `transactions_1k`.`TransactionID`,
  `transactions_1k`.`Date` AS `transactions_1k_Date`,
  `transactions_1k`.`Time`,
  `transactions_1k`.`CustomerID` AS `transactions_1k_CustomerID`,
  `transactions_1k`.`CardID`,
  `transactions_1k`.`GasStationID`,
  `transactions_1k`.`ProductID` AS `transactions_1k_ProductID`,
  `transactions_1k`.`Amount`,
  `transactions_1k`.`Price`,
  `yearmonth`.`CustomerID` AS `yearmonth_CustomerID`,
  `yearmonth`.`Date` AS `yearmonth_Date`,
  `yearmonth`.`Consumption`
FROM `transactions_1k`
JOIN `products` ON `transactions_1k`.`ProductID` = `products`.`ProductID`
JOIN `yearmonth` ON `transactions_1k`.`CustomerID` = `yearmonth`.`CustomerID`;

CREATE VIEW `publisher_join_superhero` AS
SELECT
  `publisher`.`id` AS `publisher_id`,
  `publisher`.`publisher_name`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `publisher` ON `superhero`.`publisher_id` = `publisher`.`id`;

CREATE VIEW `race_join_superhero` AS
SELECT
  `race`.`id` AS `race_id`,
  `race`.`race`,
  `superhero`.`id` AS `superhero_id`,
  `superhero`.`superhero_name`,
  `superhero`.`full_name`,
  `superhero`.`gender_id`,
  `superhero`.`eye_colour_id`,
  `superhero`.`hair_colour_id`,
  `superhero`.`skin_colour_id`,
  `superhero`.`race_id`,
  `superhero`.`publisher_id`,
  `superhero`.`alignment_id`,
  `superhero`.`height_cm`,
  `superhero`.`weight_kg`
FROM `superhero`
JOIN `race` ON `superhero`.`race_id` = `race`.`id`;

CREATE VIEW `races_join_results` AS
SELECT
  `races`.`raceId` AS `races_raceId`,
  `races`.`year`,
  `races`.`round`,
  `races`.`circuitId`,
  `races`.`name`,
  `races`.`date`,
  `races`.`time` AS `races_time`,
  `races`.`url`,
  `results`.`resultId`,
  `results`.`raceId` AS `results_raceId`,
  `results`.`driverId`,
  `results`.`constructorId`,
  `results`.`number`,
  `results`.`grid`,
  `results`.`position`,
  `results`.`positionText`,
  `results`.`positionOrder`,
  `results`.`points`,
  `results`.`laps`,
  `results`.`time` AS `results_time`,
  `results`.`milliseconds`,
  `results`.`fastestLap`,
  `results`.`rank`,
  `results`.`fastestLapTime`,
  `results`.`fastestLapSpeed`,
  `results`.`statusId`
FROM `results`
JOIN `races` ON `results`.`raceId` = `races`.`raceId`;

CREATE VIEW `races_join_seasons` AS
SELECT
  `races`.`raceId`,
  `races`.`year` AS `races_year`,
  `races`.`round`,
  `races`.`circuitId`,
  `races`.`name`,
  `races`.`date`,
  `races`.`time`,
  `races`.`url` AS `races_url`,
  `seasons`.`year` AS `seasons_year`,
  `seasons`.`url` AS `seasons_url`
FROM `races`
JOIN `seasons` ON `races`.`year` = `seasons`.`year`;

CREATE VIEW `satscores_join_schools` AS
SELECT
  `satscores`.`cds`,
  `satscores`.`rtype`,
  `satscores`.`sname`,
  `satscores`.`dname`,
  `satscores`.`cname`,
  `satscores`.`enroll12`,
  `satscores`.`NumTstTakr`,
  `satscores`.`AvgScrRead`,
  `satscores`.`AvgScrMath`,
  `satscores`.`AvgScrWrite`,
  `satscores`.`NumGE1500`,
  `schools`.`CDSCode`,
  `schools`.`NCESDist`,
  `schools`.`NCESSchool`,
  `schools`.`StatusType`,
  `schools`.`County`,
  `schools`.`District`,
  `schools`.`School`,
  `schools`.`Street`,
  `schools`.`StreetAbr`,
  `schools`.`City`,
  `schools`.`Zip`,
  `schools`.`State`,
  `schools`.`MailStreet`,
  `schools`.`MailStrAbr`,
  `schools`.`MailCity`,
  `schools`.`MailZip`,
  `schools`.`MailState`,
  `schools`.`Phone`,
  `schools`.`Ext`,
  `schools`.`Website`,
  `schools`.`OpenDate`,
  `schools`.`ClosedDate`,
  `schools`.`Charter`,
  `schools`.`CharterNum`,
  `schools`.`FundingType`,
  `schools`.`DOC`,
  `schools`.`DOCType`,
  `schools`.`SOC`,
  `schools`.`SOCType`,
  `schools`.`EdOpsCode`,
  `schools`.`EdOpsName`,
  `schools`.`EILCode`,
  `schools`.`EILName`,
  `schools`.`GSoffered`,
  `schools`.`GSserved`,
  `schools`.`Virtual`,
  `schools`.`Magnet`,
  `schools`.`Latitude`,
  `schools`.`Longitude`,
  `schools`.`AdmFName1`,
  `schools`.`AdmLName1`,
  `schools`.`AdmEmail1`,
  `schools`.`AdmFName2`,
  `schools`.`AdmLName2`,
  `schools`.`AdmEmail2`,
  `schools`.`AdmFName3`,
  `schools`.`AdmLName3`,
  `schools`.`AdmEmail3`,
  `schools`.`LastUpdate`
FROM `satscores`
JOIN `schools` ON `satscores`.`cds` = `schools`.`CDSCode`;

CREATE VIEW `set_translations_join_sets` AS
SELECT
  `set_translations`.`id` AS `set_translations_id`,
  `set_translations`.`language`,
  `set_translations`.`setCode`,
  `set_translations`.`translation`,
  `sets`.`id` AS `sets_id`,
  `sets`.`baseSetSize`,
  `sets`.`block`,
  `sets`.`booster`,
  `sets`.`code`,
  `sets`.`isFoilOnly`,
  `sets`.`isForeignOnly`,
  `sets`.`isNonFoilOnly`,
  `sets`.`isOnlineOnly`,
  `sets`.`isPartialPreview`,
  `sets`.`keyruneCode`,
  `sets`.`mcmId`,
  `sets`.`mcmIdExtras`,
  `sets`.`mcmName`,
  `sets`.`mtgoCode`,
  `sets`.`name`,
  `sets`.`parentCode`,
  `sets`.`releaseDate`,
  `sets`.`tcgplayerGroupId`,
  `sets`.`totalSetSize`,
  `sets`.`type`
FROM `sets`
JOIN `set_translations` ON `sets`.`code` = `set_translations`.`setCode`;


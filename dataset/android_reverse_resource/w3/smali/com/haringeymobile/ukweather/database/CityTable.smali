.class public final Lcom/haringeymobile/ukweather/database/CityTable;
.super Ljava/lang/Object;
.source "CityTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CITY_ID_DOES_NOT_EXIST:I = -0x1

.field public static final CITY_NEVER_QUERIED:J = -0x1L

.field public static final COLUMN_CACHED_JSON_CURRENT:Ljava/lang/String; = "JsonCurrent"

.field private static final COLUMN_CACHED_JSON_CURRENT_VERSION_1:Ljava/lang/String; = "Current"

.field public static final COLUMN_CACHED_JSON_DAILY_FORECAST:Ljava/lang/String; = "JsonDailyForecast"

.field public static final COLUMN_CACHED_JSON_THREE_HOURLY_FORECAST:Ljava/lang/String; = "JsonThreeHourlyForecast"

.field public static final COLUMN_CITY_ID:Ljava/lang/String; = "Id"

.field public static final COLUMN_LAST_QUERY_TIME_FOR_CURRENT_WEATHER:Ljava/lang/String; = "TimeCurrent"

.field private static final COLUMN_LAST_QUERY_TIME_FOR_CURRENT_WEATHER_VERSION_1:Ljava/lang/String; = "Date"

.field public static final COLUMN_LAST_QUERY_TIME_FOR_DAILY_WEATHER_FORECAST:Ljava/lang/String; = "TimeDailyForecast"

.field public static final COLUMN_LAST_QUERY_TIME_FOR_THREE_HOURLY_WEATHER_FORECAST:Ljava/lang/String; = "TimeThreeHourlyForecast"

.field public static final COLUMN_NAME:Ljava/lang/String; = "Name"

.field public static final COLUMN_ORDERING_VALUE:Ljava/lang/String; = "LastQueryTime"

.field public static final TABLE_CITIES:Ljava/lang/String; = "Cities"

.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE Cities(_id integer primary key autoincrement, Id integer, Name text not null, TimeCurrent integer, JsonCurrent text, TimeDailyForecast integer, JsonDailyForecast text, TimeThreeHourlyForecast integer, JsonThreeHourlyForecast text, LastQueryTime integer);"

.field private static final TABLE_TEMP:Ljava/lang/String; = "tempTable"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x23e87ba9a8c9c147L    # -4.273256113166606E135

    const-string v2, "com/haringeymobile/ukweather/database/CityTable"

    const/16 v3, 0x2d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static alterCityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v1

    .line 127
    const-string v0, "ALTER TABLE Cities RENAME TO tempTable"

    .line 129
    .local v0, "RENAME_ORIGINAL_TABLE":Ljava/lang/String;
    const-string v2, "INSERT INTO Cities(Id, Name, TimeCurrent, JsonCurrent) SELECT Id, Name, Date, Current FROM tempTable;"

    const/16 v3, 0x24

    aput-boolean v4, v1, v3

    .line 138
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v3, 0x25

    aput-boolean v4, v1, v3

    .line 139
    const-string v3, "CREATE TABLE Cities(_id integer primary key autoincrement, Id integer, Name text not null, TimeCurrent integer, JsonCurrent text, TimeDailyForecast integer, JsonDailyForecast text, TimeThreeHourlyForecast integer, JsonThreeHourlyForecast text, LastQueryTime integer);"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v3, 0x26

    aput-boolean v4, v1, v3

    .line 140
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v2, 0x27

    aput-boolean v4, v1, v2

    .line 141
    const-string v2, "DROP TABLE tempTable"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v2, 0x28

    aput-boolean v4, v1, v2

    .line 143
    invoke-static {p0}, Lcom/haringeymobile/ukweather/database/CityTable;->insertInitialWeatherForecastValues(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    const/16 v2, 0x29

    aput-boolean v4, v1, v2

    return-void
.end method

.method private static alterDatabaseVersion_1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v0, 0x1d

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 112
    invoke-static {p0}, Lcom/haringeymobile/ukweather/database/CityTable;->alterCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 113
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/16 v0, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 120
    const/16 v0, 0x23

    aput-boolean v4, v1, v0

    return-void

    .line 114
    :catch_0
    move-exception v0

    const/16 v0, 0x20

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error upgrading database from version 1"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 119
    const/16 v2, 0x22

    aput-boolean v4, v1, v2

    throw v0
.end method

.method private static insertInitialData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->values()[Lcom/haringeymobile/ukweather/data/InitialCity;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    const/4 v4, 0x3

    aput-boolean v9, v1, v4

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const/4 v5, 0x4

    aput-boolean v9, v1, v5

    .line 67
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x5

    aput-boolean v9, v1, v6

    .line 68
    const-string v6, "Id"

    invoke-virtual {v4}, Lcom/haringeymobile/ukweather/data/InitialCity;->getOpenWeatherMapId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x6

    aput-boolean v9, v1, v6

    .line 69
    const-string v6, "Name"

    invoke-virtual {v4}, Lcom/haringeymobile/ukweather/data/InitialCity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "TimeCurrent"

    const-wide/16 v6, -0x1

    const/4 v8, 0x7

    aput-boolean v9, v1, v8

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0x8

    aput-boolean v9, v1, v7

    .line 70
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x9

    aput-boolean v9, v1, v4

    .line 72
    const-string v4, "JsonCurrent"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-boolean v9, v1, v4

    .line 73
    invoke-static {v5}, Lcom/haringeymobile/ukweather/database/CityTable;->putInitialDataForVersion2(Landroid/content/ContentValues;)V

    const/16 v4, 0xb

    aput-boolean v9, v1, v4

    .line 74
    const-string v4, "Cities"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 66
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xc

    aput-boolean v9, v1, v4

    goto :goto_0

    .line 76
    :cond_0
    const/16 v0, 0xd

    aput-boolean v9, v1, v0

    return-void
.end method

.method private static insertInitialWeatherForecastValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v0

    .line 151
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x2a

    aput-boolean v4, v0, v2

    .line 152
    invoke-static {v1}, Lcom/haringeymobile/ukweather/database/CityTable;->putInitialDataForVersion2(Landroid/content/ContentValues;)V

    const/16 v2, 0x2b

    aput-boolean v4, v0, v2

    .line 153
    const-string v2, "Cities"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 154
    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    const-string v1, "CREATE TABLE Cities(_id integer primary key autoincrement, Id integer, Name text not null, TimeCurrent integer, JsonCurrent text, TimeDailyForecast integer, JsonDailyForecast text, TimeThreeHourlyForecast integer, JsonThreeHourlyForecast text, LastQueryTime integer);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    .line 57
    invoke-static {p0}, Lcom/haringeymobile/ukweather/database/CityTable;->insertInitialData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->log(Ljava/lang/String;)V

    .line 98
    if-eq p1, v3, :cond_0

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    .line 101
    :goto_0
    const-string v1, "DROP TABLE IF EXISTS Cities"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    .line 102
    invoke-static {p0}, Lcom/haringeymobile/ukweather/database/CityTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    .line 104
    :goto_1
    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    return-void

    .line 98
    :cond_0
    if-gt p2, v3, :cond_1

    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    .line 99
    invoke-static {p0}, Lcom/haringeymobile/ukweather/database/CityTable;->alterDatabaseVersion_1(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method private static putInitialDataForVersion2(Landroid/content/ContentValues;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/CityTable;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    const-string v1, "TimeDailyForecast"

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xf

    aput-boolean v4, v0, v3

    .line 85
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    .line 87
    const-string v1, "JsonDailyForecast"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 88
    const-string v1, "TimeThreeHourlyForecast"

    const/16 v2, 0x11

    aput-boolean v4, v0, v2

    .line 89
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x12

    aput-boolean v4, v0, v3

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    .line 90
    const-string v1, "JsonThreeHourlyForecast"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    .line 91
    const-string v1, "LastQueryTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    return-void
.end method

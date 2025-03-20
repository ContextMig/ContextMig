.class public Lcom/haringeymobile/ukweather/database/SqlOperation;
.super Ljava/lang/Object;
.source "SqlOperation.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private columnNameForJsonString:Ljava/lang/String;

.field private columnNameForLastQueryTime:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7cc6e1f12ebafa64L

    const-string v2, "com/haringeymobile/ukweather/database/SqlOperation"

    const/16 v3, 0x8f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    aput-boolean v3, v0, v3

    .line 47
    sget-object v1, Lcom/haringeymobile/ukweather/database/SqlOperation$1;->$SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

    invoke-virtual {p2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 63
    new-instance v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;

    invoke-direct {v1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    throw v1

    .line 49
    :pswitch_0
    const-string v1, "JsonCurrent"

    iput-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForJsonString:Ljava/lang/String;

    .line 50
    const-string v1, "TimeCurrent"

    iput-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForLastQueryTime:Ljava/lang/String;

    .line 51
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 66
    :goto_0
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 53
    :pswitch_1
    const-string v1, "JsonDailyForecast"

    iput-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForJsonString:Ljava/lang/String;

    .line 54
    const-string v1, "TimeDailyForecast"

    iput-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForLastQueryTime:Ljava/lang/String;

    .line 56
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v1, "JsonThreeHourlyForecast"

    iput-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForJsonString:Ljava/lang/String;

    .line 59
    const-string v1, "TimeThreeHourlyForecast"

    iput-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForLastQueryTime:Ljava/lang/String;

    .line 61
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createContentValuesWithDateAndWeatherJsonString(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x32

    aput-boolean v6, v0, v2

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x33

    aput-boolean v6, v0, v4

    .line 206
    iget-object v4, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForLastQueryTime:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x34

    aput-boolean v6, v0, v4

    .line 207
    const-string v4, "LastQueryTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x35

    aput-boolean v6, v0, v2

    .line 208
    iget-object v2, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForJsonString:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/16 v2, 0x36

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method private getCursorWithCityId(I)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v6

    .line 131
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 132
    const/16 v0, 0x1f

    aput-boolean v8, v6, v0

    .line 134
    :goto_0
    return-object v5

    :cond_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "Id=?"

    new-array v4, v8, [Ljava/lang/String;

    const/16 v7, 0x20

    aput-boolean v8, v6, v7

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    const/16 v7, 0x21

    aput-boolean v8, v6, v7

    .line 134
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/16 v0, 0x22

    aput-boolean v8, v6, v0

    goto :goto_0
.end method

.method private getCursorWithWeatherInfo(I)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v6

    .line 185
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 186
    const/16 v0, 0x2e

    aput-boolean v8, v6, v0

    .line 188
    :goto_0
    return-object v5

    :cond_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForLastQueryTime:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForJsonString:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "LastQueryTime"

    aput-object v4, v2, v3

    const-string v3, "Id=?"

    new-array v4, v8, [Ljava/lang/String;

    const/16 v7, 0x2f

    aput-boolean v8, v6, v7

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    const/16 v7, 0x30

    aput-boolean v8, v6, v7

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/16 v0, 0x31

    aput-boolean v8, v6, v0

    goto :goto_0
.end method

.method private getJsonStringForWeatherInfo(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForJsonString:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x44

    aput-boolean v3, v0, v2

    .line 256
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getRowUri(J)Landroid/net/Uri;
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 154
    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x26

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getRowUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x23

    aput-boolean v4, v0, v2

    .line 146
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v1, 0x24

    aput-boolean v4, v0, v1

    .line 147
    invoke-direct {p0, v2, v3}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getRowUri(J)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x25

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private insertNewCityWithCurrentWeather(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x11

    aput-boolean v6, v0, v2

    .line 108
    const-string v2, "Id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x12

    aput-boolean v6, v0, v2

    .line 109
    const-string v2, "Name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-boolean v6, v0, v2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x14

    aput-boolean v6, v0, v4

    .line 111
    const-string v4, "TimeCurrent"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x15

    aput-boolean v6, v0, v4

    .line 112
    const-string v4, "LastQueryTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x16

    aput-boolean v6, v0, v2

    .line 113
    const-string v2, "JsonCurrent"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "TimeDailyForecast"

    const/16 v3, 0x17

    aput-boolean v6, v0, v3

    .line 115
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x18

    aput-boolean v6, v0, v4

    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x19

    aput-boolean v6, v0, v2

    .line 116
    const-string v2, "JsonDailyForecast"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 117
    const-string v2, "TimeThreeHourlyForecast"

    const/16 v3, 0x1a

    aput-boolean v6, v0, v3

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x1b

    aput-boolean v6, v0, v4

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x1c

    aput-boolean v6, v0, v2

    .line 119
    const-string v2, "JsonThreeHourlyForecast"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-boolean v6, v0, v2

    .line 120
    iget-object v2, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 122
    const/16 v1, 0x1e

    aput-boolean v6, v0, v1

    return-void
.end method

.method private updateLastQueryTime(Landroid/database/Cursor;J)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 434
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x87

    aput-boolean v9, v0, v2

    .line 435
    const-string v2, "LastQueryTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x88

    aput-boolean v9, v0, v2

    .line 436
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getRowUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x89

    aput-boolean v9, v0, v3

    .line 437
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8a

    aput-boolean v9, v0, v4

    .line 438
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x8b

    aput-boolean v9, v0, v4

    .line 439
    iget-object v4, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x8c

    aput-boolean v9, v0, v8

    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/16 v3, 0x8d

    aput-boolean v9, v0, v3

    .line 439
    invoke-virtual {v4, v2, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 441
    const/16 v1, 0x8e

    aput-boolean v9, v0, v1

    return-void
.end method


# virtual methods
.method deleteCity(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    const-string v3, "Id=?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x46

    aput-boolean v7, v0, v6

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x47

    aput-boolean v7, v0, v5

    .line 266
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    const/16 v1, 0x48

    aput-boolean v7, v0, v1

    return-void
.end method

.method dragCity(II)V
    .locals 25

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v24

    .line 356
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 357
    const/16 v4, 0x64

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 431
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 359
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_0
    if-gez p1, :cond_1

    const/16 v4, 0x65

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 360
    :goto_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected city orders: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x67

    const/4 v6, 0x1

    aput-boolean v6, v24, v5

    throw v4

    .line 359
    :cond_1
    if-gez p2, :cond_2

    const/16 v4, 0x66

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto :goto_1

    .line 364
    :cond_2
    const-string v9, "LastQueryTime DESC"

    const/16 v4, 0x68

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "LastQueryTime"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 370
    .restart local v11    # "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_3

    .line 371
    const/16 v4, 0x69

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto :goto_0

    .line 374
    :cond_3
    if-nez p1, :cond_4

    const/16 v4, 0x6a

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 376
    :goto_2
    if-nez p1, :cond_6

    const/4 v4, 0x1

    const/16 v5, 0x6d

    const/4 v6, 0x1

    aput-boolean v6, v24, v5

    :goto_3
    invoke-interface {v11, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v4, 0x6f

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 377
    const-string v4, "Id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x70

    const/4 v6, 0x1

    aput-boolean v6, v24, v5

    .line 378
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x71

    const/4 v6, 0x1

    aput-boolean v6, v24, v5

    .line 379
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->putCityIdIntoSharedPrefs(Landroid/content/Context;IZ)V

    const/16 v4, 0x72

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 382
    :goto_4
    const-string v4, "LastQueryTime"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 384
    .local v10, "columnIndexForOrderingValue":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_9

    const/16 v4, 0x73

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 386
    move/from16 v0, p2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v4, 0x74

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 387
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 388
    .local v22, "orderingValueForCityOrderTo":J
    const-wide/16 v4, 0x1

    sub-long v20, v22, v4

    .line 390
    .local v20, "newOrderingValueForCityOrderFrom":J
    const-wide/16 v4, 0x1

    sub-long v16, v20, v4

    const/16 v4, 0x75

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 391
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x76

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 403
    :goto_6
    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v4, 0x7b

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 404
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v11, v1, v2}, Lcom/haringeymobile/ukweather/database/SqlOperation;->updateLastQueryTime(Landroid/database/Cursor;J)V

    .line 405
    const/16 v4, 0x7c

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 430
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 431
    const/16 v4, 0x86

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto/16 :goto_0

    .line 374
    .end local v10    # "columnIndexForOrderingValue":I
    .end local v20    # "newOrderingValueForCityOrderFrom":J
    .end local v22    # "orderingValueForCityOrderTo":J
    :cond_4
    if-eqz p2, :cond_5

    const/16 v4, 0x6b

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto :goto_4

    :cond_5
    const/16 v4, 0x6c

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto/16 :goto_2

    .line 376
    :cond_6
    const/16 v4, 0x6e

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    move/from16 v4, p1

    goto/16 :goto_3

    .line 391
    .restart local v10    # "columnIndexForOrderingValue":I
    .restart local v20    # "newOrderingValueForCityOrderFrom":J
    .restart local v22    # "orderingValueForCityOrderTo":J
    :cond_7
    const/16 v4, 0x77

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 392
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 394
    .local v12, "currentOrderingValueForNextCityInTable":J
    cmp-long v4, v12, v16

    if-gtz v4, :cond_8

    const/16 v4, 0x78

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto :goto_6

    .line 395
    :cond_8
    const/16 v4, 0x79

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 396
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v11, v1, v2}, Lcom/haringeymobile/ukweather/database/SqlOperation;->updateLastQueryTime(Landroid/database/Cursor;J)V

    .line 397
    const-wide/16 v4, 0x1

    sub-long v16, v16, v4

    .line 401
    .local v16, "maxOrderingValueForNextCityInTable":J
    const/16 v4, 0x7a

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto :goto_5

    .line 407
    .end local v12    # "currentOrderingValueForNextCityInTable":J
    .end local v16    # "maxOrderingValueForNextCityInTable":J
    .end local v20    # "newOrderingValueForCityOrderFrom":J
    .end local v22    # "orderingValueForCityOrderTo":J
    :cond_9
    move/from16 v0, p2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v4, 0x7d

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 408
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 409
    .restart local v22    # "orderingValueForCityOrderTo":J
    const-wide/16 v4, 0x1

    add-long v20, v22, v4

    .line 411
    .restart local v20    # "newOrderingValueForCityOrderFrom":J
    const-wide/16 v4, 0x1

    add-long v18, v20, v4

    const/16 v4, 0x7e

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 412
    :goto_8
    invoke-interface {v11}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0x7f

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 426
    :goto_9
    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v4, 0x84

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 427
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v11, v1, v2}, Lcom/haringeymobile/ukweather/database/SqlOperation;->updateLastQueryTime(Landroid/database/Cursor;J)V

    const/16 v4, 0x85

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto/16 :goto_7

    .line 412
    :cond_a
    const/16 v4, 0x80

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 413
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 415
    .local v14, "currentOrderingValueForPreviousCityInTable":J
    cmp-long v4, v14, v18

    if-ltz v4, :cond_b

    const/16 v4, 0x81

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto :goto_9

    .line 417
    :cond_b
    const/16 v4, 0x82

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    .line 419
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v11, v1, v2}, Lcom/haringeymobile/ukweather/database/SqlOperation;->updateLastQueryTime(Landroid/database/Cursor;J)V

    .line 420
    const-wide/16 v4, 0x1

    add-long v18, v18, v4

    .line 424
    .local v18, "minOrderingValueForPreviousCityInTable":J
    const/16 v4, 0x83

    const/4 v5, 0x1

    aput-boolean v5, v24, v4

    goto :goto_8
.end method

.method public findCityName(I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v7

    .line 296
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 297
    const/16 v0, 0x4e

    aput-boolean v9, v7, v0

    .line 314
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v5

    .line 299
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "Name"

    aput-object v3, v2, v9

    const-string v3, "Id=?"

    new-array v4, v9, [Ljava/lang/String;

    const/16 v8, 0x4f

    aput-boolean v9, v7, v8

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v10

    const/16 v8, 0x50

    aput-boolean v9, v7, v8

    .line 299
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 304
    .restart local v6    # "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 305
    const/16 v0, 0x51

    aput-boolean v9, v7, v0

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x52

    aput-boolean v9, v7, v0

    .line 308
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    const/16 v0, 0x53

    aput-boolean v9, v7, v0

    goto :goto_0

    .line 311
    :cond_2
    const-string v0, "Name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x54

    aput-boolean v9, v7, v1

    .line 312
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x55

    aput-boolean v9, v7, v0

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    const/16 v0, 0x56

    aput-boolean v9, v7, v0

    goto :goto_0
.end method

.method public getJsonStringForWeatherInfo(I)Landroid/support/v4/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v3

    .line 219
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getCursorWithWeatherInfo(I)Landroid/database/Cursor;

    move-result-object v0

    .line 220
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 221
    const/16 v4, 0x37

    aput-boolean v7, v3, v4

    .line 242
    :goto_0
    return-object v2

    .line 223
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x38

    aput-boolean v7, v3, v4

    .line 224
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 225
    const/16 v4, 0x39

    aput-boolean v7, v3, v4

    goto :goto_0

    .line 228
    :cond_1
    invoke-direct {p0, v0}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getJsonStringForWeatherInfo(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3a

    aput-boolean v7, v3, v4

    .line 229
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 230
    .local v1, "lastQueryTime":Ljava/lang/Long;
    if-nez v2, :cond_2

    const/16 v4, 0x3b

    aput-boolean v7, v3, v4

    .line 240
    :goto_1
    invoke-static {v2, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v2

    const/16 v4, 0x42

    aput-boolean v7, v3, v4

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    const/16 v4, 0x43

    aput-boolean v7, v3, v4

    goto :goto_0

    .line 230
    :cond_2
    const/16 v4, 0x3c

    aput-boolean v7, v3, v4

    .line 231
    iget-object v4, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForLastQueryTime:Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3d

    aput-boolean v7, v3, v5

    .line 233
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x3e

    aput-boolean v7, v3, v4

    .line 235
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3f

    aput-boolean v7, v3, v5

    .line 236
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v6, 0x40

    aput-boolean v7, v3, v6

    .line 237
    invoke-virtual {p0, v4, v5}, Lcom/haringeymobile/ukweather/database/SqlOperation;->setLastOverallQueryTimeToCurrentTime(J)V

    const/16 v4, 0x41

    aput-boolean v7, v3, v4

    goto :goto_1
.end method

.method renameCity(ILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 280
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x49

    aput-boolean v8, v0, v2

    .line 281
    const-string v2, "Name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4a

    aput-boolean v8, v0, v2

    .line 282
    iget-object v2, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/haringeymobile/ukweather/database/WeatherContentProvider;->CONTENT_URI_CITY_RECORDS:Landroid/net/Uri;

    const-string v4, "Id=?"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x4b

    aput-boolean v8, v0, v7

    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x4c

    aput-boolean v8, v0, v6

    .line 282
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    const/16 v1, 0x4d

    aput-boolean v8, v0, v1

    return-void
.end method

.method public setLastOverallQueryTimeToCurrentTime(J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v0

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x57

    aput-boolean v5, v0, v1

    .line 327
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x58

    aput-boolean v5, v0, v4

    .line 328
    const-string v4, "LastQueryTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x59

    aput-boolean v5, v0, v2

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getRowUri(J)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x5a

    aput-boolean v5, v0, v3

    .line 330
    iget-object v3, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    const/16 v1, 0x5b

    aput-boolean v5, v0, v1

    return-void
.end method

.method public setLastOverallQueryTimeToCurrentTime([J)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v1

    .line 339
    iget-object v0, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v0, 0x5c

    aput-boolean v8, v1, v0

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v0, 0x5d

    aput-boolean v8, v1, v0

    .line 341
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v0, 0x5e

    aput-boolean v8, v1, v0

    .line 342
    const-string v0, "LastQueryTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    array-length v4, p1

    const/4 v0, 0x0

    const/16 v5, 0x5f

    aput-boolean v8, v1, v5

    :goto_0
    if-ge v0, v4, :cond_0

    aget-wide v6, p1, v0

    const/16 v5, 0x60

    aput-boolean v8, v1, v5

    .line 344
    invoke-direct {p0, v6, v7}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getRowUri(J)Landroid/net/Uri;

    move-result-object v5

    const/16 v6, 0x61

    aput-boolean v8, v1, v6

    .line 345
    invoke-virtual {v2, v5, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x62

    aput-boolean v8, v1, v5

    goto :goto_0

    .line 347
    :cond_0
    const/16 v0, 0x63

    aput-boolean v8, v1, v0

    return-void
.end method

.method updateOrInsertCityWithCurrentWeather(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v3

    .line 77
    const-string v4, "JsonCurrent"

    iget-object v5, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->columnNameForJsonString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x7

    aput-boolean v6, v3, v4

    .line 78
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "This method is expected to deal with current weather information only"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-boolean v6, v3, v5

    throw v4

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getCursorWithCityId(I)Landroid/database/Cursor;

    move-result-object v1

    .line 83
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 84
    const/16 v4, 0x9

    aput-boolean v6, v3, v4

    .line 96
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 87
    .local v0, "cityIdExists":Z
    if-eqz v0, :cond_2

    const/16 v4, 0xa

    aput-boolean v6, v3, v4

    .line 88
    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getRowUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 89
    .local v2, "rowUri":Landroid/net/Uri;
    const/16 v4, 0xb

    aput-boolean v6, v3, v4

    .line 90
    invoke-direct {p0, p3}, Lcom/haringeymobile/ukweather/database/SqlOperation;->createContentValuesWithDateAndWeatherJsonString(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    const/16 v5, 0xc

    aput-boolean v6, v3, v5

    .line 91
    iget-object v5, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v4, 0xd

    aput-boolean v6, v3, v4

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    const/16 v4, 0xe

    aput-boolean v6, v3, v4

    .line 96
    .end local v2    # "rowUri":Landroid/net/Uri;
    :goto_1
    const/16 v4, 0x10

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/haringeymobile/ukweather/database/SqlOperation;->insertNewCityWithCurrentWeather(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    aput-boolean v6, v3, v4

    goto :goto_1
.end method

.method updateWeatherInfo(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/SqlOperation;->$jacocoInit()[Z

    move-result-object v1

    .line 164
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getCursorWithWeatherInfo(I)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 166
    const/16 v2, 0x27

    aput-boolean v5, v1, v2

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 170
    const/16 v2, 0x29

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, v0}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getRowUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x2a

    aput-boolean v5, v1, v3

    .line 173
    invoke-direct {p0, p2}, Lcom/haringeymobile/ukweather/database/SqlOperation;->createContentValuesWithDateAndWeatherJsonString(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    const/16 v4, 0x2b

    aput-boolean v5, v1, v4

    .line 174
    iget-object v4, p0, Lcom/haringeymobile/ukweather/database/SqlOperation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v2, 0x2c

    aput-boolean v5, v1, v2

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    const/16 v2, 0x2d

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

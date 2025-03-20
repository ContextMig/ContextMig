.class public Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;
.super Landroid/app/IntentService;
.source "GeneralDatabaseService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACTION_DELETE_CITY_RECORDS:Ljava/lang/String; = "com.haringeymobile.ukweather.delete_city_records"

.field public static final ACTION_DRAG_CITY:Ljava/lang/String; = "com.haringeymobile.ukweather.drag_city"

.field public static final ACTION_INSERT_OR_UPDATE_CITY_RECORD:Ljava/lang/String; = "com.haringeymobile.ukweather.insert_or_update_city_records"

.field public static final ACTION_RENAME_CITY:Ljava/lang/String; = "com.haringeymobile.ukweather.rename_city"

.field public static final ACTION_UPDATE_WEATHER_INFO:Ljava/lang/String; = "com.haringeymobile.ukweather.update_weather_info_records"

.field private static final APP_PACKAGE:Ljava/lang/String; = "com.haringeymobile.ukweather"

.field private static final WORKER_THREAD_NAME:Ljava/lang/String; = "General database service thread"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4fffb7ac9ce346a5L    # 2.2953956238390371E77

    const-string v2, "com/haringeymobile/ukweather/database/GeneralDatabaseService"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    const-string v1, "General database service thread"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;->$jacocoInit()[Z

    move-result-object v5

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-boolean v2, v5, v2

    .line 32
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    aput-boolean v2, v5, v0

    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1e

    aput-boolean v2, v5, v1

    throw v0

    .line 32
    :sswitch_0
    const-string v0, "com.haringeymobile.ukweather.insert_or_update_city_records"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    aput-boolean v2, v5, v3

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aput-boolean v2, v5, v4

    goto :goto_0

    :sswitch_1
    const-string v0, "com.haringeymobile.ukweather.update_weather_info_records"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    aput-boolean v2, v5, v0

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    aput-boolean v2, v5, v0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "com.haringeymobile.ukweather.rename_city"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x7

    aput-boolean v2, v5, v0

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    aput-boolean v2, v5, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "com.haringeymobile.ukweather.delete_city_records"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x9

    aput-boolean v2, v5, v0

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    aput-boolean v2, v5, v0

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v0, "com.haringeymobile.ukweather.drag_city"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    aput-boolean v2, v5, v0

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    aput-boolean v2, v5, v0

    move v0, v4

    goto :goto_0

    .line 34
    :pswitch_0
    const-string v0, "city id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xd

    aput-boolean v2, v5, v1

    .line 36
    const-string v1, "city name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-boolean v2, v5, v3

    .line 37
    const-string v3, "json string"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    aput-boolean v2, v5, v4

    .line 39
    new-instance v4, Lcom/haringeymobile/ukweather/database/SqlOperation;

    sget-object v6, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-direct {v4, p0, v6}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v6, 0x10

    aput-boolean v2, v5, v6

    .line 40
    invoke-virtual {v4, v0, v1, v3}, Lcom/haringeymobile/ukweather/database/SqlOperation;->updateOrInsertCityWithCurrentWeather(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v0, 0x11

    aput-boolean v2, v5, v0

    .line 77
    :goto_1
    const/16 v0, 0x1f

    aput-boolean v2, v5, v0

    return-void

    .line 45
    :pswitch_1
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getCityIdFromSharedPrefs(Landroid/content/Context;)I

    move-result v1

    const/16 v0, 0x12

    aput-boolean v2, v5, v0

    .line 46
    const-string v0, "json string"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x13

    aput-boolean v2, v5, v0

    .line 48
    const-string v0, "weather info type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v4, 0x14

    aput-boolean v2, v5, v4

    .line 50
    new-instance v4, Lcom/haringeymobile/ukweather/database/SqlOperation;

    invoke-direct {v4, p0, v0}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    invoke-virtual {v4, v1, v3}, Lcom/haringeymobile/ukweather/database/SqlOperation;->updateWeatherInfo(ILjava/lang/String;)V

    .line 52
    const/16 v0, 0x15

    aput-boolean v2, v5, v0

    goto :goto_1

    .line 55
    :pswitch_2
    const-string v0, "city id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x16

    aput-boolean v2, v5, v1

    .line 57
    const-string v1, "city new name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    aput-boolean v2, v5, v3

    .line 58
    new-instance v3, Lcom/haringeymobile/ukweather/database/SqlOperation;

    invoke-direct {v3, p0}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0, v1}, Lcom/haringeymobile/ukweather/database/SqlOperation;->renameCity(ILjava/lang/String;)V

    .line 59
    const/16 v0, 0x18

    aput-boolean v2, v5, v0

    goto :goto_1

    .line 62
    :pswitch_3
    const-string v0, "city id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x19

    aput-boolean v2, v5, v1

    .line 64
    new-instance v1, Lcom/haringeymobile/ukweather/database/SqlOperation;

    invoke-direct {v1, p0}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/haringeymobile/ukweather/database/SqlOperation;->deleteCity(I)V

    .line 65
    const/16 v0, 0x1a

    aput-boolean v2, v5, v0

    goto :goto_1

    .line 68
    :pswitch_4
    const-string v0, "city order x"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x1b

    aput-boolean v2, v5, v3

    .line 70
    const-string v3, "city order y"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x1c

    aput-boolean v2, v5, v3

    .line 72
    new-instance v3, Lcom/haringeymobile/ukweather/database/SqlOperation;

    invoke-direct {v3, p0}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0, v1}, Lcom/haringeymobile/ukweather/database/SqlOperation;->dragCity(II)V

    .line 73
    const/16 v0, 0x1d

    aput-boolean v2, v5, v0

    goto/16 :goto_1

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        -0x525a4224 -> :sswitch_0
        -0x464b4de0 -> :sswitch_1
        0x52763c1a -> :sswitch_2
        0x5455cb64 -> :sswitch_4
        0x7d2691d0 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

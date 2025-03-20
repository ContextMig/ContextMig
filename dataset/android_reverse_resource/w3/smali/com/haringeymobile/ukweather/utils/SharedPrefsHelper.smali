.class public Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;
.super Ljava/lang/Object;
.source "SharedPrefsHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final LAST_SELECTED_CITY_ID:Ljava/lang/String; = "city id"

.field private static final LAST_SELECTED_WEATHER_INFO_TYPE:Ljava/lang/String; = "weather info type"

.field private static final PERSONAL_API_KEY:Ljava/lang/String; = "personal api key"

.field public static final SHARED_PREFS_KEY:Ljava/lang/String; = "com.haringeymobile.ukweather.PREFERENCE_FILE_KEY"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7acff9bfe22a9dcdL    # 3.7147058049459587E283

    const-string v2, "com/haringeymobile/ukweather/utils/SharedPrefsHelper"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getCityIdFromSharedPrefs(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "city id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput-boolean v4, v0, v4

    return v1
.end method

.method private static getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getForecastDisplayMode(Landroid/content/Context;)Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "forecast_display_mode"

    const/16 v3, 0xf

    aput-boolean v6, v0, v3

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060131

    const/16 v5, 0x10

    aput-boolean v6, v0, v5

    .line 96
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    aput-boolean v6, v0, v4

    .line 95
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-boolean v6, v0, v2

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    aput-boolean v6, v0, v2

    .line 98
    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->getForecastDisplayModeById(I)Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method public static getLastWeatherInfoTypeFromSharedPrefs(Landroid/content/Context;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "weather info type"

    sget-object v3, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v4, 0x8

    aput-boolean v5, v0, v4

    .line 60
    invoke-virtual {v3}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->getId()I

    move-result v3

    const/16 v4, 0x9

    aput-boolean v5, v0, v4

    .line 59
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    aput-boolean v5, v0, v2

    .line 61
    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->getTypeById(I)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v1

    const/16 v2, 0xb

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method public static getPersonalApiKeyFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "personal api key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const-string v1, "com.haringeymobile.ukweather.PREFERENCE_FILE_KEY"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static isRemovalModeButton(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x15

    aput-boolean v6, v1, v3

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "res":Landroid/content/res/Resources;
    const-string v3, "city_removal_mode"

    const v4, 0x7f06012e

    const/16 v5, 0x16

    aput-boolean v6, v1, v5

    .line 109
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x17

    aput-boolean v6, v1, v5

    .line 107
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    aput-boolean v6, v1, v3

    .line 110
    const v3, 0x7f06012d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x19

    aput-boolean v6, v1, v3

    return v2
.end method

.method public static putCityIdIntoSharedPrefs(Landroid/content/Context;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 43
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "city id"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 49
    :goto_0
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    return-void

    .line 47
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public static putLastWeatherInfoTypeIntoSharedPrefs(Landroid/content/Context;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather info type"

    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static putPersonalApiKeyIntoSharedPrefs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "personal api key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

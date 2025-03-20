.class public Lorg/asdtm/goodweather/utils/AppPreference;
.super Ljava/lang/Object;
.source "AppPreference.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3f066baf77864ce6L    # 4.276398880445082E-5

    const-string v2, "org/asdtm/goodweather/utils/AppPreference"

    const/16 v3, 0x4b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getBackgroundColor(Landroid/content/Context;)I
    .locals 6

    .prologue
    const v5, 0x7f0d005d

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v3

    .line 106
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "theme":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x26

    aput-boolean v2, v3, v1

    .line 108
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x27

    aput-boolean v2, v3, v4

    .line 118
    :goto_0
    return v1

    .line 110
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v4, 0x28

    aput-boolean v2, v3, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 118
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x2f

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 110
    :sswitch_0
    const-string v4, "dark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x29

    aput-boolean v2, v3, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/16 v4, 0x2a

    aput-boolean v2, v3, v4

    goto :goto_1

    :sswitch_1
    const-string v4, "light"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2b

    aput-boolean v2, v3, v4

    goto :goto_1

    :cond_2
    const/16 v1, 0x2c

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 112
    :pswitch_0
    const v1, 0x7f0d0057

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x2d

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 115
    :pswitch_1
    const v1, 0x7f0d005a

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x2e

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x2eef76 -> :sswitch_0
        0x6233516 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCityAndCode(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v1

    .line 69
    const-string v2, "config"

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/16 v3, 0x16

    aput-boolean v5, v1, v3

    .line 72
    const-string v3, "city"

    const-string v4, "London"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x17

    aput-boolean v5, v1, v3

    .line 73
    const-string v3, "country_code"

    const-string v4, "UK"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 74
    const/16 v3, 0x18

    aput-boolean v5, v1, v3

    return-object v2
.end method

.method public static getInterval(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notification_interval_pref_key"

    const-string v3, "60"

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 31
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method public static getLastUpdateTimeMillis(Landroid/content/Context;)J
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x3d

    aput-boolean v6, v0, v2

    .line 152
    const-string v2, "last_update"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v1, 0x3e

    aput-boolean v6, v0, v1

    return-wide v2
.end method

.method public static getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "temperature_pref_key"

    const-string v3, "metric"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v4, v0, v4

    return-object v1
.end method

.method public static getTextColor(Landroid/content/Context;)I
    .locals 6

    .prologue
    const v5, 0x7f0d005e

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v3

    .line 92
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "theme":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x1c

    aput-boolean v2, v3, v1

    .line 94
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x1d

    aput-boolean v2, v3, v4

    .line 101
    :goto_0
    return v1

    .line 95
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v4, 0x1e

    aput-boolean v2, v3, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 101
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x25

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 95
    :sswitch_0
    const-string v4, "dark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x1f

    aput-boolean v2, v3, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/16 v4, 0x20

    aput-boolean v2, v3, v4

    goto :goto_1

    :sswitch_1
    const-string v4, "light"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x21

    aput-boolean v2, v3, v4

    goto :goto_1

    :cond_2
    const/16 v1, 0x22

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 97
    :pswitch_0
    const v1, 0x7f0d0058

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x23

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 99
    :pswitch_1
    const v1, 0x7f0d005b

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x24

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x2eef76 -> :sswitch_0
        0x6233516 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widget_theme_pref_key"

    const-string v3, "dark"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getWidgetUpdatePeriod(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widget_update_period_pref_key"

    const-string v3, "60"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getWindowHeaderBackgroundColorId(Landroid/content/Context;)I
    .locals 6

    .prologue
    const v5, 0x7f0d005f

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v3

    .line 124
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "theme":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x30

    aput-boolean v2, v3, v1

    .line 126
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x31

    aput-boolean v2, v3, v4

    .line 136
    :goto_0
    return v1

    .line 128
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v4, 0x32

    aput-boolean v2, v3, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 136
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x39

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 128
    :sswitch_0
    const-string v4, "dark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x33

    aput-boolean v2, v3, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/16 v4, 0x34

    aput-boolean v2, v3, v4

    goto :goto_1

    :sswitch_1
    const-string v4, "light"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x35

    aput-boolean v2, v3, v4

    goto :goto_1

    :cond_2
    const/16 v1, 0x36

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 130
    :pswitch_0
    const v1, 0x7f0d0059

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x37

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 133
    :pswitch_1
    const v1, 0x7f0d005c

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v4, 0x38

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x2eef76 -> :sswitch_0
        0x6233516 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hideDescription(Landroid/content/Context;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hide_desc_pref_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isGeocoderEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widget_use_geocoder_pref_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isNotificationEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notification_pref_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isUpdateLocationEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widget_update_location_pref_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isVibrateEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notification_vibrate_pref_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static loadWeatherForecast(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/WeatherForecast;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v2

    .line 170
    const-string v1, "weather_forecast"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "daily_forecast"

    const v3, 0x7f08008b

    const/16 v4, 0x45

    aput-boolean v6, v2, v4

    .line 173
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x46

    aput-boolean v6, v2, v4

    .line 172
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x47

    aput-boolean v6, v2, v3

    .line 174
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lorg/asdtm/goodweather/utils/AppPreference$1;

    invoke-direct {v4}, Lorg/asdtm/goodweather/utils/AppPreference$1;-><init>()V

    const/16 v5, 0x48

    aput-boolean v6, v2, v5

    .line 176
    invoke-virtual {v4}, Lorg/asdtm/goodweather/utils/AppPreference$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    const/16 v5, 0x49

    aput-boolean v6, v2, v5

    .line 174
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v3, 0x4a

    aput-boolean v6, v2, v3

    return-object v1
.end method

.method public static saveLastUpdateTimeMillis(Landroid/content/Context;)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x3a

    aput-boolean v5, v0, v2

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3b

    aput-boolean v5, v0, v4

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "last_update"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    const/16 v1, 0x3c

    aput-boolean v5, v0, v1

    return-wide v2
.end method

.method public static saveWeather(Landroid/content/Context;Lorg/asdtm/goodweather/model/Weather;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    const-string v1, "weather_pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 48
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 49
    const-string v2, "temperature"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$Temperature;->getTemp()F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    .line 50
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->hideDescription(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    const-string v2, "description"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const/16 v4, 0xa

    aput-boolean v6, v0, v4

    .line 53
    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-boolean v6, v0, v4

    .line 52
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xc

    aput-boolean v6, v0, v2

    .line 58
    :goto_0
    const-string v2, "pressure"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getPressure()F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xe

    aput-boolean v6, v0, v2

    .line 59
    const-string v2, "humidity"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getHumidity()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xf

    aput-boolean v6, v0, v2

    .line 60
    const-string v2, "wind_speed"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$Wind;->getSpeed()F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x10

    aput-boolean v6, v0, v2

    .line 61
    const-string v2, "clouds"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$Cloud;->getClouds()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x11

    aput-boolean v6, v0, v2

    .line 62
    const-string v2, "icon"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getIdIcon()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x12

    aput-boolean v6, v0, v2

    .line 63
    const-string v2, "sunrise"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$Sys;->getSunrise()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x13

    aput-boolean v6, v0, v2

    .line 64
    const-string v2, "sunset"

    iget-object v3, p1, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/model/Weather$Sys;->getSunset()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x14

    aput-boolean v6, v0, v2

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    const/16 v1, 0x15

    aput-boolean v6, v0, v1

    return-void

    .line 56
    :cond_0
    const-string v2, "description"

    const-string v3, " "

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xd

    aput-boolean v6, v0, v2

    goto :goto_0
.end method

.method public static saveWeatherForecast(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/WeatherForecast;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    const-string v1, "weather_forecast"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x40

    aput-boolean v4, v0, v2

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x41

    aput-boolean v4, v0, v2

    .line 164
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x42

    aput-boolean v4, v0, v3

    .line 165
    const-string v3, "daily_forecast"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x43

    aput-boolean v4, v0, v2

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    const/16 v1, 0x44

    aput-boolean v4, v0, v1

    return-void
.end method

.class public Lorg/asdtm/goodweather/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACTION_APPWIDGET_THEME_CHANGED:Ljava/lang/String; = "org.asdtm.goodweather.action.APPWIDGET_THEME_CHANGED"

.field public static final ACTION_APPWIDGET_UPDATE_PERIOD_CHANGED:Ljava/lang/String; = "org.asdtm.goodweather.action.APPWIDGET_UPDATE_PERIOD_CHANGED"

.field public static final ACTION_FORCED_APPWIDGET_UPDATE:Ljava/lang/String; = "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

.field public static final APP_SETTINGS_CITY:Ljava/lang/String; = "city"

.field public static final APP_SETTINGS_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final APP_SETTINGS_GEO_CITY:Ljava/lang/String; = "geo_city_name"

.field public static final APP_SETTINGS_GEO_COUNTRY_NAME:Ljava/lang/String; = "geo_country_name"

.field public static final APP_SETTINGS_GEO_DISTRICT_OF_CITY:Ljava/lang/String; = "geo_district_name"

.field public static final APP_SETTINGS_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final APP_SETTINGS_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final APP_SETTINGS_NAME:Ljava/lang/String; = "config"

.field public static final BITCOIN_ADDRESS:Ljava/lang/String; = "1FV8m1MKqZ9ZKB8YNwpsjsuubHTznJSiT8"

.field public static final F_DROID_WEB_URI:Ljava/lang/String; = "https://f-droid.org/repository/browse/?fdid=%s"

.field public static final GOOGLE_PLAY_APP_URI:Ljava/lang/String; = "market://details?id=%s"

.field public static final GOOGLE_PLAY_WEB_URI:Ljava/lang/String; = "http://play.google.com/store/apps/details?id=%s"

.field public static final KEY_PREF_ABOUT_F_DROID:Ljava/lang/String; = "about_f_droid_pref_key"

.field public static final KEY_PREF_ABOUT_GOOGLE_PLAY:Ljava/lang/String; = "about_google_play_pref_key"

.field public static final KEY_PREF_ABOUT_OPEN_SOURCE_LICENSES:Ljava/lang/String; = "about_open_source_licenses_pref_key"

.field public static final KEY_PREF_ABOUT_VERSION:Ljava/lang/String; = "about_version_pref_key"

.field public static final KEY_PREF_HIDE_DESCRIPTION:Ljava/lang/String; = "hide_desc_pref_key"

.field public static final KEY_PREF_INTERVAL_NOTIFICATION:Ljava/lang/String; = "notification_interval_pref_key"

.field public static final KEY_PREF_IS_NOTIFICATION_ENABLED:Ljava/lang/String; = "notification_pref_key"

.field public static final KEY_PREF_TEMPERATURE:Ljava/lang/String; = "temperature_pref_key"

.field public static final KEY_PREF_VIBRATE:Ljava/lang/String; = "notification_vibrate_pref_key"

.field public static final KEY_PREF_WIDGET_THEME:Ljava/lang/String; = "widget_theme_pref_key"

.field public static final KEY_PREF_WIDGET_UPDATE_LOCATION:Ljava/lang/String; = "widget_update_location_pref_key"

.field public static final KEY_PREF_WIDGET_UPDATE_PERIOD:Ljava/lang/String; = "widget_update_period_pref_key"

.field public static final KEY_PREF_WIDGET_USE_GEOCODER:Ljava/lang/String; = "widget_use_geocoder_pref_key"

.field public static final LAST_UPDATE_TIME_IN_MS:Ljava/lang/String; = "last_update"

.field public static final PARSE_RESULT_ERROR:I = -0x2

.field public static final PARSE_RESULT_SUCCESS:I = 0x0

.field public static final PREF_FORECAST_NAME:Ljava/lang/String; = "weather_forecast"

.field public static final PREF_LANGUAGE:Ljava/lang/String; = "language_pref_key"

.field public static final PREF_THEME:Ljava/lang/String; = "theme_pref_key"

.field public static final PREF_WEATHER_NAME:Ljava/lang/String; = "weather_pref"

.field public static final SOURCE_CODE_URI:Ljava/lang/String; = "https://github.com/qqq3/good-weather"

.field public static final TASK_RESULT_ERROR:I = -0x1

.field public static final WEATHER_DATA_CLOUDS:Ljava/lang/String; = "clouds"

.field public static final WEATHER_DATA_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final WEATHER_DATA_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final WEATHER_DATA_ICON:Ljava/lang/String; = "icon"

.field public static final WEATHER_DATA_PRESSURE:Ljava/lang/String; = "pressure"

.field public static final WEATHER_DATA_SUNRISE:Ljava/lang/String; = "sunrise"

.field public static final WEATHER_DATA_SUNSET:Ljava/lang/String; = "sunset"

.field public static final WEATHER_DATA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final WEATHER_DATA_WIND_SPEED:Ljava/lang/String; = "wind_speed"

.field public static final WEATHER_ENDPOINT:Ljava/lang/String; = "http://api.openweathermap.org/data/2.5/weather"

.field public static final WEATHER_FORECAST_ENDPOINT:Ljava/lang/String; = "http://api.openweathermap.org/data/2.5/forecast/daily"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/Constants;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5017d95be2ace2b0L    # 6.903830720348486E77

    const-string v2, "org/asdtm/goodweather/utils/Constants"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/Constants;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/Constants;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

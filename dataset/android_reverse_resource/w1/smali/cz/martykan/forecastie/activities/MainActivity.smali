.class public Lcz/martykan/forecastie/activities/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;,
        Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;,
        Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field protected static final MY_PERMISSIONS_ACCESS_FINE_LOCATION:I = 0x1

.field private static final NO_UPDATE_REQUIRED_THRESHOLD:I = 0x493e0

.field private static mappingsInitialised:Z

.field private static pressUnits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static speedUnits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appView:Landroid/view/View;

.field destroyed:Z

.field lastUpdate:Landroid/widget/TextView;

.field locationManager:Landroid/location/LocationManager;

.field private longTermTodayWeather:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/martykan/forecastie/models/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private longTermTomorrowWeather:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/martykan/forecastie/models/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private longTermWeather:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/martykan/forecastie/models/Weather;",
            ">;"
        }
    .end annotation
.end field

.field progressDialog:Landroid/app/ProgressDialog;

.field public recentCity:Ljava/lang/String;

.field tabLayout:Landroid/support/design/widget/TabLayout;

.field theme:I

.field todayDescription:Landroid/widget/TextView;

.field todayHumidity:Landroid/widget/TextView;

.field todayIcon:Landroid/widget/TextView;

.field todayPressure:Landroid/widget/TextView;

.field todaySunrise:Landroid/widget/TextView;

.field todaySunset:Landroid/widget/TextView;

.field todayTemperature:Landroid/widget/TextView;

.field todayWeather:Lcz/martykan/forecastie/models/Weather;

.field todayWind:Landroid/widget/TextView;

.field viewPager:Landroid/support/v4/view/ViewPager;

.field weatherFont:Landroid/graphics/Typeface;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6cd2a206744daf56L

    const-string v2, "cz/martykan/forecastie/activities/MainActivity"

    const/16 v3, 0x1bf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcz/martykan/forecastie/activities/MainActivity;->speedUnits:Ljava/util/Map;

    const/16 v1, 0x1bd

    aput-boolean v2, v0, v1

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcz/martykan/forecastie/activities/MainActivity;->pressUnits:Ljava/util/Map;

    .line 74
    const/4 v1, 0x0

    sput-boolean v1, Lcz/martykan/forecastie/activities/MainActivity;->mappingsInitialised:Z

    const/16 v1, 0x1be

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    aput-boolean v2, v0, v3

    .line 77
    new-instance v1, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v1}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    iput-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    .line 97
    iput-boolean v3, p0, Lcz/martykan/forecastie/activities/MainActivity;->destroyed:Z

    aput-boolean v2, v0, v2

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermWeather:Ljava/util/List;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTodayWeather:Ljava/util/List;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTomorrowWeather:Ljava/util/List;

    .line 103
    const-string v1, ""

    iput-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->recentCity:Ljava/lang/String;

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method private aboutDialog()V
    .locals 14

    .prologue
    const v13, 0xffffff

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 260
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x5d

    aput-boolean v12, v7, v4

    .line 261
    const-string v4, "Forecastie"

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v4, 0x5e

    aput-boolean v12, v7, v4

    .line 262
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 263
    .local v1, "webView":Landroid/webkit/WebView;
    const-string v4, "<p>1.5</p><p>A lightweight, opensource weather app.</p><p>Developed by <a href=\'mailto:t.martykan@gmail.com\'>Tomas Martykan</a></p><p>Data provided by <a href=\'http://openweathermap.org/\'>OpenWeatherMap</a>, under the <a href=\'http://creativecommons.org/licenses/by-sa/2.0/\'>Creative Commons license</a><p>Icons are <a href=\'https://erikflowers.github.io/weather-icons/\'>Weather Icons</a>, by <a href=\'http://www.twitter.com/artill\'>Lukas Bischoff</a> and <a href=\'http://www.twitter.com/Erik_UX\'>Erik Flowers</a>, under the <a href=\'http://scripts.sil.org/OFL\'>SIL OFL 1.1</a> licence."

    const/16 v5, 0x5f

    aput-boolean v12, v7, v5

    .line 268
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {p0, v5}, Lcz/martykan/forecastie/activities/MainActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v8, 0x60

    aput-boolean v12, v7, v8

    .line 269
    const-string v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    const/high16 v10, -0x1000000

    invoke-virtual {v5, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    and-int/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x61

    aput-boolean v12, v7, v9

    .line 270
    const-string v9, "#%06X"

    new-array v10, v12, [Ljava/lang/Object;

    const v11, -0xffff01

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    and-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x62

    aput-boolean v12, v7, v10

    .line 271
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v5, 0x63

    aput-boolean v12, v7, v5

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<style media=\"screen\" type=\"text/css\">body {\n    color:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ";\n}\na:link {color:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "}\n</style>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "about":Ljava/lang/String;
    const/16 v4, 0x64

    aput-boolean v12, v7, v4

    .line 279
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/16 v4, 0x65

    aput-boolean v12, v7, v4

    .line 280
    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual {v1, v6, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x66

    aput-boolean v12, v7, v4

    move v4, v2

    move v5, v3

    .line 281
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x67

    aput-boolean v12, v7, v2

    .line 282
    const v2, 0x7f07001d

    new-instance v3, Lcz/martykan/forecastie/activities/MainActivity$3;

    invoke-direct {v3, p0}, Lcz/martykan/forecastie/activities/MainActivity$3;-><init>(Lcz/martykan/forecastie/activities/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x68

    aput-boolean v12, v7, v2

    .line 287
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 288
    const/16 v0, 0x69

    aput-boolean v12, v7, v0

    return-void

    .line 268
    nop

    :array_0
    .array-data 4
        0x1010036
        0x7f01007d
    .end array-data
.end method

.method static synthetic access$000(Lcz/martykan/forecastie/activities/MainActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0, p1}, Lcz/martykan/forecastie/activities/MainActivity;->saveLocation(Ljava/lang/String;)V

    const/16 v1, 0x1b8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcz/martykan/forecastie/activities/MainActivity;Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0, p1}, Lcz/martykan/forecastie/activities/MainActivity;->parseTodayJson(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;

    move-result-object v1

    const/16 v2, 0x1b9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcz/martykan/forecastie/activities/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->updateTodayWeatherUI()V

    const/16 v1, 0x1ba

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lcz/martykan/forecastie/activities/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->updateLastUpdateTime()V

    const/16 v1, 0x1bb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcz/martykan/forecastie/activities/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->updateLongTermWeatherUI()V

    const/16 v1, 0x1bc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static formatTimeWithDayIfNotToday(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 925
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v0, 0x1a3

    aput-boolean v7, v1, v0

    .line 926
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v0, 0x1a4

    aput-boolean v7, v1, v0

    .line 927
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0x1a5

    aput-boolean v7, v1, v0

    .line 928
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    const/16 v0, 0x1a6

    aput-boolean v7, v1, v0

    .line 929
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1a7

    aput-boolean v7, v1, v5

    .line 930
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_0

    const/16 v2, 0x1a8

    aput-boolean v7, v1, v2

    .line 935
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1ac

    aput-boolean v7, v1, v2

    :goto_1
    return-object v0

    .line 930
    :cond_0
    const/16 v5, 0x1a9

    aput-boolean v7, v1, v5

    .line 931
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/16 v2, 0x1aa

    aput-boolean v7, v1, v2

    goto :goto_0

    .line 933
    :cond_1
    const/16 v2, 0x1ab

    aput-boolean v7, v1, v2

    goto :goto_1
.end method

.method private getLongTermWeather()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    new-instance v1, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;

    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, p0, p0, v2}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;-><init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    const/16 v1, 0x48

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getRainString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 325
    const-string v0, "0"

    .line 326
    .local v0, "rain":Ljava/lang/String;
    if-nez p0, :cond_0

    const/16 v2, 0x77

    aput-boolean v4, v1, v2

    .line 332
    :goto_0
    const/16 v2, 0x7d

    aput-boolean v4, v1, v2

    return-object v0

    .line 326
    :cond_0
    const/16 v2, 0x78

    aput-boolean v4, v1, v2

    .line 327
    const-string v2, "3h"

    const-string v3, "fail"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-boolean v4, v1, v2

    .line 328
    const-string v2, "fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x7a

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x7b

    aput-boolean v4, v1, v2

    .line 329
    const-string v2, "1h"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7c

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private getTheme(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 940
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v3, 0x1ad

    aput-boolean v1, v2, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 948
    const v0, 0x7f0a0037

    const/16 v3, 0x1b7

    aput-boolean v1, v2, v3

    :goto_1
    return v0

    .line 940
    :sswitch_0
    const-string v3, "dark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x1ae

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1af

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_1
    const-string v3, "classic"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x1b0

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x1b1

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "classicdark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x1b2

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/16 v3, 0x1b3

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 942
    :pswitch_0
    const v0, 0x7f0a0039

    const/16 v3, 0x1b4

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 944
    :pswitch_1
    const v0, 0x7f0a0038

    const/16 v3, 0x1b5

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 946
    :pswitch_2
    const v0, 0x7f0a0096

    const/16 v3, 0x1b6

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 940
    nop

    :sswitch_data_0
    .sparse-switch
        -0x84270f8 -> :sswitch_2
        0x2eef76 -> :sswitch_0
        0x32e13892 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTodayWeather()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    new-instance v1, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;

    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, p0, p0, v2}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;-><init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    const/16 v1, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getWindDirectionString(Landroid/content/SharedPreferences;Landroid/content/Context;Lcz/martykan/forecastie/models/Weather;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 678
    :try_start_0
    invoke-virtual {p2}, Lcz/martykan/forecastie/models/Weather;->getWind()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    const/16 v0, 0x161

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    const/16 v0, 0x16a

    aput-boolean v6, v1, v0

    .line 690
    :goto_1
    const-string v0, ""

    const/16 v2, 0x16d

    aput-boolean v6, v1, v2

    :goto_2
    return-object v0

    .line 678
    :cond_0
    const/16 v0, 0x162

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0

    .line 679
    const-string v0, "windDirectionFormat"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x163

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 680
    const-string v2, "arrow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x164

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 682
    const-string v2, "abbr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x167

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    const/16 v2, 0x16b

    aput-boolean v6, v1, v2

    .line 687
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x16c

    aput-boolean v6, v1, v0

    goto :goto_1

    .line 680
    :cond_1
    const/16 v0, 0x165

    const/4 v2, 0x1

    :try_start_2
    aput-boolean v2, v1, v0

    .line 681
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcz/martykan/forecastie/models/Weather;->getWindDirection(I)Lcz/martykan/forecastie/models/Weather$WindDirection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/martykan/forecastie/models/Weather$WindDirection;->getArrow(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    const/16 v2, 0x166

    aput-boolean v6, v1, v2

    goto :goto_2

    .line 682
    :cond_2
    const/16 v0, 0x168

    const/4 v2, 0x1

    :try_start_3
    aput-boolean v2, v1, v0

    .line 683
    invoke-virtual {p2}, Lcz/martykan/forecastie/models/Weather;->getWindDirection()Lcz/martykan/forecastie/models/Weather$WindDirection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/martykan/forecastie/models/Weather$WindDirection;->getLocalizedString(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    const/16 v2, 0x169

    aput-boolean v6, v1, v2

    goto :goto_2
.end method

.method public static initMappings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 644
    sget-boolean v1, Lcz/martykan/forecastie/activities/MainActivity;->mappingsInitialised:Z

    if-eqz v1, :cond_0

    .line 645
    const/16 v1, 0x14c

    aput-boolean v4, v0, v1

    .line 655
    :goto_0
    return-void

    .line 646
    :cond_0
    sput-boolean v4, Lcz/martykan/forecastie/activities/MainActivity;->mappingsInitialised:Z

    const/16 v1, 0x14d

    aput-boolean v4, v0, v1

    .line 647
    sget-object v1, Lcz/martykan/forecastie/activities/MainActivity;->speedUnits:Ljava/util/Map;

    const-string v2, "m/s"

    const v3, 0x7f070057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14e

    aput-boolean v4, v0, v1

    .line 648
    sget-object v1, Lcz/martykan/forecastie/activities/MainActivity;->speedUnits:Ljava/util/Map;

    const-string v2, "kph"

    const v3, 0x7f070055

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14f

    aput-boolean v4, v0, v1

    .line 649
    sget-object v1, Lcz/martykan/forecastie/activities/MainActivity;->speedUnits:Ljava/util/Map;

    const-string v2, "mph"

    const v3, 0x7f070056

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x150

    aput-boolean v4, v0, v1

    .line 650
    sget-object v1, Lcz/martykan/forecastie/activities/MainActivity;->speedUnits:Ljava/util/Map;

    const-string v2, "kn"

    const v3, 0x7f070077

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x151

    aput-boolean v4, v0, v1

    .line 652
    sget-object v1, Lcz/martykan/forecastie/activities/MainActivity;->pressUnits:Ljava/util/Map;

    const-string v2, "hPa"

    const v3, 0x7f07002e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x152

    aput-boolean v4, v0, v1

    .line 653
    sget-object v1, Lcz/martykan/forecastie/activities/MainActivity;->pressUnits:Ljava/util/Map;

    const-string v2, "kPa"

    const v3, 0x7f07002f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x153

    aput-boolean v4, v0, v1

    .line 654
    sget-object v1, Lcz/martykan/forecastie/activities/MainActivity;->pressUnits:Ljava/util/Map;

    const-string v2, "mm Hg"

    const v3, 0x7f070030

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const/16 v1, 0x154

    aput-boolean v4, v0, v1

    goto/16 :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 585
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v3, 0x123

    aput-boolean v1, v2, v3

    .line 586
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/16 v3, 0x124

    aput-boolean v1, v2, v3

    .line 587
    if-nez v0, :cond_0

    const/16 v0, 0x125

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0x128

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x129

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x126

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x127

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public static localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 662
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "preferenceValue":Ljava/lang/String;
    const/16 v2, 0x156

    aput-boolean v4, v3, v2

    .line 664
    const-string v2, "speedUnit"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x157

    aput-boolean v4, v3, v2

    .line 665
    sget-object v2, Lcz/martykan/forecastie/activities/MainActivity;->speedUnits:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x158

    aput-boolean v4, v3, v2

    .line 673
    .end local v0    # "preferenceValue":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x160

    aput-boolean v4, v3, v2

    return-object v0

    .line 665
    .restart local v0    # "preferenceValue":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x159

    aput-boolean v4, v3, v2

    .line 666
    sget-object v2, Lcz/martykan/forecastie/activities/MainActivity;->speedUnits:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    const/16 v2, 0x15a

    aput-boolean v4, v3, v2

    move-object v0, v1

    goto :goto_0

    .line 668
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const-string v2, "pressureUnit"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x15b

    aput-boolean v4, v3, v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x15c

    aput-boolean v4, v3, v2

    .line 669
    sget-object v2, Lcz/martykan/forecastie/activities/MainActivity;->pressUnits:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x15d

    aput-boolean v4, v3, v2

    goto :goto_0

    :cond_3
    const/16 v2, 0x15e

    aput-boolean v4, v3, v2

    .line 670
    sget-object v2, Lcz/martykan/forecastie/activities/MainActivity;->pressUnits:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    const/16 v2, 0x15f

    aput-boolean v4, v3, v2

    move-object v0, v1

    goto :goto_0
.end method

.method private localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 658
    invoke-static {p1, p0, p2, p3}, Lcz/martykan/forecastie/activities/MainActivity;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x155

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private parseTodayJson(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 14

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v8

    .line 337
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x7e

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 339
    const-string v9, "cod"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7f

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 340
    const-string v10, "404"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/16 v9, 0x80

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 344
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "city":Ljava/lang/String;
    const-string v2, ""

    const/16 v9, 0x82

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 346
    const-string v9, "sys"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 347
    .local v3, "countryObj":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    const/16 v9, 0x83

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 352
    :goto_0
    iget-object v9, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v9, v0}, Lcz/martykan/forecastie/models/Weather;->setCity(Ljava/lang/String;)V

    const/16 v9, 0x88

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 353
    iget-object v9, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v9, v2}, Lcz/martykan/forecastie/models/Weather;->setCountry(Ljava/lang/String;)V

    const/16 v9, 0x89

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 355
    const-string v9, "coord"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 356
    .local v1, "coordinates":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    const/16 v9, 0x8a

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 361
    :goto_1
    const-string v9, "main"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const/16 v10, 0x8e

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 363
    iget-object v10, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v11, "temp"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcz/martykan/forecastie/models/Weather;->setTemperature(Ljava/lang/String;)V

    const/16 v10, 0x8f

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 364
    iget-object v10, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v11, "weather"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "description"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcz/martykan/forecastie/models/Weather;->setDescription(Ljava/lang/String;)V

    const/16 v10, 0x90

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 365
    const-string v10, "wind"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const/16 v11, 0x91

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 366
    iget-object v11, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v12, "speed"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcz/martykan/forecastie/models/Weather;->setWind(Ljava/lang/String;)V

    const/16 v11, 0x92

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 367
    const-string v11, "deg"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x93

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 368
    iget-object v11, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v12, "deg"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcz/martykan/forecastie/models/Weather;->setWindDirectionDegree(Ljava/lang/Double;)V

    const/16 v10, 0x94

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 373
    :goto_2
    iget-object v10, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v11, "pressure"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcz/martykan/forecastie/models/Weather;->setPressure(Ljava/lang/String;)V

    const/16 v10, 0x97

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 374
    iget-object v10, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v11, "humidity"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcz/martykan/forecastie/models/Weather;->setHumidity(Ljava/lang/String;)V

    const/16 v9, 0x98

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 376
    const-string v9, "rain"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 378
    .local v5, "rainObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    const/16 v9, 0x99

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 379
    invoke-static {v5}, Lcz/martykan/forecastie/activities/MainActivity;->getRainString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .local v4, "rain":Ljava/lang/String;
    const/16 v9, 0x9a

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 388
    .end local v4    # "rain":Ljava/lang/String;
    :goto_3
    iget-object v9, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v9, v4}, Lcz/martykan/forecastie/models/Weather;->setRain(Ljava/lang/String;)V

    const/16 v9, 0x9e

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 390
    const-string v9, "weather"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x9f

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 391
    iget-object v9, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v9, v7}, Lcz/martykan/forecastie/models/Weather;->setId(Ljava/lang/String;)V

    const/16 v9, 0xa0

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 392
    iget-object v9, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-direct {p0, v7, v10}, Lcz/martykan/forecastie/activities/MainActivity;->setWeatherIcon(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcz/martykan/forecastie/models/Weather;->setIcon(Ljava/lang/String;)V

    const/16 v7, 0xa1

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 394
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/16 v9, 0xa2

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 395
    const-string v9, "lastToday"

    invoke-interface {v7, v9, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v9, 0xa3

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 396
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    sget-object v7, Lcz/martykan/forecastie/tasks/ParseResult;->OK:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v9, 0xa7

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .end local v1    # "coordinates":Lorg/json/JSONObject;
    .end local v3    # "countryObj":Lorg/json/JSONObject;
    .end local v5    # "rainObj":Lorg/json/JSONObject;
    :goto_4
    return-object v7

    .line 341
    .end local v0    # "city":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v7, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0x81

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto :goto_4

    .line 347
    .restart local v0    # "city":Ljava/lang/String;
    .restart local v3    # "countryObj":Lorg/json/JSONObject;
    :cond_1
    const/16 v9, 0x84

    const/4 v10, 0x1

    :try_start_2
    aput-boolean v10, v8, v9

    .line 348
    const-string v9, "country"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "country":Ljava/lang/String;
    const/16 v9, 0x85

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 349
    iget-object v9, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v10, "sunrise"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcz/martykan/forecastie/models/Weather;->setSunrise(Ljava/lang/String;)V

    const/16 v9, 0x86

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 350
    iget-object v9, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const-string v10, "sunset"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcz/martykan/forecastie/models/Weather;->setSunset(Ljava/lang/String;)V

    const/16 v9, 0x87

    const/4 v10, 0x1

    aput-boolean v10, v8, v9
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 398
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "countryObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    const/16 v9, 0xa4

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 399
    const-string v9, "JSONException Data"

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xa5

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 400
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 401
    sget-object v7, Lcz/martykan/forecastie/tasks/ParseResult;->JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v9, 0xa6

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto :goto_4

    .line 356
    .restart local v1    # "coordinates":Lorg/json/JSONObject;
    .restart local v3    # "countryObj":Lorg/json/JSONObject;
    :cond_2
    const/16 v9, 0x8b

    const/4 v10, 0x1

    :try_start_3
    aput-boolean v10, v8, v9

    .line 357
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const/16 v10, 0x8c

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 358
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "latitude"

    const-string v11, "lon"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v11, v12

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "longitude"

    const-string v11, "lat"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v11, v12

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v9, 0x8d

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_1

    .line 370
    :cond_3
    const-string v10, "parseTodayJson"

    const-string v11, "No wind direction available"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x95

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 371
    iget-object v10, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcz/martykan/forecastie/models/Weather;->setWindDirectionDegree(Ljava/lang/Double;)V

    const/16 v10, 0x96

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    goto/16 :goto_2

    .line 381
    .restart local v5    # "rainObj":Lorg/json/JSONObject;
    :cond_4
    const-string v9, "snow"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 382
    .local v6, "snowObj":Lorg/json/JSONObject;
    if-eqz v6, :cond_5

    const/16 v9, 0x9b

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 383
    invoke-static {v6}, Lcz/martykan/forecastie/activities/MainActivity;->getRainString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "rain":Ljava/lang/String;
    const/16 v9, 0x9c

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_3

    .line 385
    .end local v4    # "rain":Ljava/lang/String;
    :cond_5
    const-string v4, "0"

    const/16 v9, 0x9d

    const/4 v10, 0x1

    aput-boolean v10, v8, v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method

.method private preloadWeather()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x3d

    aput-boolean v6, v0, v2

    .line 202
    const-string v2, "lastToday"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e

    aput-boolean v6, v0, v3

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x3f

    aput-boolean v6, v0, v2

    .line 206
    :goto_0
    const-string v2, "lastLongterm"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-boolean v6, v0, v2

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x43

    aput-boolean v6, v0, v1

    .line 210
    :goto_1
    const/16 v1, 0x46

    aput-boolean v6, v0, v1

    return-void

    .line 203
    :cond_0
    const/16 v3, 0x40

    aput-boolean v6, v0, v3

    .line 204
    new-instance v3, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;

    iget-object v4, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v3, p0, p0, p0, v4}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;-><init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "cachedResponse"

    aput-object v5, v4, v7

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Lcz/martykan/forecastie/activities/MainActivity$TodayWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v2, 0x41

    aput-boolean v6, v0, v2

    goto :goto_0

    .line 207
    :cond_1
    const/16 v2, 0x44

    aput-boolean v6, v0, v2

    .line 208
    new-instance v2, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;

    iget-object v3, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v2, p0, p0, p0, v3}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;-><init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "cachedResponse"

    aput-object v4, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcz/martykan/forecastie/activities/MainActivity$LongTermWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v1, 0x45

    aput-boolean v6, v0, v1

    goto :goto_1
.end method

.method public static saveLastUpdateTime(Landroid/content/SharedPreferences;)J
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 904
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x199

    aput-boolean v6, v0, v2

    .line 905
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastUpdate"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v2, 0x19a

    aput-boolean v6, v0, v2

    .line 906
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v1, 0x19b

    aput-boolean v6, v0, v1

    return-wide v2
.end method

.method private saveLocation(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 245
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x53

    aput-boolean v4, v0, v2

    .line 246
    const-string v2, "city"

    const-string v3, "London"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->recentCity:Ljava/lang/String;

    const/16 v2, 0x54

    aput-boolean v4, v0, v2

    .line 248
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x55

    aput-boolean v4, v0, v2

    .line 249
    const-string v2, "city"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x56

    aput-boolean v4, v0, v2

    .line 250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v1, 0x57

    aput-boolean v4, v0, v1

    .line 252
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->recentCity:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x58

    aput-boolean v4, v0, v1

    .line 257
    :goto_0
    const/16 v1, 0x5c

    aput-boolean v4, v0, v1

    return-void

    .line 252
    :cond_0
    const/16 v1, 0x59

    aput-boolean v4, v0, v1

    .line 254
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getTodayWeather()V

    const/16 v1, 0x5a

    aput-boolean v4, v0, v1

    .line 255
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getLongTermWeather()V

    const/16 v1, 0x5b

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private searchCities()V
    .locals 8

    .prologue
    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 221
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x49

    aput-boolean v7, v6, v1

    .line 222
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0x4a

    aput-boolean v7, v6, v1

    .line 223
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x4b

    aput-boolean v7, v6, v4

    .line 224
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v4, 0x4c

    aput-boolean v7, v6, v4

    .line 225
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    const/16 v4, 0x4d

    aput-boolean v7, v6, v4

    .line 226
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v4, 0x4e

    aput-boolean v7, v6, v4

    move v4, v2

    move v5, v3

    .line 227
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x4f

    aput-boolean v7, v6, v2

    .line 228
    const v2, 0x7f07001d

    new-instance v3, Lcz/martykan/forecastie/activities/MainActivity$1;

    invoke-direct {v3, p0, v1}, Lcz/martykan/forecastie/activities/MainActivity$1;-><init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0x50

    aput-boolean v7, v6, v1

    .line 236
    const v1, 0x7f07001c

    new-instance v2, Lcz/martykan/forecastie/activities/MainActivity$2;

    invoke-direct {v2, p0}, Lcz/martykan/forecastie/activities/MainActivity$2;-><init>(Lcz/martykan/forecastie/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0x51

    aput-boolean v7, v6, v1

    .line 241
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 242
    const/16 v0, 0x52

    aput-boolean v7, v6, v0

    return-void
.end method

.method private setWeatherIcon(II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 291
    div-int/lit8 v1, p1, 0x64

    .line 292
    .local v1, "id":I
    const-string v0, ""

    .line 293
    .local v0, "icon":Ljava/lang/String;
    const/16 v3, 0x320

    if-ne p1, v3, :cond_2

    .line 294
    const/4 v3, 0x7

    if-ge p2, v3, :cond_0

    const/16 v3, 0x6a

    aput-boolean v4, v2, v3

    .line 297
    :goto_0
    const v3, 0x7f07007e

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6e

    aput-boolean v4, v2, v3

    .line 321
    :goto_1
    const/16 v3, 0x76

    aput-boolean v4, v2, v3

    return-object v0

    .line 294
    :cond_0
    const/16 v3, 0x14

    if-lt p2, v3, :cond_1

    const/16 v3, 0x6b

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x6c

    aput-boolean v4, v2, v3

    .line 295
    const v3, 0x7f070084

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6d

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 300
    :cond_2
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v3, 0x6f

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 302
    :pswitch_1
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    const/16 v3, 0x70

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 305
    :pswitch_2
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    const/16 v3, 0x71

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 308
    :pswitch_3
    const v3, 0x7f070081

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    const/16 v3, 0x72

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 311
    :pswitch_4
    const v3, 0x7f07007f

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    const/16 v3, 0x73

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 314
    :pswitch_5
    const v3, 0x7f070083

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    const/16 v3, 0x74

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 317
    :pswitch_6
    const v3, 0x7f070082

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x75

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private shouldUpdate()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 591
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "lastUpdate"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const/16 v3, 0x12a

    aput-boolean v1, v2, v3

    .line 592
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "cityChanged"

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v6, 0x12b

    aput-boolean v1, v2, v6

    .line 594
    if-eqz v3, :cond_0

    const/16 v0, 0x12c

    aput-boolean v1, v2, v0

    :goto_0
    const/16 v0, 0x12f

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x131

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    const/16 v0, 0x12d

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x493e0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    const/16 v0, 0x12e

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_2
    const/16 v3, 0x130

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method private showLocationSettingsDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 735
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x182

    aput-boolean v4, v0, v2

    .line 736
    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x183

    aput-boolean v4, v0, v2

    .line 737
    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x184

    aput-boolean v4, v0, v2

    .line 738
    const v2, 0x7f070026

    new-instance v3, Lcz/martykan/forecastie/activities/MainActivity$5;

    invoke-direct {v3, p0}, Lcz/martykan/forecastie/activities/MainActivity$5;-><init>(Lcz/martykan/forecastie/activities/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x185

    aput-boolean v4, v0, v2

    .line 744
    const v2, 0x7f07001c

    new-instance v3, Lcz/martykan/forecastie/activities/MainActivity$6;

    invoke-direct {v3, p0}, Lcz/martykan/forecastie/activities/MainActivity$6;-><init>(Lcz/martykan/forecastie/activities/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x186

    aput-boolean v4, v0, v2

    .line 749
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 750
    const/16 v1, 0x187

    aput-boolean v4, v0, v1

    return-void
.end method

.method private updateLastUpdateTime()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 910
    const/16 v1, 0x19c

    aput-boolean v6, v0, v1

    .line 911
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastUpdate"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v1, 0x19d

    aput-boolean v6, v0, v1

    .line 910
    invoke-direct {p0, v2, v3}, Lcz/martykan/forecastie/activities/MainActivity;->updateLastUpdateTime(J)V

    .line 913
    const/16 v1, 0x19e

    aput-boolean v6, v0, v1

    return-void
.end method

.method private updateLastUpdateTime(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 916
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    const/16 v1, 0x19f

    aput-boolean v6, v0, v1

    .line 918
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->lastUpdate:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1a0

    aput-boolean v6, v0, v1

    .line 922
    :goto_0
    const/16 v1, 0x1a2

    aput-boolean v6, v0, v1

    return-void

    .line 920
    :cond_0
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->lastUpdate:Landroid/widget/TextView;

    const v2, 0x7f070022

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1, p2}, Lcz/martykan/forecastie/activities/MainActivity;->formatTimeWithDayIfNotToday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1a1

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method private updateLongTermWeatherUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 548
    iget-boolean v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->destroyed:Z

    if-eqz v2, :cond_0

    .line 549
    const/16 v2, 0x10a

    aput-boolean v6, v1, v2

    .line 582
    .local v0, "currentPage":I
    :goto_0
    return-void

    .line 552
    .end local v0    # "currentPage":I
    :cond_0
    new-instance v2, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;

    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/16 v3, 0x10b

    aput-boolean v6, v1, v3

    .line 554
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x10c

    aput-boolean v6, v1, v4

    .line 555
    const-string v4, "day"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x10d

    aput-boolean v6, v1, v4

    .line 556
    new-instance v4, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;

    invoke-direct {v4}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;-><init>()V

    const/16 v5, 0x10e

    aput-boolean v6, v1, v5

    .line 557
    invoke-virtual {v4, v3}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v3, 0x10f

    aput-boolean v6, v1, v3

    .line 558
    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    const/16 v3, 0x110

    aput-boolean v6, v1, v3

    .line 560
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x111

    aput-boolean v6, v1, v4

    .line 561
    const-string v4, "day"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x112

    aput-boolean v6, v1, v4

    .line 562
    new-instance v4, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;

    invoke-direct {v4}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;-><init>()V

    const/16 v5, 0x113

    aput-boolean v6, v1, v5

    .line 563
    invoke-virtual {v4, v3}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v3, 0x114

    aput-boolean v6, v1, v3

    .line 564
    const v3, 0x7f07005b

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    const/16 v3, 0x115

    aput-boolean v6, v1, v3

    .line 566
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x116

    aput-boolean v6, v1, v4

    .line 567
    const-string v4, "day"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x117

    aput-boolean v6, v1, v4

    .line 568
    new-instance v4, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;

    invoke-direct {v4}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;-><init>()V

    const/16 v5, 0x118

    aput-boolean v6, v1, v5

    .line 569
    invoke-virtual {v4, v3}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v3, 0x119

    aput-boolean v6, v1, v3

    .line 570
    const v3, 0x7f070024

    invoke-virtual {p0, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    const/16 v3, 0x11a

    aput-boolean v6, v1, v3

    .line 572
    iget-object v3, p0, Lcz/martykan/forecastie/activities/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/16 v3, 0x11b

    aput-boolean v6, v1, v3

    .line 574
    invoke-virtual {v2}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->notifyDataSetChanged()V

    const/16 v3, 0x11c

    aput-boolean v6, v1, v3

    .line 575
    iget-object v3, p0, Lcz/martykan/forecastie/activities/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/16 v2, 0x11d

    aput-boolean v6, v1, v2

    .line 576
    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcz/martykan/forecastie/activities/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const/16 v2, 0x11e

    aput-boolean v6, v1, v2

    .line 578
    if-eqz v0, :cond_1

    const/16 v2, 0x11f

    aput-boolean v6, v1, v2

    .line 581
    .restart local v0    # "currentPage":I
    :goto_1
    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 582
    const/16 v2, 0x122

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    .line 578
    .end local v0    # "currentPage":I
    :cond_1
    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTodayWeather:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x120

    aput-boolean v6, v1, v2

    goto :goto_1

    .line 579
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "currentPage":I
    const/16 v2, 0x121

    aput-boolean v6, v1, v2

    goto :goto_1
.end method

.method private updateTodayWeatherUI()V
    .locals 14

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 409
    :try_start_0
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa8

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 410
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->preloadWeather()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    const/16 v1, 0xa9

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 465
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v1

    const/16 v1, 0xaa

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 414
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->preloadWeather()V

    .line 415
    const/16 v1, 0xab

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->getCity()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xac

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 418
    iget-object v5, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v5}, Lcz/martykan/forecastie/models/Weather;->getCountry()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xad

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 419
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    const/16 v7, 0xae

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 420
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    const/16 v5, 0xaf

    const/4 v9, 0x1

    aput-boolean v9, v4, v5

    :goto_1
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb1

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 422
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/16 v1, 0xb2

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 425
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v5}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertTemperature(FLandroid/content/SharedPreferences;)F

    move-result v0

    const/16 v1, 0xb3

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 426
    const-string v1, "temperatureInteger"

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xb4

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 431
    .local v0, "temperature":F
    :goto_2
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->getRain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/16 v1, 0xb7

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 432
    invoke-static {v8, v9, v5}, Lcz/martykan/forecastie/utils/UnitConvertor;->getRainString(DLandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0xb8

    const/4 v8, 0x1

    :try_start_1
    aput-boolean v8, v4, v1

    .line 437
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->getWind()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 441
    .local v2, "wind":D
    const/16 v1, 0xb9

    const/4 v8, 0x1

    aput-boolean v8, v4, v1

    .line 442
    .end local v2    # "wind":D
    :goto_3
    invoke-static {v2, v3, v5}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertWind(DLandroid/content/SharedPreferences;)D

    move-result-wide v2

    .restart local v2    # "wind":D
    const/16 v1, 0xbc

    const/4 v8, 0x1

    aput-boolean v8, v4, v1

    .line 445
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->getPressure()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v1, v8

    invoke-static {v1, v5}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertPressure(FLandroid/content/SharedPreferences;)F

    move-result v1

    float-to-double v8, v1

    const/16 v1, 0xbd

    const/4 v10, 0x1

    aput-boolean v10, v4, v1

    .line 447
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayTemperature:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/text/DecimalFormat;

    const-string v12, "0.#"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "unit"

    const-string v12, "\u00b0C"

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xbe

    const/4 v10, 0x1

    aput-boolean v10, v4, v1

    .line 448
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayDescription:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v11}, Lcz/martykan/forecastie/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const/16 v12, 0xbf

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    .line 449
    invoke-virtual {v11}, Lcz/martykan/forecastie/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xc0

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 448
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc1

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 450
    const-string v1, "speedUnit"

    const-string v7, "m/s"

    invoke-interface {v5, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "bft"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xc2

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 451
    iget-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWind:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f07005c

    invoke-virtual {p0, v10}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ": "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v10, v2

    const/16 v11, 0xc3

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 452
    invoke-static {v10}, Lcz/martykan/forecastie/utils/UnitConvertor;->getBeaufortName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const/16 v11, 0xc4

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 453
    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->isWindDirectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-static {v5, p0, v11}, Lcz/martykan/forecastie/activities/MainActivity;->getWindDirectionString(Landroid/content/SharedPreferences;Landroid/content/Context;Lcz/martykan/forecastie/models/Weather;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc5

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    :goto_4
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xc7

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 451
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc8

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 459
    :goto_5
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayPressure:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f07002d

    invoke-virtual {p0, v10}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v10, Ljava/text/DecimalFormat;

    const-string v11, "#.0"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pressureUnit"

    const-string v9, "hPa"

    const/16 v10, 0xcf

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 460
    invoke-direct {p0, v5, v8, v9}, Lcz/martykan/forecastie/activities/MainActivity;->localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xd0

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 459
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd1

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 461
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayHumidity:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070021

    invoke-virtual {p0, v7}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v7}, Lcz/martykan/forecastie/models/Weather;->getHumidity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " %"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd2

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 462
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todaySunrise:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070058

    invoke-virtual {p0, v7}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v7}, Lcz/martykan/forecastie/models/Weather;->getSunrise()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd3

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 463
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todaySunset:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070059

    invoke-virtual {p0, v7}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v7}, Lcz/martykan/forecastie/models/Weather;->getSunset()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd4

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 464
    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayIcon:Landroid/widget/TextView;

    iget-object v5, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v5}, Lcz/martykan/forecastie/models/Weather;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const/16 v1, 0xd5

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    goto/16 :goto_0

    .line 420
    .end local v0    # "temperature":F
    .end local v2    # "wind":D
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xb0

    const/4 v9, 0x1

    aput-boolean v9, v4, v5

    goto/16 :goto_1

    .line 426
    :cond_2
    const/16 v1, 0xb5

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    .line 427
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    .restart local v0    # "temperature":F
    const/16 v1, 0xb6

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    goto/16 :goto_2

    .line 438
    :catch_1
    move-exception v1

    const/16 v8, 0xba

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 439
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    const-wide/16 v2, 0x0

    const/16 v1, 0xbb

    const/4 v8, 0x1

    aput-boolean v8, v4, v1

    goto/16 :goto_3

    .line 453
    .restart local v2    # "wind":D
    :cond_3
    const-string v1, ""

    const/16 v11, 0xc6

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    goto/16 :goto_4

    .line 455
    :cond_4
    iget-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWind:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f07005c

    invoke-virtual {p0, v10}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ": "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v10, Ljava/text/DecimalFormat;

    const-string v11, "#.0"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "speedUnit"

    const-string v11, "m/s"

    const/16 v12, 0xc9

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    .line 456
    invoke-direct {p0, v5, v10, v11}, Lcz/martykan/forecastie/activities/MainActivity;->localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    const/16 v11, 0xca

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 457
    invoke-virtual {v1}, Lcz/martykan/forecastie/models/Weather;->isWindDirectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWeather:Lcz/martykan/forecastie/models/Weather;

    invoke-static {v5, p0, v11}, Lcz/martykan/forecastie/activities/MainActivity;->getWindDirectionString(Landroid/content/SharedPreferences;Landroid/content/Context;Lcz/martykan/forecastie/models/Weather;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xcb

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    :goto_6
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xcd

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 455
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xce

    const/4 v7, 0x1

    aput-boolean v7, v4, v1

    goto/16 :goto_5

    .line 457
    :cond_5
    const-string v1, ""

    const/16 v11, 0xcc

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    goto :goto_6
.end method


# virtual methods
.method public getAdapter(I)Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 160
    if-nez p1, :cond_0

    const/16 v2, 0x25

    aput-boolean v3, v1, v2

    .line 161
    new-instance v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;

    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTodayWeather:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .local v0, "weatherRecyclerAdapter":Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;
    const/16 v2, 0x26

    aput-boolean v3, v1, v2

    .line 167
    .end local v0    # "weatherRecyclerAdapter":Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;
    :goto_0
    const/16 v2, 0x2a

    aput-boolean v3, v1, v2

    return-object v0

    .line 162
    :cond_0
    if-ne p1, v3, :cond_1

    const/16 v2, 0x27

    aput-boolean v3, v1, v2

    .line 163
    new-instance v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;

    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTomorrowWeather:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .restart local v0    # "weatherRecyclerAdapter":Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;
    const/16 v2, 0x28

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 165
    .end local v0    # "weatherRecyclerAdapter":Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;
    :cond_1
    new-instance v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;

    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermWeather:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/16 v2, 0x29

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method getCityByLocation()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 694
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    const/16 v0, 0x16e

    aput-boolean v8, v6, v0

    .line 696
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16f

    aput-boolean v8, v6, v0

    .line 697
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x170

    aput-boolean v8, v6, v0

    .line 732
    :goto_0
    const/16 v0, 0x181

    aput-boolean v8, v6, v0

    return-void

    .line 702
    :cond_0
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v7

    invoke-static {p0, v0, v8}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/16 v0, 0x171

    aput-boolean v8, v6, v0

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x172

    aput-boolean v8, v6, v0

    .line 709
    :goto_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v0, 0x175

    aput-boolean v8, v6, v0

    .line 710
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v0, 0x176

    aput-boolean v8, v6, v0

    .line 711
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/16 v0, 0x177

    aput-boolean v8, v6, v0

    .line 712
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    const v5, 0x7f07001c

    invoke-virtual {p0, v5}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcz/martykan/forecastie/activities/MainActivity$4;

    invoke-direct {v7, p0}, Lcz/martykan/forecastie/activities/MainActivity$4;-><init>(Lcz/martykan/forecastie/activities/MainActivity;)V

    invoke-virtual {v0, v1, v5, v7}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v0, 0x178

    aput-boolean v8, v6, v0

    .line 722
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/16 v0, 0x179

    aput-boolean v8, v6, v0

    .line 723
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x17a

    aput-boolean v8, v6, v0

    .line 726
    :goto_2
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x17d

    aput-boolean v8, v6, v0

    goto :goto_0

    .line 707
    :cond_2
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const/16 v5, 0x173

    aput-boolean v8, v6, v5

    .line 708
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x174

    aput-boolean v8, v6, v0

    goto :goto_1

    .line 723
    :cond_3
    const/16 v0, 0x17b

    aput-boolean v8, v6, v0

    .line 724
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/16 v0, 0x17c

    aput-boolean v8, v6, v0

    goto :goto_2

    .line 726
    :cond_4
    const/16 v0, 0x17e

    aput-boolean v8, v6, v0

    .line 727
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/16 v0, 0x17f

    aput-boolean v8, v6, v0

    goto/16 :goto_0

    .line 730
    :cond_5
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->showLocationSettingsDialog()V

    const/16 v0, 0x180

    aput-boolean v8, v6, v0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 108
    const v0, 0x7f060001

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const/4 v0, 0x5

    aput-boolean v3, v4, v0

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x6

    aput-boolean v3, v4, v1

    .line 111
    const-string v1, "theme"

    const-string v5, "fresh"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->getTheme(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->theme:I

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->setTheme(I)V

    .line 112
    iget v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->theme:I

    const v1, 0x7f0a0039

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    aput-boolean v3, v4, v0

    :goto_0
    const/16 v0, 0x9

    aput-boolean v3, v4, v0

    move v1, v3

    :goto_1
    const/16 v0, 0xb

    aput-boolean v3, v4, v0

    .line 116
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0xc

    aput-boolean v3, v4, v0

    .line 117
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->setContentView(I)V

    const/16 v0, 0xd

    aput-boolean v3, v4, v0

    .line 118
    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->appView:Landroid/view/View;

    const/16 v0, 0xe

    aput-boolean v3, v4, v0

    .line 120
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v0, 0xf

    aput-boolean v3, v4, v0

    .line 123
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/16 v5, 0x10

    aput-boolean v3, v4, v5

    .line 124
    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 125
    if-nez v1, :cond_2

    const/16 v0, 0x11

    aput-boolean v3, v4, v0

    .line 130
    :goto_2
    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayTemperature:Landroid/widget/TextView;

    const/16 v0, 0x14

    aput-boolean v3, v4, v0

    .line 131
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayDescription:Landroid/widget/TextView;

    const/16 v0, 0x15

    aput-boolean v3, v4, v0

    .line 132
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayWind:Landroid/widget/TextView;

    const/16 v0, 0x16

    aput-boolean v3, v4, v0

    .line 133
    const v0, 0x7f0e0074

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayPressure:Landroid/widget/TextView;

    const/16 v0, 0x17

    aput-boolean v3, v4, v0

    .line 134
    const v0, 0x7f0e0075

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayHumidity:Landroid/widget/TextView;

    const/16 v0, 0x18

    aput-boolean v3, v4, v0

    .line 135
    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todaySunrise:Landroid/widget/TextView;

    const/16 v0, 0x19

    aput-boolean v3, v4, v0

    .line 136
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todaySunset:Landroid/widget/TextView;

    const/16 v0, 0x1a

    aput-boolean v3, v4, v0

    .line 137
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->lastUpdate:Landroid/widget/TextView;

    const/16 v0, 0x1b

    aput-boolean v3, v4, v0

    .line 138
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayIcon:Landroid/widget/TextView;

    const/16 v0, 0x1c

    aput-boolean v3, v4, v0

    .line 139
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/weather.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->weatherFont:Landroid/graphics/Typeface;

    const/16 v0, 0x1d

    aput-boolean v3, v4, v0

    .line 140
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->todayIcon:Landroid/widget/TextView;

    iget-object v1, p0, Lcz/martykan/forecastie/activities/MainActivity;->weatherFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x1e

    aput-boolean v3, v4, v0

    .line 143
    const v0, 0x7f0e007b

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v0, 0x1f

    aput-boolean v3, v4, v0

    .line 144
    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 146
    iput-boolean v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->destroyed:Z

    const/16 v0, 0x20

    aput-boolean v3, v4, v0

    .line 148
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->initMappings()V

    const/16 v0, 0x21

    aput-boolean v3, v4, v0

    .line 151
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->preloadWeather()V

    const/16 v0, 0x22

    aput-boolean v3, v4, v0

    .line 152
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->updateLastUpdateTime()V

    const/16 v0, 0x23

    aput-boolean v3, v4, v0

    .line 155
    invoke-static {p0}, Lcz/martykan/forecastie/AlarmReceiver;->setRecurringAlarm(Landroid/content/Context;)V

    .line 156
    const/16 v0, 0x24

    aput-boolean v3, v4, v0

    return-void

    .line 112
    :cond_0
    iget v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->theme:I

    const v1, 0x7f0a0096

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    aput-boolean v3, v4, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xa

    aput-boolean v3, v4, v0

    move v1, v2

    goto/16 :goto_1

    .line 125
    :cond_2
    const/16 v1, 0x12

    aput-boolean v3, v4, v1

    .line 126
    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    const/16 v0, 0x13

    aput-boolean v3, v4, v0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 600
    const/16 v1, 0x132

    aput-boolean v3, v0, v1

    return v3
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 187
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 188
    iput-boolean v3, p0, Lcz/martykan/forecastie/activities/MainActivity;->destroyed:Z

    .line 190
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/16 v0, 0x37

    aput-boolean v3, v1, v0

    .line 197
    :goto_0
    const/16 v0, 0x3c

    aput-boolean v3, v1, v0

    return-void

    .line 190
    :cond_0
    const/16 v0, 0x38

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 192
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    const/16 v0, 0x39

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    const/16 v2, 0x3a

    aput-boolean v3, v1, v2

    .line 194
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/16 v0, 0x3b

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 767
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    const/16 v0, 0x18e

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 769
    iget-object v0, p0, Lcz/martykan/forecastie/activities/MainActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    const/16 v0, 0x18f

    aput-boolean v9, v1, v0

    .line 773
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATION ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x192

    aput-boolean v9, v1, v0

    .line 774
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const/16 v0, 0x193

    aput-boolean v9, v1, v0

    .line 775
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/16 v0, 0x194

    aput-boolean v9, v1, v0

    .line 776
    new-instance v0, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;

    iget-object v6, p0, Lcz/martykan/forecastie/activities/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, p0, p0, v6}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;-><init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "coords"

    aput-object v8, v6, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    const/4 v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v0, v6}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 777
    const/16 v0, 0x195

    aput-boolean v9, v1, v0

    return-void

    .line 770
    :catch_0
    move-exception v0

    const/16 v2, 0x190

    aput-boolean v9, v1, v2

    .line 771
    const-string v2, "LocationManager"

    const-string v3, "Error while trying to stop listening for location updates. This is probably a permissions issue"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x191

    aput-boolean v9, v1, v0

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 605
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 607
    .local v0, "id":I
    const v2, 0x7f0e00b3

    if-ne v0, v2, :cond_1

    const/16 v2, 0x133

    aput-boolean v1, v3, v2

    .line 608
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x134

    aput-boolean v1, v3, v2

    .line 609
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getTodayWeather()V

    const/16 v2, 0x135

    aput-boolean v1, v3, v2

    .line 610
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getLongTermWeather()V

    const/16 v2, 0x136

    aput-boolean v1, v3, v2

    .line 614
    :goto_0
    const/16 v2, 0x138

    aput-boolean v1, v3, v2

    .line 640
    :goto_1
    return v1

    .line 612
    :cond_0
    iget-object v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->appView:Landroid/view/View;

    const v4, 0x7f070029

    invoke-virtual {p0, v4}, Lcz/martykan/forecastie/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v2, 0x137

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 616
    :cond_1
    const v2, 0x7f0e00b5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x139

    aput-boolean v1, v3, v2

    .line 620
    :goto_2
    const v2, 0x7f0e00b6

    if-eq v0, v2, :cond_3

    const/16 v2, 0x13d

    aput-boolean v1, v3, v2

    .line 624
    :goto_3
    const v2, 0x7f0e00b4

    if-ne v0, v2, :cond_4

    const/16 v2, 0x141

    aput-boolean v1, v3, v2

    .line 625
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->searchCities()V

    .line 626
    const/16 v2, 0x142

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 616
    :cond_2
    const/16 v2, 0x13a

    aput-boolean v1, v3, v2

    .line 617
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcz/martykan/forecastie/activities/MapActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x13b

    aput-boolean v1, v3, v4

    .line 618
    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x13c

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 620
    :cond_3
    const/16 v2, 0x13e

    aput-boolean v1, v3, v2

    .line 621
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcz/martykan/forecastie/activities/GraphActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x13f

    aput-boolean v1, v3, v4

    .line 622
    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x140

    aput-boolean v1, v3, v2

    goto :goto_3

    .line 628
    :cond_4
    const v2, 0x7f0e00b7

    if-ne v0, v2, :cond_5

    const/16 v2, 0x143

    aput-boolean v1, v3, v2

    .line 629
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getCityByLocation()V

    .line 630
    const/16 v2, 0x144

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 632
    :cond_5
    const v2, 0x7f0e00b8

    if-eq v0, v2, :cond_6

    const/16 v2, 0x145

    aput-boolean v1, v3, v2

    .line 636
    :goto_4
    const v2, 0x7f0e00b9

    if-ne v0, v2, :cond_7

    const/16 v2, 0x149

    aput-boolean v1, v3, v2

    .line 637
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->aboutDialog()V

    .line 638
    const/16 v2, 0x14a

    aput-boolean v1, v3, v2

    goto/16 :goto_1

    .line 632
    :cond_6
    const/16 v2, 0x146

    aput-boolean v1, v3, v2

    .line 633
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcz/martykan/forecastie/activities/SettingsActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x147

    aput-boolean v1, v3, v4

    .line 634
    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x148

    aput-boolean v1, v3, v2

    goto :goto_4

    .line 640
    :cond_7
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/16 v4, 0x14b

    aput-boolean v1, v3, v4

    move v1, v2

    goto/16 :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 792
    const/16 v1, 0x198

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 787
    const/16 v1, 0x197

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 754
    packed-switch p1, :pswitch_data_0

    .line 763
    const/16 v1, 0x18d

    aput-boolean v2, v0, v1

    :goto_0
    return-void

    .line 757
    :pswitch_0
    array-length v1, p3

    if-gtz v1, :cond_0

    const/16 v1, 0x188

    aput-boolean v2, v0, v1

    .line 760
    :goto_1
    const/16 v1, 0x18c

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 757
    :cond_0
    const/4 v1, 0x0

    aget v1, p3, v1

    if-eqz v1, :cond_1

    const/16 v1, 0x189

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x18a

    aput-boolean v2, v0, v1

    .line 758
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getCityByLocation()V

    const/16 v1, 0x18b

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 172
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/16 v1, 0x2b

    aput-boolean v4, v0, v1

    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "theme"

    const-string v3, "fresh"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcz/martykan/forecastie/activities/MainActivity;->getTheme(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcz/martykan/forecastie/activities/MainActivity;->theme:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    .line 175
    invoke-virtual {p0, v5, v5}, Lcz/martykan/forecastie/activities/MainActivity;->overridePendingTransition(II)V

    const/16 v1, 0x2d

    aput-boolean v4, v0, v1

    .line 176
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->finish()V

    const/16 v1, 0x2e

    aput-boolean v4, v0, v1

    .line 177
    invoke-virtual {p0, v5, v5}, Lcz/martykan/forecastie/activities/MainActivity;->overridePendingTransition(II)V

    const/16 v1, 0x2f

    aput-boolean v4, v0, v1

    .line 178
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcz/martykan/forecastie/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x30

    aput-boolean v4, v0, v1

    .line 183
    :goto_0
    const/16 v1, 0x36

    aput-boolean v4, v0, v1

    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->shouldUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x31

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x32

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x33

    aput-boolean v4, v0, v1

    .line 180
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getTodayWeather()V

    const/16 v1, 0x34

    aput-boolean v4, v0, v1

    .line 181
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/MainActivity;->getLongTermWeather()V

    const/16 v1, 0x35

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 782
    const/16 v1, 0x196

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public parseLongTermJson(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 14

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 470
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xd6

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 472
    const-string v7, "cod"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd7

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 473
    const-string v8, "404"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0xd8

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 482
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermWeather:Ljava/util/List;

    const/16 v7, 0xdf

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 483
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTodayWeather:Ljava/util/List;

    const/16 v7, 0xe0

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 484
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTomorrowWeather:Ljava/util/List;

    const/16 v7, 0xe1

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 486
    const-string v7, "list"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/16 v7, 0xe2

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 487
    const/4 v0, 0x0

    const/16 v7, 0xe3

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .local v0, "i":I
    .local v1, "rain":Ljava/lang/String;
    .local v2, "rainObj":Lorg/json/JSONObject;
    .local v4, "windObj":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_7

    const/16 v7, 0xe4

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 488
    new-instance v7, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v7}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    const/16 v8, 0xe5

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 490
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const/16 v9, 0xe6

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 491
    const-string v9, "main"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const/16 v10, 0xe7

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 493
    const-string v10, "dt"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcz/martykan/forecastie/models/Weather;->setDate(Ljava/lang/String;)V

    const/16 v10, 0xe8

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 494
    const-string v10, "temp"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcz/martykan/forecastie/models/Weather;->setTemperature(Ljava/lang/String;)V

    const/16 v10, 0xe9

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 495
    const-string v10, "weather"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "description"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcz/martykan/forecastie/models/Weather;->setDescription(Ljava/lang/String;)V

    const/16 v10, 0xea

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 496
    const-string v10, "wind"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 497
    if-nez v4, :cond_2

    .end local v0    # "i":I
    .end local v1    # "rain":Ljava/lang/String;
    .end local v2    # "rainObj":Lorg/json/JSONObject;
    const/16 v10, 0xeb

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 501
    :goto_1
    const-string v10, "pressure"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcz/martykan/forecastie/models/Weather;->setPressure(Ljava/lang/String;)V

    const/16 v10, 0xef

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 502
    const-string v10, "humidity"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcz/martykan/forecastie/models/Weather;->setHumidity(Ljava/lang/String;)V

    const/16 v9, 0xf0

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 504
    const-string v9, "rain"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 505
    .restart local v2    # "rainObj":Lorg/json/JSONObject;
    const-string v1, ""

    .line 506
    .restart local v1    # "rain":Ljava/lang/String;
    if-eqz v2, :cond_3

    const/16 v9, 0xf1

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 507
    invoke-static {v2}, Lcz/martykan/forecastie/activities/MainActivity;->getRainString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0xf2

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 516
    :goto_2
    invoke-virtual {v7, v1}, Lcz/martykan/forecastie/models/Weather;->setRain(Ljava/lang/String;)V

    const/16 v9, 0xf6

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 518
    const-string v9, "weather"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xf7

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 519
    invoke-virtual {v7, v9}, Lcz/martykan/forecastie/models/Weather;->setId(Ljava/lang/String;)V

    const/16 v10, 0xf8

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 521
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dt"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "000"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xf9

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 522
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xfa

    const/4 v12, 0x1

    aput-boolean v12, v6, v11

    .line 523
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v8, 0xfb

    const/4 v11, 0x1

    aput-boolean v11, v6, v8

    .line 524
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xb

    invoke-virtual {v10, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcz/martykan/forecastie/activities/MainActivity;->setWeatherIcon(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/martykan/forecastie/models/Weather;->setIcon(Ljava/lang/String;)V

    const/16 v8, 0xfc

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 526
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v9, 0xfd

    const/4 v11, 0x1

    aput-boolean v11, v6, v9

    .line 527
    const/4 v9, 0x6

    invoke-virtual {v10, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v11, 0x6

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v9, v11, :cond_5

    const/16 v8, 0xfe

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 528
    iget-object v8, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTodayWeather:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xff

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 487
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v7, 0x103

    const/4 v8, 0x1

    aput-boolean v8, v6, v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 538
    .end local v0    # "i":I
    .end local v1    # "rain":Ljava/lang/String;
    .end local v2    # "rainObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    const/16 v7, 0x106

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 539
    const-string v7, "JSONException Data"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x107

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 540
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 541
    sget-object v5, Lcz/martykan/forecastie/tasks/ParseResult;->JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v7, 0x108

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 544
    :goto_4
    return-object v5

    .line 474
    .end local v4    # "windObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermWeather:Ljava/util/List;

    if-eqz v5, :cond_1

    const/16 v5, 0xd9

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 479
    :goto_5
    sget-object v5, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0xde

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_4

    .line 474
    :cond_1
    const/16 v5, 0xda

    const/4 v7, 0x1

    :try_start_2
    aput-boolean v7, v6, v5

    .line 475
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermWeather:Ljava/util/List;

    const/16 v5, 0xdb

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 476
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTodayWeather:Ljava/util/List;

    const/16 v5, 0xdc

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 477
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTomorrowWeather:Ljava/util/List;

    const/16 v5, 0xdd

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    goto :goto_5

    .line 497
    .restart local v4    # "windObj":Lorg/json/JSONObject;
    :cond_2
    const/16 v10, 0xec

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 498
    const-string v10, "speed"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcz/martykan/forecastie/models/Weather;->setWind(Ljava/lang/String;)V

    const/16 v10, 0xed

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 499
    const-string v10, "deg"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcz/martykan/forecastie/models/Weather;->setWindDirectionDegree(Ljava/lang/Double;)V

    const/16 v10, 0xee

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    goto/16 :goto_1

    .line 509
    .restart local v1    # "rain":Ljava/lang/String;
    .restart local v2    # "rainObj":Lorg/json/JSONObject;
    :cond_3
    const-string v9, "snow"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 510
    .local v3, "snowObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    const/16 v9, 0xf3

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 511
    invoke-static {v3}, Lcz/martykan/forecastie/activities/MainActivity;->getRainString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0xf4

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    goto/16 :goto_2

    .line 513
    :cond_4
    const-string v1, "0"

    const/16 v9, 0xf5

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    goto/16 :goto_2

    .line 529
    .end local v3    # "snowObj":Lorg/json/JSONObject;
    :cond_5
    const/4 v9, 0x6

    invoke-virtual {v10, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-ne v9, v8, :cond_6

    const/16 v8, 0x100

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 530
    iget-object v8, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermTomorrowWeather:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x101

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_3

    .line 532
    :cond_6
    iget-object v8, p0, Lcz/martykan/forecastie/activities/MainActivity;->longTermWeather:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x102

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_3

    .line 535
    .restart local v0    # "i":I
    :cond_7
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/16 v7, 0x104

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 536
    const-string v7, "lastLongterm"

    invoke-interface {v5, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v7, 0x105

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 537
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 544
    sget-object v5, Lcz/martykan/forecastie/tasks/ParseResult;->OK:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v7, 0x109

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_4
.end method

.class public Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;
.super Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;
.source "ExtensiveWidgetProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6eea4506fc576163L    # -2.29324382974057E-226

    const-string v2, "cz/martykan/forecastie/widgets/ExtensiveWidgetProvider"

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;->$jacocoInit()[Z

    move-result-object v3

    .line 22
    array-length v4, p3

    aput-boolean v11, v3, v11

    move v1, v2

    .local v0, "widgetWeather":Lcz/martykan/forecastie/models/Weather;
    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, p3, v1

    const/4 v6, 0x2

    aput-boolean v11, v3, v6

    .line 23
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f04002d

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x3

    aput-boolean v11, v3, v7

    .line 26
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x4

    aput-boolean v11, v3, v8

    .line 27
    const/high16 v8, 0x8000000

    invoke-static {p1, v2, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v8, 0x5

    aput-boolean v11, v3, v8

    .line 29
    const v8, 0x7f0e0091

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v7, 0x6

    aput-boolean v11, v3, v7

    .line 31
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcz/martykan/forecastie/activities/MainActivity;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x7

    aput-boolean v11, v3, v8

    .line 32
    invoke-static {p1, v2, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x8

    aput-boolean v11, v3, v8

    .line 33
    const v8, 0x7f0e008e

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v8, 0x9

    aput-boolean v11, v3, v8

    .line 35
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const/16 v9, 0xa

    aput-boolean v11, v3, v9

    .line 36
    new-instance v9, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v9}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    const/16 v9, 0xb

    aput-boolean v11, v3, v9

    .line 37
    const-string v9, "lastToday"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v1, 0xc

    aput-boolean v11, v3, v1

    .line 42
    :try_start_0
    invoke-virtual {v7}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/16 v1, 0xe

    aput-boolean v11, v3, v1

    .line 46
    :goto_1
    const/16 v1, 0x11

    aput-boolean v11, v3, v1

    .line 64
    :goto_2
    return-void

    .line 37
    :cond_0
    const/16 v7, 0xd

    aput-boolean v11, v3, v7

    .line 38
    const-string v7, "lastToday"

    const-string v9, ""

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p1}, Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;->parseWidgetJson(Ljava/lang/String;Landroid/content/Context;)Lcz/martykan/forecastie/models/Weather;

    move-result-object v0

    .line 49
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    const/16 v8, 0x12

    aput-boolean v11, v3, v8

    .line 51
    const v8, 0x7f0e0093

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x13

    aput-boolean v11, v3, v8

    .line 52
    const v8, 0x7f0e0090

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x14

    aput-boolean v11, v3, v8

    .line 53
    const v8, 0x7f0e0092

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x15

    aput-boolean v11, v3, v8

    .line 54
    const v8, 0x7f0e0094

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getWind()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x16

    aput-boolean v11, v3, v8

    .line 55
    const v8, 0x7f0e0095

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getPressure()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x17

    aput-boolean v11, v3, v8

    .line 56
    const v8, 0x7f0e0096

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f070021

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getHumidity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " %"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x18

    aput-boolean v11, v3, v8

    .line 57
    const v8, 0x7f0e0097

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f070058

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getSunrise()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x19

    aput-boolean v11, v3, v8

    .line 58
    const v8, 0x7f0e0098

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f070059

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getSunset()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v7, 0x1a

    aput-boolean v11, v3, v7

    .line 59
    const v7, 0x7f0e0099

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getLastUpdated()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v7, 0x1b

    aput-boolean v11, v3, v7

    .line 60
    const v7, 0x7f0e009a

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, p1}, Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;->getWeatherIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/16 v7, 0x1c

    aput-boolean v11, v3, v7

    .line 62
    invoke-virtual {p2, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x1d

    aput-boolean v11, v3, v5

    goto/16 :goto_0

    .line 43
    :catch_0
    move-exception v1

    const/16 v2, 0xf

    aput-boolean v11, v3, v2

    .line 44
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    const/16 v1, 0x10

    aput-boolean v11, v3, v1

    goto/16 :goto_1

    .line 64
    :cond_1
    const/16 v1, 0x1e

    aput-boolean v11, v3, v1

    goto/16 :goto_2
.end method

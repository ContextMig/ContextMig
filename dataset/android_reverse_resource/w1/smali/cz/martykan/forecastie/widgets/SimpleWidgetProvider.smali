.class public Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;
.super Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;
.source "SimpleWidgetProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ACTION_UPDATE_TIME:Ljava/lang/String; = "cz.martykan.forecastie.UPDATE_TIME"

.field private static final DURATION_MINUTE:J

.field private static final TAG:Ljava/lang/String; = "SimpleWidgetProvider"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1796d11bfb2f1e29L    # -9.19173624379406E194

    const-string v2, "cz/martykan/forecastie/widgets/SimpleWidgetProvider"

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->DURATION_MINUTE:J

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static cancelUpdate(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 107
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v2, 0x2c

    aput-boolean v3, v1, v2

    .line 108
    invoke-static {p0}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 109
    const/16 v0, 0x2d

    aput-boolean v3, v1, v0

    return-void
.end method

.method private static getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2e

    aput-boolean v4, v0, v2

    .line 113
    const-string v2, "cz.martykan.forecastie.UPDATE_TIME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x2f

    aput-boolean v4, v0, v2

    .line 114
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/16 v2, 0x30

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private static scheduleNextUpdate(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v5

    .line 92
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    const/16 v6, 0x22

    aput-boolean v10, v5, v6

    .line 93
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 94
    .local v2, "now":J
    sget-wide v6, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->DURATION_MINUTE:J

    add-long/2addr v6, v2

    sget-wide v8, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->DURATION_MINUTE:J

    rem-long v8, v2, v8

    sub-long v0, v6, v8

    .line 95
    .local v0, "nextUpdate":J
    sget-boolean v6, Lcz/martykan/forecastie/BuildConfig;->DEBUG:Z

    if-nez v6, :cond_0

    const/16 v6, 0x23

    aput-boolean v10, v5, v6

    .line 99
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    const/16 v6, 0x28

    aput-boolean v10, v5, v6

    .line 100
    invoke-static {p0}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v10, v0, v1, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/16 v4, 0x29

    aput-boolean v10, v5, v4

    .line 104
    :goto_1
    const/16 v4, 0x2b

    aput-boolean v10, v5, v4

    return-void

    .line 95
    :cond_0
    const/16 v6, 0x24

    aput-boolean v10, v5, v6

    .line 96
    const-string v6, "SimpleWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next widget update: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x25

    aput-boolean v10, v5, v8

    .line 97
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x26

    aput-boolean v10, v5, v8

    .line 96
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x27

    aput-boolean v10, v5, v6

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {p0}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v10, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v4, 0x2a

    aput-boolean v10, v5, v4

    goto :goto_1
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    invoke-super {p0, p1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 87
    const-string v1, "SimpleWidgetProvider"

    const-string v2, "Disable simple widget updates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    .line 88
    invoke-static {p1}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->cancelUpdate(Landroid/content/Context;)V

    .line 89
    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    const-string v1, "cz.martykan.forecastie.UPDATE_TIME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    aput-boolean v5, v0, v1

    .line 74
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/16 v2, 0x19

    aput-boolean v5, v0, v2

    .line 75
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1a

    aput-boolean v5, v0, v3

    .line 76
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    const/16 v3, 0x1b

    aput-boolean v5, v0, v3

    .line 77
    invoke-virtual {p0, p1, v1, v2}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 78
    const/16 v1, 0x1c

    aput-boolean v5, v0, v1

    .line 81
    :goto_0
    const/16 v1, 0x1e

    aput-boolean v5, v0, v1

    return-void

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v1, 0x1d

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->$jacocoInit()[Z

    move-result-object v3

    .line 34
    array-length v4, p3

    aput-boolean v11, v3, v11

    move v1, v2

    .local v0, "widgetWeather":Lcz/martykan/forecastie/models/Weather;
    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, p3, v1

    const/4 v6, 0x2

    aput-boolean v11, v3, v6

    .line 35
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f04003c

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x3

    aput-boolean v11, v3, v7

    .line 38
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x4

    aput-boolean v11, v3, v8

    .line 39
    const/high16 v8, 0x8000000

    invoke-static {p1, v2, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v8, 0x5

    aput-boolean v11, v3, v8

    .line 41
    const v8, 0x7f0e0091

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v7, 0x6

    aput-boolean v11, v3, v7

    .line 43
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcz/martykan/forecastie/activities/MainActivity;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x7

    aput-boolean v11, v3, v8

    .line 44
    invoke-static {p1, v2, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x8

    aput-boolean v11, v3, v8

    .line 45
    const v8, 0x7f0e008e

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v8, 0x9

    aput-boolean v11, v3, v8

    .line 47
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const/16 v9, 0xa

    aput-boolean v11, v3, v9

    .line 48
    new-instance v9, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v9}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    const/16 v9, 0xb

    aput-boolean v11, v3, v9

    .line 49
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

    .line 54
    :try_start_0
    invoke-virtual {v7}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/16 v1, 0xe

    aput-boolean v11, v3, v1

    .line 58
    :goto_1
    const/16 v1, 0x11

    aput-boolean v11, v3, v1

    .line 69
    :goto_2
    return-void

    .line 49
    :cond_0
    const/16 v7, 0xd

    aput-boolean v11, v3, v7

    .line 50
    const-string v7, "lastToday"

    const-string v9, ""

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p1}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->parseWidgetJson(Ljava/lang/String;Landroid/content/Context;)Lcz/martykan/forecastie/models/Weather;

    move-result-object v0

    .line 61
    const v7, 0x7f0e0093

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v7, 0x12

    aput-boolean v11, v3, v7

    .line 62
    const v7, 0x7f0e0090

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v7, 0x13

    aput-boolean v11, v3, v7

    .line 63
    const v7, 0x7f0e0092

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v7, 0x14

    aput-boolean v11, v3, v7

    .line 64
    const v7, 0x7f0e009a

    invoke-virtual {v0}, Lcz/martykan/forecastie/models/Weather;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, p1}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->getWeatherIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/16 v7, 0x15

    aput-boolean v11, v3, v7

    .line 66
    invoke-virtual {p2, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x16

    aput-boolean v11, v3, v5

    goto/16 :goto_0

    .line 55
    :catch_0
    move-exception v1

    const/16 v2, 0xf

    aput-boolean v11, v3, v2

    .line 56
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    const/16 v1, 0x10

    aput-boolean v11, v3, v1

    goto/16 :goto_1

    .line 68
    :cond_1
    invoke-static {p1}, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;->scheduleNextUpdate(Landroid/content/Context;)V

    .line 69
    const/16 v1, 0x17

    aput-boolean v11, v3, v1

    goto/16 :goto_2
.end method

.class public Lcz/martykan/forecastie/widgets/TimeWidgetProvider;
.super Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;
.source "TimeWidgetProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ACTION_UPDATE_TIME:Ljava/lang/String; = "cz.martykan.forecastie.UPDATE_TIME"

.field private static final DURATION_MINUTE:J

.field private static final TAG:Ljava/lang/String; = "TimeWidgetProvider"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x74d230cb6471bf92L    # 5.334619611757205E254

    const-string v2, "cz/martykan/forecastie/widgets/TimeWidgetProvider"

    const/16 v3, 0x3f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->DURATION_MINUTE:J

    const/16 v1, 0x3e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 26
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

    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 126
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v2, 0x39

    aput-boolean v3, v1, v2

    .line 127
    invoke-static {p0}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 128
    const/16 v0, 0x3a

    aput-boolean v3, v1, v0

    return-void
.end method

.method private static getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3b

    aput-boolean v4, v0, v2

    .line 132
    const-string v2, "cz.martykan.forecastie.UPDATE_TIME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3c

    aput-boolean v4, v0, v2

    .line 133
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/16 v2, 0x3d

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private static scheduleNextUpdate(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v5

    .line 111
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    const/16 v6, 0x2f

    aput-boolean v10, v5, v6

    .line 112
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 113
    .local v2, "now":J
    sget-wide v6, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->DURATION_MINUTE:J

    add-long/2addr v6, v2

    sget-wide v8, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->DURATION_MINUTE:J

    rem-long v8, v2, v8

    sub-long v0, v6, v8

    .line 114
    .local v0, "nextUpdate":J
    sget-boolean v6, Lcz/martykan/forecastie/BuildConfig;->DEBUG:Z

    if-nez v6, :cond_0

    const/16 v6, 0x30

    aput-boolean v10, v5, v6

    .line 118
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    const/16 v6, 0x35

    aput-boolean v10, v5, v6

    .line 119
    invoke-static {p0}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v10, v0, v1, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/16 v4, 0x36

    aput-boolean v10, v5, v4

    .line 123
    :goto_1
    const/16 v4, 0x38

    aput-boolean v10, v5, v4

    return-void

    .line 114
    :cond_0
    const/16 v6, 0x31

    aput-boolean v10, v5, v6

    .line 115
    const-string v6, "TimeWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next widget update: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x32

    aput-boolean v10, v5, v8

    .line 116
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

    const/16 v8, 0x33

    aput-boolean v10, v5, v8

    .line 115
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x34

    aput-boolean v10, v5, v6

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p0}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->getTimeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v10, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v4, 0x37

    aput-boolean v10, v5, v4

    goto :goto_1
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    invoke-super {p0, p1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    .line 106
    const-string v1, "TimeWidgetProvider"

    const-string v2, "Disable time widget updates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    .line 107
    invoke-static {p1}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->cancelUpdate(Landroid/content/Context;)V

    .line 108
    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    const-string v1, "cz.martykan.forecastie.UPDATE_TIME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    aput-boolean v5, v0, v1

    .line 93
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/16 v2, 0x26

    aput-boolean v5, v0, v2

    .line 94
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x27

    aput-boolean v5, v0, v3

    .line 95
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    const/16 v3, 0x28

    aput-boolean v5, v0, v3

    .line 96
    invoke-virtual {p0, p1, v1, v2}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 97
    const/16 v1, 0x29

    aput-boolean v5, v0, v1

    .line 100
    :goto_0
    const/16 v1, 0x2b

    aput-boolean v5, v0, v1

    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v1, 0x2a

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 14

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->$jacocoInit()[Z

    move-result-object v5

    .line 36
    move-object/from16 v0, p3

    array-length v6, v0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .local v1, "dateFormat":Ljava/lang/String;
    .local v3, "widgetWeather":Lcz/martykan/forecastie/models/Weather;
    :goto_0
    if-ge v4, v6, :cond_2

    aget v7, p3, v4

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 37
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f04003e

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 40
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v9, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x4

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 41
    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {p1, v10, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 43
    const v10, 0x7f0e0091

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 45
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcz/martykan/forecastie/activities/MainActivity;

    invoke-direct {v9, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x7

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 46
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v9, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 47
    const v10, 0x7f0e008e

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v10, 0x9

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 49
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 50
    new-instance v11, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v11}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    const/16 v11, 0xb

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 51
    const-string v11, "lastToday"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v4, 0xc

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 56
    :try_start_0
    invoke-virtual {v9}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/16 v4, 0xe

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 60
    :goto_1
    const/16 v4, 0x11

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 88
    :goto_2
    return-void

    .line 51
    :cond_0
    const/16 v9, 0xd

    const/4 v11, 0x1

    aput-boolean v11, v5, v9

    .line 52
    const-string v9, "lastToday"

    const-string v11, ""

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, p1}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->parseWidgetJson(Ljava/lang/String;Landroid/content/Context;)Lcz/martykan/forecastie/models/Weather;

    move-result-object v3

    .line 63
    .end local v1    # "dateFormat":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    const/16 v11, 0x12

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f0c0000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/16 v12, 0x13

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 65
    const-string v12, "dateFormat"

    invoke-interface {v10, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0x14

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 66
    const-string v12, "custom"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const/16 v10, 0x15

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 69
    :goto_3
    const/4 v10, 0x0

    const-string v11, "-"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dateFormat":Ljava/lang/String;
    const/16 v10, 0x18

    const/4 v11, 0x1

    :try_start_1
    aput-boolean v11, v5, v10

    .line 72
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x19

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 73
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 76
    .local v2, "dateString":Ljava/lang/String;
    const/16 v10, 0x1a

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 78
    .end local v2    # "dateString":Ljava/lang/String;
    :goto_4
    const v10, 0x7f0e00aa

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x1d

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 79
    const v9, 0x7f0e00b2

    invoke-virtual {v8, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x1e

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 80
    const v9, 0x7f0e0093

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getCity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x1f

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 81
    const v9, 0x7f0e0090

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x20

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 82
    const v9, 0x7f0e0092

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x21

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 83
    const v9, 0x7f0e009a

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, p1}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->getWeatherIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/16 v9, 0x22

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 85
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 36
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x23

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto/16 :goto_0

    .line 57
    :catch_0
    move-exception v4

    const/16 v6, 0xf

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 58
    invoke-virtual {v4}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    const/16 v4, 0x10

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    goto/16 :goto_1

    .line 66
    .end local v1    # "dateFormat":Ljava/lang/String;
    :cond_1
    const/16 v12, 0x16

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 67
    const-string v12, "dateFormatCustom"

    invoke-interface {v10, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dateFormat":Ljava/lang/String;
    const/16 v10, 0x17

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    goto/16 :goto_3

    .line 74
    :catch_1
    move-exception v10

    const/16 v10, 0x1b

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07001f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x1c

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    goto/16 :goto_4

    .line 87
    :cond_2
    invoke-static {p1}, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;->scheduleNextUpdate(Landroid/content/Context;)V

    .line 88
    const/16 v4, 0x24

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    goto/16 :goto_2
.end method

.class public Lorg/asdtm/goodweather/widget/LessWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "LessWidgetProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "WidgetLessInfo"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x59ffed1c6df69b3L

    const-string v2, "org/asdtm/goodweather/widget/LessWidgetProvider"

    const/16 v3, 0x45

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private preLoadWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 13

    .prologue
    const v12, 0x7f0f00f9

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 104
    const-string v2, "weather_pref"

    invoke-virtual {p1, v2, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x2b

    aput-boolean v10, v1, v3

    .line 106
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/Utils;->getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    aput-boolean v10, v1, v4

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%.0f"

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "temperature"

    const/4 v8, 0x0

    const/16 v9, 0x2d

    aput-boolean v10, v1, v9

    .line 109
    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    const/16 v8, 0x2e

    aput-boolean v10, v1, v8

    .line 108
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    aput-boolean v10, v1, v5

    .line 110
    const-string v5, "description"

    const-string v6, "clear sky"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    aput-boolean v10, v1, v6

    .line 111
    const-string v6, "icon"

    const-string v7, "01d"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x31

    aput-boolean v10, v1, v6

    .line 112
    invoke-static {p1, v2}, Lorg/asdtm/goodweather/utils/Utils;->getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "weatherIcon":Ljava/lang/String;
    const/16 v2, 0x32

    aput-boolean v10, v1, v2

    .line 114
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getLastUpdateTimeMillis(Landroid/content/Context;)J

    move-result-wide v6

    const/16 v2, 0x33

    aput-boolean v10, v1, v2

    .line 113
    invoke-static {p1, v6, v7}, Lorg/asdtm/goodweather/utils/Utils;->setLastUpdateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x34

    aput-boolean v10, v1, v6

    .line 115
    const v6, 0x7f0f00f4

    invoke-static {p1}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v6, 0x35

    aput-boolean v10, v1, v6

    .line 116
    const v6, 0x7f0f00f8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v3, 0x36

    aput-boolean v10, v1, v3

    .line 118
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->hideDescription(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x37

    aput-boolean v10, v1, v3

    .line 119
    invoke-virtual {p2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v3, 0x38

    aput-boolean v10, v1, v3

    .line 121
    :goto_0
    const v3, 0x7f0f00fa

    const/16 v4, 0x3a

    aput-boolean v10, v1, v4

    .line 122
    invoke-static {p1, v0}, Lorg/asdtm/goodweather/utils/Utils;->createWeatherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x3b

    aput-boolean v10, v1, v5

    .line 121
    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/16 v3, 0x3c

    aput-boolean v10, v1, v3

    .line 123
    const v3, 0x7f0f00f5

    invoke-virtual {p2, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    const/16 v2, 0x3d

    aput-boolean v10, v1, v2

    return-void

    .line 120
    :cond_0
    const-string v3, " "

    invoke-virtual {p2, v12, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v3, 0x39

    aput-boolean v10, v1, v3

    goto :goto_0
.end method

.method private setWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 128
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getTextColor(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x3e

    aput-boolean v6, v0, v2

    .line 129
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getBackgroundColor(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x3f

    aput-boolean v6, v0, v3

    .line 130
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getWindowHeaderBackgroundColorId(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x40

    aput-boolean v6, v0, v4

    .line 132
    const v4, 0x7f0f00f2

    const-string v5, "setBackgroundColor"

    invoke-virtual {p2, v4, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/16 v2, 0x41

    aput-boolean v6, v0, v2

    .line 133
    const v2, 0x7f0f00f8

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v2, 0x42

    aput-boolean v6, v0, v2

    .line 134
    const v2, 0x7f0f00f9

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v1, 0x43

    aput-boolean v6, v0, v1

    .line 135
    const v1, 0x7f0f00f3

    const-string v2, "setBackgroundColor"

    invoke-virtual {p2, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 136
    const/16 v1, 0x44

    aput-boolean v6, v0, v1

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const/16 v1, 0x28

    aput-boolean v3, v0, v1

    .line 98
    new-instance v1, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;

    const-class v2, Lorg/asdtm/goodweather/widget/LessWidgetProvider;

    invoke-direct {v1, p1, v2}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x29

    aput-boolean v3, v0, v2

    .line 100
    invoke-virtual {v1}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->cancelAlarm()V

    .line 101
    const/16 v1, 0x2a

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    aput-boolean v3, v0, v3

    .line 30
    new-instance v1, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;

    const-class v2, Lorg/asdtm/goodweather/widget/LessWidgetProvider;

    invoke-direct {v1, p1, v2}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 32
    invoke-virtual {v1}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->setAlarm()V

    .line 33
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v0, 0x18

    aput-boolean v1, v2, v0

    .line 66
    :goto_1
    const/16 v0, 0x19

    aput-boolean v1, v2, v0

    return-void

    .line 37
    :sswitch_0
    const-string v4, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_1
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "org.asdtm.goodweather.action.APPWIDGET_THEME_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_3
    const-string v4, "org.asdtm.goodweather.action.APPWIDGET_UPDATE_PERIOD_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0xb

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 39
    :pswitch_0
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->isUpdateLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 42
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/widget/LessWidgetService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    const/16 v0, 0xf

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 46
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/widget/LessWidgetService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    const/16 v0, 0x10

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 49
    :pswitch_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/16 v3, 0x11

    aput-boolean v1, v2, v3

    .line 50
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/asdtm/goodweather/widget/LessWidgetProvider;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x12

    aput-boolean v1, v2, v4

    .line 51
    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    const/16 v4, 0x13

    aput-boolean v1, v2, v4

    .line 52
    invoke-virtual {p0, p1, v0, v3}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 53
    const/16 v0, 0x14

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 55
    :pswitch_3
    new-instance v0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;

    const-class v3, Lorg/asdtm/goodweather/widget/LessWidgetProvider;

    invoke-direct {v0, p1, v3}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    .line 57
    invoke-virtual {v0}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->isAlarmOff()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 58
    const/16 v0, 0x16

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 60
    :cond_5
    invoke-virtual {v0}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->setAlarm()V

    .line 62
    const/16 v0, 0x17

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 37
    :sswitch_data_0
    .sparse-switch
        -0x42903190 -> :sswitch_2
        -0x37e4bceb -> :sswitch_0
        -0x122164c -> :sswitch_1
        0x37cb86be -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 72
    array-length v3, p3

    const/16 v0, 0x1a

    aput-boolean v8, v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p3, v0

    const/16 v5, 0x1b

    aput-boolean v8, v2, v5

    .line 73
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f040048

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x1c

    aput-boolean v8, v2, v6

    .line 76
    invoke-direct {p0, p1, v5}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->setWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const/16 v6, 0x1d

    aput-boolean v8, v2, v6

    .line 77
    invoke-direct {p0, p1, v5}, Lorg/asdtm/goodweather/widget/LessWidgetProvider;->preLoadWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const/16 v6, 0x1e

    aput-boolean v8, v2, v6

    .line 79
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/asdtm/goodweather/widget/LessWidgetProvider;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x1f

    aput-boolean v8, v2, v7

    .line 80
    const-string v7, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v7, 0x20

    aput-boolean v8, v2, v7

    .line 81
    invoke-static {p1, v1, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v7, 0x21

    aput-boolean v8, v2, v7

    .line 82
    const v7, 0x7f0f00f6

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v6, 0x22

    aput-boolean v8, v2, v6

    .line 84
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x23

    aput-boolean v8, v2, v7

    .line 85
    invoke-static {p1, v1, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v7, 0x24

    aput-boolean v8, v2, v7

    .line 87
    const v7, 0x7f0f00f2

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v6, 0x25

    aput-boolean v8, v2, v6

    .line 89
    invoke-virtual {p2, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x26

    aput-boolean v8, v2, v4

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/asdtm/goodweather/widget/LessWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    const/16 v0, 0x27

    aput-boolean v8, v2, v0

    return-void
.end method

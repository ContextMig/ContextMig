.class public Lorg/asdtm/goodweather/widget/MoreWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MoreWidgetProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "WidgetMoreInfo"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4296de964bbaff1aL    # -7.142523136210955E-13

    const-string v2, "org/asdtm/goodweather/widget/MoreWidgetProvider"

    const/16 v3, 0x5f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private preLoadWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 25

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoInit()[Z

    move-result-object v7

    .line 104
    const-string v8, "weather_pref"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const/16 v9, 0x2b

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 106
    invoke-static/range {p1 .. p1}, Lorg/asdtm/goodweather/utils/Utils;->getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 107
    invoke-static/range {p1 .. p1}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2d

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 108
    const v11, 0x7f0800a8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2e

    const/4 v13, 0x1

    aput-boolean v13, v7, v12

    .line 109
    const v12, 0x7f080040

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2f

    const/4 v14, 0x1

    aput-boolean v14, v7, v13

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "%.0f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "temperature"

    const/16 v18, 0x0

    const/16 v19, 0x30

    const/16 v20, 0x1

    aput-boolean v20, v7, v19

    .line 112
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v17

    const/16 v18, 0x31

    const/16 v19, 0x1

    aput-boolean v19, v7, v18

    .line 111
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x32

    const/4 v15, 0x1

    aput-boolean v15, v7, v14

    .line 113
    const-string v14, "description"

    const-string v15, "clear sky"

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "description":Ljava/lang/String;
    const v14, 0x7f080077

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x33

    const/16 v18, 0x1

    aput-boolean v18, v7, v17

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    const-string v18, "%.0f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "wind_speed"

    const/16 v22, 0x0

    const/16 v23, 0x34

    const/16 v24, 0x1

    aput-boolean v24, v7, v23

    .line 116
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v21

    const/16 v22, 0x35

    const/16 v23, 0x1

    aput-boolean v23, v7, v22

    .line 115
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    const/16 v10, 0x36

    const/16 v16, 0x1

    aput-boolean v16, v7, v10

    .line 114
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "wind":Ljava/lang/String;
    const v10, 0x7f080067

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "humidity"

    const/16 v17, 0x0

    const/16 v18, 0x37

    const/16 v19, 0x1

    aput-boolean v19, v7, v18

    .line 121
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x38

    const/16 v18, 0x1

    aput-boolean v18, v7, v17

    .line 120
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/16 v15, 0x39

    const/16 v16, 0x1

    aput-boolean v16, v7, v15

    .line 119
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "humidity":Ljava/lang/String;
    const v10, 0x7f080070

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3a

    const/16 v17, 0x1

    aput-boolean v17, v7, v16

    .line 125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    const-string v17, "%.1f"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "pressure"

    const/16 v21, 0x0

    const/16 v22, 0x3b

    const/16 v23, 0x1

    aput-boolean v23, v7, v22

    .line 128
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v20

    const/16 v21, 0x3c

    const/16 v22, 0x1

    aput-boolean v22, v7, v21

    .line 127
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3d

    const/16 v20, 0x1

    aput-boolean v20, v7, v19

    .line 125
    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    const/16 v12, 0x3e

    const/4 v15, 0x1

    aput-boolean v15, v7, v12

    .line 124
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "pressure":Ljava/lang/String;
    const v10, 0x7f080062

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "clouds"

    const/16 v16, 0x0

    const/16 v17, 0x3f

    const/16 v18, 0x1

    aput-boolean v18, v7, v17

    .line 134
    move/from16 v0, v16

    invoke-interface {v8, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x40

    const/16 v17, 0x1

    aput-boolean v17, v7, v16

    .line 133
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x1

    aput-object v11, v12, v14

    const/16 v11, 0x41

    const/4 v14, 0x1

    aput-boolean v14, v7, v11

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 136
    const-string v11, "icon"

    const-string v12, "01d"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x43

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 137
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lorg/asdtm/goodweather/utils/Utils;->getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "weatherIcon":Ljava/lang/String;
    const/16 v8, 0x44

    const/4 v11, 0x1

    aput-boolean v11, v7, v8

    .line 139
    invoke-static/range {p1 .. p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getLastUpdateTimeMillis(Landroid/content/Context;)J

    move-result-wide v14

    const/16 v8, 0x45

    const/4 v11, 0x1

    aput-boolean v11, v7, v8

    .line 138
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lorg/asdtm/goodweather/utils/Utils;->setLastUpdateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x46

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 141
    const v11, 0x7f0f00f4

    invoke-static/range {p1 .. p1}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v11, 0x47

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 142
    const v11, 0x7f0f00f8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x48

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 143
    invoke-static/range {p1 .. p1}, Lorg/asdtm/goodweather/utils/AppPreference;->hideDescription(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    const/16 v9, 0x49

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 144
    const v9, 0x7f0f00f9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x4a

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 146
    :goto_0
    const v9, 0x7f0f00fb

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x4c

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 147
    const v9, 0x7f0f00fc

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x4d

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 148
    const v9, 0x7f0f00fd

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x4e

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 149
    const v9, 0x7f0f00fe

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 150
    const v9, 0x7f0f00fa

    const/16 v10, 0x4f

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 151
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/asdtm/goodweather/utils/Utils;->createWeatherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/16 v11, 0x50

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 150
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/16 v9, 0x51

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 152
    const v9, 0x7f0f00f5

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 153
    const/16 v8, 0x52

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    return-void

    .line 145
    :cond_0
    const v9, 0x7f0f00f9

    const-string v11, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v9, 0x4b

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    goto :goto_0
.end method

.method private setWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 8

    .prologue
    const v7, 0x7f0f00f9

    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getTextColor(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x53

    aput-boolean v6, v0, v2

    .line 157
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getBackgroundColor(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x54

    aput-boolean v6, v0, v3

    .line 158
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->getWindowHeaderBackgroundColorId(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x55

    aput-boolean v6, v0, v4

    .line 160
    const v4, 0x7f0f00f2

    const-string v5, "setBackgroundColor"

    invoke-virtual {p2, v4, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/16 v2, 0x56

    aput-boolean v6, v0, v2

    .line 161
    const v2, 0x7f0f00f8

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v2, 0x57

    aput-boolean v6, v0, v2

    .line 162
    invoke-virtual {p2, v7, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v2, 0x58

    aput-boolean v6, v0, v2

    .line 163
    invoke-virtual {p2, v7, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v2, 0x59

    aput-boolean v6, v0, v2

    .line 164
    const v2, 0x7f0f00fb

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v2, 0x5a

    aput-boolean v6, v0, v2

    .line 165
    const v2, 0x7f0f00fc

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v2, 0x5b

    aput-boolean v6, v0, v2

    .line 166
    const v2, 0x7f0f00fd

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v2, 0x5c

    aput-boolean v6, v0, v2

    .line 167
    const v2, 0x7f0f00fe

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/16 v1, 0x5d

    aput-boolean v6, v0, v1

    .line 168
    const v1, 0x7f0f00f3

    const-string v2, "setBackgroundColor"

    invoke-virtual {p2, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 169
    const/16 v1, 0x5e

    aput-boolean v6, v0, v1

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const/16 v1, 0x28

    aput-boolean v3, v0, v1

    .line 98
    new-instance v1, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;

    const-class v2, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;

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

    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    aput-boolean v3, v0, v3

    .line 29
    new-instance v1, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;

    const-class v2, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;

    invoke-direct {v1, p1, v2}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 31
    invoke-virtual {v1}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->setAlarm()V

    .line 32
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 36
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

    .line 63
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v0, 0x18

    aput-boolean v1, v2, v0

    .line 65
    :goto_1
    const/16 v0, 0x19

    aput-boolean v1, v2, v0

    return-void

    .line 36
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

    .line 38
    :pswitch_0
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->isUpdateLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 41
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/widget/MoreWidgetService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    const/16 v0, 0xf

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 45
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/widget/MoreWidgetService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    const/16 v0, 0x10

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 48
    :pswitch_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/16 v3, 0x11

    aput-boolean v1, v2, v3

    .line 49
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x12

    aput-boolean v1, v2, v4

    .line 50
    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    const/16 v4, 0x13

    aput-boolean v1, v2, v4

    .line 51
    invoke-virtual {p0, p1, v0, v3}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 52
    const/16 v0, 0x14

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 54
    :pswitch_3
    new-instance v0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;

    const-class v3, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;

    invoke-direct {v0, p1, v3}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    .line 56
    invoke-virtual {v0}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->isAlarmOff()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 57
    const/16 v0, 0x16

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 59
    :cond_5
    invoke-virtual {v0}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->setAlarm()V

    .line 61
    const/16 v0, 0x17

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 36
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

    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 71
    array-length v3, p3

    const/16 v0, 0x1a

    aput-boolean v8, v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p3, v0

    const/16 v5, 0x1b

    aput-boolean v8, v2, v5

    .line 72
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f040049

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x1c

    aput-boolean v8, v2, v6

    .line 75
    invoke-direct {p0, p1, v5}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->setWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const/16 v6, 0x1d

    aput-boolean v8, v2, v6

    .line 76
    invoke-direct {p0, p1, v5}, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;->preLoadWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    const/16 v6, 0x1e

    aput-boolean v8, v2, v6

    .line 78
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x1f

    aput-boolean v8, v2, v7

    .line 79
    const-string v7, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v7, 0x20

    aput-boolean v8, v2, v7

    .line 80
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

    .line 71
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x26

    aput-boolean v8, v2, v4

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/asdtm/goodweather/widget/MoreWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    const/16 v0, 0x27

    aput-boolean v8, v2, v0

    return-void
.end method

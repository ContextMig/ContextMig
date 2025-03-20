.class public Lorg/asdtm/goodweather/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/Utils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6d47566ba52873f4L    # -1.746621675812574E-218

    const-string v2, "org/asdtm/goodweather/utils/Utils"

    const/16 v3, 0x7c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/Utils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v1

    .line 149
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/16 v2, 0x5b

    aput-boolean v4, v1, v2

    .line 151
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    const/16 v3, 0x5c

    aput-boolean v4, v1, v3

    .line 152
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 153
    const/16 v0, 0x5d

    aput-boolean v4, v1, v0

    return-void
.end method

.method public static createWeatherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/16 v2, 0x100

    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-boolean v6, v0, v6

    .line 25
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x2

    aput-boolean v6, v0, v3

    .line 26
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x3

    aput-boolean v6, v0, v4

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/weathericons-regular-webfont.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x4

    aput-boolean v6, v0, v5

    .line 30
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x5

    aput-boolean v6, v0, v5

    .line 31
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    const/4 v5, 0x6

    aput-boolean v6, v0, v5

    .line 32
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v4, 0x7

    aput-boolean v6, v0, v4

    .line 33
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v4, 0x8

    aput-boolean v6, v0, v4

    .line 34
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTextColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x9

    aput-boolean v6, v0, v4

    .line 35
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v4, 0xa

    aput-boolean v6, v0, v4

    .line 36
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v4, 0xb

    aput-boolean v6, v0, v4

    .line 37
    const/high16 v4, 0x43000000    # 128.0f

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v2, p1, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 38
    const/16 v2, 0xc

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method public static getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v1

    .line 178
    const-string v0, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v2, 0x6e

    aput-boolean v3, v1, v2

    .line 180
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->isGeocoderEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x6f

    aput-boolean v3, v1, v2

    .line 181
    invoke-static {v0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountryFromGeolocation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x70

    aput-boolean v3, v1, v2

    .line 183
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountryFromPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x71

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private static getCityAndCountryFromGeolocation(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v1

    .line 188
    const-string v0, "geo_country_name"

    const-string v2, "United Kingdom"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x72

    aput-boolean v5, v1, v2

    .line 189
    const-string v2, "geo_city_name"

    const-string v3, "London"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x73

    aput-boolean v5, v1, v3

    .line 190
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const/16 v2, 0x74

    aput-boolean v5, v1, v2

    .line 197
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const-string v3, "geo_district_name"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x75

    aput-boolean v5, v1, v4

    .line 194
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0x76

    aput-boolean v5, v1, v3

    .line 195
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x77

    aput-boolean v5, v1, v3

    goto :goto_1

    .line 197
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private static getCityAndCountryFromPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v0

    .line 201
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getCityAndCode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    aput-boolean v4, v0, v2

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public static getSpeedScale(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v1

    .line 114
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4b

    aput-boolean v3, v1, v2

    .line 115
    const-string v2, "metric"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080060

    const/16 v2, 0x4c

    aput-boolean v3, v1, v2

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4d

    aput-boolean v3, v1, v2

    .line 115
    :goto_0
    const/16 v2, 0x50

    aput-boolean v3, v1, v2

    return-object v0

    .line 116
    :cond_0
    const v0, 0x7f080061

    const/16 v2, 0x4e

    aput-boolean v3, v1, v2

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4f

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xf

    const/16 v4, 0xe

    const/16 v3, 0xd

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v7

    .line 43
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    aput-boolean v2, v7, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 99
    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x44

    aput-boolean v2, v7, v1

    .line 102
    :goto_1
    const/16 v1, 0x45

    aput-boolean v2, v7, v1

    return-object v0

    .line 43
    :sswitch_0
    const-string v3, "01d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aput-boolean v2, v7, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aput-boolean v2, v7, v5

    goto :goto_0

    :sswitch_1
    const-string v3, "01n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aput-boolean v2, v7, v6

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    aput-boolean v2, v7, v1

    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "02d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x12

    aput-boolean v2, v7, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    const/16 v3, 0x13

    aput-boolean v2, v7, v3

    goto :goto_0

    :sswitch_3
    const-string v3, "02n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x14

    aput-boolean v2, v7, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    const/16 v3, 0x15

    aput-boolean v2, v7, v3

    goto :goto_0

    :sswitch_4
    const-string v3, "03d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x16

    aput-boolean v2, v7, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    const/16 v3, 0x17

    aput-boolean v2, v7, v3

    goto :goto_0

    :sswitch_5
    const-string v3, "03n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x18

    aput-boolean v2, v7, v3

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    const/16 v3, 0x19

    aput-boolean v2, v7, v3

    goto :goto_0

    :sswitch_6
    const-string v3, "04d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x1a

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x6

    const/16 v3, 0x1b

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "04n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x1c

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x7

    const/16 v3, 0x1d

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "09d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x1e

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    const/16 v3, 0x1f

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "09n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v3, 0x20

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    const/16 v3, 0x21

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "10d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0x22

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    const/16 v3, 0x23

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "10n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const/16 v3, 0x24

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xb

    const/16 v3, 0x25

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "11d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const/16 v3, 0x26

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    const/16 v3, 0x27

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "11n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v3, 0x28

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x29

    aput-boolean v2, v7, v1

    move v1, v3

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "13d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/16 v3, 0x2a

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x2b

    aput-boolean v2, v7, v1

    move v1, v4

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "13n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v3, 0x2c

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x2d

    aput-boolean v2, v7, v1

    move v1, v5

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "50d"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const/16 v3, 0x2e

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x2f

    aput-boolean v2, v7, v1

    move v1, v6

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "50n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v3, 0x30

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x11

    const/16 v3, 0x31

    aput-boolean v2, v7, v3

    goto/16 :goto_0

    .line 45
    :pswitch_0
    const v1, 0x7f08008f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "icon":Ljava/lang/String;
    const/16 v1, 0x32

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 48
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f080090

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x33

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 51
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x34

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 54
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f080093

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x35

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 57
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x36

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 60
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_5
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x37

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 63
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_6
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x38

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 66
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_7
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x39

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 69
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_8
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x3a

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 72
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_9
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x3b

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 75
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_a
    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x3c

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 78
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_b
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x3d

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 81
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_c
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x3e

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 84
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_d
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x3f

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 87
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_e
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x40

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 90
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_f
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x41

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 93
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_10
    const v1, 0x7f080095

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x42

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 96
    .end local v0    # "icon":Ljava/lang/String;
    :pswitch_11
    const v1, 0x7f080095

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0    # "icon":Ljava/lang/String;
    const/16 v1, 0x43

    aput-boolean v2, v7, v1

    goto/16 :goto_1

    .line 43
    :sswitch_data_0
    .sparse-switch
        0xba83 -> :sswitch_0
        0xba8d -> :sswitch_1
        0xbaa2 -> :sswitch_2
        0xbaac -> :sswitch_3
        0xbac1 -> :sswitch_4
        0xbacb -> :sswitch_5
        0xbae0 -> :sswitch_6
        0xbaea -> :sswitch_7
        0xbb7b -> :sswitch_8
        0xbb85 -> :sswitch_9
        0xbe25 -> :sswitch_a
        0xbe2f -> :sswitch_b
        0xbe44 -> :sswitch_c
        0xbe4e -> :sswitch_d
        0xbe82 -> :sswitch_e
        0xbe8c -> :sswitch_f
        0xcd29 -> :sswitch_10
        0xcd33 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-boolean v4, v1, v2

    .line 108
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x47

    aput-boolean v4, v1, v3

    .line 109
    const-string v3, "metric"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x48

    aput-boolean v4, v1, v2

    :goto_0
    const/16 v2, 0x4a

    aput-boolean v4, v1, v2

    return-object v0

    :cond_0
    aget-object v0, v0, v4

    const/16 v2, 0x49

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public static getWeatherForecastUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v0

    .line 165
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x62

    aput-boolean v5, v0, v2

    .line 166
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "appid"

    const-string v3, "1487dd8a93bfd85d278d9ac8dcfee94c"

    const/16 v4, 0x63

    aput-boolean v5, v0, v4

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "lat"

    const/16 v3, 0x64

    aput-boolean v5, v0, v3

    .line 168
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "lon"

    const/16 v3, 0x65

    aput-boolean v5, v0, v3

    .line 169
    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "units"

    const/16 v3, 0x66

    aput-boolean v5, v0, v3

    .line 170
    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "lang"

    const-string v3, "cs"

    const/16 v4, 0x67

    aput-boolean v5, v0, v4

    .line 171
    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p4, "cz"

    const/16 v3, 0x68

    aput-boolean v5, v0, v3

    :goto_0
    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/16 v2, 0x6a

    aput-boolean v5, v0, v2

    .line 172
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x6b

    aput-boolean v5, v0, v2

    .line 173
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    aput-boolean v5, v0, v2

    .line 174
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x6d

    aput-boolean v5, v0, v1

    return-object v2

    .line 171
    :cond_0
    const/16 v3, 0x69

    aput-boolean v5, v0, v3

    goto :goto_0
.end method

.method public static intervalMillisForAlarm(Ljava/lang/String;)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v1

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "interval":I
    sparse-switch v0, :sswitch_data_0

    .line 139
    mul-int/lit8 v2, v0, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const/16 v4, 0x58

    aput-boolean v5, v1, v4

    :goto_0
    return-wide v2

    .line 129
    :sswitch_0
    const-wide/32 v2, 0xdbba0

    const/16 v4, 0x53

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 131
    :sswitch_1
    const-wide/32 v2, 0x1b7740

    const/16 v4, 0x54

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 133
    :sswitch_2
    const-wide/32 v2, 0x36ee80

    const/16 v4, 0x55

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 135
    :sswitch_3
    const-wide/32 v2, 0x2932e00

    const/16 v4, 0x56

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 137
    :sswitch_4
    const-wide/32 v2, 0x5265c00

    const/16 v4, 0x57

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x1e -> :sswitch_1
        0x3c -> :sswitch_2
        0x2d0 -> :sswitch_3
        0x5a0 -> :sswitch_4
    .end sparse-switch
.end method

.method public static setLastUpdateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    const/16 v2, 0x51

    aput-boolean v3, v0, v2

    .line 122
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static unixTimeToFormatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    const/16 v1, 0x59

    aput-boolean v4, v0, v1

    .line 145
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public static windDegreeToDirections(Landroid/content/Context;D)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/Utils;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-boolean v8, v0, v2

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    aput-boolean v8, v0, v3

    .line 158
    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide/16 v6, 0x2d

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-int v3, v4

    const/16 v4, 0x60

    aput-boolean v8, v0, v4

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-boolean v8, v0, v2

    return-object v1
.end method

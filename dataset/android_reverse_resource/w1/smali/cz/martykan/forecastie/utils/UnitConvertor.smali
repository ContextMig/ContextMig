.class public Lcz/martykan/forecastie/utils/UnitConvertor;
.super Ljava/lang/Object;
.source "UnitConvertor.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1bad75b7bd7ab6e2L

    const-string v2, "cz/martykan/forecastie/utils/UnitConvertor"

    const/16 v3, 0x30

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static convertPressure(FLandroid/content/SharedPreferences;)F
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    const-string v1, "pressureUnit"

    const-string v2, "hPa"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kPa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p0, v1

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 55
    :goto_0
    return p0

    .line 50
    :cond_0
    const-string v1, "pressureUnit"

    const-string v2, "hPa"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mm Hg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    float-to-double v2, p0

    const-wide v4, 0x3fe800811a790f06L    # 0.750061561303

    mul-double/2addr v2, v4

    double-to-float p0, v2

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 52
    :cond_1
    const-string v1, "pressureUnit"

    const-string v2, "hPa"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "in Hg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    float-to-double v2, p0

    const-wide v4, 0x3f9e3d1b9e2c2186L    # 0.0295299830714

    mul-double/2addr v2, v4

    double-to-float p0, v2

    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 55
    :cond_2
    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public static convertTemperature(FLandroid/content/SharedPreferences;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    const-string v1, "unit"

    const-string v2, "\u00b0C"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u00b0C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 10
    invoke-static {p0}, Lcz/martykan/forecastie/utils/UnitConvertor;->kelvinToCelsius(F)F

    move-result p0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 14
    :goto_0
    return p0

    .line 11
    :cond_0
    const-string v1, "unit"

    const-string v2, "\u00b0C"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u00b0F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 12
    invoke-static {p0}, Lcz/martykan/forecastie/utils/UnitConvertor;->kelvinToFahrenheit(F)F

    move-result p0

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public static convertWind(DLandroid/content/SharedPreferences;)D
    .locals 6

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    const-string v1, "speedUnit"

    const-string v2, "m/s"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kph"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr p0, v2

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    .line 111
    :goto_0
    return-wide p0

    .line 63
    :cond_0
    const-string v1, "speedUnit"

    const-string v2, "m/s"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mph"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-wide v2, 0x4001e53edaccb8d8L    # 2.23693629205

    mul-double/2addr p0, v2

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "speedUnit"

    const-string v2, "m/s"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-wide v2, 0x3fff19fc2a8869c6L    # 1.943844

    mul-double/2addr p0, v2

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "speedUnit"

    const-string v2, "m/s"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 70
    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3

    .line 71
    const-wide/16 p0, 0x0

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 73
    :cond_3
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_4

    .line 74
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 76
    :cond_4
    const-wide v2, 0x400a666666666666L    # 3.3

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5

    .line 77
    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 79
    :cond_5
    const-wide/high16 v2, 0x4016000000000000L    # 5.5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_6

    .line 80
    const-wide/high16 p0, 0x4008000000000000L    # 3.0

    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 82
    :cond_6
    const-wide v2, 0x401f99999999999aL    # 7.9

    cmpg-double v1, p0, v2

    if-gez v1, :cond_7

    .line 83
    const-wide/high16 p0, 0x4010000000000000L    # 4.0

    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 85
    :cond_7
    const-wide v2, 0x4025666666666666L    # 10.7

    cmpg-double v1, p0, v2

    if-gez v1, :cond_8

    .line 86
    const-wide/high16 p0, 0x4014000000000000L    # 5.0

    const/16 v1, 0x1a

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 88
    :cond_8
    const-wide v2, 0x402b99999999999aL    # 13.8

    cmpg-double v1, p0, v2

    if-gez v1, :cond_9

    .line 89
    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    const/16 v1, 0x1b

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 91
    :cond_9
    const-wide v2, 0x403119999999999aL    # 17.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_a

    .line 92
    const-wide/high16 p0, 0x401c000000000000L    # 7.0

    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 94
    :cond_a
    const-wide v2, 0x4034b33333333333L    # 20.7

    cmpg-double v1, p0, v2

    if-gez v1, :cond_b

    .line 95
    const-wide/high16 p0, 0x4020000000000000L    # 8.0

    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 97
    :cond_b
    const-wide v2, 0x4038666666666666L    # 24.4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_c

    .line 98
    const-wide/high16 p0, 0x4022000000000000L    # 9.0

    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 100
    :cond_c
    const-wide v2, 0x403c666666666666L    # 28.4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_d

    .line 101
    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 103
    :cond_d
    const-wide v2, 0x40404ccccccccccdL    # 32.6

    cmpg-double v1, p0, v2

    if-gez v1, :cond_e

    .line 104
    const-wide/high16 p0, 0x4026000000000000L    # 11.0

    const/16 v1, 0x20

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 107
    :cond_e
    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 111
    :cond_f
    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    goto/16 :goto_0
.end method

.method public static getBeaufortName(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v1

    .line 116
    if-nez p0, :cond_0

    .line 117
    const-string v0, "Calm"

    const/16 v2, 0x23

    aput-boolean v3, v1, v2

    .line 153
    :goto_0
    return-object v0

    .line 119
    :cond_0
    if-ne p0, v3, :cond_1

    .line 120
    const-string v0, "Light air"

    const/16 v2, 0x24

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 123
    const-string v0, "Light breeze"

    const/16 v2, 0x25

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 126
    const-string v0, "Gentle breeze"

    const/16 v2, 0x26

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 128
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 129
    const-string v0, "Moderate breeze"

    const/16 v2, 0x27

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 131
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 132
    const-string v0, "Fresh breeze"

    const/16 v2, 0x28

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 134
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 135
    const-string v0, "Strong breeze"

    const/16 v2, 0x29

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 137
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 138
    const-string v0, "High wind"

    const/16 v2, 0x2a

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 140
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 141
    const-string v0, "Gale"

    const/16 v2, 0x2b

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 143
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 144
    const-string v0, "Strong gale"

    const/16 v2, 0x2c

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 146
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 147
    const-string v0, "Storm"

    const/16 v2, 0x2d

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 149
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 150
    const-string v0, "Violent storm"

    const/16 v2, 0x2e

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 153
    :cond_b
    const-string v0, "Hurricane"

    const/16 v2, 0x2f

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getRainString(DLandroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v3

    .line 27
    const-wide/16 v4, 0x0

    cmpl-double v2, p0, v4

    if-lez v2, :cond_3

    const/16 v2, 0x8

    aput-boolean v8, v3, v2

    .line 28
    const-string v2, "lengthUnit"

    const-string v4, "mm"

    invoke-interface {p2, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, p0, v4

    if-gez v2, :cond_0

    .line 30
    const-string v2, " (<0.1 mm)"

    const/16 v4, 0x9

    aput-boolean v8, v3, v4

    .line 43
    :goto_0
    return-object v2

    .line 32
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, " (%.1f %s)"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "lengthUnit"

    const-string v7, "mm"

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 35
    :cond_1
    const-wide v4, 0x4039666666666666L    # 25.4

    div-double v0, p0, v4

    .line 36
    .local v0, "rain":D
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v0, v4

    if-gez v2, :cond_2

    .line 37
    const-string v2, " (<0.01 in)"

    const/16 v4, 0xb

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 39
    :cond_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, " (%.2f %s)"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "lengthUnit"

    const-string v7, "mm"

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 43
    .end local v0    # "rain":D
    :cond_3
    const-string v2, ""

    const/16 v4, 0xd

    aput-boolean v8, v3, v4

    goto :goto_0
.end method

.method public static kelvinToCelsius(F)F
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    const v1, 0x43889333    # 273.15f

    sub-float v1, p0, v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static kelvinToFahrenheit(F)F
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/utils/UnitConvertor;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {p0}, Lcz/martykan/forecastie/utils/UnitConvertor;->kelvinToCelsius(F)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

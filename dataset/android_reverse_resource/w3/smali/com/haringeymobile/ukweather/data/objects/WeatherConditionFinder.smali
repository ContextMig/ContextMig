.class public Lcom/haringeymobile/ukweather/data/objects/WeatherConditionFinder;
.super Ljava/lang/Object;
.source "WeatherConditionFinder.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WeatherConditionFinder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1ecefa819cdbb801L

    const-string v2, "com/haringeymobile/ukweather/data/objects/WeatherConditionFinder"

    const/16 v3, 0x4b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/WeatherConditionFinder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WeatherConditionFinder;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static findWeatherConditionStringResourceId(I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WeatherConditionFinder;->$jacocoInit()[Z

    move-result-object v1

    .line 16
    sparse-switch p0, :sswitch_data_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected weatherId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x4a

    aput-boolean v4, v1, v2

    throw v0

    .line 18
    :sswitch_0
    const v0, 0x7f0600af

    aput-boolean v4, v1, v4

    .line 162
    :goto_0
    return v0

    .line 20
    :sswitch_1
    const v0, 0x7f0600b0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 22
    :sswitch_2
    const v0, 0x7f0600b1

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 24
    :sswitch_3
    const v0, 0x7f0600b2

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 26
    :sswitch_4
    const v0, 0x7f0600b3

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 28
    :sswitch_5
    const v0, 0x7f0600b4

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 30
    :sswitch_6
    const v0, 0x7f0600b5

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 32
    :sswitch_7
    const v0, 0x7f0600b6

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 34
    :sswitch_8
    const v0, 0x7f0600b7

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 36
    :sswitch_9
    const v0, 0x7f0600b8

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 38
    :sswitch_a
    const v0, 0x7f0600b9

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 40
    :sswitch_b
    const v0, 0x7f0600ba

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 42
    :sswitch_c
    const v0, 0x7f0600bb

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 44
    :sswitch_d
    const v0, 0x7f0600bc

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 46
    :sswitch_e
    const v0, 0x7f0600bd

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 48
    :sswitch_f
    const v0, 0x7f0600be

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 50
    :sswitch_10
    const v0, 0x7f0600bf

    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 52
    :sswitch_11
    const v0, 0x7f0600c0

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 54
    :sswitch_12
    const v0, 0x7f0600c1

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 56
    :sswitch_13
    const v0, 0x7f0600c2

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 58
    :sswitch_14
    const v0, 0x7f0600c3

    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 60
    :sswitch_15
    const v0, 0x7f0600c4

    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 62
    :sswitch_16
    const v0, 0x7f0600c5

    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 64
    :sswitch_17
    const v0, 0x7f0600c6

    const/16 v2, 0x18

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 66
    :sswitch_18
    const v0, 0x7f0600c7

    const/16 v2, 0x19

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 68
    :sswitch_19
    const v0, 0x7f0600c8

    const/16 v2, 0x1a

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 70
    :sswitch_1a
    const v0, 0x7f0600c9

    const/16 v2, 0x1b

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 72
    :sswitch_1b
    const v0, 0x7f0600ca

    const/16 v2, 0x1c

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 74
    :sswitch_1c
    const v0, 0x7f0600cb

    const/16 v2, 0x1d

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 76
    :sswitch_1d
    const v0, 0x7f0600cc

    const/16 v2, 0x1e

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 78
    :sswitch_1e
    const v0, 0x7f0600cd

    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 80
    :sswitch_1f
    const v0, 0x7f0600ce

    const/16 v2, 0x20

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 82
    :sswitch_20
    const v0, 0x7f0600cf

    const/16 v2, 0x21

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 84
    :sswitch_21
    const v0, 0x7f0600d0

    const/16 v2, 0x22

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 86
    :sswitch_22
    const v0, 0x7f0600d1

    const/16 v2, 0x23

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 88
    :sswitch_23
    const v0, 0x7f0600d2

    const/16 v2, 0x24

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 90
    :sswitch_24
    const v0, 0x7f0600d3

    const/16 v2, 0x25

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 92
    :sswitch_25
    const v0, 0x7f0600d4

    const/16 v2, 0x26

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 94
    :sswitch_26
    const v0, 0x7f0600d5

    const/16 v2, 0x27

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 96
    :sswitch_27
    const v0, 0x7f0600d6

    const/16 v2, 0x28

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 98
    :sswitch_28
    const v0, 0x7f0600d7

    const/16 v2, 0x29

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 100
    :sswitch_29
    const v0, 0x7f0600d8

    const/16 v2, 0x2a

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 102
    :sswitch_2a
    const v0, 0x7f0600d9

    const/16 v2, 0x2b

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 104
    :sswitch_2b
    const v0, 0x7f0600da

    const/16 v2, 0x2c

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 106
    :sswitch_2c
    const v0, 0x7f0600db

    const/16 v2, 0x2d

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 108
    :sswitch_2d
    const v0, 0x7f0600dc

    const/16 v2, 0x2e

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 110
    :sswitch_2e
    const v0, 0x7f0600dd

    const/16 v2, 0x2f

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 112
    :sswitch_2f
    const v0, 0x7f0600de

    const/16 v2, 0x30

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 114
    :sswitch_30
    const v0, 0x7f0600df

    const/16 v2, 0x31

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 116
    :sswitch_31
    const v0, 0x7f0600e0

    const/16 v2, 0x32

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 118
    :sswitch_32
    const v0, 0x7f0600e1

    const/16 v2, 0x33

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 120
    :sswitch_33
    const v0, 0x7f0600e2

    const/16 v2, 0x34

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 122
    :sswitch_34
    const v0, 0x7f0600e3

    const/16 v2, 0x35

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 124
    :sswitch_35
    const v0, 0x7f0600e4

    const/16 v2, 0x36

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 126
    :sswitch_36
    const v0, 0x7f0600e5

    const/16 v2, 0x37

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 128
    :sswitch_37
    const v0, 0x7f0600e6

    const/16 v2, 0x38

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 130
    :sswitch_38
    const v0, 0x7f0600e7

    const/16 v2, 0x39

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 132
    :sswitch_39
    const v0, 0x7f0600e8

    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 134
    :sswitch_3a
    const v0, 0x7f0600e9

    const/16 v2, 0x3b

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 136
    :sswitch_3b
    const v0, 0x7f0600ea

    const/16 v2, 0x3c

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 138
    :sswitch_3c
    const v0, 0x7f0600eb

    const/16 v2, 0x3d

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 140
    :sswitch_3d
    const v0, 0x7f0600ec

    const/16 v2, 0x3e

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 142
    :sswitch_3e
    const v0, 0x7f0600ed

    const/16 v2, 0x3f

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 144
    :sswitch_3f
    const v0, 0x7f0600ee

    const/16 v2, 0x40

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 146
    :sswitch_40
    const v0, 0x7f0600ef

    const/16 v2, 0x41

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 148
    :sswitch_41
    const v0, 0x7f0600f0

    const/16 v2, 0x42

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 150
    :sswitch_42
    const v0, 0x7f0600f1

    const/16 v2, 0x43

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 152
    :sswitch_43
    const v0, 0x7f0600f2

    const/16 v2, 0x44

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 154
    :sswitch_44
    const v0, 0x7f0600f3

    const/16 v2, 0x45

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 156
    :sswitch_45
    const v0, 0x7f0600f4

    const/16 v2, 0x46

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 158
    :sswitch_46
    const v0, 0x7f0600f5

    const/16 v2, 0x47

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 160
    :sswitch_47
    const v0, 0x7f0600f6

    const/16 v2, 0x48

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 162
    :sswitch_48
    const v0, 0x7f0600f7

    const/16 v2, 0x49

    aput-boolean v4, v1, v2

    goto/16 :goto_0

    .line 16
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xd2 -> :sswitch_3
        0xd3 -> :sswitch_4
        0xd4 -> :sswitch_5
        0xdd -> :sswitch_6
        0xe6 -> :sswitch_7
        0xe7 -> :sswitch_8
        0xe8 -> :sswitch_9
        0x12c -> :sswitch_a
        0x12d -> :sswitch_b
        0x12e -> :sswitch_c
        0x136 -> :sswitch_d
        0x137 -> :sswitch_e
        0x138 -> :sswitch_f
        0x139 -> :sswitch_10
        0x13a -> :sswitch_11
        0x141 -> :sswitch_12
        0x1f4 -> :sswitch_13
        0x1f5 -> :sswitch_14
        0x1f6 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x1ff -> :sswitch_18
        0x208 -> :sswitch_19
        0x209 -> :sswitch_1a
        0x20a -> :sswitch_1b
        0x213 -> :sswitch_1c
        0x258 -> :sswitch_1d
        0x259 -> :sswitch_1e
        0x25a -> :sswitch_1f
        0x263 -> :sswitch_20
        0x264 -> :sswitch_21
        0x267 -> :sswitch_22
        0x268 -> :sswitch_23
        0x26c -> :sswitch_24
        0x26d -> :sswitch_25
        0x26e -> :sswitch_26
        0x2bd -> :sswitch_27
        0x2c7 -> :sswitch_28
        0x2d1 -> :sswitch_29
        0x2db -> :sswitch_2a
        0x2e5 -> :sswitch_2b
        0x2ef -> :sswitch_2c
        0x2f9 -> :sswitch_2d
        0x2fa -> :sswitch_2e
        0x303 -> :sswitch_2f
        0x30d -> :sswitch_30
        0x320 -> :sswitch_31
        0x321 -> :sswitch_32
        0x322 -> :sswitch_33
        0x323 -> :sswitch_34
        0x324 -> :sswitch_35
        0x384 -> :sswitch_36
        0x385 -> :sswitch_37
        0x386 -> :sswitch_38
        0x387 -> :sswitch_39
        0x388 -> :sswitch_3a
        0x389 -> :sswitch_3b
        0x38a -> :sswitch_3c
        0x3b7 -> :sswitch_3d
        0x3b8 -> :sswitch_3e
        0x3b9 -> :sswitch_3f
        0x3ba -> :sswitch_40
        0x3bb -> :sswitch_41
        0x3bc -> :sswitch_42
        0x3bd -> :sswitch_43
        0x3be -> :sswitch_44
        0x3bf -> :sswitch_45
        0x3c0 -> :sswitch_46
        0x3c1 -> :sswitch_47
        0x3c2 -> :sswitch_48
    .end sparse-switch
.end method

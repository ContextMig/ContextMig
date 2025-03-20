.class public Lcom/haringeymobile/ukweather/utils/MiscMethods;
.super Ljava/lang/Object;
.source "MiscMethods.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final LOGS:Ljava/lang/String; = "Logs"

.field private static final LOGS_ON:Z = false

.field private static final NO_CITIES_FOUND_MESSAGE_COORDINATES:Ljava/lang/String; = ": 13.8,109.343; 48,77.24."

.field private static final NO_CITIES_FOUND_MESSAGE_PART_PREFIX:Ljava/lang/String; = "   # "


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x20c09f0ae10addb1L    # -6.419679601072815E150

    const-string v2, "com/haringeymobile/ukweather/utils/MiscMethods"

    const/16 v3, 0x48

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static formatDoubleValue(DI)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v1

    .line 43
    packed-switch p2, :pswitch_data_0

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provide a pattern for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " decimal places!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-boolean v5, v1, v3

    throw v2

    .line 45
    :pswitch_0
    const-string v0, "##.#"

    .line 46
    .local v0, "pattern":Ljava/lang/String;
    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    .line 54
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v5, v1, v3

    .line 55
    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v5, v1, v3

    return-object v2

    .line 48
    .end local v0    # "pattern":Ljava/lang/String;
    :pswitch_1
    const-string v0, "##.##"

    .line 49
    .restart local v0    # "pattern":Ljava/lang/String;
    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAbbreviatedWeekdayName(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    .line 75
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getNoCitiesFoundDialogMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v1

    .line 154
    const-string v2, "   # "

    const/16 v3, 0x37

    aput-boolean v4, v1, v3

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f060074

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dialogMessage":Ljava/lang/String;
    const/16 v2, 0x38

    aput-boolean v4, v1, v2

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    aput-boolean v4, v1, v2

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f060075

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    aput-boolean v4, v1, v2

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    aput-boolean v4, v1, v2

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-boolean v4, v1, v2

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e

    aput-boolean v4, v1, v2

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": 13.8,109.343; 48,77.24."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const/16 v2, 0x3f

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public static isUserOnline(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v2

    .line 62
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    .line 64
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    .line 65
    if-nez v0, :cond_0

    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0xd

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    aput-boolean v1, v0, v1

    return-void
.end method

.method public static trimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v13

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v15, 0x10

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 90
    .local v2, "originalWidth":I
    const/4 v4, 0x0

    .line 91
    .local v4, "xCoordinateOfFirstPixel":I
    const/4 v3, 0x0

    const/16 v15, 0x11

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v5, v4

    .end local v4    # "xCoordinateOfFirstPixel":I
    .local v5, "xCoordinateOfFirstPixel":I
    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    const/16 v15, 0x12

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 103
    :goto_1
    const/4 v6, 0x0

    .line 104
    .local v6, "xCoordinateOfLastPixel":I
    add-int/lit8 v3, v2, -0x1

    const/16 v15, 0x1a

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v7, v6

    .end local v6    # "xCoordinateOfLastPixel":I
    .local v7, "xCoordinateOfLastPixel":I
    move v6, v3

    :goto_2
    if-gez v6, :cond_4

    const/16 v15, 0x1b

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 116
    :goto_3
    const/4 v9, 0x0

    .line 117
    .local v9, "yCoordinateOfFirstPixel":I
    const/4 v8, 0x0

    const/16 v15, 0x23

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v10, v9

    .end local v9    # "yCoordinateOfFirstPixel":I
    .local v10, "yCoordinateOfFirstPixel":I
    move v9, v8

    :goto_4
    if-lt v9, v14, :cond_8

    const/16 v15, 0x24

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 129
    :goto_5
    const/4 v11, 0x0

    .line 130
    .local v11, "yCoordinateOfLastPixel":I
    add-int/lit8 v8, v14, -0x1

    const/16 v14, 0x2c

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    move v12, v11

    .end local v11    # "yCoordinateOfLastPixel":I
    .local v12, "yCoordinateOfLastPixel":I
    move v11, v8

    :goto_6
    if-gez v11, :cond_c

    const/16 v14, 0x2d

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 141
    :goto_7
    sub-int v1, v7, v5

    .line 142
    .local v1, "newBitmapWidth":I
    sub-int v14, v12, v10

    const/16 v15, 0x35

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 143
    move-object/from16 v0, p0

    invoke-static {v0, v5, v10, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    const/16 v15, 0x36

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    return-object v14

    .line 92
    .end local v1    # "newBitmapWidth":I
    .end local v7    # "xCoordinateOfLastPixel":I
    .end local v10    # "yCoordinateOfFirstPixel":I
    .end local v12    # "yCoordinateOfLastPixel":I
    :cond_0
    if-eqz v5, :cond_1

    const/16 v15, 0x13

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    goto :goto_1

    .line 93
    :cond_1
    const/4 v8, 0x0

    const/16 v15, 0x14

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    :goto_8
    if-lt v8, v14, :cond_2

    const/16 v15, 0x15

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 91
    :goto_9
    add-int/lit8 v3, v4, 0x1

    .local v3, "x":I
    const/16 v15, 0x19

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v4, v3

    goto :goto_0

    .line 93
    .end local v3    # "x":I
    :cond_2
    const/16 v15, 0x16

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 94
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    if-eqz v15, :cond_3

    .line 96
    .end local v5    # "xCoordinateOfFirstPixel":I
    .restart local v4    # "xCoordinateOfFirstPixel":I
    const/16 v15, 0x17

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v5, v4

    .end local v4    # "xCoordinateOfFirstPixel":I
    .restart local v5    # "xCoordinateOfFirstPixel":I
    goto :goto_9

    .line 93
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .local v8, "y":I
    const/16 v15, 0x18

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    goto :goto_8

    .line 105
    .end local v8    # "y":I
    .restart local v7    # "xCoordinateOfLastPixel":I
    :cond_4
    if-eqz v7, :cond_5

    const/16 v15, 0x1c

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    goto/16 :goto_3

    .line 106
    :cond_5
    const/4 v8, 0x0

    const/16 v15, 0x1d

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    :goto_a
    if-lt v8, v14, :cond_6

    const/16 v15, 0x1e

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 104
    :goto_b
    add-int/lit8 v3, v6, -0x1

    .restart local v3    # "x":I
    const/16 v15, 0x22

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v6, v3

    goto/16 :goto_2

    .line 106
    .end local v3    # "x":I
    :cond_6
    const/16 v15, 0x1f

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    if-eqz v15, :cond_7

    .line 109
    .end local v7    # "xCoordinateOfLastPixel":I
    .restart local v6    # "xCoordinateOfLastPixel":I
    const/16 v15, 0x20

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v7, v6

    .end local v6    # "xCoordinateOfLastPixel":I
    .restart local v7    # "xCoordinateOfLastPixel":I
    goto :goto_b

    .line 106
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .restart local v8    # "y":I
    const/16 v15, 0x21

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    goto :goto_a

    .line 118
    .end local v8    # "y":I
    .restart local v10    # "yCoordinateOfFirstPixel":I
    :cond_8
    if-eqz v10, :cond_9

    const/16 v15, 0x25

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    goto/16 :goto_5

    .line 119
    :cond_9
    const/4 v3, 0x0

    const/16 v15, 0x26

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    :goto_c
    if-lt v3, v2, :cond_a

    const/16 v15, 0x27

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 117
    :goto_d
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "y":I
    const/16 v15, 0x2b

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v9, v8

    goto/16 :goto_4

    .line 119
    .end local v8    # "y":I
    :cond_a
    const/16 v15, 0x28

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    if-eqz v15, :cond_b

    .line 122
    .end local v10    # "yCoordinateOfFirstPixel":I
    .restart local v9    # "yCoordinateOfFirstPixel":I
    const/16 v15, 0x29

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    move v10, v9

    .end local v9    # "yCoordinateOfFirstPixel":I
    .restart local v10    # "yCoordinateOfFirstPixel":I
    goto :goto_d

    .line 119
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "x":I
    const/16 v15, 0x2a

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    goto :goto_c

    .line 131
    .end local v3    # "x":I
    .restart local v12    # "yCoordinateOfLastPixel":I
    :cond_c
    if-eqz v12, :cond_d

    const/16 v14, 0x2e

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    goto/16 :goto_7

    .line 132
    :cond_d
    const/4 v3, 0x0

    const/16 v14, 0x2f

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    :goto_e
    if-lt v3, v2, :cond_e

    const/16 v14, 0x30

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 130
    :goto_f
    add-int/lit8 v8, v11, -0x1

    .restart local v8    # "y":I
    const/16 v14, 0x34

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    move v11, v8

    goto/16 :goto_6

    .line 132
    .end local v8    # "y":I
    :cond_e
    const/16 v14, 0x31

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    if-eqz v14, :cond_f

    .line 135
    .end local v12    # "yCoordinateOfLastPixel":I
    .restart local v11    # "yCoordinateOfLastPixel":I
    const/16 v14, 0x32

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    move v12, v11

    .end local v11    # "yCoordinateOfLastPixel":I
    .restart local v12    # "yCoordinateOfLastPixel":I
    goto :goto_f

    .line 132
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "x":I
    const/16 v14, 0x33

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    goto :goto_e
.end method

.method public static updateLocale(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->$jacocoInit()[Z

    move-result-object v2

    .line 175
    const-string v3, "-r"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x40

    aput-boolean v5, v2, v3

    .line 176
    :goto_0
    const-string v3, "\\-(r)?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42

    aput-boolean v5, v2, v4

    .line 177
    new-instance v1, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    aget-object v3, v3, v5

    invoke-direct {v1, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v1, "locale":Ljava/util/Locale;
    const/16 v3, 0x43

    aput-boolean v5, v2, v3

    .line 181
    .end local v1    # "locale":Ljava/util/Locale;
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 182
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/16 v3, 0x45

    aput-boolean v5, v2, v3

    .line 183
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/16 v3, 0x46

    aput-boolean v5, v2, v3

    .line 184
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 185
    const/16 v3, 0x47

    aput-boolean v5, v2, v3

    return-void

    .line 175
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x41

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x44

    aput-boolean v5, v2, v3

    goto :goto_1
.end method

.class public Lcom/batch/android/e/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 27
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/e/d/a/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    float-to-int v0, p2

    invoke-static {p0, p1, v0, p3}, Lcom/batch/android/e/d/a/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    float-to-int v0, p2

    invoke-static {p0, p1, v0, p3}, Lcom/batch/android/e/d/a/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 34

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 92
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 94
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ge v0, v3, :cond_0

    .line 95
    const/4 v2, 0x0

    .line 288
    :goto_0
    return-object v2

    .line 98
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 101
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 102
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 104
    add-int/lit8 v21, v5, -0x1

    .line 105
    add-int/lit8 v22, v9, -0x1

    .line 106
    mul-int v4, v5, v9

    .line 107
    add-int v6, p2, p2

    add-int/lit8 v23, v6, 0x1

    .line 109
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 110
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 111
    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 113
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 115
    add-int/lit8 v4, v23, 0x1

    shr-int/lit8 v4, v4, 0x1

    .line 116
    mul-int v6, v4, v4

    .line 117
    mul-int/lit16 v4, v6, 0x100

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 118
    const/4 v4, 0x0

    :goto_1
    mul-int/lit16 v7, v6, 0x100

    if-ge v4, v7, :cond_1

    .line 119
    div-int v7, v4, v6

    aput v7, v28, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 122
    :cond_1
    const/4 v6, 0x0

    .line 124
    const/4 v4, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 129
    add-int/lit8 v29, p2, 0x1

    .line 133
    const/4 v7, 0x0

    move/from16 v19, v6

    move v13, v6

    move/from16 v20, v7

    :goto_2
    move/from16 v0, v20

    if-ge v0, v9, :cond_6

    .line 134
    const/4 v6, 0x0

    .line 135
    move/from16 v0, p2

    neg-int v7, v0

    move v8, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move v14, v7

    move v15, v6

    move/from16 v16, v6

    move/from16 v17, v6

    move v7, v6

    :goto_3
    move/from16 v0, p2

    if-gt v14, v0, :cond_3

    .line 136
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v18, v18, v13

    aget v18, v3, v18

    .line 137
    add-int v30, v14, p2

    aget-object v30, v4, v30

    .line 138
    const/16 v31, 0x0

    const/high16 v32, 0xff0000

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x10

    aput v32, v30, v31

    .line 139
    const/16 v31, 0x1

    const v32, 0xff00

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x8

    aput v32, v30, v31

    .line 140
    const/16 v31, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v30, v31

    .line 141
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v29, v18

    .line 142
    const/16 v31, 0x0

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v17, v17, v31

    .line 143
    const/16 v31, 0x1

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v16, v16, v31

    .line 144
    const/16 v31, 0x2

    aget v31, v30, v31

    mul-int v18, v18, v31

    add-int v15, v15, v18

    .line 145
    if-lez v14, :cond_2

    .line 146
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v8, v8, v18

    .line 147
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v7, v7, v18

    .line 148
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v6, v6, v18

    .line 135
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 150
    :cond_2
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v12, v12, v18

    .line 151
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v11, v11, v18

    .line 152
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v10, v10, v18

    goto :goto_4

    .line 157
    :cond_3
    const/4 v14, 0x0

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move/from16 v13, p2

    :goto_5
    if-ge v15, v5, :cond_5

    .line 159
    aget v30, v28, v18

    aput v30, v24, v14

    .line 160
    aget v30, v28, v17

    aput v30, v25, v14

    .line 161
    aget v30, v28, v16

    aput v30, v26, v14

    .line 163
    sub-int v18, v18, v12

    .line 164
    sub-int v17, v17, v11

    .line 165
    sub-int v16, v16, v10

    .line 167
    sub-int v30, v13, p2

    add-int v30, v30, v23

    .line 168
    rem-int v30, v30, v23

    aget-object v30, v4, v30

    .line 170
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v12, v12, v31

    .line 171
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v11, v11, v31

    .line 172
    const/16 v31, 0x2

    aget v31, v30, v31

    sub-int v10, v10, v31

    .line 174
    if-nez v20, :cond_4

    .line 175
    add-int v31, v15, p2

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    aput v31, v27, v15

    .line 177
    :cond_4
    aget v31, v27, v15

    add-int v31, v31, v19

    aget v31, v3, v31

    .line 179
    const/16 v32, 0x0

    const/high16 v33, 0xff0000

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x10

    aput v33, v30, v32

    .line 180
    const/16 v32, 0x1

    const v33, 0xff00

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x8

    aput v33, v30, v32

    .line 181
    const/16 v32, 0x2

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v30, v32

    .line 183
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v8, v8, v31

    .line 184
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v7, v7, v31

    .line 185
    const/16 v31, 0x2

    aget v30, v30, v31

    add-int v6, v6, v30

    .line 187
    add-int v18, v18, v8

    .line 188
    add-int v17, v17, v7

    .line 189
    add-int v16, v16, v6

    .line 191
    add-int/lit8 v13, v13, 0x1

    rem-int v13, v13, v23

    .line 192
    rem-int v30, v13, v23

    aget-object v30, v4, v30

    .line 194
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v12, v12, v31

    .line 195
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v11, v11, v31

    .line 196
    const/16 v31, 0x2

    aget v31, v30, v31

    add-int v10, v10, v31

    .line 198
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v8, v8, v31

    .line 199
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v7, v7, v31

    .line 200
    const/16 v31, 0x2

    aget v30, v30, v31

    sub-int v6, v6, v30

    .line 202
    add-int/lit8 v14, v14, 0x1

    .line 157
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 204
    :cond_5
    add-int v6, v19, v5

    .line 133
    add-int/lit8 v7, v20, 0x1

    move/from16 v19, v6

    move v13, v14

    move/from16 v20, v7

    goto/16 :goto_2

    .line 206
    :cond_6
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v5, :cond_c

    .line 207
    const/4 v7, 0x0

    .line 208
    move/from16 v0, p2

    neg-int v6, v0

    mul-int/2addr v6, v5

    .line 209
    move/from16 v0, p2

    neg-int v8, v0

    move v10, v7

    move v11, v7

    move v12, v7

    move v13, v7

    move/from16 v18, v8

    move v14, v7

    move/from16 v16, v7

    move/from16 v17, v7

    move v8, v7

    :goto_7
    move/from16 v0, v18

    move/from16 v1, p2

    if-gt v0, v1, :cond_9

    .line 210
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v20, v19, v15

    .line 212
    add-int v19, v18, p2

    aget-object v21, v4, v19

    .line 214
    const/16 v19, 0x0

    aget v30, v24, v20

    aput v30, v21, v19

    .line 215
    const/16 v19, 0x1

    aget v30, v25, v20

    aput v30, v21, v19

    .line 216
    const/16 v19, 0x2

    aget v30, v26, v20

    aput v30, v21, v19

    .line 218
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v30, v29, v19

    .line 220
    aget v19, v24, v20

    mul-int v19, v19, v30

    add-int v19, v19, v17

    .line 221
    aget v17, v25, v20

    mul-int v17, v17, v30

    add-int v17, v17, v16

    .line 222
    aget v16, v26, v20

    mul-int v16, v16, v30

    add-int v16, v16, v14

    .line 224
    if-lez v18, :cond_8

    .line 225
    const/4 v14, 0x0

    aget v14, v21, v14

    add-int/2addr v10, v14

    .line 226
    const/4 v14, 0x1

    aget v14, v21, v14

    add-int/2addr v8, v14

    .line 227
    const/4 v14, 0x2

    aget v14, v21, v14

    add-int/2addr v7, v14

    .line 234
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 235
    add-int/2addr v6, v5

    .line 209
    :cond_7
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v19

    goto :goto_7

    .line 229
    :cond_8
    const/4 v14, 0x0

    aget v14, v21, v14

    add-int/2addr v13, v14

    .line 230
    const/4 v14, 0x1

    aget v14, v21, v14

    add-int/2addr v12, v14

    .line 231
    const/4 v14, 0x2

    aget v14, v21, v14

    add-int/2addr v11, v14

    goto :goto_8

    .line 240
    :cond_9
    const/4 v6, 0x0

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v16, v6

    move/from16 v17, v14

    move v14, v15

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, p2

    :goto_9
    move/from16 v0, v16

    if-ge v0, v9, :cond_b

    .line 242
    const/high16 v20, -0x1000000

    aget v21, v3, v14

    and-int v20, v20, v21

    aget v21, v28, v19

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    aget v21, v28, v18

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v28, v17

    or-int v20, v20, v21

    aput v20, v3, v14

    .line 244
    sub-int v19, v19, v12

    .line 245
    sub-int v18, v18, v11

    .line 246
    sub-int v17, v17, v10

    .line 248
    sub-int v20, v13, p2

    add-int v20, v20, v23

    .line 249
    rem-int v20, v20, v23

    aget-object v20, v4, v20

    .line 251
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v12, v12, v21

    .line 252
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v11, v11, v21

    .line 253
    const/16 v21, 0x2

    aget v21, v20, v21

    sub-int v10, v10, v21

    .line 255
    if-nez v15, :cond_a

    .line 256
    add-int v21, v16, v29

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    mul-int v21, v21, v5

    aput v21, v27, v16

    .line 258
    :cond_a
    aget v21, v27, v16

    add-int v21, v21, v15

    .line 260
    const/16 v30, 0x0

    aget v31, v24, v21

    aput v31, v20, v30

    .line 261
    const/16 v30, 0x1

    aget v31, v25, v21

    aput v31, v20, v30

    .line 262
    const/16 v30, 0x2

    aget v21, v26, v21

    aput v21, v20, v30

    .line 264
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v8, v8, v21

    .line 265
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v7, v7, v21

    .line 266
    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v6, v6, v20

    .line 268
    add-int v19, v19, v8

    .line 269
    add-int v18, v18, v7

    .line 270
    add-int v17, v17, v6

    .line 272
    add-int/lit8 v13, v13, 0x1

    rem-int v13, v13, v23

    .line 273
    aget-object v20, v4, v13

    .line 275
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v12, v12, v21

    .line 276
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v11, v11, v21

    .line 277
    const/16 v21, 0x2

    aget v21, v20, v21

    add-int v10, v10, v21

    .line 279
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v8, v8, v21

    .line 280
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v7, v7, v21

    .line 281
    const/16 v21, 0x2

    aget v20, v20, v21

    sub-int v6, v6, v20

    .line 283
    add-int/2addr v14, v5

    .line 240
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 206
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 287
    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 45
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 48
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 50
    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 51
    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 52
    const/4 v4, 0x0

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 53
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 54
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 55
    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 57
    return-object v1
.end method

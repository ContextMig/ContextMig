.class public Lchan/android/app/pocketnote/util/view/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private debugDraw:Z

.field private horizontalSpacing:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x27c4febdcf73914L

    const-string v2, "chan/android/app/pocketnote/util/view/FlowLayout"

    const/16 v3, 0x7e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 15
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    .line 16
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    .line 17
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    .line 18
    iput-boolean v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->debugDraw:Z

    aput-boolean v2, v0, v1

    .line 23
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lchan/android/app/pocketnote/util/view/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    .line 16
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    .line 17
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    .line 18
    iput-boolean v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->debugDraw:Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 29
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/util/view/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    .line 16
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    .line 17
    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    .line 18
    iput-boolean v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->debugDraw:Z

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 35
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/util/view/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 273
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x77

    aput-boolean v3, v0, v2

    .line 274
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0x78

    aput-boolean v3, v0, v2

    .line 275
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x79

    aput-boolean v3, v0, v2

    .line 276
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    const/16 v2, 0x7a

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 19

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v17

    .line 221
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->debugDraw:Z

    if-nez v1, :cond_0

    .line 222
    const/16 v1, 0x4f

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 270
    :goto_0
    return-void

    .line 225
    :cond_0
    const/16 v1, -0x100

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lchan/android/app/pocketnote/util/view/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v6

    const/16 v1, 0x50

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 226
    const v1, -0xff0100

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lchan/android/app/pocketnote/util/view/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v15

    const/16 v1, 0x51

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 227
    const/high16 v1, -0x10000

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lchan/android/app/pocketnote/util/view/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v18

    const/16 v1, 0x52

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    const/16 v1, 0x53

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 231
    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x54

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v2, v1

    const/16 v1, 0x55

    const/4 v3, 0x1

    aput-boolean v3, v17, v1

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    const/16 v1, 0x56

    const/4 v4, 0x1

    aput-boolean v4, v17, v1

    .line 234
    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v2, v1

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x57

    const/4 v4, 0x1

    aput-boolean v4, v17, v1

    .line 235
    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v8, v1, v4

    const/high16 v1, 0x40800000    # 4.0f

    sub-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x58

    const/4 v4, 0x1

    aput-boolean v4, v17, v1

    .line 236
    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v8, v1, v4

    const/high16 v1, 0x40800000    # 4.0f

    add-float v9, v3, v1

    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    move-object/from16 v7, p1

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    const/16 v1, 0x59

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 245
    :goto_1
    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x61

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    const/16 v1, 0x62

    const/4 v3, 0x1

    aput-boolean v3, v17, v1

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v3, v1

    const/16 v1, 0x63

    const/4 v4, 0x1

    aput-boolean v4, v17, v1

    .line 248
    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v3, v1

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x64

    const/4 v4, 0x1

    aput-boolean v4, v17, v1

    .line 249
    const/high16 v1, 0x40800000    # 4.0f

    sub-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x65

    const/4 v4, 0x1

    aput-boolean v4, v17, v1

    .line 250
    const/high16 v1, 0x40800000    # 4.0f

    add-float v8, v2, v1

    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v9, v1, v4

    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v1

    int-to-float v1, v1

    add-float v11, v3, v1

    move-object/from16 v7, p1

    move v10, v2

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    const/16 v1, 0x66

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 259
    :goto_2
    invoke-static/range {v16 .. v16}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$000(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x6e

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 270
    :goto_3
    const/16 v1, 0x76

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    goto/16 :goto_0

    .line 237
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    if-gtz v1, :cond_2

    const/16 v1, 0x5a

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x5b

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    const/16 v1, 0x5c

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v9, v1, v2

    const/16 v1, 0x5d

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 240
    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    int-to-float v1, v1

    add-float v10, v8, v1

    move-object/from16 v7, p1

    move v11, v9

    move-object v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x5e

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 241
    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v11, v1, v2

    const/high16 v1, 0x40800000    # 4.0f

    sub-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x5f

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 242
    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v11, v1, v2

    const/high16 v1, 0x40800000    # 4.0f

    add-float v12, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    int-to-float v1, v1

    add-float v13, v8, v1

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x60

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    goto/16 :goto_1

    .line 251
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    if-gtz v1, :cond_4

    const/16 v1, 0x67

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x68

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v11, v1, v2

    const/16 v1, 0x69

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v12, v1

    const/16 v1, 0x6a

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 254
    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    int-to-float v1, v1

    add-float v14, v12, v1

    move-object/from16 v10, p1

    move v13, v11

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x6b

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 255
    const/high16 v1, 0x40800000    # 4.0f

    sub-float v2, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    int-to-float v1, v1

    add-float v5, v12, v1

    move-object/from16 v1, p1

    move v4, v11

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x6c

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 256
    const/high16 v1, 0x40800000    # 4.0f

    add-float v9, v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    move-object/from16 v8, p1

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x6d

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    goto/16 :goto_2

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    if-nez v1, :cond_6

    const/16 v1, 0x6f

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    const/16 v1, 0x70

    const/4 v3, 0x1

    aput-boolean v3, v17, v1

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    const/16 v3, 0x71

    const/4 v4, 0x1

    aput-boolean v4, v17, v3

    .line 263
    const/high16 v3, 0x40c00000    # 6.0f

    sub-float v3, v1, v3

    const/high16 v4, 0x40c00000    # 6.0f

    add-float v5, v1, v4

    move-object/from16 v1, p1

    move v4, v2

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 264
    const/16 v1, 0x72

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    goto/16 :goto_3

    .line 265
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x73

    const/4 v3, 0x1

    aput-boolean v3, v17, v2

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    const/16 v2, 0x74

    const/4 v4, 0x1

    aput-boolean v4, v17, v2

    .line 267
    const/high16 v2, 0x40c00000    # 6.0f

    sub-float v2, v1, v2

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v4, v1

    move-object/from16 v1, p1

    move v5, v3

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x75

    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    goto/16 :goto_3
.end method

.method private getHorizontalSpacing(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x38

    aput-boolean v3, v1, v2

    .line 164
    invoke-static {p1}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v0

    .local v0, "hSpacing":I
    const/16 v2, 0x39

    aput-boolean v3, v1, v2

    .line 168
    .end local v0    # "hSpacing":I
    :goto_0
    const/16 v2, 0x3b

    aput-boolean v3, v1, v2

    return v0

    .line 166
    :cond_0
    iget v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    const/16 v2, 0x3a

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private getVerticalSpacing(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x34

    aput-boolean v3, v1, v2

    .line 154
    invoke-static {p1}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v0

    .local v0, "vSpacing":I
    const/16 v2, 0x35

    aput-boolean v3, v1, v2

    .line 158
    .end local v0    # "vSpacing":I
    :goto_0
    const/16 v2, 0x37

    aput-boolean v3, v1, v2

    return v0

    .line 156
    :cond_0
    iget v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    const/16 v2, 0x36

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v1

    .line 209
    sget-object v0, Lchan/android/app/pocketnote/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v0, 0x48

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 211
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->horizontalSpacing:I

    const/16 v0, 0x49

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 212
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->verticalSpacing:I

    const/16 v0, 0x4a

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 213
    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    const/16 v0, 0x4b

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 214
    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout;->debugDraw:Z

    const/16 v0, 0x4c

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    const/16 v0, 0x4e

    aput-boolean v4, v1, v0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    const/16 v2, 0x4d

    aput-boolean v4, v1, v2

    throw v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 190
    instance-of v1, p1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    const/16 v2, 0x42

    aput-boolean v3, v0, v2

    .line 184
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/util/view/FlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 185
    const/16 v2, 0x43

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->generateDefaultLayoutParams()Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected generateDefaultLayoutParams()Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, -0x2

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 195
    new-instance v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x45

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/util/view/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/util/view/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 200
    new-instance v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v2, 0x46

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 205
    new-instance v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    invoke-direct {v1, p1}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x47

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v3

    .line 173
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getChildCount()I

    move-result v0

    .line 174
    .local v0, "count":I
    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput-boolean v9, v3, v2

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0x3d

    aput-boolean v9, v3, v2

    .line 175
    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v2, 0x3e

    aput-boolean v9, v3, v2

    .line 176
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    const/16 v5, 0x3f

    aput-boolean v9, v3, v5

    .line 177
    invoke-static {v2}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$300(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v5

    invoke-static {v2}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$400(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v6

    invoke-static {v2}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$300(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$400(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v2, 0x40

    aput-boolean v9, v3, v2

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    const/16 v2, 0x41

    aput-boolean v9, v3, v2

    return-void
.end method

.method protected onMeasure(II)V
    .locals 32

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout;->$jacocoInit()[Z

    move-result-object v27

    .line 40
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingRight()I

    move-result v28

    sub-int v26, v26, v28

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingLeft()I

    move-result v28

    sub-int v21, v26, v28

    const/16 v26, 0x6

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 41
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingTop()I

    move-result v28

    sub-int v26, v26, v28

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingBottom()I

    move-result v28

    sub-int v22, v26, v28

    const/16 v26, 0x7

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 43
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    const/16 v26, 0x8

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 44
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 49
    .local v17, "modeHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 51
    .local v16, "mode":I
    .local v21, "size":I
    const/16 v26, 0x9

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 57
    .end local v16    # "mode":I
    :goto_0
    const/4 v14, 0x0

    .line 58
    .local v14, "lineThicknessWithSpacing":I
    const/4 v13, 0x0

    .line 59
    .local v13, "lineThickness":I
    const/4 v12, 0x0

    .line 62
    .local v12, "lineLengthWithSpacing":I
    const/16 v20, 0x0

    .line 64
    .local v20, "prevLinePosition":I
    const/4 v7, 0x0

    .line 65
    .local v7, "controlMaxLength":I
    const/4 v8, 0x0

    const/16 v26, 0xb

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 67
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getChildCount()I

    move-result v9

    .line 68
    .local v9, "count":I
    const/4 v10, 0x0

    const/16 v26, 0xc

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    :goto_1
    if-ge v10, v9, :cond_8

    const/16 v26, 0xd

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 69
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    const/16 v28, 0xe

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 70
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 71
    const/16 v26, 0xf

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 68
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .local v10, "i":I
    const/16 v26, 0x2a

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto :goto_1

    .line 54
    .end local v7    # "controlMaxLength":I
    .end local v9    # "count":I
    .end local v10    # "i":I
    .end local v12    # "lineLengthWithSpacing":I
    .end local v13    # "lineThickness":I
    .end local v14    # "lineThicknessWithSpacing":I
    .end local v20    # "prevLinePosition":I
    .end local v21    # "size":I
    .local v22, "size":I
    :cond_0
    const/16 v26, 0xa

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    move/from16 v16, v17

    move/from16 v21, v22

    .end local v22    # "size":I
    .restart local v21    # "size":I
    goto :goto_0

    .line 74
    .restart local v7    # "controlMaxLength":I
    .restart local v9    # "count":I
    .restart local v12    # "lineLengthWithSpacing":I
    .restart local v13    # "lineThickness":I
    .restart local v14    # "lineThicknessWithSpacing":I
    .restart local v20    # "prevLinePosition":I
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;

    .line 76
    .local v15, "lp":Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;
    const/16 v28, 0x10

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 77
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingLeft()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingRight()I

    move-result v29

    add-int v28, v28, v29

    iget v0, v15, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getChildMeasureSpec(III)I

    move-result v28

    const/16 v29, 0x11

    const/16 v30, 0x1

    aput-boolean v30, v27, v29

    .line 78
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingTop()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingBottom()I

    move-result v30

    add-int v29, v29, v30

    iget v0, v15, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->height:I

    move/from16 v30, v0

    move/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getChildMeasureSpec(III)I

    move-result v29

    const/16 v30, 0x12

    const/16 v31, 0x1

    aput-boolean v31, v27, v30

    .line 76
    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    const/16 v28, 0x13

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getHorizontalSpacing(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v23

    const/16 v28, 0x14

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 82
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getVerticalSpacing(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I

    move-result v25

    const/16 v28, 0x15

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 84
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/16 v28, 0x16

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 85
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 92
    .local v3, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 94
    .local v4, "childLength":I
    move v6, v3

    .line 96
    .local v6, "childThickness":I
    .local v23, "spacingLength":I
    .local v25, "spacingThickness":I
    const/16 v26, 0x17

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 104
    .end local v25    # "spacingThickness":I
    :goto_3
    add-int v11, v12, v4

    .line 105
    .local v11, "lineLength":I
    add-int v12, v11, v23

    const/16 v26, 0x19

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 107
    invoke-static {v15}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->access$000(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)Z

    move-result v26

    if-eqz v26, :cond_3

    const/16 v26, 0x1a

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    :goto_4
    const/16 v18, 0x1

    const/16 v26, 0x1e

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 108
    .local v18, "newLine":Z
    :goto_5
    if-nez v18, :cond_6

    const/16 v26, 0x20

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 117
    :goto_6
    add-int v26, v6, v25

    move/from16 v0, v26

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v26, 0x22

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 118
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    move/from16 v26, v0

    if-nez v26, :cond_7

    const/16 v26, 0x23

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 123
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingLeft()I

    move-result v26

    add-int v26, v26, v11

    sub-int v26, v26, v4

    const/16 v28, 0x24

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 124
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingTop()I

    move-result v28

    add-int v19, v28, v20

    .local v19, "posY":I
    const/16 v28, 0x25

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 129
    .end local v19    # "posY":I
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->setPosition(II)V

    const/16 v26, 0x28

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 131
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 132
    add-int v8, v20, v13

    .local v8, "controlMaxThickness":I
    const/16 v26, 0x29

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto/16 :goto_2

    .line 98
    .end local v4    # "childLength":I
    .end local v6    # "childThickness":I
    .end local v8    # "controlMaxThickness":I
    .end local v11    # "lineLength":I
    .end local v18    # "newLine":Z
    .end local v23    # "spacingLength":I
    :cond_2
    move v5, v3

    .line 99
    .local v5, "childLength":I
    move v6, v4

    .line 100
    .restart local v6    # "childThickness":I
    move/from16 v24, v25

    .line 101
    .local v24, "spacingLength":I
    const/16 v26, 0x18

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    move/from16 v25, v23

    move v4, v5

    .end local v5    # "childLength":I
    .restart local v4    # "childLength":I
    move/from16 v23, v24

    .end local v24    # "spacingLength":I
    .restart local v23    # "spacingLength":I
    goto/16 :goto_3

    .line 107
    .restart local v11    # "lineLength":I
    :cond_3
    if-nez v16, :cond_4

    const/16 v26, 0x1b

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    :goto_8
    const/16 v18, 0x0

    const/16 v26, 0x1f

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto :goto_5

    :cond_4
    move/from16 v0, v21

    if-gt v11, v0, :cond_5

    const/16 v26, 0x1c

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto :goto_8

    :cond_5
    const/16 v26, 0x1d

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto/16 :goto_4

    .line 109
    .restart local v18    # "newLine":Z
    :cond_6
    add-int v20, v20, v14

    .line 111
    move v13, v6

    .line 112
    move v11, v4

    .line 113
    add-int v14, v6, v25

    .line 114
    add-int v12, v11, v23

    const/16 v26, 0x21

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto/16 :goto_6

    .line 126
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingLeft()I

    move-result v26

    add-int v26, v26, v20

    const/16 v28, 0x26

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    .line 127
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingTop()I

    move-result v28

    add-int v28, v28, v11

    sub-int v19, v28, v3

    const/16 v28, 0x27

    const/16 v29, 0x1

    aput-boolean v29, v27, v28

    goto :goto_7

    .line 136
    .end local v3    # "childHeight":I
    .end local v4    # "childLength":I
    .end local v6    # "childThickness":I
    .end local v11    # "lineLength":I
    .end local v15    # "lp":Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;
    .end local v18    # "newLine":Z
    .end local v23    # "spacingLength":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    move/from16 v26, v0

    if-nez v26, :cond_9

    const/16 v26, 0x2b

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 137
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingLeft()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingRight()I

    move-result v28

    add-int v26, v26, v28

    add-int v7, v7, v26

    const/16 v26, 0x2c

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 138
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingBottom()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingTop()I

    move-result v28

    add-int v26, v26, v28

    add-int v8, v8, v26

    .restart local v8    # "controlMaxThickness":I
    const/16 v26, 0x2d

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 144
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/FlowLayout;->orientation:I

    move/from16 v26, v0

    if-nez v26, :cond_a

    const/16 v26, 0x30

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 145
    move/from16 v0, p1

    invoke-static {v7, v0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->resolveSize(II)I

    move-result v26

    move/from16 v0, p2

    invoke-static {v8, v0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->resolveSize(II)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lchan/android/app/pocketnote/util/view/FlowLayout;->setMeasuredDimension(II)V

    const/16 v26, 0x31

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 149
    :goto_a
    const/16 v26, 0x33

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    return-void

    .line 140
    .end local v8    # "controlMaxThickness":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingBottom()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingTop()I

    move-result v28

    add-int v26, v26, v28

    add-int v7, v7, v26

    const/16 v26, 0x2e

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    .line 141
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingLeft()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->getPaddingRight()I

    move-result v28

    add-int v26, v26, v28

    add-int v8, v8, v26

    .restart local v8    # "controlMaxThickness":I
    const/16 v26, 0x2f

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto :goto_9

    .line 147
    :cond_a
    move/from16 v0, p1

    invoke-static {v8, v0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->resolveSize(II)I

    move-result v26

    move/from16 v0, p2

    invoke-static {v7, v0}, Lchan/android/app/pocketnote/util/view/FlowLayout;->resolveSize(II)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lchan/android/app/pocketnote/util/view/FlowLayout;->setMeasuredDimension(II)V

    const/16 v26, 0x32

    const/16 v28, 0x1

    aput-boolean v28, v27, v26

    goto :goto_a
.end method

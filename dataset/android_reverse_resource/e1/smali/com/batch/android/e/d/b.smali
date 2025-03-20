.class public Lcom/batch/android/e/d/b;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/d/b$d;,
        Lcom/batch/android/e/d/b$h;,
        Lcom/batch/android/e/d/b$g;,
        Lcom/batch/android/e/d/b$a;,
        Lcom/batch/android/e/d/b$b;,
        Lcom/batch/android/e/d/b$f;,
        Lcom/batch/android/e/d/b$e;,
        Lcom/batch/android/e/d/b$c;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x5


# instance fields
.field private A:I

.field private B:I

.field private C:[I

.field private D:Landroid/util/SparseIntArray;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/d/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private F:[Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/e/d/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/batch/android/e/d/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    .line 244
    return-void
.end method

.method private a(Lcom/batch/android/e/d/b$d;IIII)I
    .locals 17

    .prologue
    .line 786
    .line 787
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->d:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    move/from16 v0, p3

    if-ge v0, v2, :cond_2

    .line 788
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->c:I

    add-int v6, p5, v2

    .line 885
    :cond_1
    :goto_0
    return v6

    .line 791
    :cond_2
    move-object/from16 v0, p1

    iget v9, v0, Lcom/batch/android/e/d/b$d;->a:I

    .line 792
    const/4 v4, 0x0

    .line 793
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/batch/android/e/d/b$d;->d:F

    div-float v10, v2, v3

    .line 794
    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/batch/android/e/d/b$d;->a:I

    .line 795
    const/4 v3, 0x0

    .line 796
    const/4 v2, 0x0

    move v5, v4

    move/from16 v6, p5

    move v4, v3

    move v3, v2

    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->c:I

    if-ge v3, v2, :cond_b

    .line 797
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v11

    .line 798
    if-nez v11, :cond_3

    .line 796
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 800
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-ne v2, v7, :cond_4

    .line 801
    add-int/lit8 v6, v6, 0x1

    .line 802
    goto :goto_2

    .line 804
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/batch/android/e/d/b$g;

    .line 805
    if-eqz p2, :cond_5

    const/4 v7, 0x1

    move/from16 v0, p2

    if-ne v0, v7, :cond_8

    .line 808
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/batch/android/e/d/b;->F:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_11

    .line 809
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v2, Lcom/batch/android/e/d/b$g;->i:F

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    .line 810
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_10

    .line 811
    add-float/2addr v4, v7

    .line 812
    const/4 v7, 0x0

    .line 814
    :goto_3
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 815
    iget v12, v2, Lcom/batch/android/e/d/b$g;->o:I

    if-le v8, v12, :cond_6

    .line 821
    const/4 v5, 0x1

    .line 822
    iget v4, v2, Lcom/batch/android/e/d/b$g;->o:I

    .line 823
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/batch/android/e/d/b;->F:[Z

    const/4 v12, 0x1

    aput-boolean v12, v8, v6

    .line 824
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->d:F

    iget v12, v2, Lcom/batch/android/e/d/b$g;->i:F

    sub-float/2addr v8, v12

    move-object/from16 v0, p1

    iput v8, v0, Lcom/batch/android/e/d/b$d;->d:F

    .line 835
    :goto_4
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 837
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 835
    invoke-virtual {v11, v4, v8}, Landroid/view/View;->measure(II)V

    .line 840
    :goto_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/batch/android/e/d/b$d;->a:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v11, v2, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v8, v11

    iget v2, v2, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    .line 877
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_2

    .line 826
    :cond_6
    int-to-float v12, v8

    sub-float/2addr v4, v12

    add-float/2addr v7, v4

    .line 827
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_7

    .line 828
    add-int/lit8 v4, v8, 0x1

    .line 829
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    double-to-float v7, v12

    goto :goto_4

    .line 830
    :cond_7
    float-to-double v12, v7

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v4, v12, v14

    if-gez v4, :cond_f

    .line 831
    add-int/lit8 v4, v8, -0x1

    .line 832
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-float v7, v12

    goto :goto_4

    .line 843
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/batch/android/e/d/b;->F:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_e

    .line 844
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v2, Lcom/batch/android/e/d/b$g;->i:F

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    .line 845
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_d

    .line 846
    add-float/2addr v4, v7

    .line 847
    const/4 v7, 0x0

    .line 849
    :goto_7
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 850
    iget v12, v2, Lcom/batch/android/e/d/b$g;->p:I

    if-le v8, v12, :cond_9

    .line 857
    const/4 v5, 0x1

    .line 858
    iget v4, v2, Lcom/batch/android/e/d/b$g;->p:I

    .line 859
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/batch/android/e/d/b;->F:[Z

    const/4 v12, 0x1

    aput-boolean v12, v8, v6

    .line 860
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->d:F

    iget v12, v2, Lcom/batch/android/e/d/b$g;->i:F

    sub-float/2addr v8, v12

    move-object/from16 v0, p1

    iput v8, v0, Lcom/batch/android/e/d/b$d;->d:F

    .line 871
    :goto_8
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    .line 873
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 871
    invoke-virtual {v11, v8, v4}, Landroid/view/View;->measure(II)V

    .line 875
    :goto_9
    move-object/from16 v0, p1

    iget v4, v0, Lcom/batch/android/e/d/b$d;->a:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v11, v2, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v8, v11

    iget v2, v2, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    goto/16 :goto_6

    .line 862
    :cond_9
    int-to-float v12, v8

    sub-float/2addr v4, v12

    add-float/2addr v7, v4

    .line 863
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_a

    .line 864
    add-int/lit8 v4, v8, 0x1

    .line 865
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    double-to-float v7, v12

    goto :goto_8

    .line 866
    :cond_a
    float-to-double v12, v7

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v4, v12, v14

    if-gez v4, :cond_c

    .line 867
    add-int/lit8 v4, v8, -0x1

    .line 868
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-float v7, v12

    goto :goto_8

    .line 880
    :cond_b
    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    if-eq v9, v2, :cond_1

    .line 883
    invoke-direct/range {p0 .. p5}, Lcom/batch/android/e/d/b;->a(Lcom/batch/android/e/d/b$d;IIII)I

    goto/16 :goto_0

    :cond_c
    move v4, v8

    goto :goto_8

    :cond_d
    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    goto :goto_7

    :cond_e
    move v7, v4

    goto :goto_9

    :cond_f
    move v4, v8

    goto/16 :goto_4

    :cond_10
    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    goto/16 :goto_3

    :cond_11
    move v7, v4

    goto/16 :goto_5
.end method

.method private a(II)V
    .locals 18

    .prologue
    .line 425
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 426
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 427
    const/4 v7, 0x0

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v14

    .line 436
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v15

    .line 437
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v16

    .line 438
    const/high16 v4, -0x80000000

    .line 439
    new-instance v10, Lcom/batch/android/e/d/b$d;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 440
    add-int v3, v15, v16

    iput v3, v10, Lcom/batch/android/e/d/b$d;->a:I

    .line 441
    const/4 v3, 0x0

    move v13, v3

    :goto_0
    if-ge v13, v14, :cond_6

    .line 442
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v17

    .line 443
    if-nez v17, :cond_0

    .line 444
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v10}, Lcom/batch/android/e/d/b;->a(IILcom/batch/android/e/d/b$d;)V

    move v3, v7

    .line 441
    :goto_1
    add-int/lit8 v7, v13, 0x1

    move v13, v7

    move v7, v3

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_1

    .line 447
    iget v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    .line 448
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v10}, Lcom/batch/android/e/d/b;->a(IILcom/batch/android/e/d/b$d;)V

    move v3, v7

    .line 449
    goto :goto_1

    .line 452
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/batch/android/e/d/b$g;

    .line 453
    iget v3, v9, Lcom/batch/android/e/d/b$g;->k:I

    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    .line 454
    iget-object v3, v10, Lcom/batch/android/e/d/b$d;->g:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_2
    iget v3, v9, Lcom/batch/android/e/d/b$g;->width:I

    .line 458
    iget v8, v9, Lcom/batch/android/e/d/b$g;->l:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_3

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v8, :cond_3

    .line 460
    int-to-float v3, v6

    iget v8, v9, Lcom/batch/android/e/d/b$g;->l:F

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 469
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingRight()I

    move-result v11

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v8, v11

    .line 468
    move/from16 v0, p1

    invoke-static {v0, v8, v3}, Lcom/batch/android/e/d/b;->getChildMeasureSpec(III)I

    move-result v3

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v11

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->height:I

    .line 471
    move/from16 v0, p2

    invoke-static {v0, v8, v11}, Lcom/batch/android/e/d/b;->getChildMeasureSpec(III)I

    move-result v8

    .line 474
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v8}, Landroid/view/View;->measure(II)V

    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;)V

    .line 485
    invoke-static/range {v17 .. v17}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    invoke-static {v7, v3}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v12

    .line 487
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v7, v9, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v3, v7

    iget v7, v9, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v3, v7

    .line 486
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 489
    move-object/from16 v0, p0

    iget v4, v0, Lcom/batch/android/e/d/b;->y:I

    iget v7, v10, Lcom/batch/android/e/d/b$d;->a:I

    .line 490
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v8, v9, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v3, v8

    iget v8, v9, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v8, v3

    move-object/from16 v3, p0

    .line 489
    invoke-direct/range {v3 .. v9}, Lcom/batch/android/e/d/b;->a(IIIIILcom/batch/android/e/d/b$g;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v3, Lcom/batch/android/e/d/b$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 494
    const/4 v4, 0x1

    iput v4, v3, Lcom/batch/android/e/d/b$d;->c:I

    .line 495
    add-int v4, v15, v16

    iput v4, v3, Lcom/batch/android/e/d/b$d;->a:I

    .line 496
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v7, v9, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v4, v7

    iget v7, v9, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v4, v7

    .line 500
    :goto_2
    iget v7, v3, Lcom/batch/android/e/d/b$d;->a:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v10, v9, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v8, v10

    iget v10, v9, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    iput v7, v3, Lcom/batch/android/e/d/b$d;->a:I

    .line 502
    iget v7, v3, Lcom/batch/android/e/d/b$d;->d:F

    iget v8, v9, Lcom/batch/android/e/d/b$g;->i:F

    add-float/2addr v7, v8

    iput v7, v3, Lcom/batch/android/e/d/b$d;->d:F

    .line 503
    iget v7, v3, Lcom/batch/android/e/d/b$d;->e:F

    iget v8, v9, Lcom/batch/android/e/d/b$g;->j:F

    add-float/2addr v7, v8

    iput v7, v3, Lcom/batch/android/e/d/b$d;->e:F

    .line 507
    iget v7, v3, Lcom/batch/android/e/d/b$d;->b:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Lcom/batch/android/e/d/b$d;->b:I

    .line 509
    move-object/from16 v0, p0

    iget v7, v0, Lcom/batch/android/e/d/b;->y:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    .line 510
    iget v7, v3, Lcom/batch/android/e/d/b$d;->f:I

    .line 511
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBaseline()I

    move-result v8

    iget v9, v9, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Lcom/batch/android/e/d/b$d;->f:I

    .line 521
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v3}, Lcom/batch/android/e/d/b;->a(IILcom/batch/android/e/d/b$d;)V

    move-object v10, v3

    move v3, v12

    goto/16 :goto_1

    .line 498
    :cond_4
    iget v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    move-object v3, v10

    move v4, v11

    goto :goto_2

    .line 516
    :cond_5
    iget v7, v3, Lcom/batch/android/e/d/b$d;->f:I

    .line 518
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBaseline()I

    move-result v10

    sub-int/2addr v8, v10

    iget v9, v9, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v8, v9

    .line 517
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Lcom/batch/android/e/d/b$d;->f:I

    goto :goto_3

    .line 525
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lcom/batch/android/e/d/b;->a(III)V

    .line 528
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->A:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 529
    const/4 v6, 0x0

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/batch/android/e/d/b$d;

    .line 532
    const/high16 v3, -0x80000000

    move v5, v6

    move v8, v3

    .line 533
    :goto_5
    iget v3, v4, Lcom/batch/android/e/d/b$d;->c:I

    add-int/2addr v3, v6

    if-ge v5, v3, :cond_8

    .line 534
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v10

    .line 535
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/batch/android/e/d/b$g;

    .line 536
    move-object/from16 v0, p0

    iget v11, v0, Lcom/batch/android/e/d/b;->y:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_7

    .line 537
    iget v11, v4, Lcom/batch/android/e/d/b$d;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v12

    sub-int/2addr v11, v12

    .line 538
    iget v12, v3, Lcom/batch/android/e/d/b$g;->topMargin:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 540
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v11

    iget v3, v3, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v3, v10

    .line 539
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 533
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v8, v3

    goto :goto_5

    .line 542
    :cond_7
    iget v11, v4, Lcom/batch/android/e/d/b$d;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 543
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v12

    add-int/2addr v11, v12

    .line 544
    iget v12, v3, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 546
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v3, v3, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v3, v10

    add-int/2addr v3, v11

    .line 545
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_6

    .line 549
    :cond_8
    iput v8, v4, Lcom/batch/android/e/d/b$d;->b:I

    .line 550
    iget v3, v4, Lcom/batch/android/e/d/b$d;->c:I

    add-int/2addr v6, v3

    .line 551
    goto :goto_4

    .line 554
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 554
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/batch/android/e/d/b;->a(IIII)V

    .line 558
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/batch/android/e/d/b;->A:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/batch/android/e/d/b;->c(II)V

    .line 559
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2, v7}, Lcom/batch/android/e/d/b;->b(IIII)V

    .line 561
    return-void
.end method

.method private a(III)V
    .locals 7

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 729
    packed-switch p1, :pswitch_data_0

    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :pswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 733
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 734
    if-ne v1, v2, :cond_0

    .line 739
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingRight()I

    move-result v2

    add-int v4, v1, v2

    move v3, v0

    .line 756
    :goto_1
    const/4 v5, 0x0

    .line 757
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/e/d/b$d;

    .line 758
    iget v0, v1, Lcom/batch/android/e/d/b$d;->a:I

    if-ge v0, v3, :cond_2

    move-object v0, p0

    move v2, p1

    .line 759
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/e/d/b;->a(Lcom/batch/android/e/d/b$d;IIII)I

    move-result v5

    goto :goto_2

    .line 737
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->getLargestMainSize()I

    move-result v0

    goto :goto_0

    .line 743
    :pswitch_1
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 744
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 745
    if-ne v1, v2, :cond_1

    .line 750
    :goto_3
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v2

    add-int v4, v1, v2

    move v3, v0

    .line 751
    goto :goto_1

    .line 748
    :cond_1
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->getLargestMainSize()I

    move-result v0

    goto :goto_3

    :cond_2
    move-object v0, p0

    move v2, p1

    .line 762
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/e/d/b;->b(Lcom/batch/android/e/d/b$d;IIII)I

    move-result v5

    goto :goto_2

    .line 766
    :cond_3
    return-void

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(IIII)V
    .locals 11

    .prologue
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1024
    packed-switch p1, :pswitch_data_0

    .line 1036
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :pswitch_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1028
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1038
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    .line 1039
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->getSumOfCrossSize()I

    move-result v2

    add-int/2addr v2, p4

    .line 1040
    iget-object v4, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    sub-int/2addr v1, p4

    iput v1, v0, Lcom/batch/android/e/d/b$d;->b:I

    .line 1152
    :cond_0
    :goto_1
    return-void

    .line 1032
    :pswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1033
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_0

    .line 1043
    :cond_1
    iget-object v4, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    if-ge v2, v1, :cond_0

    .line 1044
    iget v4, p0, Lcom/batch/android/e/d/b;->B:I

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 1143
    :pswitch_2
    sub-int/2addr v1, v2

    .line 1144
    new-instance v2, Lcom/batch/android/e/d/b$d;

    invoke-direct {v2, v7}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 1145
    iput v1, v2, Lcom/batch/android/e/d/b$d;->b:I

    .line 1146
    iget-object v1, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1046
    :pswitch_3
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v1, v2

    move v1, v0

    move v2, v3

    .line 1048
    :goto_2
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    .line 1050
    iget v4, v0, Lcom/batch/android/e/d/b$d;->b:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    .line 1051
    iget-object v5, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_d

    .line 1052
    add-float/2addr v2, v4

    move v4, v3

    .line 1055
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1056
    int-to-float v7, v5

    sub-float/2addr v2, v7

    add-float/2addr v4, v2

    .line 1057
    cmpl-float v2, v4, v8

    if-lez v2, :cond_2

    .line 1058
    add-int/lit8 v2, v5, 0x1

    .line 1059
    sub-float/2addr v4, v8

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1064
    :goto_4
    iput v4, v0, Lcom/batch/android/e/d/b$d;->b:I

    .line 1048
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1060
    :cond_2
    cmpg-float v2, v4, v9

    if-gez v2, :cond_c

    .line 1061
    add-int/lit8 v2, v5, -0x1

    .line 1062
    add-float/2addr v4, v8

    move v10, v2

    move v2, v4

    move v4, v10

    goto :goto_4

    .line 1071
    :pswitch_4
    sub-int v0, v1, v2

    .line 1073
    iget-object v1, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 1074
    div-int/2addr v0, v1

    .line 1075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    new-instance v2, Lcom/batch/android/e/d/b$d;

    invoke-direct {v2, v7}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 1077
    iput v0, v2, Lcom/batch/android/e/d/b$d;->b:I

    .line 1078
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    .line 1079
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1083
    :cond_3
    iput-object v1, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    goto/16 :goto_1

    .line 1088
    :pswitch_5
    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1089
    iget-object v2, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1090
    int-to-float v2, v2

    div-float v4, v1, v2

    .line 1092
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    move v2, v3

    .line 1093
    :goto_6
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 1094
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    .line 1095
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_5

    .line 1098
    new-instance v6, Lcom/batch/android/e/d/b$d;

    invoke-direct {v6, v7}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 1099
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne v1, v0, :cond_6

    .line 1102
    add-float v0, v4, v2

    .line 1103
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v6, Lcom/batch/android/e/d/b$d;->b:I

    move v2, v3

    .line 1108
    :goto_7
    iget v0, v6, Lcom/batch/android/e/d/b$d;->b:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    add-float/2addr v0, v2

    .line 1110
    cmpl-float v2, v0, v8

    if-lez v2, :cond_7

    .line 1111
    iget v2, v6, Lcom/batch/android/e/d/b$d;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/batch/android/e/d/b$d;->b:I

    .line 1112
    sub-float/2addr v0, v8

    .line 1117
    :cond_4
    :goto_8
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 1093
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1106
    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v6, Lcom/batch/android/e/d/b$d;->b:I

    goto :goto_7

    .line 1113
    :cond_7
    cmpg-float v2, v0, v9

    if-gez v2, :cond_4

    .line 1114
    iget v2, v6, Lcom/batch/android/e/d/b$d;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v6, Lcom/batch/android/e/d/b$d;->b:I

    .line 1115
    add-float/2addr v0, v8

    goto :goto_8

    .line 1120
    :cond_8
    iput-object v5, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    goto/16 :goto_1

    .line 1124
    :pswitch_6
    sub-int/2addr v1, v2

    .line 1125
    div-int/lit8 v1, v1, 0x2

    .line 1126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    new-instance v3, Lcom/batch/android/e/d/b$d;

    invoke-direct {v3, v7}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 1128
    iput v1, v3, Lcom/batch/android/e/d/b$d;->b:I

    move v1, v0

    .line 1129
    :goto_9
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 1130
    if-nez v1, :cond_9

    .line 1131
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    :cond_9
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    .line 1134
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_a

    .line 1136
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1139
    :cond_b
    iput-object v2, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    goto/16 :goto_1

    :cond_c
    move v2, v4

    move v4, v5

    goto/16 :goto_4

    :cond_d
    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_3

    .line 1024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1044
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private a(IILcom/batch/android/e/d/b$d;)V
    .locals 1

    .prologue
    .line 708
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p3, Lcom/batch/android/e/d/b$d;->c:I

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x1

    .line 681
    const/4 v2, 0x0

    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Lcom/batch/android/e/d/b$g;->m:I

    if-ge v5, v6, :cond_2

    .line 688
    iget v1, v0, Lcom/batch/android/e/d/b$g;->m:I

    move v2, v3

    .line 694
    :cond_0
    :goto_0
    iget v5, v0, Lcom/batch/android/e/d/b$g;->n:I

    if-ge v4, v5, :cond_3

    .line 696
    iget v0, v0, Lcom/batch/android/e/d/b$g;->n:I

    .line 701
    :goto_1
    if-eqz v3, :cond_1

    .line 702
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 703
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 702
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 705
    :cond_1
    return-void

    .line 689
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Lcom/batch/android/e/d/b$g;->o:I

    if-le v5, v6, :cond_0

    .line 691
    iget v1, v0, Lcom/batch/android/e/d/b$g;->o:I

    move v2, v3

    goto :goto_0

    .line 697
    :cond_3
    iget v5, v0, Lcom/batch/android/e/d/b$g;->p:I

    if-le v4, v5, :cond_4

    .line 699
    iget v0, v0, Lcom/batch/android/e/d/b$g;->p:I

    goto :goto_1

    :cond_4
    move v0, v4

    move v3, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1221
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 1222
    iget v1, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    sub-int v1, p2, v1

    iget v0, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int v0, v1, v0

    .line 1223
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1225
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1226
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1224
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1227
    return-void
.end method

.method private a(Landroid/view/View;Lcom/batch/android/e/d/b$d;IIIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1565
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 1566
    iget v1, v0, Lcom/batch/android/e/d/b$g;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1569
    iget p4, v0, Lcom/batch/android/e/d/b$g;->k:I

    .line 1571
    :cond_0
    iget v1, p2, Lcom/batch/android/e/d/b$d;->b:I

    .line 1572
    packed-switch p4, :pswitch_data_0

    .line 1618
    :goto_0
    return-void

    .line 1575
    :pswitch_0
    if-eq p3, v3, :cond_1

    .line 1576
    iget v1, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v1, p6

    iget v0, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v0, p8

    invoke-virtual {p1, p5, v1, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1578
    :cond_1
    iget v1, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int v1, p6, v1

    iget v0, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int v0, p8, v0

    invoke-virtual {p1, p5, v1, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1582
    :pswitch_1
    if-eq p3, v3, :cond_2

    .line 1583
    iget v1, p2, Lcom/batch/android/e/d/b$d;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1584
    iget v0, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1585
    add-int v1, p6, v0

    add-int/2addr v0, p8

    invoke-virtual {p1, p5, v1, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1587
    :cond_2
    iget v1, p2, Lcom/batch/android/e/d/b$d;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1588
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v2

    add-int/2addr v1, v2

    .line 1589
    iget v0, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1590
    sub-int v1, p6, v0

    sub-int v0, p8, v0

    invoke-virtual {p1, p5, v1, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1594
    :pswitch_2
    if-eq p3, v3, :cond_3

    .line 1595
    add-int v2, p6, v1

    .line 1596
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v1, p6

    iget v0, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int v0, v1, v0

    .line 1595
    invoke-virtual {p1, p5, v2, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1601
    :cond_3
    sub-int v2, p6, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v2, v3

    sub-int v1, p8, v1

    .line 1602
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v0, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v0, v1

    .line 1601
    invoke-virtual {p1, p5, v2, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1606
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1607
    if-eq p3, v3, :cond_4

    .line 1608
    add-int v2, p6, v1

    iget v3, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v1, p6

    .line 1609
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int v0, v1, v0

    .line 1608
    invoke-virtual {p1, p5, v2, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1612
    :cond_4
    sub-int v2, p6, v1

    iget v3, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int/2addr v2, v3

    sub-int v1, p6, v1

    .line 1613
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    sub-int v0, v1, v0

    .line 1612
    invoke-virtual {p1, p5, v2, p7, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;Lcom/batch/android/e/d/b$d;ZIIIII)V
    .locals 4

    .prologue
    .line 1766
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 1767
    iget v1, v0, Lcom/batch/android/e/d/b$g;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1770
    iget p4, v0, Lcom/batch/android/e/d/b$g;->k:I

    .line 1772
    :cond_0
    iget v1, p2, Lcom/batch/android/e/d/b$d;->b:I

    .line 1773
    packed-switch p4, :pswitch_data_0

    .line 1809
    :goto_0
    return-void

    .line 1777
    :pswitch_0
    if-nez p3, :cond_1

    .line 1778
    iget v1, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v1, p5

    iget v0, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v0, p7

    invoke-virtual {p1, v1, p6, v0, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1780
    :cond_1
    iget v1, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int v1, p5, v1

    iget v0, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int v0, p7, v0

    invoke-virtual {p1, v1, p6, v0, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1784
    :pswitch_1
    if-nez p3, :cond_2

    .line 1785
    add-int v2, p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v1, p7

    .line 1786
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v0, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int v0, v1, v0

    .line 1785
    invoke-virtual {p1, v2, p6, v0, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1791
    :cond_2
    sub-int v2, p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v2, v3

    sub-int v1, p7, v1

    .line 1792
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v0, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v0, v1

    .line 1791
    invoke-virtual {p1, v2, p6, v0, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1797
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1798
    if-nez p3, :cond_3

    .line 1799
    add-int v2, p5, v1

    iget v3, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v1, p7

    iget v3, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, p6, v0, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1803
    :cond_3
    sub-int v2, p5, v1

    iget v3, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int/2addr v2, v3

    sub-int v1, p7, v1

    iget v3, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, p6, v0, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(ZIIII)V
    .locals 30

    .prologue
    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingLeft()I

    move-result v23

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingRight()I

    move-result v24

    .line 1450
    const/4 v2, 0x0

    .line 1452
    sub-int v3, p5, p3

    .line 1453
    sub-int v25, p4, p2

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v4

    sub-int v10, v3, v4

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v17

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/e/d/b$d;

    .line 1464
    const/4 v3, 0x0

    .line 1465
    move-object/from16 v0, p0

    iget v5, v0, Lcom/batch/android/e/d/b;->z:I

    packed-switch v5, :pswitch_data_0

    .line 1492
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid justifyContent is set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/batch/android/e/d/b;->z:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1467
    :pswitch_0
    move/from16 v0, v23

    int-to-float v6, v0

    .line 1468
    sub-int v5, v25, v24

    int-to-float v5, v5

    .line 1495
    :goto_1
    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1497
    const/4 v3, 0x0

    move/from16 v22, v3

    move/from16 v21, v2

    :goto_2
    iget v2, v4, Lcom/batch/android/e/d/b$d;->c:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 1498
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1499
    if-nez v3, :cond_2

    .line 1497
    :goto_3
    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto :goto_2

    .line 1471
    :pswitch_1
    iget v5, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v5, v25, v5

    add-int v5, v5, v24

    int-to-float v6, v5

    .line 1472
    iget v5, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v5, v5, v23

    int-to-float v5, v5

    .line 1473
    goto :goto_1

    .line 1475
    :pswitch_2
    move/from16 v0, v23

    int-to-float v5, v0

    iget v6, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v6, v25, v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 1476
    sub-int v5, v25, v24

    int-to-float v5, v5

    iget v7, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v7, v25, v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    .line 1477
    goto :goto_1

    .line 1479
    :pswitch_3
    iget v5, v4, Lcom/batch/android/e/d/b$d;->c:I

    if-eqz v5, :cond_0

    .line 1480
    iget v3, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v3, v25, v3

    int-to-float v3, v3

    iget v5, v4, Lcom/batch/android/e/d/b$d;->c:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 1482
    :cond_0
    move/from16 v0, v23

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    add-float/2addr v6, v5

    .line 1483
    sub-int v5, v25, v24

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v3, v7

    sub-float/2addr v5, v7

    .line 1484
    goto :goto_1

    .line 1486
    :pswitch_4
    move/from16 v0, v23

    int-to-float v6, v0

    .line 1487
    iget v3, v4, Lcom/batch/android/e/d/b$d;->c:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    iget v3, v4, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    .line 1488
    :goto_4
    iget v5, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v5, v25, v5

    int-to-float v5, v5

    div-float v3, v5, v3

    .line 1489
    sub-int v5, v25, v24

    int-to-float v5, v5

    .line 1490
    goto :goto_1

    .line 1487
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    .line 1501
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-ne v2, v7, :cond_3

    .line 1502
    add-int/lit8 v21, v21, 0x1

    .line 1503
    goto :goto_3

    .line 1505
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/batch/android/e/d/b$g;

    .line 1506
    move-object/from16 v0, v20

    iget v2, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    int-to-float v2, v2

    add-float v28, v6, v2

    .line 1507
    move-object/from16 v0, v20

    iget v2, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    int-to-float v2, v2

    sub-float v29, v5, v2

    .line 1508
    move-object/from16 v0, p0

    iget v2, v0, Lcom/batch/android/e/d/b;->y:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 1509
    if-eqz p1, :cond_4

    .line 1510
    move-object/from16 v0, p0

    iget v5, v0, Lcom/batch/android/e/d/b;->y:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1511
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v2, v7

    .line 1512
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v8, v10, v2

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object/from16 v2, p0

    .line 1510
    invoke-direct/range {v2 .. v10}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;IIIIII)V

    .line 1532
    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v27

    move-object/from16 v0, v20

    iget v5, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    add-float v6, v28, v2

    .line 1533
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v27

    move-object/from16 v0, v20

    iget v3, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float v5, v29, v2

    .line 1534
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 1515
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/batch/android/e/d/b;->y:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1516
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v8, v10, v2

    .line 1517
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v2

    move-object/from16 v2, p0

    .line 1515
    invoke-direct/range {v2 .. v10}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;IIIIII)V

    goto :goto_5

    .line 1521
    :cond_5
    if-eqz p1, :cond_6

    .line 1522
    move-object/from16 v0, p0

    iget v14, v0, Lcom/batch/android/e/d/b;->y:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1523
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v16, v2, v5

    .line 1524
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v19, v17, v2

    move-object/from16 v11, p0

    move-object v12, v3

    move-object v13, v4

    .line 1522
    invoke-direct/range {v11 .. v19}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;IIIIII)V

    goto :goto_5

    .line 1526
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/batch/android/e/d/b;->y:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1527
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 1528
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v18, v2, v5

    .line 1529
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v19, v17, v2

    move-object/from16 v11, p0

    move-object v12, v3

    move-object v13, v4

    .line 1526
    invoke-direct/range {v11 .. v19}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;IIIIII)V

    goto/16 :goto_5

    .line 1536
    :cond_7
    iget v2, v4, Lcom/batch/android/e/d/b$d;->b:I

    add-int v17, v17, v2

    .line 1537
    iget v2, v4, Lcom/batch/android/e/d/b$d;->b:I

    sub-int/2addr v10, v2

    move/from16 v2, v21

    .line 1538
    goto/16 :goto_0

    .line 1539
    :cond_8
    return-void

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private a(ZZIIII)V
    .locals 29

    .prologue
    .line 1644
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v22

    .line 1645
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v23

    .line 1647
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingRight()I

    move-result v3

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingLeft()I

    move-result v15

    .line 1649
    const/4 v2, 0x0

    .line 1651
    sub-int v4, p5, p3

    .line 1652
    sub-int v24, p6, p4

    .line 1655
    sub-int v9, v4, v3

    .line 1663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/e/d/b$d;

    .line 1664
    const/4 v3, 0x0

    .line 1665
    move-object/from16 v0, p0

    iget v5, v0, Lcom/batch/android/e/d/b;->z:I

    packed-switch v5, :pswitch_data_0

    .line 1693
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid justifyContent is set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/batch/android/e/d/b;->z:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1667
    :pswitch_0
    move/from16 v0, v22

    int-to-float v6, v0

    .line 1668
    sub-int v5, v24, v23

    int-to-float v5, v5

    .line 1696
    :goto_1
    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 1698
    const/4 v3, 0x0

    move/from16 v21, v3

    move/from16 v20, v2

    :goto_2
    iget v2, v4, Lcom/batch/android/e/d/b$d;->c:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 1699
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1700
    if-nez v3, :cond_2

    .line 1698
    :goto_3
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto :goto_2

    .line 1671
    :pswitch_1
    iget v5, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v5, v24, v5

    add-int v5, v5, v23

    int-to-float v6, v5

    .line 1672
    iget v5, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v5, v5, v22

    int-to-float v5, v5

    .line 1673
    goto :goto_1

    .line 1675
    :pswitch_2
    move/from16 v0, v22

    int-to-float v5, v0

    iget v6, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v6, v24, v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 1676
    sub-int v5, v24, v23

    int-to-float v5, v5

    iget v7, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v7, v24, v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    .line 1677
    goto :goto_1

    .line 1679
    :pswitch_3
    iget v5, v4, Lcom/batch/android/e/d/b$d;->c:I

    if-eqz v5, :cond_0

    .line 1680
    iget v3, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v3, v24, v3

    int-to-float v3, v3

    iget v5, v4, Lcom/batch/android/e/d/b$d;->c:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 1683
    :cond_0
    move/from16 v0, v22

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    add-float/2addr v6, v5

    .line 1684
    sub-int v5, v24, v23

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v3, v7

    sub-float/2addr v5, v7

    .line 1685
    goto :goto_1

    .line 1687
    :pswitch_4
    move/from16 v0, v22

    int-to-float v6, v0

    .line 1688
    iget v3, v4, Lcom/batch/android/e/d/b$d;->c:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    iget v3, v4, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    .line 1689
    :goto_4
    iget v5, v4, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v5, v24, v5

    int-to-float v5, v5

    div-float v3, v5, v3

    .line 1690
    sub-int v5, v24, v23

    int-to-float v5, v5

    .line 1691
    goto :goto_1

    .line 1688
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    .line 1702
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-ne v2, v7, :cond_3

    .line 1703
    add-int/lit8 v20, v20, 0x1

    .line 1704
    goto :goto_3

    .line 1706
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/batch/android/e/d/b$g;

    .line 1707
    move-object/from16 v0, v19

    iget v2, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    int-to-float v2, v2

    add-float v27, v6, v2

    .line 1708
    move-object/from16 v0, v19

    iget v2, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    int-to-float v2, v2

    sub-float v28, v5, v2

    .line 1709
    if-eqz p1, :cond_5

    .line 1710
    if-eqz p2, :cond_4

    .line 1711
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1712
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v7, v9, v2

    .line 1713
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    .line 1714
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object/from16 v2, p0

    .line 1711
    invoke-direct/range {v2 .. v10}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;ZIIIII)V

    .line 1732
    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v26

    move-object/from16 v0, v19

    iget v5, v0, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    add-float v6, v27, v2

    .line 1733
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v26

    move-object/from16 v0, v19

    iget v3, v0, Lcom/batch/android/e/d/b$g;->topMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float v5, v28, v2

    .line 1734
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1716
    :cond_4
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1717
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v7, v9, v2

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1718
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    move-object/from16 v2, p0

    .line 1716
    invoke-direct/range {v2 .. v10}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;ZIIIII)V

    goto :goto_5

    .line 1721
    :cond_5
    if-eqz p2, :cond_6

    .line 1722
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1723
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v16, v2, v5

    .line 1724
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v17, v15, v2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    .line 1722
    invoke-direct/range {v10 .. v18}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;ZIIIII)V

    goto :goto_5

    .line 1726
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/batch/android/e/d/b;->A:I

    .line 1727
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 1728
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v17, v15, v2

    .line 1729
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v18, v2, v5

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    .line 1726
    invoke-direct/range {v10 .. v18}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;Lcom/batch/android/e/d/b$d;ZIIIII)V

    goto/16 :goto_5

    .line 1736
    :cond_7
    iget v2, v4, Lcom/batch/android/e/d/b$d;->b:I

    add-int/2addr v15, v2

    .line 1737
    iget v2, v4, Lcom/batch/android/e/d/b$d;->b:I

    sub-int/2addr v9, v2

    move/from16 v2, v20

    .line 1738
    goto/16 :goto_0

    .line 1739
    :cond_8
    return-void

    .line 1665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private a(IIIIILcom/batch/android/e/d/b$g;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1357
    if-nez p1, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return v0

    .line 1360
    :cond_1
    iget-boolean v2, p6, Lcom/batch/android/e/d/b$g;->q:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 1361
    goto :goto_0

    .line 1363
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-eq p2, v2, :cond_3

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_0

    :cond_3
    add-int v2, p4, p5

    if-ge p3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a()[I
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v0

    .line 351
    invoke-direct {p0, v0}, Lcom/batch/android/e/d/b;->b(I)Ljava/util/List;

    move-result-object v1

    .line 352
    invoke-direct {p0, v0, v1}, Lcom/batch/android/e/d/b;->a(ILjava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/d/b$h;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 357
    iget-object v0, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 361
    new-array v2, p1, [I

    .line 362
    const/4 v0, 0x0

    .line 363
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$h;

    .line 364
    iget v4, v0, Lcom/batch/android/e/d/b$h;->a:I

    aput v4, v2, v1

    .line 365
    iget-object v4, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/batch/android/e/d/b$h;->b:I

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 367
    goto :goto_0

    .line 368
    :cond_1
    return-object v2
.end method

.method private a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)[I
    .locals 5

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v1

    .line 317
    invoke-direct {p0, v1}, Lcom/batch/android/e/d/b;->b(I)Ljava/util/List;

    move-result-object v2

    .line 318
    new-instance v3, Lcom/batch/android/e/d/b$h;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/batch/android/e/d/b$h;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 319
    if-eqz p1, :cond_2

    instance-of v0, p3, Lcom/batch/android/e/d/b$g;

    if-eqz v0, :cond_2

    .line 321
    check-cast p3, Lcom/batch/android/e/d/b$g;

    iget v0, p3, Lcom/batch/android/e/d/b$g;->h:I

    iput v0, v3, Lcom/batch/android/e/d/b$h;->b:I

    .line 326
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_3

    .line 327
    :cond_0
    iput v1, v3, Lcom/batch/android/e/d/b$h;->a:I

    .line 338
    :cond_1
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/batch/android/e/d/b;->a(ILjava/util/List;)[I

    move-result-object v0

    return-object v0

    .line 323
    :cond_2
    const/4 v0, 0x1

    iput v0, v3, Lcom/batch/android/e/d/b$h;->b:I

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 329
    iput p2, v3, Lcom/batch/android/e/d/b$h;->a:I

    .line 330
    :goto_2
    if-ge p2, v1, :cond_1

    .line 331
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$h;

    iget v4, v0, Lcom/batch/android/e/d/b$h;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/batch/android/e/d/b$h;->a:I

    .line 330
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 336
    :cond_4
    iput v1, v3, Lcom/batch/android/e/d/b$h;->a:I

    goto :goto_1
.end method

.method private b(Lcom/batch/android/e/d/b$d;IIII)I
    .locals 17

    .prologue
    .line 906
    .line 907
    move-object/from16 v0, p1

    iget v9, v0, Lcom/batch/android/e/d/b$d;->a:I

    .line 908
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->e:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    move/from16 v0, p3

    if-le v0, v2, :cond_2

    .line 909
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->c:I

    add-int v6, p5, v2

    .line 1001
    :cond_1
    :goto_0
    return v6

    .line 912
    :cond_2
    const/4 v4, 0x0

    .line 913
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    sub-int v2, v2, p3

    int-to-float v2, v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/batch/android/e/d/b$d;->e:F

    div-float v10, v2, v3

    .line 914
    const/4 v3, 0x0

    .line 915
    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/batch/android/e/d/b$d;->a:I

    .line 916
    const/4 v2, 0x0

    move v5, v4

    move/from16 v6, p5

    move v4, v3

    move v3, v2

    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->c:I

    if-ge v3, v2, :cond_b

    .line 917
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v11

    .line 918
    if-nez v11, :cond_3

    .line 916
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 920
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-ne v2, v7, :cond_4

    .line 921
    add-int/lit8 v6, v6, 0x1

    .line 922
    goto :goto_2

    .line 924
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/batch/android/e/d/b$g;

    .line 925
    if-eqz p2, :cond_5

    const/4 v7, 0x1

    move/from16 v0, p2

    if-ne v0, v7, :cond_8

    .line 928
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/batch/android/e/d/b;->F:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_11

    .line 929
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v2, Lcom/batch/android/e/d/b$g;->j:F

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    .line 931
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_10

    .line 932
    add-float/2addr v4, v7

    .line 933
    const/4 v7, 0x0

    .line 935
    :goto_3
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 936
    iget v12, v2, Lcom/batch/android/e/d/b$g;->m:I

    if-ge v8, v12, :cond_6

    .line 942
    const/4 v5, 0x1

    .line 943
    iget v4, v2, Lcom/batch/android/e/d/b$g;->m:I

    .line 944
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/batch/android/e/d/b;->F:[Z

    const/4 v12, 0x1

    aput-boolean v12, v8, v6

    .line 945
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->e:F

    iget v12, v2, Lcom/batch/android/e/d/b$g;->j:F

    sub-float/2addr v8, v12

    move-object/from16 v0, p1

    iput v8, v0, Lcom/batch/android/e/d/b$d;->e:F

    .line 956
    :goto_4
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 957
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 956
    invoke-virtual {v11, v4, v8}, Landroid/view/View;->measure(II)V

    .line 960
    :goto_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/batch/android/e/d/b$d;->a:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v11, v2, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v8, v11

    iget v2, v2, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    .line 993
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_2

    .line 947
    :cond_6
    int-to-float v12, v8

    sub-float/2addr v4, v12

    add-float/2addr v7, v4

    .line 948
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_7

    .line 949
    add-int/lit8 v4, v8, 0x1

    .line 950
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    goto :goto_4

    .line 951
    :cond_7
    float-to-double v12, v7

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v4, v12, v14

    if-gez v4, :cond_f

    .line 952
    add-int/lit8 v4, v8, -0x1

    .line 953
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    goto :goto_4

    .line 963
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/batch/android/e/d/b;->F:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_e

    .line 964
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v2, Lcom/batch/android/e/d/b$g;->j:F

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    .line 966
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_d

    .line 967
    add-float/2addr v4, v7

    .line 968
    const/4 v7, 0x0

    .line 970
    :goto_7
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 971
    iget v12, v2, Lcom/batch/android/e/d/b$g;->n:I

    if-ge v8, v12, :cond_9

    .line 973
    const/4 v5, 0x1

    .line 974
    iget v4, v2, Lcom/batch/android/e/d/b$g;->n:I

    .line 975
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/batch/android/e/d/b;->F:[Z

    const/4 v12, 0x1

    aput-boolean v12, v8, v6

    .line 976
    move-object/from16 v0, p1

    iget v8, v0, Lcom/batch/android/e/d/b$d;->e:F

    iget v12, v2, Lcom/batch/android/e/d/b$g;->j:F

    sub-float/2addr v8, v12

    move-object/from16 v0, p1

    iput v8, v0, Lcom/batch/android/e/d/b$d;->e:F

    .line 987
    :goto_8
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    .line 989
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 987
    invoke-virtual {v11, v8, v4}, Landroid/view/View;->measure(II)V

    .line 991
    :goto_9
    move-object/from16 v0, p1

    iget v4, v0, Lcom/batch/android/e/d/b$d;->a:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v11, v2, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v8, v11

    iget v2, v2, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    goto :goto_6

    .line 978
    :cond_9
    int-to-float v12, v8

    sub-float/2addr v4, v12

    add-float/2addr v7, v4

    .line 979
    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_a

    .line 980
    add-int/lit8 v4, v8, 0x1

    .line 981
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    goto :goto_8

    .line 982
    :cond_a
    float-to-double v12, v7

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v4, v12, v14

    if-gez v4, :cond_c

    .line 983
    add-int/lit8 v4, v8, -0x1

    .line 984
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    goto :goto_8

    .line 996
    :cond_b
    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/batch/android/e/d/b$d;->a:I

    if-eq v9, v2, :cond_1

    .line 999
    invoke-direct/range {p0 .. p5}, Lcom/batch/android/e/d/b;->b(Lcom/batch/android/e/d/b$d;IIII)I

    goto/16 :goto_0

    :cond_c
    move v4, v8

    goto :goto_8

    :cond_d
    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    goto :goto_7

    :cond_e
    move v7, v4

    goto :goto_9

    :cond_f
    move v4, v8

    goto/16 :goto_4

    :cond_10
    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    goto/16 :goto_3

    :cond_11
    move v7, v4

    goto/16 :goto_5
.end method

.method private b(I)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/d/b$h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 375
    invoke-virtual {p0, v1}, Lcom/batch/android/e/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 377
    new-instance v3, Lcom/batch/android/e/d/b$h;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/batch/android/e/d/b$h;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 378
    iget v0, v0, Lcom/batch/android/e/d/b$g;->h:I

    iput v0, v3, Lcom/batch/android/e/d/b$h;->b:I

    .line 379
    iput v1, v3, Lcom/batch/android/e/d/b$h;->a:I

    .line 380
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 382
    :cond_0
    return-object v2
.end method

.method private b(II)V
    .locals 18

    .prologue
    .line 577
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 578
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 579
    const/4 v7, 0x0

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v14

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v15

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v16

    .line 589
    const/high16 v4, -0x80000000

    .line 590
    new-instance v10, Lcom/batch/android/e/d/b$d;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 591
    add-int v3, v15, v16

    iput v3, v10, Lcom/batch/android/e/d/b$d;->a:I

    .line 592
    const/4 v3, 0x0

    move v13, v3

    :goto_0
    if-ge v13, v14, :cond_5

    .line 593
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v17

    .line 594
    if-nez v17, :cond_0

    .line 595
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v10}, Lcom/batch/android/e/d/b;->a(IILcom/batch/android/e/d/b$d;)V

    move v3, v7

    .line 592
    :goto_1
    add-int/lit8 v7, v13, 0x1

    move v13, v7

    move v7, v3

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_1

    .line 598
    iget v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    .line 599
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v10}, Lcom/batch/android/e/d/b;->a(IILcom/batch/android/e/d/b$d;)V

    move v3, v7

    .line 600
    goto :goto_1

    .line 603
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/batch/android/e/d/b$g;

    .line 604
    iget v3, v9, Lcom/batch/android/e/d/b$g;->k:I

    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    .line 605
    iget-object v3, v10, Lcom/batch/android/e/d/b$d;->g:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_2
    iget v3, v9, Lcom/batch/android/e/d/b$g;->height:I

    .line 609
    iget v8, v9, Lcom/batch/android/e/d/b$g;->l:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_3

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v8, :cond_3

    .line 611
    int-to-float v3, v6

    iget v8, v9, Lcom/batch/android/e/d/b$g;->l:F

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 620
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingRight()I

    move-result v11

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v8, v11

    iget v11, v9, Lcom/batch/android/e/d/b$g;->width:I

    .line 619
    move/from16 v0, p1

    invoke-static {v0, v8, v11}, Lcom/batch/android/e/d/b;->getChildMeasureSpec(III)I

    move-result v8

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v9, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v9, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v11, v12

    .line 622
    move/from16 v0, p2

    invoke-static {v0, v11, v3}, Lcom/batch/android/e/d/b;->getChildMeasureSpec(III)I

    move-result v3

    .line 625
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v3}, Landroid/view/View;->measure(II)V

    .line 633
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;)V

    .line 636
    invoke-static/range {v17 .. v17}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    invoke-static {v7, v3}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v12

    .line 638
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v7, v9, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v3, v7

    iget v7, v9, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v3, v7

    .line 637
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 640
    move-object/from16 v0, p0

    iget v4, v0, Lcom/batch/android/e/d/b;->y:I

    iget v7, v10, Lcom/batch/android/e/d/b$d;->a:I

    .line 641
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v8, v9, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v3, v8

    iget v8, v9, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v8, v3

    move-object/from16 v3, p0

    .line 640
    invoke-direct/range {v3 .. v9}, Lcom/batch/android/e/d/b;->a(IIIIILcom/batch/android/e/d/b$g;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v3, Lcom/batch/android/e/d/b$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/batch/android/e/d/b$d;-><init>(Lcom/batch/android/e/d/b$1;)V

    .line 645
    const/4 v4, 0x1

    iput v4, v3, Lcom/batch/android/e/d/b$d;->c:I

    .line 646
    add-int v4, v15, v16

    iput v4, v3, Lcom/batch/android/e/d/b$d;->a:I

    .line 647
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v7, v9, Lcom/batch/android/e/d/b$g;->leftMargin:I

    add-int/2addr v4, v7

    iget v7, v9, Lcom/batch/android/e/d/b$g;->rightMargin:I

    add-int/2addr v4, v7

    .line 652
    :goto_2
    iget v7, v3, Lcom/batch/android/e/d/b$d;->a:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v10, v9, Lcom/batch/android/e/d/b$g;->topMargin:I

    add-int/2addr v8, v10

    iget v10, v9, Lcom/batch/android/e/d/b$g;->bottomMargin:I

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    iput v7, v3, Lcom/batch/android/e/d/b$d;->a:I

    .line 653
    iget v7, v3, Lcom/batch/android/e/d/b$d;->d:F

    iget v8, v9, Lcom/batch/android/e/d/b$g;->i:F

    add-float/2addr v7, v8

    iput v7, v3, Lcom/batch/android/e/d/b$d;->d:F

    .line 654
    iget v7, v3, Lcom/batch/android/e/d/b$d;->e:F

    iget v8, v9, Lcom/batch/android/e/d/b$g;->j:F

    add-float/2addr v7, v8

    iput v7, v3, Lcom/batch/android/e/d/b$d;->e:F

    .line 658
    iget v7, v3, Lcom/batch/android/e/d/b$d;->b:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Lcom/batch/android/e/d/b$d;->b:I

    .line 660
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v3}, Lcom/batch/android/e/d/b;->a(IILcom/batch/android/e/d/b$d;)V

    move-object v10, v3

    move v3, v12

    goto/16 :goto_1

    .line 650
    :cond_4
    iget v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/batch/android/e/d/b$d;->c:I

    move-object v3, v10

    move v4, v11

    goto :goto_2

    .line 663
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lcom/batch/android/e/d/b;->a(III)V

    .line 664
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/batch/android/e/d/b;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 664
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/batch/android/e/d/b;->a(IIII)V

    .line 668
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/batch/android/e/d/b;->A:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/batch/android/e/d/b;->c(II)V

    .line 669
    move-object/from16 v0, p0

    iget v3, v0, Lcom/batch/android/e/d/b;->x:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2, v7}, Lcom/batch/android/e/d/b;->b(IIII)V

    .line 671
    return-void
.end method

.method private b(IIII)V
    .locals 9

    .prologue
    const/high16 v8, 0x1000000

    const/16 v7, 0x100

    .line 1257
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1258
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1259
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1260
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1263
    packed-switch p1, :pswitch_data_0

    .line 1275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->getSumOfCrossSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    .line 1267
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->getLargestMainSize()I

    move-result v1

    .line 1279
    :goto_0
    sparse-switch v4, :sswitch_data_0

    .line 1305
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown width mode is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->getLargestMainSize()I

    move-result v3

    .line 1272
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->getSumOfCrossSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingLeft()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getPaddingRight()I

    move-result v6

    add-int/2addr v1, v6

    .line 1273
    goto :goto_0

    .line 1281
    :sswitch_0
    if-ge v0, v1, :cond_0

    .line 1283
    invoke-static {p4, v8}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result p4

    .line 1285
    :cond_0
    invoke-static {v0, p2, p4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    move v4, v0

    move v0, p4

    .line 1308
    :goto_1
    sparse-switch v5, :sswitch_data_1

    .line 1336
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown height mode is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :sswitch_1
    if-ge v0, v1, :cond_1

    .line 1291
    invoke-static {p4, v8}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result p4

    .line 1295
    :goto_2
    invoke-static {v0, p2, p4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    move v4, v0

    move v0, p4

    .line 1297
    goto :goto_1

    :cond_1
    move v0, v1

    .line 1293
    goto :goto_2

    .line 1301
    :sswitch_2
    invoke-static {v1, p2, p4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    move v4, v0

    move v0, p4

    .line 1302
    goto :goto_1

    .line 1310
    :sswitch_3
    if-ge v2, v3, :cond_2

    .line 1311
    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v0

    .line 1315
    :cond_2
    invoke-static {v2, p3, v0}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 1338
    :goto_3
    invoke-virtual {p0, v4, v0}, Lcom/batch/android/e/d/b;->setMeasuredDimension(II)V

    .line 1339
    return-void

    .line 1319
    :sswitch_4
    if-ge v2, v3, :cond_3

    .line 1320
    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v0

    move v1, v0

    move v0, v2

    .line 1326
    :goto_4
    invoke-static {v0, p3, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_3

    :cond_3
    move v1, v0

    move v0, v3

    .line 1324
    goto :goto_4

    .line 1331
    :sswitch_5
    invoke-static {v3, p3, v0}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_3

    .line 1263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1279
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 1308
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_5
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method private b(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 1237
    iget v1, v0, Lcom/batch/android/e/d/b$g;->leftMargin:I

    sub-int v1, p2, v1

    iget v0, v0, Lcom/batch/android/e/d/b$g;->rightMargin:I

    sub-int v0, v1, v0

    .line 1238
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1240
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1239
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1242
    return-void
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v4

    .line 393
    iget-object v0, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    move v0, v1

    .line 409
    :goto_0
    return v0

    :cond_1
    move v3, v2

    .line 399
    :goto_1
    if-ge v3, v4, :cond_4

    .line 400
    invoke-virtual {p0, v3}, Lcom/batch/android/e/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    if-nez v0, :cond_3

    .line 399
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 404
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$g;

    .line 405
    iget v0, v0, Lcom/batch/android/e/d/b$g;->h:I

    iget-object v5, p0, Lcom/batch/android/e/d/b;->D:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v0, v5, :cond_2

    move v0, v1

    .line 406
    goto :goto_0

    :cond_4
    move v0, v2

    .line 409
    goto :goto_0
.end method

.method private c(II)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x0

    .line 1167
    if-ne p2, v9, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    move v4, v2

    move v3, v1

    .line 1170
    :goto_1
    iget v1, v0, Lcom/batch/android/e/d/b$d;->c:I

    if-ge v4, v1, :cond_1

    .line 1171
    invoke-virtual {p0, v3}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v6

    .line 1172
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/batch/android/e/d/b$g;

    .line 1173
    iget v7, v1, Lcom/batch/android/e/d/b$g;->k:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v1, v1, Lcom/batch/android/e/d/b$g;->k:I

    if-eq v1, v9, :cond_0

    .line 1170
    :goto_2
    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_1

    .line 1177
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :pswitch_0
    iget v1, v0, Lcom/batch/android/e/d/b$d;->b:I

    invoke-direct {p0, v6, v1}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 1184
    :pswitch_1
    iget v1, v0, Lcom/batch/android/e/d/b$d;->b:I

    invoke-direct {p0, v6, v1}, Lcom/batch/android/e/d/b;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_1
    move v1, v3

    .line 1191
    goto :goto_0

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    .line 1194
    iget-object v1, v0, Lcom/batch/android/e/d/b$d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1195
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/batch/android/e/d/b;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1196
    packed-switch p1, :pswitch_data_1

    .line 1206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :pswitch_2
    iget v4, v0, Lcom/batch/android/e/d/b$d;->b:I

    invoke-direct {p0, v1, v4}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 1203
    :pswitch_3
    iget v4, v0, Lcom/batch/android/e/d/b$d;->b:I

    invoke-direct {p0, v1, v4}, Lcom/batch/android/e/d/b;->b(Landroid/view/View;I)V

    goto :goto_3

    .line 1212
    :cond_4
    return-void

    .line 1177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1196
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getLargestMainSize()I
    .locals 3

    .prologue
    .line 1373
    const/high16 v0, -0x80000000

    .line 1374
    iget-object v1, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    .line 1375
    iget v0, v0, Lcom/batch/android/e/d/b$d;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 1376
    goto :goto_0

    .line 1377
    :cond_0
    return v1
.end method

.method private getSumOfCrossSize()I
    .locals 3

    .prologue
    .line 1386
    const/4 v0, 0x0

    .line 1387
    iget-object v1, p0, Lcom/batch/android/e/d/b;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/b$d;

    .line 1388
    iget v0, v0, Lcom/batch/android/e/d/b$d;->b:I

    add-int/2addr v0, v1

    move v1, v0

    .line 1389
    goto :goto_0

    .line 1390
    :cond_0
    return v1
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/b;->C:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 286
    :cond_0
    const/4 v0, 0x0

    .line 288
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/d/b;->C:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/batch/android/e/d/b$g;
    .locals 2

    .prologue
    .line 1818
    new-instance v0, Lcom/batch/android/e/d/b$g;

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/batch/android/e/d/b$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/e/d/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/b;->C:[I

    .line 298
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1813
    instance-of v0, p1, Lcom/batch/android/e/d/b$g;

    return v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/batch/android/e/d/b;->a(Landroid/util/AttributeSet;)Lcom/batch/android/e/d/b$g;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1823
    new-instance v0, Lcom/batch/android/e/d/b$g;

    invoke-direct {v0, p1}, Lcom/batch/android/e/d/b$g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    .prologue
    .line 1876
    iget v0, p0, Lcom/batch/android/e/d/b;->B:I

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .prologue
    .line 1864
    iget v0, p0, Lcom/batch/android/e/d/b;->A:I

    return v0
.end method

.method public getFlexDirection()I
    .locals 1

    .prologue
    .line 1828
    iget v0, p0, Lcom/batch/android/e/d/b;->x:I

    return v0
.end method

.method public getFlexWrap()I
    .locals 1

    .prologue
    .line 1840
    iget v0, p0, Lcom/batch/android/e/d/b;->y:I

    return v0
.end method

.method public getJustifyContent()I
    .locals 1

    .prologue
    .line 1852
    iget v0, p0, Lcom/batch/android/e/d/b;->z:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1395
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1397
    iget v1, p0, Lcom/batch/android/e/d/b;->x:I

    packed-switch v1, :pswitch_data_0

    .line 1421
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/batch/android/e/d/b;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :pswitch_0
    if-ne v0, v3, :cond_0

    move v1, v3

    :goto_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1400
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/e/d/b;->a(ZIIII)V

    .line 1423
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 1399
    goto :goto_0

    .line 1403
    :pswitch_1
    if-eq v0, v3, :cond_1

    move v1, v3

    :goto_2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1404
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/e/d/b;->a(ZIIII)V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1403
    goto :goto_2

    .line 1407
    :pswitch_2
    if-ne v0, v3, :cond_2

    move v0, v3

    .line 1408
    :goto_3
    iget v1, p0, Lcom/batch/android/e/d/b;->y:I

    if-ne v1, v4, :cond_7

    .line 1409
    if-nez v0, :cond_3

    :goto_4
    move v1, v3

    :goto_5
    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1411
    invoke-direct/range {v0 .. v6}, Lcom/batch/android/e/d/b;->a(ZZIIII)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1407
    goto :goto_3

    :cond_3
    move v3, v2

    .line 1409
    goto :goto_4

    .line 1414
    :pswitch_3
    if-ne v0, v3, :cond_5

    move v0, v3

    .line 1415
    :goto_6
    iget v1, p0, Lcom/batch/android/e/d/b;->y:I

    if-ne v1, v4, :cond_6

    .line 1416
    if-nez v0, :cond_4

    move v2, v3

    :cond_4
    move v1, v2

    :goto_7
    move-object v0, p0

    move v2, v3

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1418
    invoke-direct/range {v0 .. v6}, Lcom/batch/android/e/d/b;->a(ZZIIII)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1414
    goto :goto_6

    :cond_6
    move v1, v0

    goto :goto_7

    :cond_7
    move v1, v0

    goto :goto_5

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 249
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/batch/android/e/d/b;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/b;->C:[I

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/b;->F:[Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e/d/b;->F:[Z

    array-length v0, v0

    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->getChildCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/batch/android/e/d/b;->F:[Z

    .line 258
    :cond_2
    iget v0, p0, Lcom/batch/android/e/d/b;->x:I

    packed-switch v0, :pswitch_data_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for the flex direction is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/batch/android/e/d/b;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/batch/android/e/d/b;->a(II)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/batch/android/e/d/b;->F:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 273
    return-void

    .line 265
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/batch/android/e/d/b;->b(II)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setAlignContent(I)V
    .locals 1
    .param p1, "alignContent"    # I

    .prologue
    .line 1880
    iget v0, p0, Lcom/batch/android/e/d/b;->B:I

    if-eq v0, p1, :cond_0

    .line 1881
    iput p1, p0, Lcom/batch/android/e/d/b;->B:I

    .line 1882
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->requestLayout()V

    .line 1884
    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1
    .param p1, "alignItems"    # I

    .prologue
    .line 1868
    iget v0, p0, Lcom/batch/android/e/d/b;->A:I

    if-eq v0, p1, :cond_0

    .line 1869
    iput p1, p0, Lcom/batch/android/e/d/b;->A:I

    .line 1870
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->requestLayout()V

    .line 1872
    :cond_0
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1
    .param p1, "flexDirection"    # I

    .prologue
    .line 1832
    iget v0, p0, Lcom/batch/android/e/d/b;->x:I

    if-eq v0, p1, :cond_0

    .line 1833
    iput p1, p0, Lcom/batch/android/e/d/b;->x:I

    .line 1834
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->requestLayout()V

    .line 1836
    :cond_0
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1
    .param p1, "flexWrap"    # I

    .prologue
    .line 1844
    iget v0, p0, Lcom/batch/android/e/d/b;->y:I

    if-eq v0, p1, :cond_0

    .line 1845
    iput p1, p0, Lcom/batch/android/e/d/b;->y:I

    .line 1846
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->requestLayout()V

    .line 1848
    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1
    .param p1, "justifyContent"    # I

    .prologue
    .line 1856
    iget v0, p0, Lcom/batch/android/e/d/b;->z:I

    if-eq v0, p1, :cond_0

    .line 1857
    iput p1, p0, Lcom/batch/android/e/d/b;->z:I

    .line 1858
    invoke-virtual {p0}, Lcom/batch/android/e/d/b;->requestLayout()V

    .line 1860
    :cond_0
    return-void
.end method

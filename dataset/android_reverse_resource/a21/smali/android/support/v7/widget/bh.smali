.class public Landroid/support/v7/widget/bh;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/bh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/bh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Landroid/support/v7/widget/bh;->a:Z

    iput v4, p0, Landroid/support/v7/widget/bh;->b:I

    iput v3, p0, Landroid/support/v7/widget/bh;->c:I

    const v0, 0x800033

    iput v0, p0, Landroid/support/v7/widget/bh;->e:I

    sget-object v0, Landroid/support/v7/b/l;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, p3, v3}, Landroid/support/v7/internal/widget/aq;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/aq;

    move-result-object v0

    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/internal/widget/aq;->a(II)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->setOrientation(I)V

    :cond_0
    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/internal/widget/aq;->a(II)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->setGravity(I)V

    :cond_1
    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/aq;->a(IZ)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->setBaselineAligned(Z)V

    :cond_2
    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_android_weightSum:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/aq;->a(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/bh;->g:F

    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/internal/widget/aq;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/bh;->b:I

    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/aq;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/bh;->h:Z

    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aq;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/aq;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/bh;->n:I

    sget v1, Landroid/support/v7/b/l;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/aq;->e(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/bh;->o:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->a()V

    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private c(II)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    :goto_0
    if-ge v7, p1, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/bi;

    iget v0, v6, Landroid/support/v7/widget/bi;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    iget v8, v6, Landroid/support/v7/widget/bi;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/bi;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bh;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v6, Landroid/support/v7/widget/bi;->height:I

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(II)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    :goto_0
    if-ge v7, p1, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/bi;

    iget v0, v6, Landroid/support/v7/widget/bi;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v8, v6, Landroid/support/v7/widget/bi;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/bi;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bh;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v6, Landroid/support/v7/widget/bi;->width:I

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(II)V
    .locals 27

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getVirtualChildCount()I

    move-result v21

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/bh;->b:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/bh;->h:Z

    move/from16 v25, v0

    const/high16 v14, -0x80000000

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v5, v0, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bh;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v14

    move v4, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v14, v3

    move v15, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v14

    move v4, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/bh;->m:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/v7/widget/bi;

    iget v3, v10, Landroid/support/v7/widget/bi;->g:F

    add-float v16, v6, v3

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    iget v3, v10, Landroid/support/v7/widget/bi;->height:I

    if-nez v3, :cond_5

    iget v3, v10, Landroid/support/v7/widget/bi;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    iget v6, v10, Landroid/support/v7/widget/bi;->topMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/4 v15, 0x1

    :cond_3
    :goto_2
    if-ltz v24, :cond_4

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->c:I

    :cond_4
    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    iget v3, v10, Landroid/support/v7/widget/bi;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/high16 v3, -0x80000000

    iget v6, v10, Landroid/support/v7/widget/bi;->height:I

    if-nez v6, :cond_6

    iget v6, v10, Landroid/support/v7/widget/bi;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    const/4 v3, 0x0

    const/4 v6, -0x2

    iput v6, v10, Landroid/support/v7/widget/bi;->height:I

    :cond_6
    move/from16 v20, v3

    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/bh;->f:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;IIIII)V

    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_7

    move/from16 v0, v20

    iput v0, v10, Landroid/support/v7/widget/bi;->height:I

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/bh;->f:I

    add-int v7, v6, v3

    iget v8, v10, Landroid/support/v7/widget/bi;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/bh;->f:I

    if-eqz v25, :cond_3

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v6, :cond_26

    iget v6, v10, Landroid/support/v7/widget/bi;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_26

    const/4 v6, 0x1

    const/4 v3, 0x1

    :goto_4
    iget v7, v10, Landroid/support/v7/widget/bi;->leftMargin:I

    iget v8, v10, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v9, v7, v8

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v4}, Landroid/support/v4/i/bt;->j(Landroid/view/View;)I

    move-result v7

    move/from16 v0, v18

    invoke-static {v0, v7}, Landroid/support/v7/internal/widget/av;->a(II)I

    move-result v11

    if-eqz v17, :cond_a

    iget v7, v10, Landroid/support/v7/widget/bi;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    const/4 v7, 0x1

    :goto_5
    iget v10, v10, Landroid/support/v7/widget/bi;->g:F

    const/16 v17, 0x0

    cmpl-float v10, v10, v17

    if-lez v10, :cond_c

    if-eqz v3, :cond_b

    move v3, v8

    :goto_6
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v13

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v15

    move v12, v3

    move v13, v8

    move/from16 v9, v19

    move v3, v14

    move v8, v11

    move v11, v6

    move/from16 v6, v16

    goto/16 :goto_1

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    move v3, v9

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_d

    :goto_8
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v12

    goto :goto_7

    :cond_d
    move v8, v9

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/bh;->m:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    :cond_f
    if-eqz v25, :cond_13

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_10

    if-nez v23, :cond_13

    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v4, v0, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->d(I)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v4

    :goto_a
    add-int/lit8 v4, v3, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_a

    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/bi;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/bh;->f:I

    add-int v8, v7, v14

    iget v9, v3, Landroid/support/v7/widget/bi;->topMargin:I

    add-int/2addr v8, v9

    iget v3, v3, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v4

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/support/v4/i/bt;->a(III)I

    move-result v16

    const v3, 0xffffff

    and-int v3, v3, v16

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/bh;->f:I

    sub-int v4, v3, v4

    if-nez v15, :cond_14

    if-eqz v4, :cond_20

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_20

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->g:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/bh;->g:F

    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/4 v3, 0x0

    move v14, v3

    move v5, v6

    move/from16 v9, v17

    move v10, v13

    move/from16 v7, v18

    move/from16 v12, v19

    move v6, v4

    :goto_b
    move/from16 v0, v21

    if-ge v14, v0, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    move v3, v10

    move v4, v7

    move v8, v12

    move v7, v9

    :goto_c
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v10, v3

    move v12, v8

    move v9, v7

    move v7, v4

    goto :goto_b

    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/bi;

    iget v8, v3, Landroid/support/v7/widget/bi;->g:F

    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_25

    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-float/2addr v5, v8

    sub-int/2addr v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v13

    add-int/2addr v8, v13

    iget v13, v3, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v8, v13

    iget v13, v3, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v8, v13

    iget v13, v3, Landroid/support/v7/widget/bi;->width:I

    move/from16 v0, p1

    invoke-static {v0, v8, v13}, Landroid/support/v7/widget/bh;->getChildMeasureSpec(III)I

    move-result v8

    iget v13, v3, Landroid/support/v7/widget/bi;->height:I

    if-nez v13, :cond_17

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v13, :cond_19

    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v4, v13

    if-gez v4, :cond_18

    const/4 v4, 0x0

    :cond_18
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v15, v8, v4}, Landroid/view/View;->measure(II)V

    :goto_d
    invoke-static {v15}, Landroid/support/v4/i/bt;->j(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    invoke-static {v7, v4}, Landroid/support/v7/internal/widget/av;->a(II)I

    move-result v4

    move/from16 v26, v5

    move v5, v6

    move v6, v4

    move/from16 v4, v26

    :goto_e
    iget v7, v3, Landroid/support/v7/widget/bi;->leftMargin:I

    iget v8, v3, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v7, v8

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v13, :cond_1b

    iget v13, v3, Landroid/support/v7/widget/bi;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_1b

    const/4 v13, 0x1

    :goto_f
    if-eqz v13, :cond_1c

    :goto_10
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v9, :cond_1d

    iget v7, v3, Landroid/support/v7/widget/bi;->width:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1d

    const/4 v7, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v9

    iget v13, v3, Landroid/support/v7/widget/bi;->topMargin:I

    add-int/2addr v10, v13

    iget v3, v3, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v10

    add-int/2addr v3, v10

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v8

    move v8, v12

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    goto/16 :goto_c

    :cond_19
    if-lez v4, :cond_1a

    :goto_12
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v15, v8, v4}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    goto :goto_12

    :cond_1b
    const/4 v13, 0x0

    goto :goto_f

    :cond_1c
    move v7, v8

    goto :goto_10

    :cond_1d
    const/4 v7, 0x0

    goto :goto_11

    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move/from16 v17, v9

    move v3, v10

    move/from16 v18, v7

    move v4, v12

    :goto_13
    if-nez v17, :cond_23

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_23

    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Landroid/support/v4/i/bt;->a(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/bh;->setMeasuredDimension(II)V

    if-eqz v11, :cond_1f

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/bh;->c(II)V

    :cond_1f
    return-void

    :cond_20
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v25, :cond_24

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_24

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    move/from16 v0, v21

    if-ge v4, v0, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_22

    :cond_21
    :goto_16
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_15

    :cond_22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/bi;

    iget v3, v3, Landroid/support/v7/widget/bi;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_23
    move v3, v4

    goto :goto_14

    :cond_24
    move v3, v10

    move/from16 v4, v19

    goto/16 :goto_13

    :cond_25
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_e

    :cond_26
    move v6, v11

    goto/16 :goto_4
.end method

.method a(IIII)V
    .locals 14

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v9

    sub-int v0, p3, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    sub-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getVirtualChildCount()I

    move-result v12

    iget v0, p0, Landroid/support/v7/widget/bh;->e:I

    and-int/lit8 v0, v0, 0x70

    iget v1, p0, Landroid/support/v7/widget/bh;->e:I

    const v2, 0x800007

    and-int v7, v1, v2

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v0

    :goto_0
    const/4 v8, 0x0

    move v3, v0

    :goto_1
    if-ge v8, v12, :cond_2

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/bh;->d(I)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v8

    :goto_2
    add-int/lit8 v8, v0, 0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, p0, Landroid/support/v7/widget/bh;->f:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, p0, Landroid/support/v7/widget/bh;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/bi;

    iget v0, v6, Landroid/support/v7/widget/bi;->h:I

    if-gez v0, :cond_1

    move v0, v7

    :cond_1
    invoke-static {p0}, Landroid/support/v4/i/bt;->h(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/i/v;->a(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    iget v0, v6, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int v2, v9, v0

    :goto_3
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/bh;->m:I

    add-int/2addr v0, v3

    :goto_4
    iget v3, v6, Landroid/support/v7/widget/bi;->topMargin:I

    add-int v13, v0, v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;)I

    move-result v0

    add-int v3, v13, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;IIII)V

    iget v0, v6, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v13, v0

    invoke-virtual {p0, v1, v8}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_2

    :sswitch_2
    sub-int v0, v11, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    iget v2, v6, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroid/support/v7/widget/bi;->rightMargin:I

    sub-int v2, v0, v2

    goto :goto_3

    :sswitch_3
    sub-int v0, v10, v4

    iget v2, v6, Landroid/support/v7/widget/bi;->rightMargin:I

    sub-int v2, v0, v2

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v8

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getVirtualChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/bi;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroid/support/v7/widget/bh;->m:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/bh;->a(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/bh;->m:I

    sub-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/bh;->a(Landroid/graphics/Canvas;I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method a(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/bh;->o:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/bh;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/bh;->m:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method a(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bh;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method b(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/bi;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/bi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/bi;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/bi;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method b(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bh;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method b(II)V
    .locals 29

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getVirtualChildCount()I

    move-result v22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/bh;->i:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/bh;->j:[I

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/widget/bh;->i:[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/widget/bh;->j:[I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/bh;->i:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/bh;->j:[I

    move-object/from16 v26, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v25, v7

    aput v8, v25, v5

    aput v8, v25, v4

    aput v8, v25, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v26, v7

    aput v8, v26, v5

    aput v8, v26, v4

    aput v8, v26, v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/bh;->a:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/bh;->h:Z

    move/from16 v28, v0

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    :goto_0
    const/high16 v15, -0x80000000

    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v5, v0, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bh;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v15

    move/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v3

    move/from16 v16, v4

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v15

    move/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/bh;->l:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/v7/widget/bi;

    iget v3, v10, Landroid/support/v7/widget/bi;->g:F

    add-float v17, v6, v3

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    iget v3, v10, Landroid/support/v7/widget/bi;->width:I

    if-nez v3, :cond_a

    iget v3, v10, Landroid/support/v7/widget/bi;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    iget v6, v10, Landroid/support/v7/widget/bi;->leftMargin:I

    iget v7, v10, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    :goto_3
    if-eqz v27, :cond_9

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    :cond_6
    :goto_4
    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v6, :cond_35

    iget v6, v10, Landroid/support/v7/widget/bi;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_35

    const/4 v6, 0x1

    const/4 v3, 0x1

    :goto_5
    iget v7, v10, Landroid/support/v7/widget/bi;->topMargin:I

    iget v8, v10, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    invoke-static {v4}, Landroid/support/v4/i/bt;->j(Landroid/view/View;)I

    move-result v7

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/support/v7/internal/widget/av;->a(II)I

    move-result v12

    if-eqz v27, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v19

    const/4 v7, -0x1

    move/from16 v0, v19

    if-eq v0, v7, :cond_7

    iget v7, v10, Landroid/support/v7/widget/bi;->h:I

    if-gez v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/bh;->e:I

    :goto_6
    and-int/lit8 v7, v7, 0x70

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    aget v21, v25, v7

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    aput v21, v25, v7

    aget v21, v26, v7

    sub-int v19, v9, v19

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    aput v19, v26, v7

    :cond_7
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    if-eqz v18, :cond_10

    iget v7, v10, Landroid/support/v7/widget/bi;->height:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_10

    const/4 v7, 0x1

    :goto_7
    iget v10, v10, Landroid/support/v7/widget/bi;->g:F

    const/16 v18, 0x0

    cmpl-float v10, v10, v18

    if-lez v10, :cond_12

    if-eqz v3, :cond_11

    move v3, v8

    :goto_8
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v14

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move/from16 v4, v16

    move v13, v3

    move v14, v8

    move/from16 v9, v19

    move v3, v15

    move v8, v12

    move v12, v6

    move/from16 v6, v17

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    iget v6, v10, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    goto/16 :goto_3

    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_a
    const/high16 v3, -0x80000000

    iget v6, v10, Landroid/support/v7/widget/bi;->width:I

    if-nez v6, :cond_b

    iget v6, v10, Landroid/support/v7/widget/bi;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    const/4 v3, 0x0

    const/4 v6, -0x2

    iput v6, v10, Landroid/support/v7/widget/bi;->width:I

    :cond_b
    move/from16 v21, v3

    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/bh;->f:I

    :goto_a
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;IIIII)V

    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_c

    move/from16 v0, v21

    iput v0, v10, Landroid/support/v7/widget/bi;->width:I

    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/bh;->f:I

    iget v7, v10, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/bh;->f:I

    :goto_b
    if-eqz v28, :cond_6

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto/16 :goto_4

    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/bh;->f:I

    add-int v7, v6, v3

    iget v8, v10, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/bh;->f:I

    goto :goto_b

    :cond_f
    iget v7, v10, Landroid/support/v7/widget/bi;->h:I

    goto/16 :goto_6

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_11
    move v3, v9

    goto/16 :goto_8

    :cond_12
    if-eqz v3, :cond_13

    :goto_c
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v13

    goto/16 :goto_9

    :cond_13
    move v8, v9

    goto :goto_c

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/bh;->l:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    :cond_15
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_34

    :cond_16
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v7, 0x1

    aget v7, v26, v7

    const/4 v8, 0x2

    aget v8, v26, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_d
    if-eqz v28, :cond_1b

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_17

    if-nez v23, :cond_1b

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/4 v4, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v4, v0, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->d(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v4

    :goto_f
    add-int/lit8 v4, v3, 0x1

    goto :goto_e

    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_f

    :cond_19
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/bi;

    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/bh;->f:I

    iget v9, v3, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v9, v15

    iget v3, v3, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v4

    goto :goto_f

    :cond_1a
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/bh;->f:I

    add-int v9, v8, v15

    iget v10, v3, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v9, v10

    iget v3, v3, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move v3, v4

    goto :goto_f

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0, v4}, Landroid/support/v4/i/bt;->a(III)I

    move-result v17

    const v3, 0xffffff

    and-int v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/bh;->f:I

    sub-int v4, v3, v4

    if-nez v16, :cond_1c

    if-eqz v4, :cond_2d

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_2d

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->g:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/bh;->g:F

    :cond_1d
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v25, v8

    aput v9, v25, v7

    aput v9, v25, v5

    aput v9, v25, v3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v26, v8

    aput v9, v26, v7

    aput v9, v26, v5

    aput v9, v26, v3

    const/4 v8, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/4 v3, 0x0

    move v15, v3

    move v5, v6

    move/from16 v9, v18

    move v10, v14

    move/from16 v7, v19

    move v6, v4

    move v14, v8

    :goto_10
    move/from16 v0, v22

    if-ge v15, v0, :cond_29

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_33

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1e

    move v3, v5

    move v4, v6

    move v8, v14

    move v6, v10

    move v5, v9

    :goto_11
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v10, v6

    move v14, v8

    move v9, v5

    move v6, v4

    move v5, v3

    goto :goto_10

    :cond_1e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/bi;

    iget v8, v3, Landroid/support/v7/widget/bi;->g:F

    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_32

    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-float/2addr v5, v8

    sub-int v8, v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v13

    add-int/2addr v6, v13

    iget v13, v3, Landroid/support/v7/widget/bi;->topMargin:I

    add-int/2addr v6, v13

    iget v13, v3, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v6, v13

    iget v13, v3, Landroid/support/v7/widget/bi;->height:I

    move/from16 v0, p2

    invoke-static {v0, v6, v13}, Landroid/support/v7/widget/bh;->getChildMeasureSpec(III)I

    move-result v6

    iget v13, v3, Landroid/support/v7/widget/bi;->width:I

    if-nez v13, :cond_1f

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v13, :cond_22

    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v4, v13

    if-gez v4, :cond_20

    const/4 v4, 0x0

    :cond_20
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    :goto_12
    invoke-static/range {v16 .. v16}, Landroid/support/v4/i/bt;->j(Landroid/view/View;)I

    move-result v4

    const/high16 v6, -0x1000000

    and-int/2addr v4, v6

    invoke-static {v7, v4}, Landroid/support/v7/internal/widget/av;->a(II)I

    move-result v13

    move v7, v5

    :goto_13
    if-eqz v11, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/bh;->f:I

    :goto_14
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v4, :cond_25

    iget v4, v3, Landroid/support/v7/widget/bi;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    :goto_15
    iget v5, v3, Landroid/support/v7/widget/bi;->topMargin:I

    iget v6, v3, Landroid/support/v7/widget/bi;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    if-eqz v4, :cond_26

    move v4, v5

    :goto_16
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v9, :cond_27

    iget v4, v3, Landroid/support/v7/widget/bi;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_27

    const/4 v4, 0x1

    :goto_17
    if-eqz v27, :cond_21

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBaseline()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_21

    iget v10, v3, Landroid/support/v7/widget/bi;->h:I

    if-gez v10, :cond_28

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->e:I

    :goto_18
    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    aget v10, v25, v3

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v25, v3

    aget v10, v26, v3

    sub-int/2addr v6, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v26, v3

    :cond_21
    move v3, v7

    move v6, v5

    move v5, v4

    move v7, v13

    move v4, v8

    move v8, v14

    goto/16 :goto_11

    :cond_22
    if-lez v4, :cond_23

    :goto_19
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_12

    :cond_23
    const/4 v4, 0x0

    goto :goto_19

    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, v3, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/bh;->f:I

    goto/16 :goto_14

    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_26
    move v4, v6

    goto :goto_16

    :cond_27
    const/4 v4, 0x0

    goto :goto_17

    :cond_28
    iget v3, v3, Landroid/support/v7/widget/bi;->h:I

    goto :goto_18

    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/bh;->f:I

    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    :cond_2a
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    const/4 v8, 0x2

    aget v8, v26, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_2b
    move/from16 v18, v9

    move v3, v10

    move/from16 v19, v7

    move v4, v14

    :goto_1a
    if-nez v18, :cond_30

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v5, :cond_30

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, -0x1000000

    and-int v4, v4, v19

    or-int v4, v4, v17

    shl-int/lit8 v5, v19, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/support/v4/i/bt;->a(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/v7/widget/bh;->setMeasuredDimension(II)V

    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/bh;->d(II)V

    :cond_2c
    return-void

    :cond_2d
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v28, :cond_31

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_31

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    move/from16 v0, v22

    if-ge v4, v0, :cond_31

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_2f

    :cond_2e
    :goto_1d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1c

    :cond_2f
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/bi;

    iget v3, v3, Landroid/support/v7/widget/bi;->g:F

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2e

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1d

    :cond_30
    move v3, v4

    goto :goto_1b

    :cond_31
    move v3, v10

    move v4, v5

    goto/16 :goto_1a

    :cond_32
    move v8, v6

    move v13, v7

    move v7, v5

    goto/16 :goto_13

    :cond_33
    move v3, v5

    move v4, v6

    move v8, v14

    move v6, v10

    move v5, v9

    goto/16 :goto_11

    :cond_34
    move/from16 v5, v20

    goto/16 :goto_d

    :cond_35
    move v6, v12

    goto/16 :goto_5
.end method

.method b(IIII)V
    .locals 22

    invoke-static/range {p0 .. p0}, Landroid/support/v7/internal/widget/av;->a(Landroid/view/View;)Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v11

    sub-int v2, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v3

    sub-int v15, v2, v3

    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v3

    sub-int v16, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getVirtualChildCount()I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/bh;->e:I

    const v3, 0x800007

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->e:I

    and-int/lit8 v14, v3, 0x70

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/bh;->a:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/bh;->i:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/bh;->j:[I

    move-object/from16 v20, v0

    invoke-static/range {p0 .. p0}, Landroid/support/v4/i/bt;->h(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/i/v;->a(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v12

    :goto_0
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz v4, :cond_7

    add-int/lit8 v3, v17, -0x1

    const/4 v2, -0x1

    move v9, v2

    move v10, v3

    :goto_1
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    mul-int v2, v9, v13

    add-int v21, v10, v2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->d(I)I

    move-result v2

    add-int/2addr v12, v2

    move v2, v13

    :goto_3
    add-int/lit8 v13, v2, 0x1

    goto :goto_2

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bh;->f:I

    sub-int v12, v2, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v2

    sub-int v3, p3, p1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/bh;->f:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v4, -0x1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/bi;

    if-eqz v18, :cond_5

    iget v2, v8, Landroid/support/v7/widget/bi;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    :goto_4
    iget v4, v8, Landroid/support/v7/widget/bi;->h:I

    if-gez v4, :cond_1

    move v4, v14

    :cond_1
    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_1

    move v5, v11

    :cond_2
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/bh;->l:I

    add-int/2addr v2, v12

    :goto_6
    iget v4, v8, Landroid/support/v7/widget/bi;->leftMargin:I

    add-int v12, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;IIII)V

    iget v2, v8, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bh;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v13

    goto/16 :goto_3

    :sswitch_2
    iget v4, v8, Landroid/support/v7/widget/bi;->topMargin:I

    add-int v5, v11, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x1

    aget v4, v19, v4

    sub-int v2, v4, v2

    add-int/2addr v5, v2

    goto :goto_5

    :sswitch_3
    sub-int v2, v16, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    iget v4, v8, Landroid/support/v7/widget/bi;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v8, Landroid/support/v7/widget/bi;->bottomMargin:I

    sub-int v5, v2, v4

    goto :goto_5

    :sswitch_4
    sub-int v4, v15, v7

    iget v5, v8, Landroid/support/v7/widget/bi;->bottomMargin:I

    sub-int v5, v4, v5

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v4, v2

    const/4 v4, 0x2

    aget v4, v20, v4

    sub-int v2, v4, v2

    sub-int/2addr v5, v2

    goto :goto_5

    :cond_3
    return-void

    :cond_4
    move v2, v12

    goto :goto_6

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v13

    goto/16 :goto_3

    :cond_7
    move v9, v2

    move v10, v3

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getVirtualChildCount()I

    move-result v2

    invoke-static {p0}, Landroid/support/v7/internal/widget/av;->a(Landroid/view/View;)Z

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v0, v4

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/bh;->b(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/bi;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroid/support/v7/widget/bh;->l:I

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingLeft()I

    move-result v0

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/bh;->b(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/bh;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/bi;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroid/support/v7/widget/bh;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/bi;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method b(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/bh;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/bh;->l:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/bh;->o:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected c(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget v2, p0, Landroid/support/v7/widget/bh;->n:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/bh;->n:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/support/v7/widget/bh;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bh;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/bi;

    return v0
.end method

.method d(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->j()Landroid/support/v7/widget/bi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bh;->b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/bi;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bh;->b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/bi;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Landroid/support/v7/widget/bh;->b:I

    if-gez v1, :cond_1

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getChildCount()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/bh;->b:I

    if-gt v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, p0, Landroid/support/v7/widget/bh;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    if-ne v3, v0, :cond_3

    iget v1, p0, Landroid/support/v7/widget/bh;->b:I

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/bh;->c:I

    iget v1, p0, Landroid/support/v7/widget/bh;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    iget v1, p0, Landroid/support/v7/widget/bh;->e:I

    and-int/lit8 v1, v1, 0x70

    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    sparse-switch v1, :sswitch_data_0

    :cond_4
    move v1, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    iget v0, v0, Landroid/support/v7/widget/bi;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/bh;->f:I

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/support/v7/widget/bh;->f:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->l:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->n:I

    return v0
.end method

.method getVirtualChildCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->g:F

    return v0
.end method

.method protected j()Landroid/support/v7/widget/bi;
    .locals 3

    const/4 v2, -0x2

    iget v0, p0, Landroid/support/v7/widget/bh;->d:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/bi;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bh;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/widget/bi;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/bi;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bh;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bh;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bh;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/widget/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bh;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/bh;->a(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/bh;->b(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bh;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/bh;->a(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/bh;->b(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bh;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/bh;->b:I

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/bh;->k:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/bh;->l:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/bh;->m:I

    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->requestLayout()V

    goto :goto_0

    :cond_2
    iput v0, p0, Landroid/support/v7/widget/bh;->l:I

    iput v0, p0, Landroid/support/v7/widget/bh;->m:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/bh;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bh;->e:I

    if-eq v0, p1, :cond_1

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    const v0, 0x800003

    or-int/2addr v0, p1

    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    :cond_0
    iput v0, p0, Landroid/support/v7/widget/bh;->e:I

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 3

    const v2, 0x800007

    and-int v0, p1, v2

    iget v1, p0, Landroid/support/v7/widget/bh;->e:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/bh;->e:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/bh;->e:I

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bh;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v7/widget/bh;->d:I

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bh;->n:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->requestLayout()V

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/bh;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroid/support/v7/widget/bh;->e:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/bh;->e:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/bh;->e:I

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/bh;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

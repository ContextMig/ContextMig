.class public Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private marginHorizontal:I

.field private marginVertical:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xf1ee9c09331fecaL    # 7.59566657876384E-236

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/FlowLayout"

    const/16 v3, 0x2b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 15
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->init()V

    .line 16
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 24
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->init()V

    .line 25
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->marginHorizontal:I

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 29
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->marginVertical:I

    .line 30
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoInit()[Z

    move-result-object v5

    .line 71
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingLeft()I

    move-result v4

    const/16 v6, 0x1c

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 72
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingTop()I

    move-result v1

    .line 73
    .local v1, "childTop":I
    const/4 v3, 0x0

    .line 74
    .local v3, "lowestBottom":I
    sub-int v6, p4, p2

    const/16 v7, 0x1d

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 75
    const/4 v2, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    :goto_0
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    const/16 v7, 0x1f

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 76
    invoke-virtual {p0, v2}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x20

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 77
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 78
    const/16 v7, 0x21

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 75
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    const/16 v7, 0x29

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/16 v9, 0x22

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 81
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/16 v10, 0x23

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 83
    add-int v10, v8, v4

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    if-gt v10, v6, :cond_1

    const/16 v10, 0x24

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 87
    :goto_2
    add-int v10, v4, v8

    add-int v11, v1, v9

    invoke-virtual {v7, v4, v1, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 88
    iget v7, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->marginHorizontal:I

    add-int/2addr v7, v8

    add-int v0, v4, v7

    .line 90
    .local v0, "childLeft":I
    add-int v4, v9, v1

    if-gt v4, v3, :cond_2

    const/16 v4, 0x27

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    move v4, v0

    goto :goto_1

    .line 83
    .end local v0    # "childLeft":I
    :cond_1
    const/16 v4, 0x25

    const/4 v10, 0x1

    aput-boolean v10, v5, v4

    .line 84
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingLeft()I

    move-result v0

    .line 85
    .restart local v0    # "childLeft":I
    iget v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->marginVertical:I

    add-int v1, v4, v3

    const/16 v4, 0x26

    const/4 v10, 0x1

    aput-boolean v10, v5, v4

    move v4, v0

    goto :goto_2

    .line 91
    :cond_2
    add-int v3, v9, v1

    const/16 v4, 0x28

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    move v4, v0

    goto :goto_1

    .line 94
    .end local v0    # "childLeft":I
    :cond_3
    const/16 v4, 0x2a

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->$jacocoInit()[Z

    move-result-object v13

    .line 34
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingLeft()I

    move-result v12

    const/4 v11, 0x7

    const/4 v14, 0x1

    aput-boolean v14, v13, v11

    .line 35
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingTop()I

    move-result v4

    .line 36
    .local v4, "childTop":I
    const/4 v8, 0x0

    .line 37
    .local v8, "lowestBottom":I
    const/4 v11, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 38
    const/16 v14, 0x64

    move/from16 v0, p1

    invoke-static {v14, v0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->resolveSize(II)I

    move-result v9

    .line 39
    .local v9, "myWidth":I
    const/4 v14, 0x0

    const/16 v15, 0x9

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 41
    const/4 v5, 0x0

    const/16 v15, 0xa

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getChildCount()I

    move-result v15

    if-ge v5, v15, :cond_3

    const/16 v15, 0xb

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 42
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0xc

    const/16 v17, 0x1

    aput-boolean v17, v13, v16

    .line 43
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 44
    const/16 v15, 0xd

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    .line 41
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .local v5, "i":I
    const/16 v15, 0x19

    const/16 v16, 0x1

    aput-boolean v16, v13, v15

    goto :goto_0

    .line 47
    .end local v5    # "i":I
    :cond_0
    const/16 v16, 0x0

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getChildMeasureSpec(III)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0xe

    const/16 v19, 0x1

    aput-boolean v19, v13, v18

    .line 48
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getChildMeasureSpec(III)I

    move-result v17

    const/16 v18, 0xf

    const/16 v19, 0x1

    aput-boolean v19, v13, v18

    .line 47
    invoke-virtual/range {v15 .. v17}, Landroid/view/View;->measure(II)V

    const/16 v16, 0x10

    const/16 v17, 0x1

    aput-boolean v17, v13, v16

    .line 49
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    const/16 v17, 0x11

    const/16 v18, 0x1

    aput-boolean v18, v13, v17

    .line 50
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/16 v15, 0x12

    const/16 v17, 0x1

    aput-boolean v17, v13, v15

    .line 51
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .local v6, "lineHeight":I
    const/16 v11, 0x13

    const/4 v15, 0x1

    aput-boolean v15, v13, v11

    .line 53
    add-int v11, v16, v12

    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingRight()I

    move-result v15

    add-int/2addr v11, v15

    if-gt v11, v9, :cond_1

    const/16 v11, 0x14

    const/4 v15, 0x1

    aput-boolean v15, v13, v11

    .line 58
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->marginHorizontal:I

    add-int v11, v11, v16

    add-int v3, v12, v11

    .line 60
    .local v3, "childLeft":I
    add-int v11, v7, v4

    if-gt v11, v8, :cond_2

    const/16 v11, 0x17

    const/4 v12, 0x1

    aput-boolean v12, v13, v11

    move v11, v6

    move v12, v3

    goto/16 :goto_1

    .line 53
    .end local v3    # "childLeft":I
    :cond_1
    const/16 v11, 0x15

    const/4 v12, 0x1

    aput-boolean v12, v13, v11

    .line 54
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingLeft()I

    move-result v3

    .line 55
    .restart local v3    # "childLeft":I
    move-object/from16 v0, p0

    iget v11, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->marginVertical:I

    add-int v4, v11, v8

    .line 56
    .end local v6    # "lineHeight":I
    .local v7, "lineHeight":I
    const/16 v11, 0x16

    const/4 v12, 0x1

    aput-boolean v12, v13, v11

    move v6, v7

    .end local v7    # "lineHeight":I
    .restart local v6    # "lineHeight":I
    move v12, v3

    goto :goto_2

    .line 61
    :cond_2
    add-int v8, v7, v4

    const/16 v11, 0x18

    const/4 v12, 0x1

    aput-boolean v12, v13, v11

    move v11, v6

    move v12, v3

    goto/16 :goto_1

    .line 65
    .end local v3    # "childLeft":I
    .end local v6    # "lineHeight":I
    :cond_3
    add-int/2addr v11, v4

    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    add-int v10, v14, v11

    .local v10, "wantedHeight":I
    const/16 v11, 0x1a

    const/4 v12, 0x1

    aput-boolean v12, v13, v11

    .line 66
    move/from16 v0, p2

    invoke-static {v10, v0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->resolveSize(II)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lpl/com/andrzejgrzyb/shoppinglist/FlowLayout;->setMeasuredDimension(II)V

    .line 67
    const/16 v11, 0x1b

    const/4 v12, 0x1

    aput-boolean v12, v13, v11

    return-void
.end method

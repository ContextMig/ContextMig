.class public Lchan/android/app/pocketnote/util/view/DashBoardLayout;
.super Landroid/view/ViewGroup;
.source "DashBoardLayout.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final UNEVEN_GRID_PENALTY_MULTIPLIER:I = 0x1


# instance fields
.field private mMaxChildHeight:I

.field private mMaxChildWidth:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x314ff03b27ba5199L    # 3.615299057083085E-71

    const-string v2, "chan/android/app/pocketnote/util/view/DashBoardLayout"

    const/16 v3, 0x36

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v2, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    .line 34
    iput v2, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    .line 38
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0, p1, p2, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v1, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    .line 34
    iput v1, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    .line 42
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v1, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    .line 34
    iput v1, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    .line 46
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 26

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->$jacocoInit()[Z

    move-result-object v21

    .line 88
    sub-int v18, p4, p2

    .line 89
    .local v18, "width":I
    sub-int v19, p5, p3

    const/16 v20, 0x16

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 91
    invoke-virtual/range {p0 .. p0}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->getChildCount()I

    move-result v7

    .line 94
    .local v7, "count":I
    const/16 v16, 0x0

    .line 95
    .local v16, "visibleCount":I
    const/4 v10, 0x0

    const/16 v20, 0x17

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    :goto_0
    if-ge v10, v7, :cond_1

    const/16 v20, 0x18

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 96
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v22, 0x19

    const/16 v23, 0x1

    aput-boolean v23, v21, v22

    .line 97
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v22, 0x8

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 98
    const/16 v20, 0x1a

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 95
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .local v10, "i":I
    const/16 v20, 0x1c

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    goto :goto_0

    .line 100
    .end local v10    # "i":I
    :cond_0
    add-int/lit8 v16, v16, 0x1

    const/16 v20, 0x1b

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    goto :goto_1

    .line 103
    :cond_1
    if-nez v16, :cond_2

    .line 104
    const/16 v19, 0x1d

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    .line 181
    :goto_2
    return-void

    .line 109
    :cond_2
    const v4, 0x7fffffff

    .line 113
    .local v4, "bestSpaceDifference":I
    const/4 v8, 0x0

    .line 114
    .local v8, "hSpace":I
    const/4 v15, 0x0

    .line 116
    .local v15, "vSpace":I
    const/4 v6, 0x1

    const/16 v20, 0x1e

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 120
    :goto_3
    add-int/lit8 v20, v16, -0x1

    div-int v20, v20, v6

    add-int/lit8 v13, v20, 0x1

    .line 122
    .local v13, "rows":I
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    move/from16 v20, v0

    mul-int v20, v20, v6

    sub-int v20, v18, v20

    add-int/lit8 v22, v6, 0x1

    div-int v8, v20, v22

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    move/from16 v20, v0

    mul-int v20, v20, v13

    sub-int v20, v19, v20

    add-int/lit8 v22, v13, 0x1

    div-int v15, v20, v22

    const/16 v20, 0x1f

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 125
    sub-int v20, v15, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 126
    .local v14, "spaceDifference":I
    mul-int v20, v13, v6

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    const/16 v20, 0x20

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 130
    :goto_4
    if-ge v14, v4, :cond_4

    .line 132
    move v4, v14

    .line 136
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_5

    .line 137
    const/16 v20, 0x22

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 154
    :goto_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v20, 0x25

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    .line 155
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 158
    add-int/lit8 v20, v6, 0x1

    mul-int v20, v20, v8

    sub-int v20, v18, v20

    div-int v18, v20, v6

    .line 159
    add-int/lit8 v20, v13, 0x1

    mul-int v20, v20, v15

    sub-int v19, v19, v20

    div-int v9, v19, v13

    .line 163
    .local v9, "height":I
    const/16 v17, 0x0

    .line 164
    .local v17, "visibleIndex":I
    const/4 v10, 0x0

    const/16 v19, 0x26

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    :goto_6
    if-ge v10, v7, :cond_b

    const/16 v19, 0x27

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const/16 v19, 0x28

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    .line 166
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 167
    const/16 v19, 0x29

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    .line 164
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .restart local v10    # "i":I
    const/16 v19, 0x34

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    goto :goto_6

    .line 127
    .end local v9    # "height":I
    .end local v10    # "i":I
    .end local v17    # "visibleIndex":I
    :cond_3
    mul-int/lit8 v14, v14, 0x1

    const/16 v20, 0x21

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    goto :goto_4

    .line 141
    :cond_4
    add-int/lit8 v6, v6, -0x1

    .line 142
    .local v6, "cols":I
    add-int/lit8 v20, v16, -0x1

    div-int v20, v20, v6

    add-int/lit8 v13, v20, 0x1

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    move/from16 v20, v0

    mul-int v20, v20, v6

    sub-int v20, v18, v20

    add-int/lit8 v22, v6, 0x1

    div-int v8, v20, v22

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    move/from16 v20, v0

    mul-int v20, v20, v13

    sub-int v20, v19, v20

    add-int/lit8 v22, v13, 0x1

    div-int v15, v20, v22

    .line 145
    const/16 v20, 0x23

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    goto/16 :goto_5

    .line 148
    .end local v6    # "cols":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .restart local v6    # "cols":I
    const/16 v20, 0x24

    const/16 v22, 0x1

    aput-boolean v22, v21, v20

    goto/16 :goto_3

    .line 170
    .end local v6    # "cols":I
    .restart local v9    # "height":I
    .restart local v17    # "visibleIndex":I
    :cond_6
    div-int v12, v17, v6

    .line 171
    .local v12, "row":I
    rem-int v5, v17, v6

    .line 173
    .local v5, "col":I
    add-int/lit8 v19, v5, 0x1

    mul-int v19, v19, v8

    mul-int v20, v18, v5

    add-int v11, v19, v20

    .line 174
    .local v11, "left":I
    add-int/lit8 v19, v12, 0x1

    mul-int v19, v19, v15

    mul-int v20, v9, v12

    add-int v23, v19, v20

    const/16 v19, 0x2a

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    .line 176
    if-eqz v8, :cond_7

    const/16 v19, 0x2b

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    :goto_8
    add-int v19, v11, v18

    const/16 v20, 0x2e

    const/16 v24, 0x1

    aput-boolean v24, v21, v20

    move/from16 v20, v19

    :goto_9
    if-eqz v15, :cond_9

    const/16 v19, 0x2f

    const/16 v24, 0x1

    aput-boolean v24, v21, v19

    :goto_a
    add-int v19, v23, v9

    const/16 v24, 0x32

    const/16 v25, 0x1

    aput-boolean v25, v21, v24

    :goto_b
    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 179
    add-int/lit8 v17, v17, 0x1

    const/16 v19, 0x33

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    goto/16 :goto_7

    .line 176
    :cond_7
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_8

    const/16 v19, 0x2c

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    goto :goto_8

    :cond_8
    const/16 v19, 0x2d

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    move/from16 v20, p4

    goto :goto_9

    :cond_9
    add-int/lit8 v19, v13, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_a

    const/16 v19, 0x30

    const/16 v24, 0x1

    aput-boolean v24, v21, v19

    goto :goto_a

    :cond_a
    const/16 v19, 0x31

    const/16 v24, 0x1

    aput-boolean v24, v21, v19

    move/from16 v19, p5

    goto :goto_b

    .line 181
    .end local v5    # "col":I
    .end local v11    # "left":I
    .end local v12    # "row":I
    :cond_b
    const/16 v19, 0x35

    const/16 v20, 0x1

    aput-boolean v20, v21, v19

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->$jacocoInit()[Z

    move-result-object v4

    .line 50
    const/4 v5, 0x0

    iput v5, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    .line 51
    const/4 v5, 0x0

    iput v5, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 57
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->getChildCount()I

    move-result v2

    .line 58
    .local v2, "count":I
    const/4 v3, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    :goto_0
    if-ge v3, v2, :cond_1

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 59
    invoke-virtual {p0, v3}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 60
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 61
    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 58
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .local v3, "i":I
    const/16 v7, 0xd

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    goto :goto_0

    .line 64
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v7, v5, v6}, Landroid/view/View;->measure(II)V

    const/16 v8, 0xa

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 66
    iget v8, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    const/16 v8, 0xb

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 67
    iget v8, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    const/16 v7, 0xc

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    goto :goto_1

    .line 72
    :cond_1
    iget v5, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childWidthMeasureSpec":I
    const/16 v5, 0xe

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 73
    iget v5, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 75
    .local v0, "childHeightMeasureSpec":I
    const/4 v3, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :goto_2
    if-ge v3, v2, :cond_3

    const/16 v5, 0x10

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 76
    invoke-virtual {p0, v3}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x11

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 77
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 78
    const/16 v5, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 75
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "i":I
    const/16 v5, 0x14

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    goto :goto_2

    .line 81
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    const/16 v5, 0x13

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    goto :goto_3

    .line 83
    :cond_3
    iget v5, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildWidth:I

    invoke-static {v5, p1}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->resolveSize(II)I

    move-result v5

    iget v6, p0, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->mMaxChildHeight:I

    invoke-static {v6, p2}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lchan/android/app/pocketnote/util/view/DashBoardLayout;->setMeasuredDimension(II)V

    .line 84
    const/16 v5, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    return-void
.end method

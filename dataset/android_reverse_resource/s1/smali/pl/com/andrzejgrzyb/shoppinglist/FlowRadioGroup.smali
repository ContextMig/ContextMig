.class public Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;
.super Landroid/widget/RadioGroup;
.source "FlowRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7969c193e6812cb1L    # -6.274132717788587E-277

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup"

    const/16 v3, 0x45

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-boolean v2, v0, v2

    .line 29
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->init()V

    .line 30
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->setOrientation(I)V

    .line 34
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v1

    .line 162
    invoke-virtual {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "checkedView":Landroid/view/View;
    if-nez v0, :cond_0

    const/16 v2, 0x40

    aput-boolean v3, v1, v2

    .line 166
    .end local v0    # "checkedView":Landroid/view/View;
    :goto_0
    const/16 v2, 0x44

    aput-boolean v3, v1, v2

    return-void

    .line 163
    .restart local v0    # "checkedView":Landroid/view/View;
    :cond_0
    instance-of v2, v0, Landroid/widget/RadioButton;

    if-nez v2, :cond_1

    const/16 v2, 0x41

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x42

    aput-boolean v3, v1, v2

    .line 164
    check-cast v0, Landroid/widget/RadioButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/16 v2, 0x43

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getCheckedRadioButtonIndex()I
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 145
    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v11

    .line 110
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingTop()I

    move-result v7

    const/16 v8, 0x28

    const/4 v9, 0x1

    aput-boolean v9, v11, v8

    .line 111
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingLeft()I

    move-result v10

    const/16 v8, 0x29

    const/4 v9, 0x1

    aput-boolean v9, v11, v8

    .line 113
    move-object/from16 v0, p0

    iget-object v8, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 116
    .local v5, "lineNum":I
    const/4 v1, 0x0

    const/16 v8, 0x2a

    const/4 v9, 0x1

    aput-boolean v9, v11, v8

    :goto_0
    if-ge v1, v5, :cond_2

    const/16 v8, 0x2b

    const/4 v9, 0x1

    aput-boolean v9, v11, v8

    .line 117
    move-object/from16 v0, p0

    iget-object v8, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/16 v9, 0x2c

    const/4 v12, 0x1

    aput-boolean v12, v11, v9

    .line 118
    move-object/from16 v0, p0

    iget-object v9, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v9, 0x2d

    const/4 v13, 0x1

    aput-boolean v13, v11, v9

    .line 120
    const/4 v2, 0x0

    const/16 v9, 0x2e

    const/4 v13, 0x1

    aput-boolean v13, v11, v9

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    const/16 v9, 0x2f

    const/4 v13, 0x1

    aput-boolean v13, v11, v9

    .line 121
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/16 v13, 0x30

    const/4 v14, 0x1

    aput-boolean v14, v11, v13

    .line 122
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_0

    .line 123
    const/16 v9, 0x31

    const/4 v13, 0x1

    aput-boolean v13, v11, v9

    move v9, v10

    .line 120
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .local v2, "j":I
    const/16 v10, 0x37

    const/4 v13, 0x1

    aput-boolean v13, v11, v10

    move v10, v9

    goto :goto_1

    .line 126
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v13, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v10, v13

    .line 128
    .local v3, "ld":I
    iget v13, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v7

    const/16 v14, 0x32

    const/4 v15, 0x1

    aput-boolean v15, v11, v14

    .line 129
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v3

    const/16 v15, 0x33

    const/16 v16, 0x1

    aput-boolean v16, v11, v15

    .line 130
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    const/16 v16, 0x34

    const/16 v17, 0x1

    aput-boolean v17, v11, v16

    .line 131
    invoke-virtual {v9, v3, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    const/16 v13, 0x35

    const/4 v14, 0x1

    aput-boolean v14, v11, v13

    .line 133
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v13, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v13

    iget v13, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v13

    add-int v4, v10, v9

    .local v4, "left":I
    const/16 v9, 0x36

    const/4 v10, 0x1

    aput-boolean v10, v11, v9

    move v9, v4

    goto :goto_2

    .line 136
    .end local v3    # "ld":I
    .end local v4    # "left":I
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingLeft()I

    move-result v4

    .line 137
    .restart local v4    # "left":I
    add-int/2addr v7, v12

    .line 116
    .local v7, "top":I
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v8, 0x38

    const/4 v9, 0x1

    aput-boolean v9, v11, v8

    move v10, v4

    goto/16 :goto_0

    .line 139
    .end local v1    # "i":I
    .end local v4    # "left":I
    .end local v7    # "top":I
    :cond_2
    const/16 v8, 0x39

    const/4 v9, 0x1

    aput-boolean v9, v11, v8

    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v17

    .line 55
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    const/4 v14, 0x5

    const/4 v15, 0x1

    aput-boolean v15, v17, v14

    .line 56
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    const/4 v14, 0x6

    const/4 v15, 0x1

    aput-boolean v15, v17, v14

    .line 57
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    const/4 v14, 0x7

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 58
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 60
    .local v12, "modeHeight":I
    const/4 v13, 0x0

    .local v13, "width":I
    const/4 v7, 0x0

    .line 61
    .local v7, "height":I
    const/4 v11, 0x0

    .local v11, "lineWidth":I
    const/4 v9, 0x0

    .line 62
    .local v9, "lineHeight":I
    const/4 v5, 0x0

    .local v5, "childWidth":I
    const/16 v14, 0x8

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 64
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mAllViews:Ljava/util/List;

    const/16 v14, 0x9

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 65
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    const/16 v14, 0xa

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 67
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v14, 0xb

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 68
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getChildCount()I

    move-result v6

    .line 69
    .local v6, "count":I
    const/4 v8, 0x0

    const/16 v14, 0xc

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    :goto_0
    if-ge v8, v6, :cond_3

    const/16 v14, 0xd

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 70
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v14, 0xe

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 71
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    .line 72
    const/16 v14, 0xf

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 69
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .local v8, "i":I
    const/16 v14, 0x1e

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    goto :goto_0

    .line 75
    .end local v8    # "i":I
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->measureChild(Landroid/view/View;II)V

    const/16 v14, 0x10

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 76
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x11

    const/16 v21, 0x1

    aput-boolean v21, v17, v20

    .line 78
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v5, v20, v21

    const/16 v20, 0x12

    const/16 v21, 0x1

    aput-boolean v21, v17, v20

    .line 79
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v14, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v4, v20, v14

    .local v4, "childHeight":I
    const/16 v14, 0x13

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 81
    add-int v14, v11, v5

    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingLeft()I

    move-result v20

    sub-int v20, v16, v20

    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingRight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-le v14, v0, :cond_1

    const/16 v14, 0x14

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 82
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 83
    add-int/2addr v7, v9

    const/16 v14, 0x15

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x16

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    move v11, v5

    .line 88
    move v9, v4

    const/16 v14, 0x17

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 89
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/16 v14, 0x18

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 94
    .end local v10    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_2
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v14, v6, -0x1

    if-eq v8, v14, :cond_2

    const/16 v14, 0x1b

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    goto/16 :goto_1

    .line 91
    :cond_1
    add-int/2addr v11, v5

    const/16 v14, 0x19

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    .line 92
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v14, 0x1a

    const/16 v20, 0x1

    aput-boolean v20, v17, v14

    goto :goto_2

    .line 96
    :cond_2
    const/16 v14, 0x1c

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 97
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 98
    add-int/2addr v7, v9

    const/16 v14, 0x1d

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    goto/16 :goto_1

    .line 101
    .end local v4    # "childHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x1f

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x20

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 103
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingRight()I

    move-result v19

    add-int v14, v14, v19

    add-int/2addr v13, v14

    const/16 v14, 0x21

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 104
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getPaddingBottom()I

    move-result v19

    add-int v14, v14, v19

    add-int/2addr v7, v14

    const/16 v14, 0x22

    const/16 v19, 0x1

    aput-boolean v19, v17, v14

    .line 105
    const/high16 v14, -0x80000000

    move/from16 v0, v18

    if-ne v0, v14, :cond_4

    const/16 v14, 0x23

    const/16 v16, 0x1

    aput-boolean v16, v17, v14

    .end local v13    # "width":I
    :goto_3
    const/high16 v14, -0x80000000

    if-ne v12, v14, :cond_5

    const/16 v14, 0x25

    const/4 v15, 0x1

    aput-boolean v15, v17, v14

    .end local v7    # "height":I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->setMeasuredDimension(II)V

    .line 106
    const/16 v14, 0x27

    const/4 v15, 0x1

    aput-boolean v15, v17, v14

    return-void

    .line 105
    .restart local v7    # "height":I
    .restart local v13    # "width":I
    :cond_4
    const/16 v14, 0x24

    const/16 v18, 0x1

    aput-boolean v18, v17, v14

    move/from16 v13, v16

    goto :goto_3

    .end local v13    # "width":I
    :cond_5
    const/16 v14, 0x26

    const/16 v16, 0x1

    aput-boolean v16, v17, v14

    move v7, v15

    goto :goto_4
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    check-cast p1, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;

    const/16 v1, 0x3d

    aput-boolean v2, v0, v1

    .line 157
    invoke-virtual {p1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RadioGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/16 v1, 0x3e

    aput-boolean v2, v0, v1

    .line 158
    invoke-static {p1}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;)I

    move-result v1

    invoke-direct {p0, v1, v2}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->setCheckedStateForView(IZ)V

    .line 159
    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    invoke-super {p0}, Landroid/widget/RadioGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const/16 v2, 0x3b

    aput-boolean v4, v0, v2

    .line 151
    new-instance v2, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup;->getCheckedRadioButtonIndex()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lpl/com/andrzejgrzyb/shoppinglist/FlowRadioGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    const/16 v1, 0x3c

    aput-boolean v4, v0, v1

    return-object v2
.end method

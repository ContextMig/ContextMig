.class public Lbr/com/vansadapt/ItemShoppingListCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ItemShoppingListCursorAdapter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final INVALID_INDEX:I

.field private context:Landroid/content/Context;

.field private idSelected:I

.field private idShoppingList:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x145b2a2f7f637506L    # -3.424876580341928E210

    const-string v2, "br/com/vansadapt/ItemShoppingListCursorAdapter"

    const/16 v3, 0x63

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 29
    iput v2, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->INVALID_INDEX:I

    .line 33
    iput-object p1, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    aput-boolean v3, v0, v2

    .line 34
    invoke-virtual {p0, v2}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->setIdSelected(I)V

    .line 35
    iput p2, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->idShoppingList:I

    .line 36
    aput-boolean v3, v0, v3

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v5

    .line 121
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v6

    const/16 v0, 0x2e

    aput-boolean v2, v5, v0

    .line 123
    const v0, 0x7f0c0054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2f

    aput-boolean v2, v5, v1

    .line 124
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x30

    aput-boolean v2, v5, v0

    .line 126
    const v0, 0x7f0c0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x31

    aput-boolean v2, v5, v1

    .line 127
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x32

    aput-boolean v2, v5, v1

    .line 130
    invoke-static {p2}, Lbr/com/vansprefs/UserPreferences;->getShowCheckBox(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x33

    aput-boolean v2, v5, v1

    .line 135
    :goto_0
    invoke-static {p2}, Lbr/com/vansprefs/UserPreferences;->getShowCheckBox(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    const/16 v7, 0x3b

    aput-boolean v2, v5, v7

    :goto_1
    const/16 v7, 0x3d

    aput-boolean v2, v5, v7

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v0, 0x3e

    aput-boolean v2, v5, v0

    .line 138
    const v0, 0x7f0c0055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v1, 0x3f

    aput-boolean v2, v5, v1

    .line 139
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/16 v1, 0x40

    aput-boolean v2, v5, v1

    .line 140
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x41

    aput-boolean v2, v5, v1

    .line 141
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x42

    aput-boolean v2, v5, v1

    .line 142
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->isSelected()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x43

    aput-boolean v2, v5, v1

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    const/16 v1, 0x45

    aput-boolean v2, v5, v1

    .line 143
    invoke-static {p2}, Lbr/com/vansprefs/UserPreferences;->getShowCheckBox(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x46

    aput-boolean v2, v5, v1

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v1, 0x48

    aput-boolean v2, v5, v1

    .line 145
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x49

    aput-boolean v2, v5, v0

    .line 149
    :goto_4
    const v0, 0x7f0c0057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x4c

    aput-boolean v2, v5, v1

    .line 150
    invoke-static {p2}, Lbr/com/vansprefs/UserPreferences;->getShowQuantity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x4d

    aput-boolean v2, v5, v1

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x4f

    aput-boolean v2, v5, v1

    .line 151
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v1

    float-to-double v8, v1

    invoke-static {v8, v9}, Lbr/com/vansformat/CustomFloatFormat;->getSimpleFormatedValue(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x50

    aput-boolean v2, v5, v0

    .line 153
    const v0, 0x7f0c0058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x51

    aput-boolean v2, v5, v1

    .line 154
    invoke-static {p2}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x52

    aput-boolean v2, v5, v1

    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x54

    aput-boolean v2, v5, v1

    .line 155
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v1

    float-to-double v8, v1

    invoke-static {p2, v8, v9}, Lbr/com/vansformat/CustomFloatFormat;->getMonetaryMaskedValue(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x55

    aput-boolean v2, v5, v0

    .line 157
    const v0, 0x7f0c0059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x56

    aput-boolean v2, v5, v1

    .line 158
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getTotal()F

    move-result v1

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_9

    const/16 v1, 0x57

    aput-boolean v2, v5, v1

    move v4, v3

    :goto_7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x59

    aput-boolean v2, v5, v1

    .line 159
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getTotal()F

    move-result v1

    float-to-double v8, v1

    invoke-static {p2, v8, v9}, Lbr/com/vansformat/CustomFloatFormat;->getMonetaryMaskedValue(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x5a

    aput-boolean v2, v5, v0

    .line 161
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->isSelected()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x5b

    aput-boolean v2, v5, v0

    :goto_8
    const/16 v0, 0x5e

    aput-boolean v2, v5, v0

    :goto_9
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    const/16 v0, 0x5f

    aput-boolean v2, v5, v0

    return-void

    .line 130
    :cond_0
    const/16 v1, 0x34

    aput-boolean v2, v5, v1

    .line 131
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    const/16 v7, 0x35

    aput-boolean v2, v5, v7

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/16 v1, 0x37

    aput-boolean v2, v5, v1

    .line 132
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const/16 v7, 0x38

    aput-boolean v2, v5, v7

    :goto_b
    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v1, 0x3a

    aput-boolean v2, v5, v1

    goto/16 :goto_0

    .line 131
    :cond_1
    const/16 v1, 0x36

    aput-boolean v2, v5, v1

    move v1, v2

    goto :goto_a

    .line 132
    :cond_2
    const/16 v1, 0x39

    aput-boolean v2, v5, v1

    move v1, v3

    goto :goto_b

    .line 135
    :cond_3
    const/16 v1, 0xf

    const/16 v7, 0x3c

    aput-boolean v2, v5, v7

    goto/16 :goto_1

    .line 142
    :cond_4
    const/16 v1, 0x44

    aput-boolean v2, v5, v1

    move v1, v3

    goto/16 :goto_2

    .line 143
    :cond_5
    const/16 v1, 0x47

    aput-boolean v2, v5, v1

    move v1, v4

    goto/16 :goto_3

    .line 145
    :cond_6
    const/16 v1, 0x4a

    aput-boolean v2, v5, v1

    move-object v1, p2

    .line 146
    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/16 v0, 0x4b

    aput-boolean v2, v5, v0

    goto/16 :goto_4

    .line 150
    :cond_7
    const/16 v1, 0x4e

    aput-boolean v2, v5, v1

    move v1, v4

    goto/16 :goto_5

    .line 154
    :cond_8
    const/16 v1, 0x53

    aput-boolean v2, v5, v1

    move v1, v4

    goto/16 :goto_6

    .line 158
    :cond_9
    const/16 v1, 0x58

    aput-boolean v2, v5, v1

    goto/16 :goto_7

    .line 161
    :cond_a
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getIdSelected()I

    move-result v0

    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getId()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0x5c

    aput-boolean v2, v5, v0

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v0, 0x5d

    aput-boolean v2, v5, v0

    goto/16 :goto_9
.end method

.method public getDescriptions()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 102
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 103
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    const/16 v2, 0x25

    aput-boolean v6, v3, v2

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/16 v4, 0x26

    aput-boolean v6, v3, v4

    .line 106
    const/16 v4, 0x27

    aput-boolean v6, v3, v4

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    const/16 v4, 0x28

    aput-boolean v6, v3, v4

    .line 107
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v4, 0x29

    aput-boolean v6, v3, v4

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v4

    const/16 v5, 0x2a

    aput-boolean v6, v3, v5

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 106
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v4, 0x2b

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    const/16 v4, 0x2c

    aput-boolean v6, v3, v4

    .line 116
    :goto_1
    return-object v2

    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    const/16 v4, 0x2d

    aput-boolean v6, v3, v4

    goto :goto_1
.end method

.method public getIdSelected()I
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget v1, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->idSelected:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Lbr/com/bean/ItemShoppingList;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 42
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 43
    iget-object v3, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lbr/com/dao/ItemShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ItemShoppingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-virtual {p0, p1}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v1

    const/16 v2, 0x62

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTotalQuant()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    iget-object v1, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    const v2, 0x7f05003c

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method public getTotalValue()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 73
    const/4 v2, 0x0

    const/16 v4, 0x10

    aput-boolean v8, v3, v4

    .line 75
    iget-object v4, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x11

    aput-boolean v8, v3, v5

    .line 77
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    const/16 v6, 0x12

    aput-boolean v8, v3, v6

    .line 78
    const/4 v0, 0x0

    const/16 v6, 0x13

    aput-boolean v8, v3, v6

    .local v0, "i":I
    .local v1, "result":F
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_4

    const/16 v6, 0x14

    aput-boolean v8, v3, v6

    .line 79
    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v6, 0x15

    aput-boolean v8, v3, v6

    .line 81
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ItemShoppingList;

    move-result-object v6

    const/16 v7, 0x16

    aput-boolean v8, v3, v7

    .line 83
    iget-object v7, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lbr/com/vansprefs/UserPreferences;->getShowQuantity(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x17

    aput-boolean v8, v3, v7

    .line 86
    :goto_1
    iget-object v7, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lbr/com/vansprefs/UserPreferences;->getShowQuantity(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x1b

    aput-boolean v8, v3, v7

    .line 87
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v6

    add-float v1, v2, v6

    const/16 v2, 0x1c

    aput-boolean v8, v3, v2

    move v2, v1

    .line 78
    .end local v0    # "i":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v6, 0x20

    aput-boolean v8, v3, v6

    goto :goto_0

    .line 83
    :cond_0
    iget-object v7, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x18

    aput-boolean v8, v3, v7

    goto :goto_1

    :cond_1
    const/16 v7, 0x19

    aput-boolean v8, v3, v7

    .line 84
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v7

    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v6

    mul-float/2addr v6, v7

    add-float v1, v2, v6

    const/16 v2, 0x1a

    aput-boolean v8, v3, v2

    .end local v0    # "i":I
    move v2, v1

    goto :goto_2

    .line 89
    .restart local v0    # "i":I
    :cond_2
    iget-object v7, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Lbr/com/vansprefs/UserPreferences;->getShowUnitValue(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v6, 0x1d

    aput-boolean v8, v3, v6

    goto :goto_2

    :cond_3
    const/16 v7, 0x1e

    aput-boolean v8, v3, v7

    .line 90
    invoke-virtual {v6}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v6

    add-float v1, v2, v6

    const/16 v2, 0x1f

    aput-boolean v8, v3, v2

    move v2, v1

    goto :goto_2

    .line 94
    :cond_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    float-to-double v6, v2

    invoke-static {v4, v6, v7}, Lbr/com/vansformat/CustomFloatFormat;->getMonetaryMaskedValue(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x21

    aput-boolean v8, v3, v4

    :goto_3
    const/16 v4, 0x23

    aput-boolean v8, v3, v4

    return-object v2

    :cond_5
    float-to-double v4, v2

    invoke-static {v4, v5}, Lbr/com/vansformat/CustomFloatFormat;->getSimpleFormatedValue(D)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x22

    aput-boolean v8, v3, v4

    goto :goto_3
.end method

.method public isSelected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 58
    iget v0, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->idSelected:I

    if-lez v0, :cond_0

    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 167
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/16 v2, 0x60

    aput-boolean v4, v1, v2

    .line 168
    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x61

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public refreshCursorAdapter(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    iget v2, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->idShoppingList:I

    invoke-static {v0, p1, v2}, Lbr/com/dao/ItemShoppingListDAO;->selectAll(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/16 v0, 0xb

    aput-boolean v3, v1, v0

    .line 69
    :goto_0
    invoke-virtual {p0}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->notifyDataSetChanged()V

    .line 70
    const/16 v0, 0xf

    aput-boolean v3, v1, v0

    return-void

    .line 64
    :catch_0
    move-exception v0

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 65
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 66
    iget-object v2, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0xe

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method public setIdSelected(I)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iput p1, p0, Lbr/com/vansadapt/ItemShoppingListCursorAdapter;->idSelected:I

    .line 55
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.class public Lcom/zaidisoft/teninone/ShoppingCalculator;
.super Landroid/support/v4/app/Fragment;
.source "ShoppingCalculator.java"


# instance fields
.field private editDiscount:Landroid/widget/EditText;

.field private editExtra:Landroid/widget/EditText;

.field private editPrice:Landroid/widget/EditText;

.field private editQuantity:Landroid/widget/EditText;

.field private editTax:Landroid/widget/EditText;

.field private priceView:Landroid/widget/TextView;

.field private savingsView:Landroid/widget/TextView;

.field private shoppingTool:Lcom/zaidisoft/teninone/TenTool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateDiscount()V
    .locals 38

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editPrice:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 73
    .local v18, "price":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "discount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editExtra:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "extraDiscount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editQuantity:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 76
    .local v19, "quantity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editTax:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 78
    .local v28, "tax":Ljava/lang/String;
    const-string v29, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 79
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/ShoppingCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v32, "Price is required"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 80
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editPrice:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->requestFocus()Z

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editPrice:Landroid/widget/EditText;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/ShoppingCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v32, "Enter discount or ZERO"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 85
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/ShoppingCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v32, "Enter extra discount or ZERO"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 90
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editExtra:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->requestFocus()Z

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editExtra:Landroid/widget/EditText;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_3
    const-string v29, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    const-string v29, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 94
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/ShoppingCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v32, "Enter quantity or ONE"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 95
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editQuantity:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->requestFocus()Z

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editQuantity:Landroid/widget/EditText;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 98
    :cond_5
    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/ShoppingCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v32, "Enter tax or ZERO"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 100
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editTax:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->requestFocus()Z

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editTax:Landroid/widget/EditText;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 105
    :cond_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 106
    .local v10, "itemPrice":D
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 107
    .local v8, "itemDiscount":D
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 108
    .local v6, "extraDiscountOff":D
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 109
    .local v14, "numberOfItems":D
    invoke-static/range {v28 .. v28}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 111
    .local v24, "salesTax":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->shoppingTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v29, v0

    add-double v32, v8, v6

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v32, v32, v34

    const/16 v34, 0x2

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v16

    .line 114
    .local v16, "percentAverage":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    cmpl-double v29, v16, v32

    if-lez v29, :cond_7

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/ShoppingCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v32, "Discount cannot exceed 100%"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 116
    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->requestFocus()Z

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    :cond_7
    add-double v32, v8, v6

    mul-double v34, v8, v6

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    div-double v34, v34, v36

    sub-double v30, v32, v34

    .line 125
    .local v30, "totalDiscount":D
    mul-double v32, v14, v10

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    sub-double v34, v34, v30

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v22, v32, v34

    .line 126
    .local v22, "salePrice":D
    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    add-double v32, v32, v24

    mul-double v32, v32, v22

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v20, v32, v34

    .line 127
    .local v20, "salePlusTax":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->shoppingTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v29, v0

    const/16 v32, 0x2

    move-object/from16 v0, v29

    move-wide/from16 v1, v20

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v20

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->shoppingTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v29, v0

    const/16 v32, 0x2

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v22

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->shoppingTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v29, v0

    mul-double v32, v10, v14

    sub-double v32, v32, v22

    const/16 v34, 0x2

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v26

    .line 131
    .local v26, "savings":D
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, "newSavings":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->savingsView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "newSalePlusTax":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/ShoppingCalculator;->priceView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, -0x1000000

    .line 26
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/ShoppingCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0b0030

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 28
    .local v2, "shoppingView":Landroid/view/View;
    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editPrice:Landroid/widget/EditText;

    .line 29
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editPrice:Landroid/widget/EditText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editPrice:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 31
    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    .line 32
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 34
    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editExtra:Landroid/widget/EditText;

    .line 35
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editExtra:Landroid/widget/EditText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editExtra:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 37
    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editQuantity:Landroid/widget/EditText;

    .line 38
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editQuantity:Landroid/widget/EditText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editQuantity:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 40
    const v3, 0x7f0900bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editTax:Landroid/widget/EditText;

    .line 41
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editTax:Landroid/widget/EditText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editTax:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 44
    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->priceView:Landroid/widget/TextView;

    .line 45
    const v3, 0x7f0900bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->savingsView:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f0900b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    .local v1, "resetButton":Landroid/widget/Button;
    new-instance v3, Lcom/zaidisoft/teninone/ShoppingCalculator$1;

    invoke-direct {v3, p0}, Lcom/zaidisoft/teninone/ShoppingCalculator$1;-><init>(Lcom/zaidisoft/teninone/ShoppingCalculator;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "calculateButton":Landroid/widget/Button;
    new-instance v3, Lcom/zaidisoft/teninone/ShoppingCalculator$2;

    invoke-direct {v3, p0}, Lcom/zaidisoft/teninone/ShoppingCalculator$2;-><init>(Lcom/zaidisoft/teninone/ShoppingCalculator;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v3, Lcom/zaidisoft/teninone/TenTool;

    invoke-direct {v3}, Lcom/zaidisoft/teninone/TenTool;-><init>()V

    iput-object v3, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->shoppingTool:Lcom/zaidisoft/teninone/TenTool;

    .line 67
    return-object v2
.end method

.method protected resetShoppingCalculator()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editPrice:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editDiscount:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editExtra:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editQuantity:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->editTax:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->priceView:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/zaidisoft/teninone/ShoppingCalculator;->savingsView:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.class public Lcom/zaidisoft/teninone/UnitPriceCalculator;
.super Landroid/support/v4/app/Fragment;
.source "UnitPriceCalculator.java"


# instance fields
.field private cheaperItem:Landroid/widget/TextView;

.field private editPrice1:Landroid/widget/EditText;

.field private editPrice2:Landroid/widget/EditText;

.field private editPrice3:Landroid/widget/EditText;

.field private editSize1:Landroid/widget/EditText;

.field private editSize2:Landroid/widget/EditText;

.field private editSize3:Landroid/widget/EditText;

.field private layout:Landroid/widget/LinearLayout;

.field private ppuLayout:Landroid/widget/LinearLayout;

.field private priceTool:Lcom/zaidisoft/teninone/TenTool;

.field private prices:[D

.field private selectionType:I

.field private unitPrice1:Landroid/widget/TextView;

.field private unitPrice2:Landroid/widget/TextView;

.field private unitPrice3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zaidisoft/teninone/UnitPriceCalculator;)I
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/UnitPriceCalculator;

    .prologue
    .line 20
    iget v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->selectionType:I

    return v0
.end method

.method static synthetic access$002(Lcom/zaidisoft/teninone/UnitPriceCalculator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zaidisoft/teninone/UnitPriceCalculator;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->selectionType:I

    return p1
.end method

.method static synthetic access$100(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/UnitPriceCalculator;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zaidisoft/teninone/UnitPriceCalculator;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/UnitPriceCalculator;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->ppuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected compareItems(I)V
    .locals 37
    .param p1, "selection"    # I

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice1:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 123
    .local v21, "price1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize1:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 124
    .local v30, "size1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice2:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 125
    .local v22, "price2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize2:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .line 129
    .local v31, "size2":Ljava/lang/String;
    const-string v33, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    const-string v33, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 130
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    const-string v34, "Price is required"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 131
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice1:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->requestFocus()Z

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice1:Landroid/widget/EditText;

    move-object/from16 v33, v0

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v33, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2

    const-string v33, "0"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 135
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    const-string v34, "Size / Count is required"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 136
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize1:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->requestFocus()Z

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize1:Landroid/widget/EditText;

    move-object/from16 v33, v0

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_3
    const-string v33, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_4

    const-string v33, "0"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 140
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    const-string v34, "Price is required"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 141
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice2:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->requestFocus()Z

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice2:Landroid/widget/EditText;

    move-object/from16 v33, v0

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_5
    const-string v33, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_6

    const-string v33, "0"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 145
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    const-string v34, "Size / Count is required"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 146
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize2:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize2:Landroid/widget/EditText;

    move-object/from16 v33, v0

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 151
    :cond_7
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 152
    .local v6, "item1Price":D
    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 153
    .local v8, "item1Size":D
    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 154
    .local v10, "item2Price":D
    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 156
    .local v12, "item2Size":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->priceTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v33, v0

    div-double v34, v6, v8

    const/16 v36, 0x2

    invoke-virtual/range {v33 .. v36}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v24

    .line 157
    .local v24, "pricePerItem1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->priceTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v33, v0

    div-double v34, v10, v12

    const/16 v36, 0x2

    invoke-virtual/range {v33 .. v36}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v26

    .line 159
    .local v26, "pricePerItem2":D
    packed-switch p1, :pswitch_data_0

    .line 204
    cmpg-double v33, v24, v26

    if-gez v33, :cond_f

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const v34, 0x7f0d004f

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(I)V

    .line 214
    :cond_8
    :goto_1
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 215
    .local v19, "mPricePerItem1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice1:Landroid/widget/TextView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 217
    .local v20, "mPricePerItem2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice2:Landroid/widget/TextView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 161
    .end local v19    # "mPricePerItem1":Ljava/lang/String;
    .end local v20    # "mPricePerItem2":Ljava/lang/String;
    :pswitch_0
    cmpg-double v33, v24, v26

    if-gez v33, :cond_9

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const v34, 0x7f0d004f

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 163
    :cond_9
    cmpg-double v33, v26, v24

    if-gez v33, :cond_a

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const v34, 0x7f0d0053

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 165
    :cond_a
    cmpl-double v33, v26, v24

    if-nez v33, :cond_8

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const v34, 0x7f0d0077

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 170
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice3:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 171
    .local v23, "price3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize3:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    .line 173
    .local v32, "size3":Ljava/lang/String;
    const-string v33, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_b

    const-string v33, "0"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 174
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    const-string v34, "Price is required"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 175
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice3:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->requestFocus()Z

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice3:Landroid/widget/EditText;

    move-object/from16 v33, v0

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 178
    :cond_c
    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_d

    const-string v33, "0"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 179
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    const-string v34, "Size / Count is required"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    .line 180
    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize3:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->requestFocus()Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize3:Landroid/widget/EditText;

    move-object/from16 v33, v0

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 184
    :cond_e
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 185
    .local v14, "item3Price":D
    invoke-static/range {v32 .. v32}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 187
    .local v16, "item3Size":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->priceTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v33, v0

    div-double v34, v14, v16

    const/16 v36, 0x2

    invoke-virtual/range {v33 .. v36}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v28

    .line 190
    .local v28, "pricePerItem3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->prices:[D

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-wide v24, v33, v34

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->prices:[D

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aput-wide v26, v33, v34

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->prices:[D

    move-object/from16 v33, v0

    const/16 v34, 0x2

    aput-wide v28, v33, v34

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->prices:[D

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->sort([D)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->prices:[D

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-wide v4, v33, v34

    .line 197
    .local v4, "cheapestPrice":D
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 198
    .local v18, "mCheapestPrice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice3:Landroid/widget/TextView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const v34, 0x7f0d0052

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 206
    .end local v4    # "cheapestPrice":D
    .end local v14    # "item3Price":D
    .end local v16    # "item3Size":D
    .end local v18    # "mCheapestPrice":Ljava/lang/String;
    .end local v23    # "price3":Ljava/lang/String;
    .end local v28    # "pricePerItem3":D
    .end local v32    # "size3":Ljava/lang/String;
    :cond_f
    cmpg-double v33, v26, v24

    if-gez v33, :cond_10

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const v34, 0x7f0d0053

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 208
    :cond_10
    cmpl-double v33, v26, v24

    if-nez v33, :cond_8

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const v34, 0x7f0d0077

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/high16 v7, -0x1000000

    .line 35
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b0034

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "mainView":Landroid/view/View;
    const v4, 0x7f090039

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 40
    .local v3, "selectionRG":Landroid/widget/RadioGroup;
    const v4, 0x7f09007f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->layout:Landroid/widget/LinearLayout;

    .line 41
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    const v4, 0x7f0900af

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->ppuLayout:Landroid/widget/LinearLayout;

    .line 44
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->ppuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    const v4, 0x7f09007b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice1:Landroid/widget/EditText;

    .line 47
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice1:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice1:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 49
    const v4, 0x7f09007d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice2:Landroid/widget/EditText;

    .line 50
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice2:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice2:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 52
    const v4, 0x7f090080

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice3:Landroid/widget/EditText;

    .line 53
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice3:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice3:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 55
    const v4, 0x7f09007c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize1:Landroid/widget/EditText;

    .line 56
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize1:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize1:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 58
    const v4, 0x7f09007e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize2:Landroid/widget/EditText;

    .line 59
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize2:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize2:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 61
    const v4, 0x7f090081

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize3:Landroid/widget/EditText;

    .line 62
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize3:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize3:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 65
    const v4, 0x7f0900ad

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice1:Landroid/widget/TextView;

    .line 66
    const v4, 0x7f0900ae

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice2:Landroid/widget/TextView;

    .line 67
    const v4, 0x7f0900b0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice3:Landroid/widget/TextView;

    .line 68
    const v4, 0x7f090032

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    .line 70
    new-instance v4, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;

    invoke-direct {v4, p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator$1;-><init>(Lcom/zaidisoft/teninone/UnitPriceCalculator;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 94
    const v4, 0x7f0900b7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 95
    .local v2, "resetButton":Landroid/widget/Button;
    new-instance v4, Lcom/zaidisoft/teninone/UnitPriceCalculator$2;

    invoke-direct {v4, p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator$2;-><init>(Lcom/zaidisoft/teninone/UnitPriceCalculator;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v4, 0x7f090038

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, "compareButton":Landroid/widget/Button;
    new-instance v4, Lcom/zaidisoft/teninone/UnitPriceCalculator$3;

    invoke-direct {v4, p0}, Lcom/zaidisoft/teninone/UnitPriceCalculator$3;-><init>(Lcom/zaidisoft/teninone/UnitPriceCalculator;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const/4 v4, 0x3

    new-array v4, v4, [D

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->prices:[D

    .line 114
    new-instance v4, Lcom/zaidisoft/teninone/TenTool;

    invoke-direct {v4}, Lcom/zaidisoft/teninone/TenTool;-><init>()V

    iput-object v4, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->priceTool:Lcom/zaidisoft/teninone/TenTool;

    .line 116
    return-object v1
.end method

.method protected resetItems(I)V
    .locals 2
    .param p1, "selection"    # I

    .prologue
    .line 222
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice3:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize3:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice3:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editPrice2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->editSize2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice1:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->unitPrice2:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator;->cheaperItem:Landroid/widget/TextView;

    const v1, 0x7f0d0054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    return-void
.end method

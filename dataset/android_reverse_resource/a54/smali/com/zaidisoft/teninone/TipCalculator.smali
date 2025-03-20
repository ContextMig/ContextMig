.class public Lcom/zaidisoft/teninone/TipCalculator;
.super Landroid/support/v4/app/Fragment;
.source "TipCalculator.java"


# instance fields
.field private billAmount:Landroid/widget/EditText;

.field private numberOfGuest:Landroid/widget/EditText;

.field private perPersonBill:Landroid/widget/TextView;

.field private perPersonTip:Landroid/widget/TextView;

.field private tipPercent:Landroid/widget/EditText;

.field private tipTool:Lcom/zaidisoft/teninone/TenTool;

.field private tipTotal:Landroid/widget/TextView;

.field private totalBillAmount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateTipCalculator()V
    .locals 30

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->billAmount:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "bill":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipPercent:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 79
    .local v20, "tip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->numberOfGuest:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 82
    .local v17, "people":Ljava/lang/String;
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "0"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 83
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/TipCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    const-string v26, "Amount is required"

    const/16 v27, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    .line 84
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->billAmount:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->requestFocus()Z

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->billAmount:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const-string v26, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 88
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/TipCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    const-string v26, "Percent is required"

    const/16 v27, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    .line 89
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipPercent:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->requestFocus()Z

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipPercent:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const-string v26, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v21, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 95
    :cond_4
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 99
    .local v12, "guests":D
    :goto_1
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 100
    .local v4, "amount":D
    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 102
    .local v18, "percent":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v21, v0

    mul-double v26, v4, v18

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v24

    .line 103
    .local v24, "totalTip":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v21, v0

    add-double v26, v4, v24

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v22

    .line 105
    .local v22, "totalBill":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v21, v0

    div-double v26, v24, v12

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v10

    .line 106
    .local v10, "guestTip":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v21, v0

    div-double v26, v4, v12

    add-double v26, v26, v10

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v8

    .line 108
    .local v8, "guestBill":D
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 109
    .local v16, "mTotalTip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->tipTotal:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, "mGuestTip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonTip:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "mGuestBill":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonBill:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 115
    .local v15, "mTotalBill":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/TipCalculator;->totalBillAmount:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 97
    .end local v4    # "amount":D
    .end local v7    # "mGuestBill":Ljava/lang/String;
    .end local v8    # "guestBill":D
    .end local v10    # "guestTip":D
    .end local v12    # "guests":D
    .end local v14    # "mGuestTip":Ljava/lang/String;
    .end local v15    # "mTotalBill":Ljava/lang/String;
    .end local v16    # "mTotalTip":Ljava/lang/String;
    .end local v18    # "percent":D
    .end local v22    # "totalBill":D
    .end local v24    # "totalTip":D
    :cond_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .restart local v12    # "guests":D
    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, -0x1000000

    .line 30
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/TipCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0b0033

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 32
    .local v2, "tipView":Landroid/view/View;
    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->billAmount:Landroid/widget/EditText;

    .line 33
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->billAmount:Landroid/widget/EditText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->billAmount:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 35
    const v3, 0x7f0900f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipPercent:Landroid/widget/EditText;

    .line 36
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipPercent:Landroid/widget/EditText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipPercent:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 38
    const v3, 0x7f09006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->numberOfGuest:Landroid/widget/EditText;

    .line 39
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->numberOfGuest:Landroid/widget/EditText;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->numberOfGuest:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 42
    const v3, 0x7f090102

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipTotal:Landroid/widget/TextView;

    .line 43
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipTotal:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonTip:Landroid/widget/TextView;

    .line 45
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonTip:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonBill:Landroid/widget/TextView;

    .line 47
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonBill:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->totalBillAmount:Landroid/widget/TextView;

    .line 49
    iget-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->totalBillAmount:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v3, 0x7f0900b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 52
    .local v1, "resetButton":Landroid/widget/Button;
    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "calculateButton":Landroid/widget/Button;
    new-instance v3, Lcom/zaidisoft/teninone/TipCalculator$1;

    invoke-direct {v3, p0}, Lcom/zaidisoft/teninone/TipCalculator$1;-><init>(Lcom/zaidisoft/teninone/TipCalculator;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v3, Lcom/zaidisoft/teninone/TipCalculator$2;

    invoke-direct {v3, p0}, Lcom/zaidisoft/teninone/TipCalculator$2;-><init>(Lcom/zaidisoft/teninone/TipCalculator;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v3, Lcom/zaidisoft/teninone/TenTool;

    invoke-direct {v3}, Lcom/zaidisoft/teninone/TenTool;-><init>()V

    iput-object v3, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipTool:Lcom/zaidisoft/teninone/TenTool;

    .line 72
    return-object v2
.end method

.method protected resetTipCalculator()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator;->billAmount:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipPercent:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator;->numberOfGuest:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator;->tipTotal:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonTip:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator;->perPersonBill:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator;->totalBillAmount:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

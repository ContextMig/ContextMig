.class public Lcom/zaidisoft/teninone/SimpleInterestCalculator;
.super Landroid/support/v4/app/Fragment;
.source "SimpleInterestCalculator.java"


# instance fields
.field private accrued:Landroid/widget/TextView;

.field private compoundLayout:Landroid/widget/LinearLayout;

.field private editCompounds:Landroid/widget/EditText;

.field private editInterest:Landroid/widget/EditText;

.field private editPrincipal:Landroid/widget/EditText;

.field private editTime:Landroid/widget/EditText;

.field private interest:Landroid/widget/TextView;

.field private interestTool:Lcom/zaidisoft/teninone/TenTool;

.field private rateType:I

.field private totalAccrued:D

.field private totalInterest:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->rateType:I

    return-void
.end method

.method static synthetic access$000(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)I
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    .prologue
    .line 18
    iget v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->rateType:I

    return v0
.end method

.method static synthetic access$002(Lcom/zaidisoft/teninone/SimpleInterestCalculator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zaidisoft/teninone/SimpleInterestCalculator;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->rateType:I

    return p1
.end method

.method static synthetic access$100(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/SimpleInterestCalculator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->compoundLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected calculateInterest(I)V
    .locals 24
    .param p1, "type"    # I

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editPrincipal:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "principal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editInterest:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 107
    .local v15, "rate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editTime:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "period":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "Principal is required"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 112
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editPrincipal:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editPrincipal:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 116
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "Interest is required"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 117
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editInterest:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editInterest:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 121
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "Time is required"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 122
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editTime:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editTime:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_5
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 128
    .local v16, "principalAmout":D
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 129
    .local v8, "interestRate":D
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 132
    .local v10, "investTime":D
    if-nez p1, :cond_6

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->interestTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v18, v0

    mul-double v20, v16, v8

    mul-double v20, v20, v10

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalInterest:D

    .line 139
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalInterest:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalAccrued:D

    .line 143
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editCompounds:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "compounds":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 148
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const-string v19, "Compounds is required"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 149
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editCompounds:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editCompounds:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .end local v6    # "compounds":Ljava/lang/String;
    :cond_8
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalInterest:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, "mTotalInterest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->interest:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalAccrued:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "mTotalAccrued":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->accrued:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 153
    .end local v7    # "mTotalAccrued":Ljava/lang/String;
    .end local v12    # "mTotalInterest":Ljava/lang/String;
    .restart local v6    # "compounds":Ljava/lang/String;
    :cond_9
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 155
    .local v4, "compoundTimes":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->interestTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v4

    div-double v22, v8, v22

    add-double v20, v20, v22

    mul-double v22, v4, v10

    .line 157
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v16

    const/16 v19, 0x2

    .line 156
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalAccrued:D

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->interestTool:Lcom/zaidisoft/teninone/TenTool;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalAccrued:D

    move-wide/from16 v20, v0

    sub-double v20, v20, v16

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->totalInterest:D

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, -0x1000000

    .line 36
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0b0031

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 38
    .local v3, "simpleView":Landroid/view/View;
    const v4, 0x7f090109

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 39
    .local v1, "radioGroupType":Landroid/widget/RadioGroup;
    const v4, 0x7f09003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->compoundLayout:Landroid/widget/LinearLayout;

    .line 40
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->compoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editPrincipal:Landroid/widget/EditText;

    .line 43
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editPrincipal:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editPrincipal:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 45
    const v4, 0x7f090077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editInterest:Landroid/widget/EditText;

    .line 46
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editInterest:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editInterest:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 48
    const v4, 0x7f0900f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editTime:Landroid/widget/EditText;

    .line 49
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editTime:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editTime:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 51
    const v4, 0x7f09003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editCompounds:Landroid/widget/EditText;

    .line 52
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editCompounds:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editCompounds:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 55
    new-instance v4, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;

    invoke-direct {v4, p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator$1;-><init>(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)V

    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 77
    const v4, 0x7f090078

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->interest:Landroid/widget/TextView;

    .line 78
    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->accrued:Landroid/widget/TextView;

    .line 80
    const v4, 0x7f0900b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 81
    .local v2, "resetButton":Landroid/widget/Button;
    new-instance v4, Lcom/zaidisoft/teninone/SimpleInterestCalculator$2;

    invoke-direct {v4, p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator$2;-><init>(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v4, 0x7f09002c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, "calculateButton":Landroid/widget/Button;
    new-instance v4, Lcom/zaidisoft/teninone/SimpleInterestCalculator$3;

    invoke-direct {v4, p0}, Lcom/zaidisoft/teninone/SimpleInterestCalculator$3;-><init>(Lcom/zaidisoft/teninone/SimpleInterestCalculator;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v4, Lcom/zaidisoft/teninone/TenTool;

    invoke-direct {v4}, Lcom/zaidisoft/teninone/TenTool;-><init>()V

    iput-object v4, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->interestTool:Lcom/zaidisoft/teninone/TenTool;

    .line 100
    return-object v3
.end method

.method protected resetCalculator(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 175
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editCompounds:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editPrincipal:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editInterest:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->editTime:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->interest:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/zaidisoft/teninone/SimpleInterestCalculator;->accrued:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

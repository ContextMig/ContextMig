.class public Lcom/zaidisoft/teninone/BMIConverter;
.super Landroid/support/v4/app/Fragment;
.source "BMIConverter.java"


# instance fields
.field private chartIndex:I

.field private df:Ljava/text/DecimalFormat;

.field private editHeight1:Landroid/widget/EditText;

.field private editHeight2:Landroid/widget/EditText;

.field private editWeight:Landroid/widget/EditText;

.field private indexType:I

.field private normalLayout:Landroid/widget/LinearLayout;

.field private obeseLayout:Landroid/widget/LinearLayout;

.field private overLayout:Landroid/widget/LinearLayout;

.field private textBmi:Landroid/widget/TextView;

.field private textHeight1:Landroid/widget/TextView;

.field private textHeight2:Landroid/widget/TextView;

.field private underLayout:Landroid/widget/LinearLayout;

.field private userBMI:D

.field private weightUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    iput v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->indexType:I

    .line 35
    iput v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->chartIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/zaidisoft/teninone/BMIConverter;)I
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/BMIConverter;

    .prologue
    .line 20
    iget v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->indexType:I

    return v0
.end method

.method static synthetic access$002(Lcom/zaidisoft/teninone/BMIConverter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zaidisoft/teninone/BMIConverter;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/zaidisoft/teninone/BMIConverter;->indexType:I

    return p1
.end method

.method static synthetic access$100(Lcom/zaidisoft/teninone/BMIConverter;)I
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/BMIConverter;

    .prologue
    .line 20
    iget v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->chartIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/BMIConverter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->weightUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/BMIConverter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->textHeight1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zaidisoft/teninone/BMIConverter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/BMIConverter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->textHeight2:Landroid/widget/TextView;

    return-object v0
.end method

.method private setChartBackground(D)V
    .locals 9
    .param p1, "bmi"    # D

    .prologue
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    const-wide v2, 0x4032800000000000L    # 18.5

    .line 173
    cmpg-double v0, p1, v2

    if-gtz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->underLayout:Landroid/widget/LinearLayout;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->chartIndex:I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    cmpl-double v0, p1, v2

    if-lez v0, :cond_2

    cmpg-double v0, p1, v4

    if-gtz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->normalLayout:Landroid/widget/LinearLayout;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 178
    const/4 v0, 0x2

    iput v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->chartIndex:I

    goto :goto_0

    .line 179
    :cond_2
    cmpl-double v0, p1, v4

    if-lez v0, :cond_3

    cmpg-double v0, p1, v6

    if-gtz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->overLayout:Landroid/widget/LinearLayout;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 181
    const/4 v0, 0x3

    iput v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->chartIndex:I

    goto :goto_0

    .line 182
    :cond_3
    cmpl-double v0, p1, v6

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->obeseLayout:Landroid/widget/LinearLayout;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 184
    const/4 v0, 0x4

    iput v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->chartIndex:I

    goto :goto_0
.end method


# virtual methods
.method protected computeBMI(I)V
    .locals 18
    .param p1, "type"    # I

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editWeight:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "weight":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "height1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight2:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "height2":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "0"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 129
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/BMIConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const-string v15, "Weight required"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 130
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editWeight:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editWeight:Landroid/widget/EditText;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->df:Ljava/text/DecimalFormat;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zaidisoft/teninone/BMIConverter;->userBMI:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "calculatedBMI":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->textBmi:Landroid/widget/TextView;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->userBMI:D

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/zaidisoft/teninone/BMIConverter;->setChartBackground(D)V

    .line 169
    return-void

    .line 133
    .end local v2    # "calculatedBMI":Ljava/lang/String;
    :cond_1
    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/BMIConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const-string v15, "Height required"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 135
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_2
    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/BMIConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const-string v15, "Enter value OR zero"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 140
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight2:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight2:Landroid/widget/EditText;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_3
    const-string v14, "0"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "0"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/zaidisoft/teninone/BMIConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const-string v15, "Height required"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 146
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_4
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 151
    .local v12, "userWeight":D
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 152
    .local v8, "userHeight1":D
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 154
    .local v10, "userHeight2":D
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 156
    :pswitch_0
    const-wide/high16 v14, 0x4028000000000000L    # 12.0

    mul-double/2addr v14, v8

    add-double v6, v14, v10

    .line 157
    .local v6, "userHeight":D
    const-wide v14, 0x4085f80000000000L    # 703.0

    mul-double/2addr v14, v12

    mul-double v16, v6, v6

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->userBMI:D

    goto/16 :goto_0

    .line 160
    .end local v6    # "userHeight":D
    :pswitch_1
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v14, v10, v14

    add-double v6, v8, v14

    .line 161
    .restart local v6    # "userHeight":D
    mul-double v14, v6, v6

    div-double v14, v12, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zaidisoft/teninone/BMIConverter;->userBMI:D

    goto/16 :goto_0

    .line 154
    nop

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
    const/high16 v8, -0x1000000

    .line 41
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/BMIConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b002b

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, "bmiView":Landroid/view/View;
    const v5, 0x7f09010a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->underLayout:Landroid/widget/LinearLayout;

    .line 44
    const v5, 0x7f09009c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->normalLayout:Landroid/widget/LinearLayout;

    .line 45
    const v5, 0x7f0900a1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->overLayout:Landroid/widget/LinearLayout;

    .line 46
    const v5, 0x7f0900a0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->obeseLayout:Landroid/widget/LinearLayout;

    .line 48
    const v5, 0x7f090027

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 50
    .local v1, "bmiTypeRG":Landroid/widget/RadioGroup;
    const v5, 0x7f090112

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editWeight:Landroid/widget/EditText;

    .line 51
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editWeight:Landroid/widget/EditText;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editWeight:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 53
    const v5, 0x7f090061

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    .line 54
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 56
    const v5, 0x7f090075

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight2:Landroid/widget/EditText;

    .line 57
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight2:Landroid/widget/EditText;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight2:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 59
    const v5, 0x7f09010c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->weightUnit:Landroid/widget/TextView;

    .line 60
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->weightUnit:Landroid/widget/TextView;

    const v6, 0x7f0d0096

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v5, 0x7f09006d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->textHeight1:Landroid/widget/TextView;

    .line 62
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->textHeight1:Landroid/widget/TextView;

    const v6, 0x7f0d0093

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v5, 0x7f09006e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->textHeight2:Landroid/widget/TextView;

    .line 64
    iget-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->textHeight2:Landroid/widget/TextView;

    const v6, 0x7f0d0094

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 65
    const v5, 0x7f090028

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->textBmi:Landroid/widget/TextView;

    .line 67
    const v5, 0x7f0900b7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 68
    .local v4, "resetButton":Landroid/widget/Button;
    new-instance v5, Lcom/zaidisoft/teninone/BMIConverter$1;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/BMIConverter$1;-><init>(Lcom/zaidisoft/teninone/BMIConverter;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v5, 0x7f09003f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 78
    .local v3, "computeButton":Landroid/widget/Button;
    new-instance v5, Lcom/zaidisoft/teninone/BMIConverter$2;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/BMIConverter$2;-><init>(Lcom/zaidisoft/teninone/BMIConverter;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v5, Lcom/zaidisoft/teninone/BMIConverter$3;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/BMIConverter$3;-><init>(Lcom/zaidisoft/teninone/BMIConverter;)V

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 116
    const-string v0, "#.#"

    .line 117
    .local v0, "bmiPattern":Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zaidisoft/teninone/BMIConverter;->df:Ljava/text/DecimalFormat;

    .line 119
    return-object v2
.end method

.method protected resetBMI(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->editWeight:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->editHeight2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->textBmi:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method protected resetChartBackground(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 198
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->underLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->normalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 202
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->overLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 204
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter;->obeseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

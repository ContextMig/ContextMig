.class public Lcom/zaidisoft/teninone/PercentCalculator;
.super Landroid/support/v4/app/Fragment;
.source "PercentCalculator.java"


# instance fields
.field private answer:D

.field private answerText:Landroid/widget/TextView;

.field private df:Ljava/text/DecimalFormat;

.field private editNumber1:Landroid/widget/EditText;

.field private editNumber2:Landroid/widget/EditText;

.field private whatValue:I

.field private whatofWhatText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zaidisoft/teninone/PercentCalculator;)I
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/PercentCalculator;

    .prologue
    .line 18
    iget v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/zaidisoft/teninone/PercentCalculator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zaidisoft/teninone/PercentCalculator;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/PercentCalculator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/PercentCalculator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zaidisoft/teninone/PercentCalculator;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/PercentCalculator;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatofWhatText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected calculateValue(I)V
    .locals 14
    .param p1, "valueX"    # I

    .prologue
    const-wide/16 v12, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v9, 0x1

    .line 104
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "number1":Ljava/lang/String;
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "number2":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/PercentCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v8, "Field required"

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 110
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 146
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/PercentCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v8, "Field required"

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 114
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 117
    .local v4, "value1":D
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 119
    .local v6, "value2":D
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_1
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->df:Ljava/text/DecimalFormat;

    iget-wide v8, p0, Lcom/zaidisoft/teninone/PercentCalculator;->answer:D

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "answerX":Ljava/lang/String;
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->answerText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    .end local v0    # "answerX":Ljava/lang/String;
    :pswitch_0
    mul-double v8, v4, v6

    div-double/2addr v8, v10

    iput-wide v8, p0, Lcom/zaidisoft/teninone/PercentCalculator;->answer:D

    goto :goto_1

    .line 124
    :pswitch_1
    cmpl-double v3, v6, v12

    if-lez v3, :cond_2

    .line 125
    mul-double v8, v4, v10

    div-double/2addr v8, v6

    iput-wide v8, p0, Lcom/zaidisoft/teninone/PercentCalculator;->answer:D

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/PercentCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v8, "Non zero value required"

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 129
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 133
    :pswitch_2
    cmpl-double v3, v4, v12

    if-lez v3, :cond_3

    .line 134
    mul-double v8, v6, v10

    div-double/2addr v8, v4

    iput-wide v8, p0, Lcom/zaidisoft/teninone/PercentCalculator;->answer:D

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/PercentCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v8, "Non zero value required"

    invoke-static {v3, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 138
    iget-object v3, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/PercentCalculator;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b002f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 34
    .local v3, "percentView":Landroid/view/View;
    const v5, 0x7f0900aa

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 36
    .local v2, "percentRadioGroup":Landroid/widget/RadioGroup;
    const v5, 0x7f090057

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    .line 37
    const v5, 0x7f090056

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    .line 38
    const v5, 0x7f090113

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatofWhatText:Landroid/widget/TextView;

    .line 39
    const v5, 0x7f090020

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->answerText:Landroid/widget/TextView;

    .line 41
    iget-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    const v6, 0x7f0d009d

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 42
    iget-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    const v6, 0x7f0d00a0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 43
    iget-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatofWhatText:Landroid/widget/TextView;

    const v6, 0x7f0d0041

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 45
    new-instance v5, Lcom/zaidisoft/teninone/PercentCalculator$1;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/PercentCalculator$1;-><init>(Lcom/zaidisoft/teninone/PercentCalculator;)V

    .line 46
    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 79
    const v5, 0x7f0900b7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 80
    .local v4, "resetButton":Landroid/widget/Button;
    new-instance v5, Lcom/zaidisoft/teninone/PercentCalculator$2;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/PercentCalculator$2;-><init>(Lcom/zaidisoft/teninone/PercentCalculator;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v5, 0x7f09002c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 89
    .local v1, "calculateButton":Landroid/widget/Button;
    new-instance v5, Lcom/zaidisoft/teninone/PercentCalculator$3;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/PercentCalculator$3;-><init>(Lcom/zaidisoft/teninone/PercentCalculator;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-string v0, "#.##"

    .line 98
    .local v0, "answerPattern":Ljava/lang/String;
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zaidisoft/teninone/PercentCalculator;->df:Ljava/text/DecimalFormat;

    .line 100
    return-object v3
.end method

.method protected resetCalculator(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatofWhatText:Landroid/widget/TextView;

    const v1, 0x7f0d0041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->answerText:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatofWhatText:Landroid/widget/TextView;

    const v1, 0x7f0d0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->editNumber2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator;->whatofWhatText:Landroid/widget/TextView;

    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

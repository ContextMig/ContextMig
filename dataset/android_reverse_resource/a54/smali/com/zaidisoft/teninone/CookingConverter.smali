.class public Lcom/zaidisoft/teninone/CookingConverter;
.super Landroid/support/v4/app/Fragment;
.source "CookingConverter.java"


# instance fields
.field private convertedVolume:D

.field private cookFromSpinner:Landroid/widget/Spinner;

.field private cookToSpinner:Landroid/widget/Spinner;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private editValue:Landroid/widget/EditText;

.field private textValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private cupToCup(D)D
    .locals 1
    .param p1, "volume2"    # D

    .prologue
    .line 291
    return-wide p1
.end method

.method private cupToGallon(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 279
    const-wide/high16 v0, 0x4019000000000000L    # 6.25

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private cupToPint(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/CookingConverter;->cupToQuart(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private cupToQuart(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 283
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private cupToTablespoon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 275
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private cupToTeaspoon(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/CookingConverter;->cupToTablespoon(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private gallonToCup(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToQuart(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private gallonToGallon(D)D
    .locals 1
    .param p1, "volume2"    # D

    .prologue
    .line 351
    return-wide p1
.end method

.method private gallonToPint(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToQuart(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private gallonToQuart(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 355
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private gallonToTablespoon(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToTeaspoon(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private gallonToTeaspoon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 343
    const-wide/high16 v0, 0x4088000000000000L    # 768.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private pintToCup(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 315
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private pintToGallon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 303
    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private pintToPint(D)D
    .locals 1
    .param p1, "volume2"    # D

    .prologue
    .line 311
    return-wide p1
.end method

.method private pintToQuart(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 307
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private pintToTablespoon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 299
    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private pintToTeaspoon(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 295
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/CookingConverter;->pintToTablespoon(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private quartToCup(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 339
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private quartToGallon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 327
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private quartToPint(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 335
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private quartToQuart(D)D
    .locals 1
    .param p1, "volume2"    # D

    .prologue
    .line 331
    return-wide p1
.end method

.method private quartToTablespoon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 323
    const-wide/high16 v0, 0x4050000000000000L    # 64.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private quartToTeaspoon(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/CookingConverter;->quartToTablespoon(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private tablespoonToCup(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 411
    const-wide/high16 v0, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private tablespoonToGallon(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 399
    const-wide v0, 0x400f400000000000L    # 3.90625

    mul-double/2addr v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private tablespoonToPint(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 407
    const-wide/high16 v0, 0x3fa0000000000000L    # 0.03125

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private tablespoonToQuart(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 403
    const-wide/high16 v0, 0x3f90000000000000L    # 0.015625

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private tablespoonToTablespoon(D)D
    .locals 1
    .param p1, "volume2"    # D

    .prologue
    .line 395
    return-wide p1
.end method

.method private tablespoonToTeaspoon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 391
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private teaspoonToCup(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 387
    const-wide v0, 0x4000aaaa7ded6ba9L    # 2.083333

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private teaspoonToGallon(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 375
    const-wide v0, 0x3ff4d551d68c692fL    # 1.30208

    mul-double/2addr v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private teaspoonToPint(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 383
    const-wide v0, 0x3ff0aaae297396d1L    # 1.04167

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private teaspoonToQuart(D)D
    .locals 5
    .param p1, "volume2"    # D

    .prologue
    .line 379
    const-wide v0, 0x4014d55475a31a4cL    # 5.20833

    mul-double/2addr v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private teaspoonToTablespoon(D)D
    .locals 3
    .param p1, "volume2"    # D

    .prologue
    .line 371
    const-wide v0, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private teaspoonToTeaspoon(D)D
    .locals 1
    .param p1, "volume2"    # D

    .prologue
    .line 367
    return-wide p1
.end method


# virtual methods
.method protected fireCooker()V
    .locals 10

    .prologue
    .line 76
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->editValue:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "volumeToConvert":Ljava/lang/String;
    const-string v4, ""

    .line 79
    .local v4, "volumeUnit":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/CookingConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "Value is required"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 82
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->editValue:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 83
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->editValue:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 89
    .local v2, "volume":D
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookFromSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 265
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->decimalFormat:Ljava/text/DecimalFormat;

    iget-wide v8, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "newVolume":Ljava/lang/String;
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->textValue:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    .end local v0    # "newVolume":Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 93
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->cupToTeaspoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 94
    const-string v4, "tsp"

    .line 95
    goto :goto_1

    .line 97
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->cupToTablespoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 98
    const-string v4, "tbsp"

    .line 99
    goto :goto_1

    .line 101
    :pswitch_3
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->cupToGallon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 102
    const-string v4, "gal"

    .line 103
    goto :goto_1

    .line 105
    :pswitch_4
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->cupToQuart(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 106
    const-string v4, "quart"

    .line 107
    goto :goto_1

    .line 109
    :pswitch_5
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->cupToPint(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 110
    const-string v4, "pint"

    .line 111
    goto :goto_1

    .line 113
    :pswitch_6
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->cupToCup(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 114
    const-string v4, "cup"

    goto :goto_1

    .line 120
    :pswitch_7
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 122
    :pswitch_8
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->pintToTeaspoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 123
    const-string v4, "tsp"

    .line 124
    goto :goto_1

    .line 126
    :pswitch_9
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->pintToTablespoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 127
    const-string v4, "tbsp"

    .line 128
    goto :goto_1

    .line 130
    :pswitch_a
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->pintToGallon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 131
    const-string v4, "gal"

    .line 132
    goto/16 :goto_1

    .line 134
    :pswitch_b
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->pintToQuart(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 135
    const-string v4, "quart"

    .line 136
    goto/16 :goto_1

    .line 138
    :pswitch_c
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->pintToPint(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 139
    const-string v4, "pint"

    .line 140
    goto/16 :goto_1

    .line 142
    :pswitch_d
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->pintToCup(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 143
    const-string v4, "cup"

    goto/16 :goto_1

    .line 149
    :pswitch_e
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 151
    :pswitch_f
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->quartToTeaspoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 152
    const-string v4, "tsp"

    .line 153
    goto/16 :goto_1

    .line 155
    :pswitch_10
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->quartToTablespoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 156
    const-string v4, "tbsp"

    .line 157
    goto/16 :goto_1

    .line 159
    :pswitch_11
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->quartToGallon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 160
    const-string v4, "gal"

    .line 161
    goto/16 :goto_1

    .line 163
    :pswitch_12
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->quartToQuart(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 164
    const-string v4, "quart"

    .line 165
    goto/16 :goto_1

    .line 167
    :pswitch_13
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->quartToPint(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 168
    const-string v4, "pint"

    .line 169
    goto/16 :goto_1

    .line 171
    :pswitch_14
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->quartToCup(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 172
    const-string v4, "cup"

    goto/16 :goto_1

    .line 178
    :pswitch_15
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_4

    goto/16 :goto_1

    .line 180
    :pswitch_16
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToTeaspoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 181
    const-string v4, "tsp"

    .line 182
    goto/16 :goto_1

    .line 184
    :pswitch_17
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToTablespoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 185
    const-string v4, "tbsp"

    .line 186
    goto/16 :goto_1

    .line 188
    :pswitch_18
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToGallon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 189
    const-string v4, "gal"

    .line 190
    goto/16 :goto_1

    .line 192
    :pswitch_19
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToQuart(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 193
    const-string v4, "quart"

    .line 194
    goto/16 :goto_1

    .line 196
    :pswitch_1a
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToPint(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 197
    const-string v4, "pint"

    .line 198
    goto/16 :goto_1

    .line 200
    :pswitch_1b
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->gallonToCup(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 201
    const-string v4, "cup"

    goto/16 :goto_1

    .line 207
    :pswitch_1c
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_5

    goto/16 :goto_1

    .line 209
    :pswitch_1d
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->teaspoonToTeaspoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 210
    const-string v4, "tsp"

    .line 211
    goto/16 :goto_1

    .line 213
    :pswitch_1e
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->teaspoonToTablespoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 214
    const-string v4, "tbsp"

    .line 215
    goto/16 :goto_1

    .line 217
    :pswitch_1f
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->teaspoonToGallon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 218
    const-string v4, "gal"

    .line 219
    goto/16 :goto_1

    .line 221
    :pswitch_20
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->teaspoonToQuart(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 222
    const-string v4, "quart"

    .line 223
    goto/16 :goto_1

    .line 225
    :pswitch_21
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->teaspoonToPint(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 226
    const-string v4, "pint"

    .line 227
    goto/16 :goto_1

    .line 229
    :pswitch_22
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->teaspoonToCup(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 230
    const-string v4, "cup"

    goto/16 :goto_1

    .line 236
    :pswitch_23
    iget-object v5, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_6

    goto/16 :goto_1

    .line 238
    :pswitch_24
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->tablespoonToTeaspoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 239
    const-string v4, "tsp"

    .line 240
    goto/16 :goto_1

    .line 242
    :pswitch_25
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->tablespoonToTablespoon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 243
    const-string v4, "tbsp"

    .line 244
    goto/16 :goto_1

    .line 246
    :pswitch_26
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->tablespoonToGallon(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 247
    const-string v4, "gal"

    .line 248
    goto/16 :goto_1

    .line 250
    :pswitch_27
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->tablespoonToQuart(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 251
    const-string v4, "quart"

    .line 252
    goto/16 :goto_1

    .line 254
    :pswitch_28
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->tablespoonToPint(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 255
    const-string v4, "pint"

    .line 256
    goto/16 :goto_1

    .line 258
    :pswitch_29
    invoke-direct {p0, v2, v3}, Lcom/zaidisoft/teninone/CookingConverter;->tablespoonToCup(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->convertedVolume:D

    .line 259
    const-string v4, "cup"

    goto/16 :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_e
        :pswitch_15
        :pswitch_1c
        :pswitch_23
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 120
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 149
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 178
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 207
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 236
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0b001b

    const v9, 0x1090009

    .line 30
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/CookingConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0b002c

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, "cookView":Landroid/view/View;
    const v6, 0x7f090044

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookFromSpinner:Landroid/widget/Spinner;

    .line 33
    const v6, 0x7f090046

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    .line 35
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/CookingConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x7f030000

    invoke-static {v6, v7, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 38
    .local v1, "cookFromAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 39
    iget-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookFromSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 41
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/CookingConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030001

    invoke-static {v6, v7, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 44
    .local v2, "cookToAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 45
    iget-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 47
    const v6, 0x7f090043

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->editValue:Landroid/widget/EditText;

    .line 48
    iget-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->editValue:Landroid/widget/EditText;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 49
    const v6, 0x7f090045

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->textValue:Landroid/widget/TextView;

    .line 50
    const v6, 0x7f0900b7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 51
    .local v4, "resetButton":Landroid/widget/Button;
    new-instance v6, Lcom/zaidisoft/teninone/CookingConverter$1;

    invoke-direct {v6, p0}, Lcom/zaidisoft/teninone/CookingConverter$1;-><init>(Lcom/zaidisoft/teninone/CookingConverter;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v6, 0x7f090042

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, "convertButton":Landroid/widget/Button;
    new-instance v6, Lcom/zaidisoft/teninone/CookingConverter$2;

    invoke-direct {v6, p0}, Lcom/zaidisoft/teninone/CookingConverter$2;-><init>(Lcom/zaidisoft/teninone/CookingConverter;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-string v5, "#.###"

    .line 69
    .local v5, "volumePattern":Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/zaidisoft/teninone/CookingConverter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 71
    return-object v3
.end method

.method protected resetCooker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookFromSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 416
    iget-object v0, p0, Lcom/zaidisoft/teninone/CookingConverter;->cookToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 417
    iget-object v0, p0, Lcom/zaidisoft/teninone/CookingConverter;->editValue:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/zaidisoft/teninone/CookingConverter;->textValue:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method

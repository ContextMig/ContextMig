.class public Lcom/zaidisoft/teninone/MassConverter;
.super Landroid/support/v4/app/Fragment;
.source "MassConverter.java"


# instance fields
.field private convertedMass:D

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private editMass:Landroid/widget/EditText;

.field private fromMassSpinner:Landroid/widget/Spinner;

.field private massText:Landroid/widget/TextView;

.field private toMassSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private gramToGram(D)D
    .locals 1
    .param p1, "mass2"    # D

    .prologue
    .line 226
    return-wide p1
.end method

.method private gramToKilogram(D)D
    .locals 3
    .param p1, "mass2"    # D

    .prologue
    .line 290
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private gramToMilligram(D)D
    .locals 3
    .param p1, "mass2"    # D

    .prologue
    .line 294
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private gramToOunce(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 302
    const-wide v0, 0x400c381d7dbf4880L    # 3.5274

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private gramToPound(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->gramToKilogram(D)D

    move-result-wide v0

    const-wide v2, 0x4001a30fcf80dc33L    # 2.20462

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private kilogramToGram(D)D
    .locals 3
    .param p1, "mass2"    # D

    .prologue
    .line 318
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private kilogramToKilogram(D)D
    .locals 1
    .param p1, "mass2"    # D

    .prologue
    .line 222
    return-wide p1
.end method

.method private kilogramToMilligram(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->kilogramToGram(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private kilogramToOunce(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->kilogramToPound(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private kilogramToPound(D)D
    .locals 3
    .param p1, "mass2"    # D

    .prologue
    .line 310
    const-wide v0, 0x4001a30fcf80dc33L    # 2.20462

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private milligramToGram(D)D
    .locals 3
    .param p1, "mass2"    # D

    .prologue
    .line 274
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private milligramToKilogram(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->milligramToGram(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private milligramToMilligram(D)D
    .locals 1
    .param p1, "mass2"    # D

    .prologue
    .line 278
    return-wide p1
.end method

.method private milligramToOunce(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->milligramToGram(D)D

    move-result-wide v0

    const-wide v2, 0x3fa20f6f08cc575cL    # 0.035274

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private milligramToPound(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->milligramToKilogram(D)D

    move-result-wide v0

    const-wide v2, 0x4001a30fcf80dc33L    # 2.20462

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private ounceToGram(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->ounceToKilogram(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private ounceToKilogram(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 230
    const-wide v0, 0x4006adfa43fe5c92L    # 2.83495

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private ounceToMilligram(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->ounceToGram(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private ounceToOunce(D)D
    .locals 1
    .param p1, "mass2"    # D

    .prologue
    .line 246
    return-wide p1
.end method

.method private ounceToPound(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 242
    const-wide/high16 v0, 0x4019000000000000L    # 6.25

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private poundToGram(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->poundToKilogram(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private poundToKilogram(D)D
    .locals 3
    .param p1, "mass2"    # D

    .prologue
    .line 254
    const-wide v0, 0x3fdd07a6bd6e8af8L    # 0.453592

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private poundToMilligram(D)D
    .locals 5
    .param p1, "mass2"    # D

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/MassConverter;->poundToGram(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private poundToOunce(D)D
    .locals 3
    .param p1, "mass2"    # D

    .prologue
    .line 266
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private poundToPound(D)D
    .locals 1
    .param p1, "mass2"    # D

    .prologue
    .line 250
    return-wide p1
.end method


# virtual methods
.method protected convertMass()V
    .locals 10

    .prologue
    .line 77
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->editMass:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "massToConvert":Ljava/lang/String;
    const-string v3, ""

    .line 81
    .local v3, "massUnit":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/MassConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "Value is required"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 83
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->editMass:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 85
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->editMass:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 92
    .local v0, "mass":D
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->fromMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 215
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->decimalFormat:Ljava/text/DecimalFormat;

    iget-wide v8, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "massValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->massText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    .end local v4    # "massValue":Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 96
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->kilogramToOunce(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 97
    const-string v3, "oz"

    .line 98
    goto :goto_1

    .line 100
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->kilogramToPound(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 101
    const-string v3, "lb"

    .line 102
    goto :goto_1

    .line 104
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->kilogramToMilligram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 105
    const-string v3, "mg"

    .line 106
    goto :goto_1

    .line 108
    :pswitch_4
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->kilogramToGram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 109
    const-string v3, "g"

    .line 110
    goto :goto_1

    .line 112
    :pswitch_5
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->kilogramToKilogram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 113
    const-string v3, "kg"

    goto :goto_1

    .line 118
    :pswitch_6
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 120
    :pswitch_7
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->gramToOunce(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 121
    const-string v3, "oz"

    .line 122
    goto :goto_1

    .line 124
    :pswitch_8
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->gramToPound(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 125
    const-string v3, "lb"

    .line 126
    goto :goto_1

    .line 128
    :pswitch_9
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->gramToMilligram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 129
    const-string v3, "mg"

    .line 130
    goto :goto_1

    .line 132
    :pswitch_a
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->gramToGram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 133
    const-string v3, "g"

    .line 134
    goto/16 :goto_1

    .line 136
    :pswitch_b
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->gramToKilogram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 137
    const-string v3, "kg"

    goto/16 :goto_1

    .line 142
    :pswitch_c
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 144
    :pswitch_d
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->milligramToOunce(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 145
    const-string v3, "oz"

    .line 146
    goto/16 :goto_1

    .line 148
    :pswitch_e
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->milligramToPound(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 149
    const-string v3, "lb"

    .line 150
    goto/16 :goto_1

    .line 152
    :pswitch_f
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->milligramToMilligram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 153
    const-string v3, "mg"

    .line 154
    goto/16 :goto_1

    .line 156
    :pswitch_10
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->milligramToGram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 157
    const-string v3, "g"

    .line 158
    goto/16 :goto_1

    .line 160
    :pswitch_11
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->milligramToKilogram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 161
    const-string v3, "kg"

    goto/16 :goto_1

    .line 166
    :pswitch_12
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_4

    goto/16 :goto_1

    .line 168
    :pswitch_13
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->poundToOunce(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 169
    const-string v3, "oz"

    .line 170
    goto/16 :goto_1

    .line 172
    :pswitch_14
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->poundToPound(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 173
    const-string v3, "lb"

    .line 174
    goto/16 :goto_1

    .line 176
    :pswitch_15
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->poundToMilligram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 177
    const-string v3, "mg"

    .line 178
    goto/16 :goto_1

    .line 180
    :pswitch_16
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->poundToGram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 181
    const-string v3, "g"

    .line 182
    goto/16 :goto_1

    .line 184
    :pswitch_17
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->poundToKilogram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 185
    const-string v3, "kg"

    goto/16 :goto_1

    .line 190
    :pswitch_18
    iget-object v5, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_5

    goto/16 :goto_1

    .line 192
    :pswitch_19
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->ounceToOunce(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 193
    const-string v3, "oz"

    .line 194
    goto/16 :goto_1

    .line 196
    :pswitch_1a
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->ounceToPound(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 197
    const-string v3, "lb"

    .line 198
    goto/16 :goto_1

    .line 200
    :pswitch_1b
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->ounceToMilligram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 201
    const-string v3, "mg"

    .line 202
    goto/16 :goto_1

    .line 204
    :pswitch_1c
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->ounceToGram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 205
    const-string v3, "g"

    .line 206
    goto/16 :goto_1

    .line 208
    :pswitch_1d
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/MassConverter;->ounceToKilogram(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/MassConverter;->convertedMass:D

    .line 209
    const-string v3, "kg"

    goto/16 :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 118
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 142
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 166
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 190
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0b001b

    const v8, 0x1090009

    .line 30
    const v6, 0x7f0b002e

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, "massView":Landroid/view/View;
    const v6, 0x7f090069

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->fromMassSpinner:Landroid/widget/Spinner;

    .line 33
    const v6, 0x7f0900fc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    .line 35
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/MassConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030003

    invoke-static {v6, v7, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 38
    .local v2, "fromMassAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 39
    iget-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->fromMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 41
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/MassConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030006

    invoke-static {v6, v7, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 44
    .local v5, "toMassAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 45
    iget-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 47
    const v6, 0x7f09008d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->editMass:Landroid/widget/EditText;

    .line 48
    iget-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->editMass:Landroid/widget/EditText;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 49
    const v6, 0x7f09008e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->massText:Landroid/widget/TextView;

    .line 51
    const v6, 0x7f0900b7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 52
    .local v4, "resetButton":Landroid/widget/Button;
    new-instance v6, Lcom/zaidisoft/teninone/MassConverter$1;

    invoke-direct {v6, p0}, Lcom/zaidisoft/teninone/MassConverter$1;-><init>(Lcom/zaidisoft/teninone/MassConverter;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v6, 0x7f090042

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    .local v1, "convertButton":Landroid/widget/Button;
    new-instance v6, Lcom/zaidisoft/teninone/MassConverter$2;

    invoke-direct {v6, p0}, Lcom/zaidisoft/teninone/MassConverter$2;-><init>(Lcom/zaidisoft/teninone/MassConverter;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-string v0, "#.######"

    .line 70
    .local v0, "answerPattern":Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/zaidisoft/teninone/MassConverter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 72
    return-object v3
.end method

.method protected resetConverter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/zaidisoft/teninone/MassConverter;->fromMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 323
    iget-object v0, p0, Lcom/zaidisoft/teninone/MassConverter;->toMassSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 324
    iget-object v0, p0, Lcom/zaidisoft/teninone/MassConverter;->editMass:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/zaidisoft/teninone/MassConverter;->massText:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method

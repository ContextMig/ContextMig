.class public Lcom/jpstudiosonline/tipcalculator/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field public billTotal:D

.field public etBillTotal:Landroid/widget/EditText;

.field public etPerson:Landroid/widget/EditText;

.field public etTipAmount:Landroid/widget/EditText;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private mAdViewTop:Lcom/google/android/gms/ads/AdView;

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field public peronsAmount:I

.field public personCountInfo:Ljava/lang/String;

.field public tipAmount:D

.field public tipTotalInfo:Ljava/lang/String;

.field public totalWithTipInfo:Ljava/lang/String;

.field public tvPersonPay:Landroid/widget/TextView;

.field public tvTipTotal:Landroid/widget/TextView;

.field public tvTotalWithTip:Landroid/widget/TextView;

.field public uri:Landroid/net/Uri;

.field public userClickedCalcTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->userClickedCalcTimes:I

    return-void
.end method

.method static synthetic access$000(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/jpstudiosonline/tipcalculator/MainActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/jpstudiosonline/tipcalculator/MainActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdViewTop:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jpstudiosonline/tipcalculator/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/jpstudiosonline/tipcalculator/MainActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method


# virtual methods
.method public calculateTip()V
    .locals 25

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etBillTotal:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etTipAmount:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etPerson:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    if-eqz v13, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etPerson:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->peronsAmount:I

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etTipAmount:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tipAmount:D

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etBillTotal:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jpstudiosonline/tipcalculator/MainActivity;->billTotal:D

    .line 236
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->billTotal:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v13, v20, v22

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tipAmount:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v13, v20, v22

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->peronsAmount:I

    if-eqz v13, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tipAmount:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v10, v20, v22

    .line 239
    .local v10, "tip":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->billTotal:D

    move-wide/from16 v20, v0

    mul-double v14, v20, v10

    .line 243
    .local v14, "tipToAdd":D
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "cutTip":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 248
    .local v8, "newTip":D
    const-string v13, "0"

    if-eq v5, v13, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->billTotal:D

    move-wide/from16 v20, v0

    add-double v8, v20, v14

    .line 258
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, "tipString":Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 260
    .local v7, "periodPosition":I
    add-int/lit8 v7, v7, 0x3

    .line 262
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v7, :cond_0

    .line 265
    add-int/lit8 v7, v7, -0x1

    .line 266
    const/4 v13, 0x0

    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 289
    .end local v7    # "periodPosition":I
    .end local v12    # "tipString":Ljava/lang/String;
    .local v6, "fixTip":F
    :goto_0
    move-wide/from16 v18, v8

    .line 292
    .local v18, "totalWithTip":D
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->peronsAmount:I

    int-to-double v0, v13

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 295
    .local v16, "totalPerUser":D
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "checkPersonPay":Ljava/lang/String;
    const-string v13, "0"

    if-eq v4, v13, :cond_5

    .line 302
    const-string v13, "."

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 303
    .restart local v7    # "periodPosition":I
    add-int/lit8 v7, v7, 0x3

    .line 305
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v7, :cond_3

    .line 307
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 327
    .end local v7    # "periodPosition":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tvTipTotal:Landroid/widget/TextView;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%.2f"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tvTotalWithTip:Landroid/widget/TextView;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%.2f"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tvPersonPay:Landroid/widget/TextView;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$ "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%.2f"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    const-string v13, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->totalWithTipInfo:Ljava/lang/String;

    .line 332
    const-string v13, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tipTotalInfo:Ljava/lang/String;

    .line 333
    const-string v13, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->personCountInfo:Ljava/lang/String;

    .line 349
    .end local v4    # "checkPersonPay":Ljava/lang/String;
    .end local v5    # "cutTip":Ljava/lang/String;
    .end local v6    # "fixTip":F
    .end local v8    # "newTip":D
    .end local v10    # "tip":D
    .end local v14    # "tipToAdd":D
    .end local v16    # "totalPerUser":D
    .end local v18    # "totalWithTip":D
    :goto_2
    return-void

    .line 268
    .restart local v5    # "cutTip":Ljava/lang/String;
    .restart local v7    # "periodPosition":I
    .restart local v8    # "newTip":D
    .restart local v10    # "tip":D
    .restart local v12    # "tipString":Ljava/lang/String;
    .restart local v14    # "tipToAdd":D
    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v7, :cond_1

    .line 270
    add-int/lit8 v7, v7, -0x2

    .line 271
    const/4 v13, 0x0

    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .restart local v6    # "fixTip":F
    goto/16 :goto_0

    .line 277
    .end local v6    # "fixTip":F
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .restart local v6    # "fixTip":F
    goto/16 :goto_0

    .line 285
    .end local v6    # "fixTip":F
    .end local v7    # "periodPosition":I
    .end local v12    # "tipString":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "fixTip":F
    goto/16 :goto_0

    .line 309
    .restart local v4    # "checkPersonPay":Ljava/lang/String;
    .restart local v7    # "periodPosition":I
    .restart local v16    # "totalPerUser":D
    .restart local v18    # "totalWithTip":D
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v7, :cond_4

    .line 311
    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 316
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 322
    .end local v7    # "periodPosition":I
    :cond_5
    const-string v4, "0"

    goto/16 :goto_1

    .line 338
    .end local v4    # "checkPersonPay":Ljava/lang/String;
    .end local v5    # "cutTip":Ljava/lang/String;
    .end local v6    # "fixTip":F
    .end local v8    # "newTip":D
    .end local v10    # "tip":D
    .end local v14    # "tipToAdd":D
    .end local v16    # "totalPerUser":D
    .end local v18    # "totalWithTip":D
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string v20, "Value cannot be 0!"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 343
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string v20, "Values cannot be Empty!"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v4, 0x7f09001b

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->setContentView(I)V

    .line 49
    const-string v4, "ca-app-pub-2289684703180323~1522911455"

    invoke-static {p0, v4}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    const v4, 0x7f070018

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/AdView;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 52
    const v4, 0x7f070019

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/AdView;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdViewTop:Lcom/google/android/gms/ads/AdView;

    .line 53
    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 54
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 56
    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 57
    .local v1, "adRequestTop":Lcom/google/android/gms/ads/AdRequest;
    iget-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdViewTop:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 60
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etPerson:Landroid/widget/EditText;

    .line 61
    const v4, 0x7f070034

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etTipAmount:Landroid/widget/EditText;

    .line 62
    const v4, 0x7f070032

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etBillTotal:Landroid/widget/EditText;

    .line 64
    const v4, 0x7f07007f

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tvTotalWithTip:Landroid/widget/TextView;

    .line 65
    const v4, 0x7f07007e

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tvTipTotal:Landroid/widget/TextView;

    .line 66
    const v4, 0x7f07007d

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tvPersonPay:Landroid/widget/TextView;

    .line 68
    iget-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v5, Lcom/jpstudiosonline/tipcalculator/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity$1;-><init>(Lcom/jpstudiosonline/tipcalculator/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 101
    iget-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mAdViewTop:Lcom/google/android/gms/ads/AdView;

    new-instance v5, Lcom/jpstudiosonline/tipcalculator/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity$2;-><init>(Lcom/jpstudiosonline/tipcalculator/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->calculateTip()V

    .line 137
    const v4, 0x7f070020

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 138
    .local v2, "btCalculate":Landroid/widget/Button;
    const v4, 0x7f070021

    invoke-virtual {p0, v4}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 140
    .local v3, "btReset":Landroid/widget/Button;
    new-instance v4, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v4, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 141
    iget-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v5, "ca-app-pub-2289684703180323/4476377854"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 144
    new-instance v4, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity$3;-><init>(Lcom/jpstudiosonline/tipcalculator/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v4, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v5, Lcom/jpstudiosonline/tipcalculator/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity$4;-><init>(Lcom/jpstudiosonline/tipcalculator/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 209
    new-instance v4, Lcom/jpstudiosonline/tipcalculator/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity$5;-><init>(Lcom/jpstudiosonline/tipcalculator/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 366
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 367
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 407
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :goto_0
    return v8

    .line 377
    :sswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bill Info: \nPerson(s) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->peronsAmount:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nTip: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tipAmount:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% \nBill Total: $"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->billTotal:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \n \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "finalBillReport":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Paid Bill Info: \nTotal With Tip: $"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->totalWithTipInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nTip Amount: $"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->tipTotalInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \nPerson(s): $"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->personCountInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "finalBillTipReport":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "finalReport":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v7, "shareIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v9, "text/plain"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v9, "Share Tip info"

    invoke-static {v7, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 388
    .end local v2    # "finalBillReport":Ljava/lang/String;
    .end local v3    # "finalBillTipReport":Ljava/lang/String;
    .end local v4    # "finalReport":Ljava/lang/String;
    .end local v7    # "shareIntent":Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    iget-object v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->uri:Landroid/net/Uri;

    const-string v10, "https://jpstudiosonline.com/main/"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 389
    .local v1, "communityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 392
    .end local v1    # "communityIntent":Landroid/content/Intent;
    :sswitch_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v6, "shareAppIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v9, "android.intent.extra.TEXT"

    const-string v10, "https://play.google.com/store/apps/details?id=com.jpstudiosonline.tipcalculator"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v9, "text/plain"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v9, "Share App"

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 399
    .end local v6    # "shareAppIntent":Landroid/content/Intent;
    :sswitch_3
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    iget-object v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->uri:Landroid/net/Uri;

    const-string v10, "https://play.google.com/store/apps/details?id=com.jpstudiosonline.tipcalculator"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    .local v5, "rateAppIntent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 403
    .end local v5    # "rateAppIntent":Landroid/content/Intent;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    iget-object v10, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->uri:Landroid/net/Uri;

    const-string v10, "https://jpstudiosonline.com/main/"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 404
    .local v0, "blogIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x7f07001e -> :sswitch_4
        0x7f070027 -> :sswitch_1
        0x7f070051 -> :sswitch_3
        0x7f070063 -> :sswitch_2
        0x7f070064 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetBillInfo()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etPerson:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etTipAmount:Landroid/widget/EditText;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/jpstudiosonline/tipcalculator/MainActivity;->etBillTotal:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Lcom/jpstudiosonline/tipcalculator/MainActivity;->calculateTip()V

    .line 360
    return-void
.end method

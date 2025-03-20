.class public Lcom/zaidisoft/teninone/LengthConverter;
.super Landroid/support/v4/app/Fragment;
.source "LengthConverter.java"


# instance fields
.field private convertedLength:D

.field private df:Ljava/text/DecimalFormat;

.field private editLength:Landroid/widget/EditText;

.field private fromLengthSpinner:Landroid/widget/Spinner;

.field private lengthText:Landroid/widget/TextView;

.field private toLengthSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private cmToCentimeter(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 478
    return-wide p1
.end method

.method private cmToFoot(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 462
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->cmToInch(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private cmToInch(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 458
    const-wide v0, 0x3fd93265add9c27fL    # 0.393701

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private cmToKilometer(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->cmToMeter(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private cmToMeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 482
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private cmToMile(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 470
    const-wide v0, 0x4018dad42c3c9eedL    # 6.2137

    mul-double/2addr v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private cmToMillimeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 474
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private cmToYard(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->cmToInch(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private ftToCentimeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 606
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->ftToMillimeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private ftToFoot(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 590
    return-wide p1
.end method

.method private ftToInch(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 586
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private ftToKilometer(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->ftToMeter(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private ftToMeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->ftToMillimeter(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private ftToMile(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 598
    const-wide v0, 0x3ffe4d6a161e4f76L    # 1.8939

    mul-double/2addr v0, p1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private ftToMillimeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 602
    const-wide v0, 0x40730ccccccccccdL    # 304.8

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private ftToYard(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 594
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private inchToCentimeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 638
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->inchToMillimeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private inchToFoot(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 622
    const-wide v0, 0x3fb53f7ced916873L    # 0.083

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private inchToInch(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 618
    return-wide p1
.end method

.method private inchToKilometer(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 646
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->inchToMeter(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private inchToMeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 642
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->inchToCentimeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private inchToMile(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 630
    const-wide v0, 0x3ff940b780346dc6L    # 1.5783

    mul-double/2addr v0, p1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private inchToMillimeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 634
    const-wide v0, 0x4039666666666666L    # 25.4

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private inchToYard(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 626
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->inchToFoot(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private kmToCentimeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 414
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->kmToMeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private kmToFoot(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->kmToYard(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private kmToInch(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->kmToYard(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private kmToKilometer(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 422
    return-wide p1
.end method

.method private kmToMeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 418
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private kmToMile(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 406
    const-wide v0, 0x3fe3e2456f75d9a1L    # 0.621371

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private kmToMillimeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 410
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->kmToMeter(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private kmToYard(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 402
    const-wide v0, 0x40911670a3d70a3dL    # 1093.61

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private meterToCentimeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 446
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private meterToFoot(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->meterToYard(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private meterToInch(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->meterToYard(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private meterToKilometer(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 454
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private meterToMeter(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 450
    return-wide p1
.end method

.method private meterToMile(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 438
    const-wide v0, 0x4018dad42c3c9eedL    # 6.2137

    mul-double/2addr v0, p1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private meterToMillimeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 442
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private meterToYard(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 434
    const-wide v0, 0x3ff17f6d330941c8L    # 1.09361

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private mileToCentimeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mileToMeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private mileToFoot(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mileToYard(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private mileToInch(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 522
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mileToYard(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private mileToKilometer(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 550
    const-wide v0, 0x3ff9bfdb4cc25072L    # 1.60934

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private mileToMeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 546
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mileToKilometer(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private mileToMile(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 534
    return-wide p1
.end method

.method private mileToMillimeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 538
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mileToCentimeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private mileToYard(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 530
    const-wide v0, 0x409b800000000000L    # 1760.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private mmToCentimeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 510
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private mmToFoot(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 494
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mmToInch(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private mmToInch(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 490
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->cmToInch(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private mmToKilometer(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 518
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mmToMeter(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private mmToMeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 514
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private mmToMile(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->cmToMile(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private mmToMillimeter(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 506
    return-wide p1
.end method

.method private mmToYard(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 498
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->mmToInch(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private yardToCentimeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->yardToMillimeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private yardToFoot(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 558
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private yardToInch(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->yardToFoot(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private yardToKilometer(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 582
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->yardToMeter(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private yardToMeter(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 578
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/LengthConverter;->yardToCentimeter(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private yardToMile(D)D
    .locals 5
    .param p1, "length2"    # D

    .prologue
    .line 566
    const-wide v0, 0x4016ba2f05a708eeL    # 5.68182

    mul-double/2addr v0, p1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private yardToMillimeter(D)D
    .locals 3
    .param p1, "length2"    # D

    .prologue
    .line 570
    const-wide v0, 0x408c933333333333L    # 914.4

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private yardToYard(D)D
    .locals 1
    .param p1, "length2"    # D

    .prologue
    .line 562
    return-wide p1
.end method


# virtual methods
.method protected convertLength()V
    .locals 10

    .prologue
    .line 80
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->editLength:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "lengthValue":Ljava/lang/String;
    const-string v2, ""

    .line 83
    .local v2, "lengthUnit":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/LengthConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "Length is required"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->editLength:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->editLength:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 93
    .local v0, "length":D
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->fromLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 386
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->df:Ljava/text/DecimalFormat;

    iget-wide v8, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "newValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->lengthText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    .end local v4    # "newValue":Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 97
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 98
    const-string v2, "in"

    .line 99
    goto :goto_1

    .line 101
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 102
    const-string v2, "ft"

    .line 103
    goto :goto_1

    .line 105
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 106
    const-string v2, "yard"

    .line 107
    goto :goto_1

    .line 109
    :pswitch_4
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 110
    const-string v2, "m"

    .line 111
    goto :goto_1

    .line 113
    :pswitch_5
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 114
    const-string v2, "mm"

    .line 115
    goto :goto_1

    .line 117
    :pswitch_6
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 118
    const-string v2, "cm"

    .line 119
    goto :goto_1

    .line 121
    :pswitch_7
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 122
    const-string v2, "m"

    .line 123
    goto :goto_1

    .line 125
    :pswitch_8
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->kmToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 126
    const-string v2, "km"

    goto :goto_1

    .line 132
    :pswitch_9
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 134
    :pswitch_a
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 135
    const-string v2, "in"

    .line 136
    goto/16 :goto_1

    .line 138
    :pswitch_b
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 139
    const-string v2, "ft"

    .line 140
    goto/16 :goto_1

    .line 142
    :pswitch_c
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 143
    const-string v2, "yard"

    .line 144
    goto/16 :goto_1

    .line 146
    :pswitch_d
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 147
    const-string v2, "m"

    .line 148
    goto/16 :goto_1

    .line 150
    :pswitch_e
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 151
    const-string v2, "mm"

    .line 152
    goto/16 :goto_1

    .line 154
    :pswitch_f
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 155
    const-string v2, "cm"

    .line 156
    goto/16 :goto_1

    .line 158
    :pswitch_10
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 159
    const-string v2, "m"

    .line 160
    goto/16 :goto_1

    .line 162
    :pswitch_11
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->meterToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 163
    const-string v2, "km"

    goto/16 :goto_1

    .line 168
    :pswitch_12
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 170
    :pswitch_13
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 171
    const-string v2, "in"

    .line 172
    goto/16 :goto_1

    .line 174
    :pswitch_14
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 175
    const-string v2, "ft"

    .line 176
    goto/16 :goto_1

    .line 178
    :pswitch_15
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 179
    const-string v2, "yard"

    .line 180
    goto/16 :goto_1

    .line 182
    :pswitch_16
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 183
    const-string v2, "m"

    .line 184
    goto/16 :goto_1

    .line 186
    :pswitch_17
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 187
    const-string v2, "mm"

    .line 188
    goto/16 :goto_1

    .line 190
    :pswitch_18
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 191
    const-string v2, "cm"

    .line 192
    goto/16 :goto_1

    .line 194
    :pswitch_19
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 195
    const-string v2, "m"

    .line 196
    goto/16 :goto_1

    .line 198
    :pswitch_1a
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->cmToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 199
    const-string v2, "km"

    goto/16 :goto_1

    .line 204
    :pswitch_1b
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_4

    goto/16 :goto_1

    .line 206
    :pswitch_1c
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 207
    const-string v2, "in"

    .line 208
    goto/16 :goto_1

    .line 210
    :pswitch_1d
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 211
    const-string v2, "ft"

    .line 212
    goto/16 :goto_1

    .line 214
    :pswitch_1e
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 215
    const-string v2, "yard"

    .line 216
    goto/16 :goto_1

    .line 218
    :pswitch_1f
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 219
    const-string v2, "m"

    .line 220
    goto/16 :goto_1

    .line 222
    :pswitch_20
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 223
    const-string v2, "mm"

    .line 224
    goto/16 :goto_1

    .line 226
    :pswitch_21
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 227
    const-string v2, "cm"

    .line 228
    goto/16 :goto_1

    .line 230
    :pswitch_22
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 231
    const-string v2, "m"

    .line 232
    goto/16 :goto_1

    .line 234
    :pswitch_23
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mmToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 235
    const-string v2, "km"

    goto/16 :goto_1

    .line 240
    :pswitch_24
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_5

    goto/16 :goto_1

    .line 242
    :pswitch_25
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 243
    const-string v2, "in"

    .line 244
    goto/16 :goto_1

    .line 246
    :pswitch_26
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 247
    const-string v2, "ft"

    .line 248
    goto/16 :goto_1

    .line 250
    :pswitch_27
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 251
    const-string v2, "yard"

    .line 252
    goto/16 :goto_1

    .line 254
    :pswitch_28
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 255
    const-string v2, "m"

    .line 256
    goto/16 :goto_1

    .line 258
    :pswitch_29
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 259
    const-string v2, "mm"

    .line 260
    goto/16 :goto_1

    .line 262
    :pswitch_2a
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 263
    const-string v2, "cm"

    .line 264
    goto/16 :goto_1

    .line 266
    :pswitch_2b
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 267
    const-string v2, "m"

    .line 268
    goto/16 :goto_1

    .line 270
    :pswitch_2c
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->mileToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 271
    const-string v2, "km"

    goto/16 :goto_1

    .line 276
    :pswitch_2d
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_6

    goto/16 :goto_1

    .line 278
    :pswitch_2e
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 279
    const-string v2, "in"

    .line 280
    goto/16 :goto_1

    .line 282
    :pswitch_2f
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 283
    const-string v2, "ft"

    .line 284
    goto/16 :goto_1

    .line 286
    :pswitch_30
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 287
    const-string v2, "yard"

    .line 288
    goto/16 :goto_1

    .line 290
    :pswitch_31
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 291
    const-string v2, "m"

    .line 292
    goto/16 :goto_1

    .line 294
    :pswitch_32
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 295
    const-string v2, "mm"

    .line 296
    goto/16 :goto_1

    .line 298
    :pswitch_33
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 299
    const-string v2, "cm"

    .line 300
    goto/16 :goto_1

    .line 302
    :pswitch_34
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 303
    const-string v2, "m"

    .line 304
    goto/16 :goto_1

    .line 306
    :pswitch_35
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->yardToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 307
    const-string v2, "km"

    goto/16 :goto_1

    .line 312
    :pswitch_36
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_7

    goto/16 :goto_1

    .line 314
    :pswitch_37
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 315
    const-string v2, "in"

    .line 316
    goto/16 :goto_1

    .line 318
    :pswitch_38
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 319
    const-string v2, "ft"

    .line 320
    goto/16 :goto_1

    .line 322
    :pswitch_39
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 323
    const-string v2, "yard"

    .line 324
    goto/16 :goto_1

    .line 326
    :pswitch_3a
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 327
    const-string v2, "m"

    .line 328
    goto/16 :goto_1

    .line 330
    :pswitch_3b
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 331
    const-string v2, "mm"

    .line 332
    goto/16 :goto_1

    .line 334
    :pswitch_3c
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 335
    const-string v2, "cm"

    .line 336
    goto/16 :goto_1

    .line 338
    :pswitch_3d
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 339
    const-string v2, "m"

    .line 340
    goto/16 :goto_1

    .line 342
    :pswitch_3e
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->ftToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 343
    const-string v2, "km"

    goto/16 :goto_1

    .line 348
    :pswitch_3f
    iget-object v5, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    packed-switch v5, :pswitch_data_8

    goto/16 :goto_1

    .line 350
    :pswitch_40
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToInch(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 351
    const-string v2, "in"

    .line 352
    goto/16 :goto_1

    .line 354
    :pswitch_41
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToFoot(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 355
    const-string v2, "ft"

    .line 356
    goto/16 :goto_1

    .line 358
    :pswitch_42
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToYard(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 359
    const-string v2, "yard"

    .line 360
    goto/16 :goto_1

    .line 362
    :pswitch_43
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToMile(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 363
    const-string v2, "m"

    .line 364
    goto/16 :goto_1

    .line 366
    :pswitch_44
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToMillimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 367
    const-string v2, "mm"

    .line 368
    goto/16 :goto_1

    .line 370
    :pswitch_45
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToCentimeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 371
    const-string v2, "cm"

    .line 372
    goto/16 :goto_1

    .line 374
    :pswitch_46
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToMeter(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 375
    const-string v2, "m"

    .line 376
    goto/16 :goto_1

    .line 378
    :pswitch_47
    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/LengthConverter;->inchToKilometer(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->convertedLength:D

    .line 379
    const-string v2, "km"

    goto/16 :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_12
        :pswitch_1b
        :pswitch_24
        :pswitch_2d
        :pswitch_36
        :pswitch_3f
    .end packed-switch

    .line 95
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 132
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 168
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 204
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 240
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch

    .line 276
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch

    .line 312
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
    .end packed-switch

    .line 348
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
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
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/LengthConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0b002d

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, "lengthView":Landroid/view/View;
    const v6, 0x7f090068

    .line 33
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->fromLengthSpinner:Landroid/widget/Spinner;

    .line 34
    const v6, 0x7f0900fb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    .line 36
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/LengthConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030002

    invoke-static {v6, v7, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 39
    .local v1, "fromLengthAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 40
    iget-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->fromLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/LengthConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030005

    invoke-static {v6, v7, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 45
    .local v5, "toLengthAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 46
    iget-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 48
    const v6, 0x7f090085

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->editLength:Landroid/widget/EditText;

    .line 49
    iget-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->editLength:Landroid/widget/EditText;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->editLength:Landroid/widget/EditText;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 52
    const v6, 0x7f090086

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->lengthText:Landroid/widget/TextView;

    .line 54
    const v6, 0x7f0900b7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 55
    .local v4, "resetButton":Landroid/widget/Button;
    new-instance v6, Lcom/zaidisoft/teninone/LengthConverter$1;

    invoke-direct {v6, p0}, Lcom/zaidisoft/teninone/LengthConverter$1;-><init>(Lcom/zaidisoft/teninone/LengthConverter;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v6, 0x7f090042

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    .local v0, "convertButton":Landroid/widget/Button;
    new-instance v6, Lcom/zaidisoft/teninone/LengthConverter$2;

    invoke-direct {v6, p0}, Lcom/zaidisoft/teninone/LengthConverter$2;-><init>(Lcom/zaidisoft/teninone/LengthConverter;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v2, "#.######"

    .line 73
    .local v2, "lengthPattern":Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/zaidisoft/teninone/LengthConverter;->df:Ljava/text/DecimalFormat;

    .line 75
    return-object v3
.end method

.method protected resetLengthConverter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 650
    iget-object v0, p0, Lcom/zaidisoft/teninone/LengthConverter;->fromLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 651
    iget-object v0, p0, Lcom/zaidisoft/teninone/LengthConverter;->toLengthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 652
    iget-object v0, p0, Lcom/zaidisoft/teninone/LengthConverter;->editLength:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/zaidisoft/teninone/LengthConverter;->lengthText:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    return-void
.end method

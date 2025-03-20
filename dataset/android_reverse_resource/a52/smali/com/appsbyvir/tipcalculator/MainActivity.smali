.class public Lcom/appsbyvir/tipcalculator/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final BILL_WITHOUT_TIP:Ljava/lang/String; = "BILL_WITHOUT_TIP"

.field private static final CURRENT_TIP:Ljava/lang/String; = "CURRENT_TIP"

.field private static final FINAL_TIP:Ljava/lang/String; = "FINAL_TIP"

.field private static final PER_PERSON:Ljava/lang/String; = "PER_PERSON"

.field private static final SPLIT_BILL:Ljava/lang/String; = "SPLIT_BILL"

.field private static final TOTAL_BILL:Ljava/lang/String; = "TOTAL_BILL"


# instance fields
.field private billBeforeTip:D

.field billBeforeTipET:Landroid/widget/EditText;

.field private billBeforeTipListener:Landroid/text/TextWatcher;

.field private finalBill:D

.field finalBillET:Landroid/widget/EditText;

.field private finalTip:D

.field finalTipET:Landroid/widget/EditText;

.field private perPerson:D

.field perPersonET:Landroid/widget/EditText;

.field private splitBill:I

.field splitBillET:Landroid/widget/EditText;

.field private splitBillListener:Landroid/text/TextWatcher;

.field private tipAmount:D

.field tipAmountET:Landroid/widget/EditText;

.field private tipAmountListener:Landroid/text/TextWatcher;

.field private tipSeekBar:Landroid/widget/SeekBar;

.field private tipSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/appsbyvir/tipcalculator/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/appsbyvir/tipcalculator/MainActivity$1;-><init>(Lcom/appsbyvir/tipcalculator/MainActivity;)V

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTipListener:Landroid/text/TextWatcher;

    .line 114
    new-instance v0, Lcom/appsbyvir/tipcalculator/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/appsbyvir/tipcalculator/MainActivity$2;-><init>(Lcom/appsbyvir/tipcalculator/MainActivity;)V

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmountListener:Landroid/text/TextWatcher;

    .line 141
    new-instance v0, Lcom/appsbyvir/tipcalculator/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/appsbyvir/tipcalculator/MainActivity$3;-><init>(Lcom/appsbyvir/tipcalculator/MainActivity;)V

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBillListener:Landroid/text/TextWatcher;

    .line 203
    new-instance v0, Lcom/appsbyvir/tipcalculator/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/appsbyvir/tipcalculator/MainActivity$4;-><init>(Lcom/appsbyvir/tipcalculator/MainActivity;)V

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/appsbyvir/tipcalculator/MainActivity;D)V
    .locals 0

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTip:D

    return-void
.end method

.method static synthetic access$1(Lcom/appsbyvir/tipcalculator/MainActivity;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/appsbyvir/tipcalculator/MainActivity;->updateTipAndFinalBill()V

    return-void
.end method

.method static synthetic access$2(Lcom/appsbyvir/tipcalculator/MainActivity;D)V
    .locals 0

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D

    return-void
.end method

.method static synthetic access$3(Lcom/appsbyvir/tipcalculator/MainActivity;D)V
    .locals 0

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalTip:D

    return-void
.end method

.method static synthetic access$4(Lcom/appsbyvir/tipcalculator/MainActivity;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBill:I

    return-void
.end method

.method static synthetic access$5(Lcom/appsbyvir/tipcalculator/MainActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/appsbyvir/tipcalculator/MainActivity;)D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D

    return-wide v0
.end method

.method private updateTipAndFinalBill()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 170
    :try_start_0
    iget-object v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmountET:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    iget-wide v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTip:D

    iget-wide v9, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v9, v11

    mul-double v3, v7, v9

    .line 177
    .local v3, "finalTip":D
    iget-wide v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTip:D

    add-double v1, v7, v3

    .line 179
    .local v1, "finalBill":D
    iget v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBill:I

    int-to-double v7, v7

    div-double v5, v1, v7

    .line 181
    .local v5, "perPerson":D
    iget-object v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalBillET:Landroid/widget/EditText;

    const-string v8, "%.02f"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalTipET:Landroid/widget/EditText;

    const-string v8, "%.02f"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->perPersonET:Landroid/widget/EditText;

    const-string v8, "%.02f"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void

    .line 171
    .end local v1    # "finalBill":D
    .end local v3    # "finalTip":D
    .end local v5    # "perPerson":D
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->setContentView(I)V

    .line 42
    const-string v0, "lZXiVJ0O6TvojUm8"

    const-string v1, "VSiRZaCA2ee0L52d6a92f"

    const/16 v2, 0xff

    invoke-static {p0, v0, v1, v2}, Lcom/appflood/AppFlood;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    invoke-static {p0}, Lcom/appflood/AppFlood;->showFullScreen(Landroid/app/Activity;)V

    .line 46
    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-static {p0, v0, v1}, Lcom/appflood/AppFlood;->showBanner(Landroid/app/Activity;II)V

    .line 48
    if-nez p1, :cond_0

    .line 50
    iput-wide v3, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTip:D

    .line 51
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D

    .line 52
    iput-wide v3, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalBill:D

    .line 53
    iput-wide v3, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalTip:D

    .line 54
    iput-wide v3, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->perPerson:D

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBill:I

    .line 68
    :goto_0
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTipET:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmountET:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalBillET:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalTipET:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->perPersonET:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBillET:Landroid/widget/EditText;

    .line 75
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/appsbyvir/tipcalculator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipSeekBar:Landroid/widget/SeekBar;

    .line 77
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTipET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTipListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmountET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmountListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBillET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBillListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    return-void

    .line 59
    :cond_0
    const-string v0, "BILL_WITHOUT_TIP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTip:D

    .line 60
    const-string v0, "CURRENT_TIP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D

    .line 61
    const-string v0, "TOTAL_BILL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalBill:D

    .line 62
    const-string v0, "FINAL_TIP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalTip:D

    .line 63
    const-string v0, "PER_PERSON"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->perPerson:D

    .line 64
    const-string v0, "SPLIT_BILL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBill:I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/appflood/AppFlood;->showList(Landroid/app/Activity;I)V

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-wide v1, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->billBeforeTip:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "billBeforeTipET":Ljava/lang/String;
    const-string v1, "BILL_WITHOUT_TIP"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "TOTAL_BILL"

    iget-wide v2, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalBill:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 194
    const-string v1, "CURRENT_TIP"

    iget-wide v2, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->tipAmount:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 195
    const-string v1, "FINAL_TIP"

    iget-wide v2, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->finalTip:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 196
    const-string v1, "PER_PERSON"

    iget-wide v2, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->perPerson:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 197
    const-string v1, "SPLIT_BILL"

    iget v2, p0, Lcom/appsbyvir/tipcalculator/MainActivity;->splitBill:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

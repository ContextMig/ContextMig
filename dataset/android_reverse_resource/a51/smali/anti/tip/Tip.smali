.class public Lanti/tip/Tip;
.super Landroid/app/Activity;
.source "Tip.java"


# instance fields
.field private bill:D

.field private each:D

.field private editBill:Landroid/widget/EditText;

.field private editEach:Landroid/widget/EditText;

.field private editPeople:Landroid/widget/EditText;

.field private editPercent:Landroid/widget/EditText;

.field private editTip:Landroid/widget/EditText;

.field private editTipEach:Landroid/widget/EditText;

.field private editTotal:Landroid/widget/EditText;

.field private formatter:Ljava/text/NumberFormat;

.field public numBill:I

.field public numPeople:I

.field public numPercent:I

.field private people:D

.field private percent:D

.field private textBill:Landroid/widget/TextView;

.field private textEach:Landroid/widget/TextView;

.field private textPeople:Landroid/widget/TextView;

.field private textPercent:Landroid/widget/TextView;

.field private textTip:Landroid/widget/TextView;

.field private textTipEach:Landroid/widget/TextView;

.field private textTotal:Landroid/widget/TextView;

.field private tip:D

.field private tipEach:D

.field private total:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanti/tip/Tip;->formatter:Ljava/text/NumberFormat;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lanti/tip/Tip;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lanti/tip/Tip;->editBill:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lanti/tip/Tip;D)V
    .locals 0

    .prologue
    .line 37
    iput-wide p1, p0, Lanti/tip/Tip;->bill:D

    return-void
.end method

.method static synthetic access$2(Lanti/tip/Tip;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lanti/tip/Tip;->calculate()V

    return-void
.end method

.method static synthetic access$3(Lanti/tip/Tip;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lanti/tip/Tip;->editPercent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lanti/tip/Tip;D)V
    .locals 0

    .prologue
    .line 37
    iput-wide p1, p0, Lanti/tip/Tip;->percent:D

    return-void
.end method

.method static synthetic access$5(Lanti/tip/Tip;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lanti/tip/Tip;->editPeople:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lanti/tip/Tip;D)V
    .locals 0

    .prologue
    .line 37
    iput-wide p1, p0, Lanti/tip/Tip;->people:D

    return-void
.end method

.method private calculate()V
    .locals 4

    .prologue
    .line 226
    iget-wide v0, p0, Lanti/tip/Tip;->bill:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 229
    iget-wide v0, p0, Lanti/tip/Tip;->bill:D

    iget-wide v2, p0, Lanti/tip/Tip;->percent:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lanti/tip/Tip;->tip:D

    .line 230
    iget-wide v0, p0, Lanti/tip/Tip;->tip:D

    iget-wide v2, p0, Lanti/tip/Tip;->people:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lanti/tip/Tip;->tipEach:D

    .line 231
    iget-wide v0, p0, Lanti/tip/Tip;->bill:D

    iget-wide v2, p0, Lanti/tip/Tip;->tip:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lanti/tip/Tip;->total:D

    .line 232
    iget-wide v0, p0, Lanti/tip/Tip;->total:D

    iget-wide v2, p0, Lanti/tip/Tip;->people:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lanti/tip/Tip;->each:D

    .line 235
    iget-object v0, p0, Lanti/tip/Tip;->editTip:Landroid/widget/EditText;

    iget-object v1, p0, Lanti/tip/Tip;->formatter:Ljava/text/NumberFormat;

    iget-wide v2, p0, Lanti/tip/Tip;->tip:D

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lanti/tip/Tip;->editTotal:Landroid/widget/EditText;

    iget-object v1, p0, Lanti/tip/Tip;->formatter:Ljava/text/NumberFormat;

    iget-wide v2, p0, Lanti/tip/Tip;->total:D

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lanti/tip/Tip;->editEach:Landroid/widget/EditText;

    iget-object v1, p0, Lanti/tip/Tip;->formatter:Ljava/text/NumberFormat;

    iget-wide v2, p0, Lanti/tip/Tip;->each:D

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lanti/tip/Tip;->editTipEach:Landroid/widget/EditText;

    iget-object v1, p0, Lanti/tip/Tip;->formatter:Ljava/text/NumberFormat;

    iget-wide v2, p0, Lanti/tip/Tip;->tipEach:D

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->setContentView(I)V

    .line 55
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lanti/tip/Tip;->textBill:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lanti/tip/Tip;->textPercent:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lanti/tip/Tip;->textPeople:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lanti/tip/Tip;->textTipEach:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lanti/tip/Tip;->textTip:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lanti/tip/Tip;->textEach:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f05000d

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lanti/tip/Tip;->textTotal:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lanti/tip/Tip;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "FREESCPT.TTF"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 65
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v1, p0, Lanti/tip/Tip;->textBill:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    iget-object v1, p0, Lanti/tip/Tip;->textPercent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v1, p0, Lanti/tip/Tip;->textPeople:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object v1, p0, Lanti/tip/Tip;->textTipEach:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    iget-object v1, p0, Lanti/tip/Tip;->textTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget-object v1, p0, Lanti/tip/Tip;->textEach:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    iget-object v1, p0, Lanti/tip/Tip;->textTotal:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lanti/tip/Tip;->editBill:Landroid/widget/EditText;

    .line 75
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lanti/tip/Tip;->editPercent:Landroid/widget/EditText;

    .line 76
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lanti/tip/Tip;->editPeople:Landroid/widget/EditText;

    .line 77
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lanti/tip/Tip;->editTipEach:Landroid/widget/EditText;

    .line 78
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lanti/tip/Tip;->editTip:Landroid/widget/EditText;

    .line 79
    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lanti/tip/Tip;->editEach:Landroid/widget/EditText;

    .line 80
    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lanti/tip/Tip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lanti/tip/Tip;->editTotal:Landroid/widget/EditText;

    .line 83
    iget-object v1, p0, Lanti/tip/Tip;->editBill:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lanti/tip/Tip;->bill:D

    .line 84
    iget-object v1, p0, Lanti/tip/Tip;->editPercent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lanti/tip/Tip;->percent:D

    .line 85
    iget-object v1, p0, Lanti/tip/Tip;->editPeople:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lanti/tip/Tip;->people:D

    .line 86
    iget-object v1, p0, Lanti/tip/Tip;->editTip:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lanti/tip/Tip;->tip:D

    .line 87
    iget-object v1, p0, Lanti/tip/Tip;->editEach:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lanti/tip/Tip;->each:D

    .line 88
    iget-object v1, p0, Lanti/tip/Tip;->editTotal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lanti/tip/Tip;->total:D

    .line 90
    iput v3, p0, Lanti/tip/Tip;->numBill:I

    .line 91
    iput v3, p0, Lanti/tip/Tip;->numPercent:I

    .line 92
    iput v3, p0, Lanti/tip/Tip;->numPeople:I

    .line 98
    iget-object v1, p0, Lanti/tip/Tip;->editBill:Landroid/widget/EditText;

    new-instance v2, Lanti/tip/Tip$1;

    invoke-direct {v2, p0}, Lanti/tip/Tip$1;-><init>(Lanti/tip/Tip;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v1, p0, Lanti/tip/Tip;->editPercent:Landroid/widget/EditText;

    new-instance v2, Lanti/tip/Tip$2;

    invoke-direct {v2, p0}, Lanti/tip/Tip$2;-><init>(Lanti/tip/Tip;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v1, p0, Lanti/tip/Tip;->editPeople:Landroid/widget/EditText;

    new-instance v2, Lanti/tip/Tip$3;

    invoke-direct {v2, p0}, Lanti/tip/Tip$3;-><init>(Lanti/tip/Tip;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    return-void
.end method

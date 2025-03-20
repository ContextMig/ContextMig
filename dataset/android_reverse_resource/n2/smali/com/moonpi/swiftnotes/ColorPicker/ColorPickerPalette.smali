.class public Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;
.super Landroid/widget/TableLayout;
.source "ColorPickerPalette.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mMarginSize:I

.field private mNumColumns:I

.field public mOnColorSelectedListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mSwatchLength:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x677269d40a44677bL

    const-string v2, "com/moonpi/swiftnotes/ColorPicker/ColorPickerPalette"

    const/16 v3, 0x2b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 35
    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    .line 123
    :goto_0
    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;I)V

    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private createBlankSpace()Landroid/widget/ImageView;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x21

    aput-boolean v7, v0, v2

    .line 130
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    iget v3, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mSwatchLength:I

    iget v4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mSwatchLength:I

    invoke-direct {v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/16 v3, 0x22

    aput-boolean v7, v0, v3

    .line 131
    iget v3, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    iget v4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    iget v5, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    iget v6, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x23

    aput-boolean v7, v0, v3

    .line 132
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/16 v2, 0x24

    aput-boolean v7, v0, v2

    return-object v1
.end method

.method private createColorSwatch(II)Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v2

    .line 141
    new-instance v3, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v4

    if-ne p1, p2, :cond_0

    const/16 v0, 0x25

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mOnColorSelectedListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-direct {v3, v4, p1, v0, v5}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;-><init>(Landroid/content/Context;IZLcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;)V

    const/16 v0, 0x27

    aput-boolean v1, v2, v0

    .line 144
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    iget v4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mSwatchLength:I

    iget v5, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mSwatchLength:I

    invoke-direct {v0, v4, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/16 v4, 0x28

    aput-boolean v1, v2, v4

    .line 145
    iget v4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    iget v5, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    iget v6, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    iget v7, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0x29

    aput-boolean v1, v2, v4

    .line 146
    invoke-virtual {v3, v0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const/16 v0, 0x2a

    aput-boolean v1, v2, v0

    return-object v3

    .line 141
    :cond_0
    const/4 v0, 0x0

    const/16 v5, 0x26

    aput-boolean v1, v2, v5

    goto :goto_0
.end method

.method private createTableRow()Landroid/widget/TableRow;
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    new-instance v1, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 58
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    aput-boolean v4, v0, v3

    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/16 v2, 0xb

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method public drawPalette([II)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->drawPalette([II[Ljava/lang/String;)V

    .line 70
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public drawPalette([II[Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v5

    .line 76
    if-nez p1, :cond_0

    .line 77
    const/16 v4, 0xd

    aput-boolean v9, v5, v4

    .line 111
    .local v0, "row":Landroid/widget/TableRow;
    .local v1, "rowElements":I
    .local v3, "tableElements":I
    :goto_0
    return-void

    .line 79
    .end local v0    # "row":Landroid/widget/TableRow;
    .end local v1    # "rowElements":I
    .end local v3    # "tableElements":I
    :cond_0
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->removeAllViews()V

    .line 80
    const/4 v3, 0x0

    .line 81
    .restart local v3    # "tableElements":I
    const/4 v1, 0x0

    .line 82
    .restart local v1    # "rowElements":I
    const/16 v6, 0xe

    aput-boolean v9, v5, v6

    .line 85
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v0

    .line 87
    .restart local v0    # "row":Landroid/widget/TableRow;
    array-length v6, p1

    const/16 v7, 0xf

    aput-boolean v9, v5, v7

    move v2, v4

    :goto_1
    if-ge v4, v6, :cond_2

    aget v7, p1, v4

    const/16 v8, 0x10

    aput-boolean v9, v5, v8

    .line 88
    invoke-direct {p0, v7, p2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->createColorSwatch(II)Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;

    move-result-object v7

    const/16 v8, 0x11

    aput-boolean v9, v5, v8

    .line 89
    invoke-static {v0, v7, v2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 94
    iget v7, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mNumColumns:I

    if-eq v1, v7, :cond_1

    const/16 v7, 0x12

    aput-boolean v9, v5, v7

    .line 87
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x16

    aput-boolean v9, v5, v7

    goto :goto_1

    .line 94
    :cond_1
    const/16 v7, 0x13

    aput-boolean v9, v5, v7

    .line 95
    invoke-virtual {p0, v0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->addView(Landroid/view/View;)V

    const/16 v7, 0x14

    aput-boolean v9, v5, v7

    .line 96
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->createTableRow()Landroid/widget/TableRow;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 98
    add-int/lit8 v2, v2, 0x1

    .local v2, "rowNumber":I
    const/16 v7, 0x15

    aput-boolean v9, v5, v7

    goto :goto_2

    .line 103
    .end local v2    # "rowNumber":I
    :cond_2
    if-gtz v1, :cond_3

    const/16 v4, 0x17

    aput-boolean v9, v5, v4

    .line 111
    :goto_3
    const/16 v4, 0x1c

    aput-boolean v9, v5, v4

    goto :goto_0

    .line 103
    :cond_3
    const/16 v4, 0x18

    aput-boolean v9, v5, v4

    .line 104
    :goto_4
    iget v4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mNumColumns:I

    if-eq v1, v4, :cond_4

    const/16 v4, 0x19

    aput-boolean v9, v5, v4

    .line 105
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->createBlankSpace()Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->addSwatchToRow(Landroid/widget/TableRow;Landroid/view/View;I)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x1a

    aput-boolean v9, v5, v4

    goto :goto_4

    .line 109
    :cond_4
    invoke-virtual {p0, v0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->addView(Landroid/view/View;)V

    const/16 v4, 0x1b

    aput-boolean v9, v5, v4

    goto :goto_3
.end method

.method public init(IILcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->$jacocoInit()[Z

    move-result-object v1

    .line 42
    iput p2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mNumColumns:I

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 43
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    if-ne p1, v3, :cond_0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 46
    const v2, 0x7f07004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mSwatchLength:I

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 47
    const v2, 0x7f07004f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 53
    :goto_0
    iput-object p3, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mOnColorSelectedListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 54
    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    return-void

    .line 49
    :cond_0
    const v2, 0x7f070051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mSwatchLength:I

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 50
    const v2, 0x7f070050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->mMarginSize:I

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

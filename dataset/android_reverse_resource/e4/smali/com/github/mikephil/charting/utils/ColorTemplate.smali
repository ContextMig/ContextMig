.class public Lcom/github/mikephil/charting/utils/ColorTemplate;
.super Ljava/lang/Object;
.source "ColorTemplate.java"


# static fields
.field public static final COLORFUL_COLORS:[I

.field public static final COLOR_NONE:I = 0x112233

.field public static final COLOR_SKIP:I = 0x112234

.field public static final JOYFUL_COLORS:[I

.field public static final LIBERTY_COLORS:[I

.field public static final PASTEL_COLORS:[I

.field public static final VORDIPLOM_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xcf

    const/16 v2, 0xf8

    const/16 v3, 0xf6

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x94

    const/16 v2, 0xd4

    const/16 v3, 0xd4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0x88

    const/16 v2, 0xb4

    const/16 v3, 0xbb

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/16 v1, 0x76

    const/16 v2, 0xae

    const/16 v3, 0xaf

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x2a

    const/16 v3, 0x6d

    const/16 v4, 0x82

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->LIBERTY_COLORS:[I

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xd9

    const/16 v2, 0x50

    const/16 v3, 0x8a

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xfe

    const/16 v2, 0x95

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xfe

    const/16 v2, 0xf7

    const/16 v3, 0x78

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/16 v1, 0x6a

    const/16 v2, 0xa7

    const/16 v3, 0x86

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x35

    const/16 v3, 0xc2

    const/16 v4, 0xd1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->JOYFUL_COLORS:[I

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x40

    const/16 v2, 0x59

    const/16 v3, 0x80

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x95

    const/16 v2, 0xa5

    const/16 v3, 0x7c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xd9

    const/16 v2, 0xb8

    const/16 v3, 0xa2

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/16 v1, 0xbf

    const/16 v2, 0x86

    const/16 v3, 0x86

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0xb3

    const/16 v3, 0x30

    const/16 v4, 0x50

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->PASTEL_COLORS:[I

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xc1

    const/16 v2, 0x25

    const/16 v3, 0x52

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x66

    invoke-static {v6, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xf5

    const/16 v2, 0xc7

    invoke-static {v1, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/16 v1, 0x6a

    const/16 v2, 0x96

    const/16 v3, 0x1f

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0xb3

    const/16 v3, 0x64

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->COLORFUL_COLORS:[I

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xc0

    const/16 v2, 0x8c

    invoke-static {v1, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xf7

    const/16 v2, 0x8c

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xd0

    const/16 v2, 0x8c

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/16 v1, 0x8c

    const/16 v2, 0xea

    invoke-static {v1, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x8c

    const/16 v3, 0x9d

    invoke-static {v6, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->VORDIPLOM_COLORS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColors(Landroid/content/res/Resources;[I)Ljava/util/List;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "colors"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 95
    .local v1, "i":I
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-object v4
.end method

.method public static createColors([I)Ljava/util/List;
    .locals 6
    .param p0, "colors"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 113
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    return-object v4
.end method

.method public static getColorWithAlphaComponent(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 79
    const v0, 0xffffff

    and-int/2addr v0, p0

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static getHoloBlue()I
    .locals 3

    .prologue
    .line 75
    const/16 v0, 0x33

    const/16 v1, 0xb5

    const/16 v2, 0xe5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static rgb(Ljava/lang/String;)I
    .locals 6
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v4, "#"

    const-string/jumbo v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v1, v4

    .line 63
    .local v1, "color":I
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v3, v4, 0xff

    .line 64
    .local v3, "r":I
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 65
    .local v2, "g":I
    shr-int/lit8 v4, v1, 0x0

    and-int/lit16 v0, v4, 0xff

    .line 66
    .local v0, "b":I
    invoke-static {v3, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

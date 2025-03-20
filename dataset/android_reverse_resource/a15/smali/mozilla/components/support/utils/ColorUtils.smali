.class public final Lmozilla/components/support/utils/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.kt"


# static fields
.field public static final INSTANCE:Lmozilla/components/support/utils/ColorUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lmozilla/components/support/utils/ColorUtils;

    invoke-direct {v0}, Lmozilla/components/support/utils/ColorUtils;-><init>()V

    sput-object v0, Lmozilla/components/support/utils/ColorUtils;->INSTANCE:Lmozilla/components/support/utils/ColorUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getReadableTextColor(I)I
    .locals 2
    .param p0, "backgroundColor"    # I

    .prologue
    .line 15
    sget-object v1, Lmozilla/components/support/utils/ColorUtils;->INSTANCE:Lmozilla/components/support/utils/ColorUtils;

    invoke-direct {v1, p0}, Lmozilla/components/support/utils/ColorUtils;->grayscaleFromRGB(I)I

    move-result v0

    .line 17
    .local v0, "greyValue":I
    const/16 v1, 0xba

    if-ge v0, v1, :cond_0

    .line 18
    const/4 v1, -0x1

    .line 17
    :goto_0
    return v1

    .line 20
    :cond_0
    const/high16 v1, -0x1000000

    goto :goto_0
.end method

.method private final grayscaleFromRGB(I)I
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 26
    .local v2, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 27
    .local v1, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 30
    .local v0, "blue":I
    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    int-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    int-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    return v3
.end method

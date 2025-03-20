.class Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;
.super Ljava/lang/Object;
.source "LocaleListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/widget/LocaleListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterValidator"
.end annotation


# instance fields
.field private final missingCharacter:[B

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "missing"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->paint:Landroid/graphics/Paint;

    .line 85
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->drawBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->missingCharacter:[B

    .line 86
    return-void
.end method

.method private drawBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    const/16 v2, 0x20

    const/16 v3, 0x30

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/high16 v3, 0x41c00000    # 24.0f

    iget-object v4, p0, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    return-object v0
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    .line 98
    .local v1, "byteCount":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    :goto_0
    return-object v3

    .line 101
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Buffer not large enough for pixels"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_0

    .line 109
    :cond_0
    throw v2
.end method


# virtual methods
.method public characterIsMissingInFont(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->drawBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 117
    .local v0, "rendered":[B
    iget-object v1, p0, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->missingCharacter:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

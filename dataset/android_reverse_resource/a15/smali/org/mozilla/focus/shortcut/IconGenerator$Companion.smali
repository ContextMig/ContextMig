.class public final Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
.super Ljava/lang/Object;
.source "IconGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/shortcut/IconGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconGenerator.kt\norg/mozilla/focus/shortcut/IconGenerator$Companion\n*L\n1#1,131:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;-><init>()V

    return-void
.end method

.method private final drawCharacterOnBitmap(Landroid/content/Context;CLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "character"    # C
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 78
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .local v1, "paint":Landroid/graphics/Paint;
    check-cast p0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    invoke-direct {p0}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->getTEXT_SIZE_DP()F

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "context.resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 85
    .local v2, "textSize":F
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 90
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    return-object p3
.end method

.method private final generateAdaptiveLauncherIcon(Landroid/content/Context;C)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "character"    # C

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 64
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f07004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    .local v0, "adaptiveIconDimen":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 71
    .local v2, "canvas":Landroid/graphics/Canvas;
    const v4, 0x7f06001a

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 74
    check-cast p0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    const-string v4, "bitmap"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->drawCharacterOnBitmap(Landroid/content/Context;CLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private final generateCharacterIcon(Landroid/content/Context;C)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "character"    # C

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 42
    check-cast p0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->generateAdaptiveLauncherIcon(Landroid/content/Context;C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 44
    .restart local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    :cond_0
    check-cast p0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->generateLauncherIconPreOreo(Landroid/content/Context;C)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private final getDEFAULT_ICON_CHAR()C
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/mozilla/focus/shortcut/IconGenerator;->access$getDEFAULT_ICON_CHAR$cp()C

    move-result v0

    return v0
.end method

.method private final getRepresentativeSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    if-eqz p1, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    move-object v2, v3

    .line 127
    :goto_1
    return-object v2

    :cond_1
    move v2, v4

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "uri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v5

    :goto_2
    if-nez v2, :cond_5

    .line 119
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "snippet":Ljava/lang/String;
    :goto_3
    invoke-static {v0}, Lorg/mozilla/focus/utils/UrlUtils;->stripCommonSubdomains(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v0    # "snippet":Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 118
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v2, v5

    :goto_4
    if-nez v2, :cond_8

    .line 121
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move v2, v4

    .line 120
    goto :goto_4

    :cond_8
    move-object v2, v3

    .line 123
    goto :goto_1
.end method

.method private final getTEXT_SIZE_DP()F
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lorg/mozilla/focus/shortcut/IconGenerator;->access$getTEXT_SIZE_DP$cp()F

    move-result v0

    return v0
.end method


# virtual methods
.method public final generateLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 32
    check-cast v1, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    invoke-virtual {v1, p2}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->getRepresentativeCharacter(Ljava/lang/String;)C

    move-result v0

    .line 33
    .local v0, "startingChar":C
    check-cast p0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    invoke-direct {p0, p1, v0}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->generateCharacterIcon(Landroid/content/Context;C)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public final generateLauncherIconPreOreo(Landroid/content/Context;C)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "character"    # C

    .prologue
    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008b

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    .local v1, "shape":Landroid/graphics/Bitmap;
    check-cast p0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    const-string v2, "shape"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->drawCharacterOnBitmap(Landroid/content/Context;CLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public final getRepresentativeCharacter(Ljava/lang/String;)C
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 105
    move-object v2, p0

    check-cast v2, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    invoke-direct {v2, p1}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->getRepresentativeSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .local v1, "it":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .end local v1    # "it":C
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 106
    .local v0, "firstChar":Ljava/lang/Character;
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    :goto_2
    return v2

    .line 105
    .end local v0    # "firstChar":Ljava/lang/Character;
    .restart local v1    # "it":C
    .restart local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "it":C
    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 106
    .restart local v0    # "firstChar":Ljava/lang/Character;
    :cond_3
    check-cast p0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    invoke-direct {p0}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->getDEFAULT_ICON_CHAR()C

    move-result v2

    goto :goto_2
.end method

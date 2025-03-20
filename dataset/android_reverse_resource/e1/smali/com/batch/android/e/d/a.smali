.class public Lcom/batch/android/e/d/a;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/d/d/d;


# static fields
.field private static final a:I = 0x20

.field private static final b:I = 0xa

.field private static final c:I = 0x2


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/batch/android/e/d/a;->d:I

    .line 35
    iput v1, p0, Lcom/batch/android/e/d/a;->e:I

    .line 37
    iput v1, p0, Lcom/batch/android/e/d/a;->f:I

    .line 39
    iput v1, p0, Lcom/batch/android/e/d/a;->g:I

    .line 41
    iput v1, p0, Lcom/batch/android/e/d/a;->h:I

    .line 52
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/batch/android/e/d/a;->d:I

    .line 35
    iput v1, p0, Lcom/batch/android/e/d/a;->e:I

    .line 37
    iput v1, p0, Lcom/batch/android/e/d/a;->f:I

    .line 39
    iput v1, p0, Lcom/batch/android/e/d/a;->g:I

    .line 41
    iput v1, p0, Lcom/batch/android/e/d/a;->h:I

    .line 58
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->a()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/batch/android/e/d/a;->d:I

    .line 35
    iput v1, p0, Lcom/batch/android/e/d/a;->e:I

    .line 37
    iput v1, p0, Lcom/batch/android/e/d/a;->f:I

    .line 39
    iput v1, p0, Lcom/batch/android/e/d/a;->g:I

    .line 41
    iput v1, p0, Lcom/batch/android/e/d/a;->h:I

    .line 64
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->a()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/batch/android/e/d/a;->d:I

    .line 35
    iput v1, p0, Lcom/batch/android/e/d/a;->e:I

    .line 37
    iput v1, p0, Lcom/batch/android/e/d/a;->f:I

    .line 39
    iput v1, p0, Lcom/batch/android/e/d/a;->g:I

    .line 41
    iput v1, p0, Lcom/batch/android/e/d/a;->h:I

    .line 71
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->a()V

    .line 72
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->b()V

    .line 78
    const-string v0, "Close"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101030e

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v1, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 220
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    const-string v4, "background-color"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/batch/android/e/d/a;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 230
    const-string v4, "CloseButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unparsable background color ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    :cond_1
    const-string v4, "color"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/batch/android/e/d/a;->setGlyphColor(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 239
    :catch_1
    move-exception v1

    .line 241
    const-string v4, "CloseButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unparsable glyph color ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 244
    :cond_2
    const-string v4, "glyph-padding"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/a;->setGlyphPadding(I)V

    goto/16 :goto_0

    .line 252
    :cond_3
    const-string v4, "glyph-width"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/a;->setGlyphWidth(I)V

    goto/16 :goto_0

    .line 261
    :cond_4
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/a;->i:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/batch/android/e/d/a;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/batch/android/e/d/a;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/batch/android/e/d/a;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/batch/android/e/d/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/a;->j:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/batch/android/e/d/a;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/batch/android/e/d/a;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/batch/android/e/d/a;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->c()V

    .line 104
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->invalidate()V

    .line 105
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 111
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v1

    div-float v2, v0, v2

    .line 112
    iget v0, p0, Lcom/batch/android/e/d/a;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/batch/android/e/d/a;->f:I

    :goto_0
    iput v0, p0, Lcom/batch/android/e/d/a;->h:I

    .line 114
    iget-object v3, p0, Lcom/batch/android/e/d/a;->j:Landroid/graphics/Paint;

    iget v0, p0, Lcom/batch/android/e/d/a;->g:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/batch/android/e/d/a;->g:I

    int-to-float v0, v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    return-void

    .line 112
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 114
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 185
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 298
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 299
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 303
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 270
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->invalidate()V

    .line 276
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 288
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 292
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 174
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/batch/android/e/d/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 175
    iget v0, p0, Lcom/batch/android/e/d/a;->h:I

    int-to-float v1, v0

    iget v0, p0, Lcom/batch/android/e/d/a;->h:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/batch/android/e/d/a;->h:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/batch/android/e/d/a;->h:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/batch/android/e/d/a;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/batch/android/e/d/a;->h:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/batch/android/e/d/a;->h:I

    int-to-float v2, v0

    iget v0, p0, Lcom/batch/android/e/d/a;->h:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/batch/android/e/d/a;->h:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/batch/android/e/d/a;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x42000000    # 32.0f

    .line 194
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 198
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 202
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 204
    mul-float/2addr v1, v4

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/batch/android/e/d/a;->setMeasuredDimension(II)V

    .line 213
    return-void

    .line 206
    :cond_1
    if-nez v2, :cond_0

    .line 208
    mul-float v0, v4, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 162
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->c()V

    .line 164
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/batch/android/e/d/a;->d:I

    .line 121
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->b()V

    .line 122
    return-void
.end method

.method public setForegoundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->invalidate()V

    .line 134
    return-void
.end method

.method public setGlyphColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/batch/android/e/d/a;->e:I

    .line 127
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->b()V

    .line 128
    return-void
.end method

.method public setGlyphPadding(I)V
    .locals 0
    .param p1, "glyphPadding"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/batch/android/e/d/a;->f:I

    .line 143
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->c()V

    .line 144
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->invalidate()V

    .line 145
    return-void
.end method

.method public setGlyphWidth(I)V
    .locals 0
    .param p1, "glyphWidth"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/batch/android/e/d/a;->g:I

    .line 154
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->c()V

    .line 155
    invoke-virtual {p0}, Lcom/batch/android/e/d/a;->invalidate()V

    .line 156
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/batch/android/e/d/a;->k:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

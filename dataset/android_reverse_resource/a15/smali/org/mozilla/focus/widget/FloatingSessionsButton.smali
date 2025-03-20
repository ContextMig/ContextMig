.class public Lorg/mozilla/focus/widget/FloatingSessionsButton;
.super Landroid/support/design/widget/FloatingActionButton;
.source "FloatingSessionsButton.java"


# instance fields
.field private tabCount:I

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    .local v1, "textSize":I
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->textPaint:Landroid/text/TextPaint;

    .line 54
    iget-object v2, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->textPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    iget-object v2, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 83
    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v6

    .line 86
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget-object v5, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float v2, v3, v4

    .line 88
    .local v2, "y":F
    iget v3, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->tabCount:I

    const/16 v4, 0x2a

    if-ge v3, v4, :cond_0

    iget v3, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->tabCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    return-void

    .line 88
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    const-string v0, ":("

    goto :goto_0
.end method

.method public updateSessionsCount(I)V
    .locals 8
    .param p1, "tabCount"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    iput p1, p0, Lorg/mozilla/focus/widget/FloatingSessionsButton;->tabCount:I

    .line 62
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0049

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {p0, v4}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 65
    .local v1, "params":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;

    .line 67
    .local v0, "behavior":Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;
    const/4 v4, 0x2

    if-lt p1, v4, :cond_1

    .line 69
    .local v2, "shouldBeVisible":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v2}, Lorg/mozilla/focus/widget/FloatingActionButtonBehavior;->setEnabled(Z)V

    .line 73
    :cond_0
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p0, v3}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->invalidate()V

    .line 79
    :goto_1
    return-void

    .end local v2    # "shouldBeVisible":Z
    :cond_1
    move v2, v3

    .line 67
    goto :goto_0

    .line 77
    .restart local v2    # "shouldBeVisible":Z
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->setVisibility(I)V

    goto :goto_1
.end method

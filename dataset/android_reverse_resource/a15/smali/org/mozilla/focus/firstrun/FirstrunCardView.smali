.class public Lorg/mozilla/focus/firstrun/FirstrunCardView;
.super Landroid/support/v7/widget/CardView;
.source "FirstrunCardView.java"


# instance fields
.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lorg/mozilla/focus/firstrun/FirstrunCardView;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lorg/mozilla/focus/firstrun/FirstrunCardView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lorg/mozilla/focus/firstrun/FirstrunCardView;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/mozilla/focus/firstrun/FirstrunCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/mozilla/focus/firstrun/FirstrunCardView;->maxWidth:I

    .line 37
    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/mozilla/focus/firstrun/FirstrunCardView;->maxHeight:I

    .line 38
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 45
    .local v1, "availableWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 49
    .local v0, "availableHeight":I
    iget v4, p0, Lorg/mozilla/focus/firstrun/FirstrunCardView;->maxWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 50
    .local v3, "measuredWidth":I
    iget v4, p0, Lorg/mozilla/focus/firstrun/FirstrunCardView;->maxHeight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 53
    .local v2, "measuredHeight":I
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 54
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/CardView;->onMeasure(II)V

    .line 57
    return-void
.end method

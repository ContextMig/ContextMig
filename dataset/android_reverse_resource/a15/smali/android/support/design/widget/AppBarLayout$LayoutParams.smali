.class public Landroid/support/design/widget/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field mScrollFlags:I

.field mScrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 677
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 695
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 681
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 677
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 682
    sget-object v2, Landroid/support/design/R$styleable;->AppBarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 683
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_Layout_layout_scrollFlags:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 684
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 687
    .local v1, "resId":I
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 690
    .end local v1    # "resId":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 691
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 702
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 703
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 706
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 677
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 707
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 677
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 713
    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method isCollapsible()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 778
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 735
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 736
    return-void
.end method

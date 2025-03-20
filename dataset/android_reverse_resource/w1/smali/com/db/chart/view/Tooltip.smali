.class public Lcom/db/chart/view/Tooltip;
.super Landroid/widget/RelativeLayout;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/db/chart/view/Tooltip$Alignment;
    }
.end annotation


# instance fields
.field private mBottomMargin:I

.field private mEnterAnimator:Landroid/animation/ObjectAnimator;

.field private mExitAnimator:Landroid/animation/ObjectAnimator;

.field private mHeight:I

.field private mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

.field private mLeftMargin:I

.field private mOn:Z

.field private mRightMargin:I

.field private mTooltipEventListener:Lcom/db/chart/listener/OnTooltipEventListener;

.field private mTooltipValue:Landroid/widget/TextView;

.field private mTopMargin:I

.field private mValueFormat:Ljava/text/DecimalFormat;

.field private mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v0, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    iput-object v0, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 54
    sget-object v0, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    iput-object v0, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 85
    invoke-direct {p0}, Lcom/db/chart/view/Tooltip;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I

    .prologue
    const/4 v3, -0x1

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    iput-object v1, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 54
    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    iput-object v1, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 90
    invoke-direct {p0}, Lcom/db/chart/view/Tooltip;->init()V

    .line 92
    invoke-virtual {p0}, Lcom/db/chart/view/Tooltip;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/db/chart/view/Tooltip;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "layoutParent":Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/db/chart/view/Tooltip;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "valueId"    # I

    .prologue
    const/4 v3, -0x1

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    iput-object v1, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 54
    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    iput-object v1, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 99
    invoke-direct {p0}, Lcom/db/chart/view/Tooltip;->init()V

    .line 101
    invoke-virtual {p0}, Lcom/db/chart/view/Tooltip;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/db/chart/view/Tooltip;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "layoutParent":Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/db/chart/view/Tooltip;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p0, p3}, Lcom/db/chart/view/Tooltip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/db/chart/view/Tooltip;->mTooltipValue:Landroid/widget/TextView;

    .line 105
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 110
    iput v1, p0, Lcom/db/chart/view/Tooltip;->mWidth:I

    .line 111
    iput v1, p0, Lcom/db/chart/view/Tooltip;->mHeight:I

    .line 112
    iput v0, p0, Lcom/db/chart/view/Tooltip;->mLeftMargin:I

    .line 113
    iput v0, p0, Lcom/db/chart/view/Tooltip;->mTopMargin:I

    .line 114
    iput v0, p0, Lcom/db/chart/view/Tooltip;->mRightMargin:I

    .line 115
    iput v0, p0, Lcom/db/chart/view/Tooltip;->mBottomMargin:I

    .line 116
    iput-boolean v0, p0, Lcom/db/chart/view/Tooltip;->mOn:Z

    .line 117
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/Tooltip;->mValueFormat:Ljava/text/DecimalFormat;

    .line 118
    return-void
.end method


# virtual methods
.method animateEnter()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/db/chart/view/Tooltip;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 204
    return-void
.end method

.method animateExit(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "endAction"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/db/chart/view/Tooltip;->mExitAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/db/chart/view/Tooltip$1;

    invoke-direct {v1, p0, p1}, Lcom/db/chart/view/Tooltip$1;-><init>(Lcom/db/chart/view/Tooltip;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iget-object v0, p0, Lcom/db/chart/view/Tooltip;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    return-void
.end method

.method correctPosition(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/db/chart/view/Tooltip;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ge v1, p1, :cond_0

    .line 185
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 186
    :cond_0
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-ge v1, p2, :cond_1

    .line 187
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 188
    :cond_1
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    if-le v1, p3, :cond_2

    .line 189
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v1, p3, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 190
    :cond_2
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    if-le v1, p4, :cond_3

    .line 191
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v1, p4, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    :cond_3
    invoke-virtual {p0, v0}, Lcom/db/chart/view/Tooltip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void
.end method

.method hasEnterAnimation()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/db/chart/view/Tooltip;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasExitAnimation()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/db/chart/view/Tooltip;->mExitAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method on()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/db/chart/view/Tooltip;->mOn:Z

    return v0
.end method

.method public prepare(Landroid/graphics/Rect;F)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "value"    # F

    .prologue
    const/4 v4, -0x1

    .line 133
    iget v3, p0, Lcom/db/chart/view/Tooltip;->mWidth:I

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 134
    .local v2, "width":I
    :goto_0
    iget v3, p0, Lcom/db/chart/view/Tooltip;->mHeight:I

    if-ne v3, v4, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 136
    .local v0, "height":I
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->RIGHT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_0

    .line 141
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mRightMargin:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->LEFT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_1

    .line 143
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mLeftMargin:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_2

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->RIGHT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_3

    .line 147
    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mRightMargin:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->LEFT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_4

    .line 149
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mLeftMargin:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->BOTTOM_TOP:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_9

    .line 153
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mBottomMargin:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 163
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/db/chart/view/Tooltip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mTooltipValue:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 166
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mTooltipValue:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/db/chart/view/Tooltip;->mValueFormat:Ljava/text/DecimalFormat;

    float-to-double v6, p2

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_6
    return-void

    .line 133
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "width":I
    :cond_7
    iget v2, p0, Lcom/db/chart/view/Tooltip;->mWidth:I

    goto :goto_0

    .line 134
    .restart local v2    # "width":I
    :cond_8
    iget v0, p0, Lcom/db/chart/view/Tooltip;->mHeight:I

    goto :goto_1

    .line 154
    .restart local v0    # "height":I
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->TOP_TOP:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_a

    .line 155
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mTopMargin:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 156
    :cond_a
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_b

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 158
    :cond_b
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->BOTTOM_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_c

    .line 159
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mBottomMargin:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 160
    :cond_c
    iget-object v3, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v4, Lcom/db/chart/view/Tooltip$Alignment;->TOP_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

    if-ne v3, v4, :cond_5

    .line 161
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/db/chart/view/Tooltip;->mTopMargin:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2
.end method

.method public setDimensions(II)Lcom/db/chart/view/Tooltip;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/db/chart/view/Tooltip;->mWidth:I

    .line 301
    iput p2, p0, Lcom/db/chart/view/Tooltip;->mHeight:I

    .line 302
    return-object p0
.end method

.method public varargs setEnterAnimation([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 356
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_8

    aget-object v0, p1, v1

    .line 358
    .local v0, "value":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setAlpha(F)V

    .line 360
    :cond_0
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rotation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setRotation(F)V

    .line 362
    :cond_1
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rotationX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setRotationX(F)V

    .line 364
    :cond_2
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rotationY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setRotationY(F)V

    .line 366
    :cond_3
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "translationX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 367
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setTranslationX(F)V

    .line 368
    :cond_4
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "translationY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 369
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setTranslationY(F)V

    .line 370
    :cond_5
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scaleX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 371
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setScaleX(F)V

    .line 372
    :cond_6
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scaleY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 373
    invoke-virtual {p0, v5}, Lcom/db/chart/view/Tooltip;->setScaleY(F)V

    .line 356
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    :cond_8
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/db/chart/view/Tooltip;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    return-object v1
.end method

.method public varargs setExitAnimation([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 386
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/db/chart/view/Tooltip;->mExitAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public setHorizontalAlignment(Lcom/db/chart/view/Tooltip$Alignment;)Lcom/db/chart/view/Tooltip;
    .locals 0
    .param p1, "alignment"    # Lcom/db/chart/view/Tooltip$Alignment;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/db/chart/view/Tooltip;->mHorizontalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 273
    return-object p0
.end method

.method public setMargins(IIII)Lcom/db/chart/view/Tooltip;
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/db/chart/view/Tooltip;->mLeftMargin:I

    .line 318
    iput p2, p0, Lcom/db/chart/view/Tooltip;->mTopMargin:I

    .line 319
    iput p3, p0, Lcom/db/chart/view/Tooltip;->mRightMargin:I

    .line 320
    iput p4, p0, Lcom/db/chart/view/Tooltip;->mBottomMargin:I

    .line 321
    return-object p0
.end method

.method setOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/db/chart/view/Tooltip;->mOn:Z

    .line 332
    return-void
.end method

.method public setValueFormat(Ljava/text/DecimalFormat;)Lcom/db/chart/view/Tooltip;
    .locals 0
    .param p1, "format"    # Ljava/text/DecimalFormat;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/db/chart/view/Tooltip;->mValueFormat:Ljava/text/DecimalFormat;

    .line 344
    return-object p0
.end method

.method public setVerticalAlignment(Lcom/db/chart/view/Tooltip$Alignment;)Lcom/db/chart/view/Tooltip;
    .locals 0
    .param p1, "alignment"    # Lcom/db/chart/view/Tooltip$Alignment;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/db/chart/view/Tooltip;->mVerticalAlignment:Lcom/db/chart/view/Tooltip$Alignment;

    .line 287
    return-object p0
.end method

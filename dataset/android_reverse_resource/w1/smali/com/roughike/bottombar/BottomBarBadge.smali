.class public Lcom/roughike/bottombar/BottomBarBadge;
.super Landroid/widget/TextView;
.source "BottomBarBadge.java"


# instance fields
.field private animationDuration:J

.field private autoHideOnSelection:Z

.field private autoShowAfterUnSelection:Z

.field private count:I

.field private isVisible:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILandroid/view/View;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "tabToAddTo"    # Landroid/view/View;
    .param p4, "backgroundColor"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x2

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v5, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    .line 51
    const-wide/16 v6, 0x96

    iput-wide v6, p0, Lcom/roughike/bottombar/BottomBarBadge;->animationDuration:J

    .line 52
    iput-boolean v5, p0, Lcom/roughike/bottombar/BottomBarBadge;->autoShowAfterUnSelection:Z

    .line 53
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/roughike/bottombar/BottomBarBadge;->autoHideOnSelection:Z

    .line 162
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 165
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/roughike/bottombar/BottomBarBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/roughike/bottombar/BottomBarBadge;->setGravity(I)V

    .line 167
    sget v5, Lcom/roughike/bottombar/R$style;->BB_BottomBarBadge_Text:I

    invoke-static {p0, v5}, Lcom/roughike/bottombar/MiscUtils;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 170
    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p1, v5}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v4

    .line 171
    .local v4, "three":I
    mul-int/lit8 v5, v4, 0x3

    invoke-static {v5, p4}, Lcom/roughike/bottombar/BadgeCircle;->make(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 172
    .local v0, "backgroundCircle":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/roughike/bottombar/BottomBarBadge;->setPadding(IIII)V

    .line 173
    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 175
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 176
    .local v1, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 179
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 182
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v3, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 188
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/roughike/bottombar/BottomBarBadge$1;

    invoke-direct {v6, p0, v1, p3}, Lcom/roughike/bottombar/BottomBarBadge$1;-><init>(Lcom/roughike/bottombar/BottomBarBadge;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/roughike/bottombar/BottomBarBadge;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/roughike/bottombar/BottomBarBadge;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->adjustPositionAndSize(Landroid/view/View;)V

    return-void
.end method

.method private adjustPositionAndSize(Landroid/view/View;)V
    .locals 4
    .param p1, "tabToAddTo"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->adjustPosition(Landroid/view/View;)V

    .line 205
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/roughike/bottombar/BottomBarBadge;->setTranslationY(F)V

    .line 207
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 209
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 211
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_1

    .line 212
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :cond_1
    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected adjustPosition(Landroid/view/View;)V
    .locals 6
    .param p1, "tabToAddTo"    # Landroid/view/View;

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ffc000000000000L    # 1.75

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setX(F)V

    .line 201
    return-void
.end method

.method public getAutoHideOnSelection()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->autoHideOnSelection:Z

    return v0
.end method

.method public getAutoShowAfterUnSelection()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->autoShowAfterUnSelection:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->count:I

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    .line 142
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-wide v2, p0, Lcom/roughike/bottombar/BottomBarBadge;->animationDuration:J

    .line 143
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 147
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/roughike/bottombar/BottomBarBadge;->animationDuration:J

    .line 123
    return-void
.end method

.method public setAutoHideOnSelection(Z)V
    .locals 0
    .param p1, "autoHideOnSelection"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBarBadge;->autoHideOnSelection:Z

    .line 83
    return-void
.end method

.method public setAutoShowAfterUnSelection(Z)V
    .locals 0
    .param p1, "autoShowAfterUnSelection"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBarBadge;->autoShowAfterUnSelection:Z

    .line 104
    return-void
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/roughike/bottombar/BottomBarBadge;->count:I

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    .line 130
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-wide v2, p0, Lcom/roughike/bottombar/BottomBarBadge;->animationDuration:J

    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 135
    return-void
.end method

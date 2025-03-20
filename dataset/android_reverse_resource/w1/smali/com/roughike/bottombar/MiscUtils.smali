.class Lcom/roughike/bottombar/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static animateBGColorChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p0, "clickedView"    # Landroid/view/View;
    .param p1, "backgroundView"    # Landroid/view/View;
    .param p2, "bgOverlay"    # Landroid/view/View;
    .param p3, "newColor"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 155
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getX(Landroid/view/View;)F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 156
    .local v1, "centerX":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 157
    .local v2, "centerY":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 159
    .local v3, "finalRadius":I
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 164
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    :goto_0
    return-void

    .line 169
    :cond_0
    int-to-float v4, v3

    .line 170
    invoke-static {p2, v1, v2, v6, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 176
    :goto_1
    instance-of v4, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v4, :cond_3

    .line 177
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v4, Lcom/roughike/bottombar/MiscUtils$3;

    invoke-direct {v4, p1, p3, p2}, Lcom/roughike/bottombar/MiscUtils$3;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 216
    :cond_1
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 217
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {p2, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 173
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_1

    .line 194
    .end local v0    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_3
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 195
    check-cast v4, Landroid/animation/Animator;

    new-instance v5, Lcom/roughike/bottombar/MiscUtils$4;

    invoke-direct {v5, p1, p3, p2}, Lcom/roughike/bottombar/MiscUtils$4;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2
.end method

.method protected static dpToPixel(Landroid/content/Context;F)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 58
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 61
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    :try_start_0
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, p1

    float-to-int v3, v3

    .line 63
    :goto_0
    return v3

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ignored":Ljava/lang/NoSuchFieldError;
    const/4 v3, 0x1

    invoke-static {v3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected static getColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 44
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 45
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 46
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method protected static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 75
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected static inflateMenuFromResource(Landroid/app/Activity;I)[Lcom/roughike/bottombar/BottomBarTab;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuRes"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 88
    new-instance v4, Landroid/support/v7/widget/PopupMenu;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 89
    .local v4, "popupMenu":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v4}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 90
    .local v2, "menu":Landroid/view/Menu;
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    invoke-virtual {v7, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v3

    .line 93
    .local v3, "menuSize":I
    new-array v6, v3, [Lcom/roughike/bottombar/BottomBarTab;

    .line 95
    .local v6, "tabs":[Lcom/roughike/bottombar/BottomBarTab;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 96
    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 97
    .local v1, "item":Landroid/view/MenuItem;
    new-instance v5, Lcom/roughike/bottombar/BottomBarTab;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 98
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/roughike/bottombar/BottomBarTab;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 99
    .local v5, "tab":Lcom/roughike/bottombar/BottomBarTab;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    iput v7, v5, Lcom/roughike/bottombar/BottomBarTab;->id:I

    .line 100
    aput-object v5, v6, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v5    # "tab":Lcom/roughike/bottombar/BottomBarTab;
    :cond_0
    return-object v6
.end method

.method protected static isNightMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v1, 0x30

    .line 244
    .local v0, "currentNightMode":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static resizePaddingTop(Landroid/view/View;IIJ)V
    .locals 3
    .param p0, "icon"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "duration"    # J

    .prologue
    .line 129
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 130
    .local v0, "paddingAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/roughike/bottombar/MiscUtils$2;

    invoke-direct {v1, p0}, Lcom/roughike/bottombar/MiscUtils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    return-void
.end method

.method protected static resizeTab(Landroid/view/View;FF)V
    .locals 4
    .param p0, "tab"    # Landroid/view/View;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 113
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 114
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    new-instance v1, Lcom/roughike/bottombar/MiscUtils$1;

    invoke-direct {v1, p0}, Lcom/roughike/bottombar/MiscUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 126
    return-void
.end method

.method protected static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "resId"    # I

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

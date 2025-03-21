.class Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableCompatState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedBitmap:Landroid/graphics/Bitmap;

.field mCachedRootAlpha:I

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mTempPaint:Landroid/graphics/Paint;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 923
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1029
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1030
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .locals 3
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .prologue
    .line 940
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 923
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 941
    if-eqz p1, :cond_2

    .line 942
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 943
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 944
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$000(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$000(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$002(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 947
    :cond_0
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$100(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$100(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$102(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 950
    :cond_1
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 951
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 952
    iget-boolean v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    .line 954
    :cond_2
    return-void
.end method


# virtual methods
.method public canReuseBitmap(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 1001
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1002
    const/4 v0, 0x1

    .line 1004
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReuseCache()Z
    .locals 2

    .prologue
    .line 1008
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedRootAlpha:I

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 1012
    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1013
    const/4 v0, 0x1

    .line 1015
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createCachedBitmapIfNeeded(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 991
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->canReuseBitmap(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 994
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 997
    :cond_1
    return-void
.end method

.method public drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;
    .param p3, "originalBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 959
    invoke-virtual {p0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object v0

    .line 960
    .local v0, "p":Landroid/graphics/Paint;
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 961
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    return v0
.end method

.method public getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 971
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->hasTranslucentRoot()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 972
    const/4 v0, 0x0

    .line 981
    :goto_0
    return-object v0

    .line 975
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 976
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Landroid/graphics/Paint;

    .line 977
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 979
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 980
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 981
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTempPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public hasTranslucentRoot()Z
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1034
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1039
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    return-object v0
.end method

.method public updateCacheStates()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTint:Landroid/content/res/ColorStateList;

    .line 1022
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1023
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedRootAlpha:I

    .line 1024
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedAutoMirrored:Z

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 1026
    return-void
.end method

.method public updateCachedBitmap(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 985
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 986
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 987
    .local v0, "tmpCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 988
    return-void
.end method

.class public final Lcom/admob/android/ads/ap;
.super Landroid/view/animation/Animation;
.source "ZPositionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/ap$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(FFLandroid/view/View;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 24
    iput p1, p0, Lcom/admob/android/ads/ap;->b:F

    .line 25
    iput p2, p0, Lcom/admob/android/ads/ap;->c:F

    .line 26
    iput-object p3, p0, Lcom/admob/android/ads/ap;->a:Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    .line 35
    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 36
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget v0, p0, Lcom/admob/android/ads/ap;->b:F

    iget v1, p0, Lcom/admob/android/ads/ap;->c:F

    iget v2, p0, Lcom/admob/android/ads/ap;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 43
    iget-object v1, p0, Lcom/admob/android/ads/ap;->a:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/admob/android/ads/ah;->c(Landroid/view/View;)Lcom/admob/android/ads/ah;

    move-result-object v2

    iput v0, v2, Lcom/admob/android/ads/ah;->a:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ap;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 47
    instance-of v1, v0, Lcom/admob/android/ads/ap$a;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Lcom/admob/android/ads/ap$a;

    .line 50
    invoke-interface {v0}, Lcom/admob/android/ads/ap$a;->g()V

    goto :goto_0
.end method

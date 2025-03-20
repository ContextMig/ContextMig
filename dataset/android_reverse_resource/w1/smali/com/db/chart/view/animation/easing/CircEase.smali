.class public Lcom/db/chart/view/animation/easing/CircEase;
.super Lcom/db/chart/view/animation/easing/BaseEasingMethod;
.source "CircEase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method protected easeIn(F)F
    .locals 3
    .param p1, "time"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    mul-float v0, p1, p1

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v2

    neg-float v0, v0

    return v0
.end method

.method protected easeInOut(F)F
    .locals 6
    .param p1, "time"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    div-float v0, p1, v5

    .line 34
    .local v0, "p":F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 35
    const/high16 v1, -0x41000000    # -0.5f

    mul-float v2, v0, v0

    sub-float v2, v4, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    .line 36
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    mul-float v1, v0, v0

    sub-float v1, v4, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    goto :goto_0
.end method

.method protected easeOut(F)F
    .locals 3
    .param p1, "time"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    sub-float/2addr p1, v2

    mul-float v0, p1, p1

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    return v0
.end method

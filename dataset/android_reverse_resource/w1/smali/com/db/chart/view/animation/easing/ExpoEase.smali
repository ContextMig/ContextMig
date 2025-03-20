.class public Lcom/db/chart/view/animation/easing/ExpoEase;
.super Lcom/db/chart/view/animation/easing/BaseEasingMethod;
.source "ExpoEase.java"


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
    .locals 4
    .param p1, "time"    # F

    .prologue
    const/4 v0, 0x0

    .line 48
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method protected easeInOut(F)F
    .locals 8
    .param p1, "time"    # F

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    cmpl-float v3, p1, v1

    if-nez v3, :cond_0

    .line 43
    :goto_0
    return v1

    .line 36
    :cond_0
    cmpl-float v1, p1, v2

    if-nez v1, :cond_1

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    div-float v0, p1, v4

    .line 40
    .local v0, "p":F
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 41
    const/high16 v1, 0x41200000    # 10.0f

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v4

    goto :goto_0

    .line 43
    :cond_2
    const/high16 v1, -0x3ee00000    # -10.0f

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    goto :goto_0
.end method

.method protected easeOut(F)F
    .locals 6
    .param p1, "time"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.class public Lcom/db/chart/view/animation/easing/CubicEase;
.super Lcom/db/chart/view/animation/easing/BaseEasingMethod;
.source "CubicEase.java"


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
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 43
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method

.method protected easeInOut(F)F
    .locals 4
    .param p1, "time"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 33
    div-float v0, p1, v2

    .line 34
    .local v0, "p":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 35
    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    .line 38
    :goto_0
    return v1

    .line 37
    :cond_0
    sub-float/2addr v0, v3

    .line 38
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    goto :goto_0
.end method

.method protected easeOut(F)F
    .locals 5
    .param p1, "time"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 27
    sub-float v0, p1, v4

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v4

    return v0
.end method

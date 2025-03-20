.class public Lcom/db/chart/view/animation/easing/BounceEase;
.super Lcom/db/chart/view/animation/easing/BaseEasingMethod;
.source "BounceEase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;-><init>()V

    return-void
.end method


# virtual methods
.method protected easeIn(F)F
    .locals 2
    .param p1, "time"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 44
    sub-float v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/db/chart/view/animation/easing/BounceEase;->easeOut(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method

.method protected easeInOut(F)F
    .locals 3
    .param p1, "time"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 37
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 38
    mul-float v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/db/chart/view/animation/easing/BounceEase;->easeIn(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 39
    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/db/chart/view/animation/easing/BounceEase;->easeOut(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method protected easeOut(F)F
    .locals 5
    .param p1, "time"    # F

    .prologue
    const/high16 v4, 0x40f20000    # 7.5625f

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 25
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 31
    :goto_0
    return v0

    .line 26
    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 27
    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto :goto_0

    .line 28
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 29
    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto :goto_0

    .line 31
    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto :goto_0
.end method

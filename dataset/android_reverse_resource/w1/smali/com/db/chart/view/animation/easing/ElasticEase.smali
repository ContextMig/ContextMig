.class public Lcom/db/chart/view/animation/easing/ElasticEase;
.super Lcom/db/chart/view/animation/easing/BaseEasingMethod;
.source "ElasticEase.java"


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
    .locals 8
    .param p1, "time"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    cmpl-float v4, p1, v2

    if-nez v4, :cond_0

    .line 65
    :goto_0
    return v2

    .line 61
    :cond_0
    cmpl-float v2, p1, v3

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 62
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    .line 63
    .local v0, "p":F
    const/high16 v2, 0x40800000    # 4.0f

    div-float v1, v0, v2

    .line 64
    .local v1, "s":F
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p1, v1

    float-to-double v4, v3

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v6

    float-to-double v6, v0

    div-double/2addr v4, v6

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    neg-float v2, v2

    goto :goto_0
.end method

.method protected easeInOut(F)F
    .locals 13
    .param p1, "time"    # F

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    cmpl-float v5, p1, v3

    if-nez v5, :cond_0

    .line 53
    :goto_0
    return v3

    .line 41
    :cond_0
    div-float v1, p1, v12

    .line 42
    .local v1, "pos":F
    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    move v3, v4

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const v0, 0x3ee66667    # 0.45000002f

    .line 46
    .local v0, "p":F
    const v3, 0x40c90fdb

    div-float v3, v0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v2, v3, v5

    .line 47
    .local v2, "s":F
    cmpg-float v3, v1, v4

    if-gez v3, :cond_2

    .line 48
    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v5, 0x41200000    # 10.0f

    sub-float/2addr v1, v4

    mul-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v1

    sub-float/2addr v4, v2

    float-to-double v6, v4

    mul-double/2addr v6, v10

    float-to-double v8, v0

    div-double/2addr v6, v8

    .line 49
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    goto :goto_0

    .line 52
    :cond_2
    const/high16 v3, -0x3ee00000    # -10.0f

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    float-to-double v6, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float v5, v1, v4

    sub-float/2addr v5, v2

    float-to-double v6, v5

    mul-double/2addr v6, v10

    float-to-double v8, v0

    div-double/2addr v6, v8

    .line 53
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v3, v5

    mul-float/2addr v3, v12

    add-float/2addr v3, v4

    goto :goto_0
.end method

.method protected easeOut(F)F
    .locals 10
    .param p1, "time"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 28
    cmpl-float v5, p1, v3

    if-nez v5, :cond_0

    .line 32
    :goto_0
    return v3

    .line 28
    :cond_0
    cmpl-float v3, p1, v4

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 29
    :cond_1
    const v1, 0x3e99999a    # 0.3f

    .line 30
    .local v1, "p":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .local v0, "a":F
    const/high16 v3, 0x40800000    # 4.0f

    div-float v2, v1, v3

    .line 32
    .local v2, "s":F
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v3, -0x3ee00000    # -10.0f

    mul-float/2addr v3, p1

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v3, v0

    mul-float v5, p1, v4

    sub-float/2addr v5, v2

    const v6, 0x40c90fdb

    mul-float/2addr v5, v6

    div-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    goto :goto_0
.end method

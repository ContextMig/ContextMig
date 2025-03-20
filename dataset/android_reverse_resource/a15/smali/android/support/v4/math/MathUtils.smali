.class public Landroid/support/v4/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 39
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 44
    .end local p1    # "min":F
    :goto_0
    return p1

    .line 41
    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 42
    goto :goto_0

    :cond_1
    move p1, p0

    .line 44
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 81
    if-ge p0, p1, :cond_0

    .line 86
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 83
    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 84
    goto :goto_0

    :cond_1
    move p1, p0

    .line 86
    goto :goto_0
.end method

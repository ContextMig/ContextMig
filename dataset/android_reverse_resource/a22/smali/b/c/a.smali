.class public final Lb/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static final a(II)I
    .locals 1

    rem-int v0, p0, p1

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static final a(III)I
    .locals 2

    if-lez p2, :cond_0

    invoke-static {p1, p0, p2}, Lb/c/a;->b(III)I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0

    :cond_0
    if-gez p2, :cond_1

    neg-int v0, p2

    invoke-static {p0, p1, v0}, Lb/c/a;->b(III)I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step is zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final b(III)I
    .locals 2

    invoke-static {p0, p2}, Lb/c/a;->a(II)I

    move-result v0

    invoke-static {p1, p2}, Lb/c/a;->a(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Lb/c/a;->a(II)I

    move-result v0

    return v0
.end method

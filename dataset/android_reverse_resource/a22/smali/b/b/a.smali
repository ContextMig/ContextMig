.class public final Lb/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    neg-int v0, v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    if-nez p0, :cond_3

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type kotlin.Comparable<kotlin.Any>"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

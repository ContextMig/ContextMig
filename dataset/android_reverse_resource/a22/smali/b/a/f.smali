.class final synthetic Lb/a/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/Iterable;I)I
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    :cond_0
    return p1
.end method

.class final synthetic Lb/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

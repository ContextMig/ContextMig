.class public final Lb/c;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lb/d/a/a;)Lb/b;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v2, v1, v2}, Lb/d;-><init>(Lb/d/a/a;Ljava/lang/Object;ILb/d/b/g;)V

    check-cast v0, Lb/b;

    return-object v0
.end method

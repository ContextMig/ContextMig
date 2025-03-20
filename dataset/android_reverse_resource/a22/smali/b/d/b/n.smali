.class public Lb/d/b/n;
.super Lb/d/b/k;

# interfaces
.implements Lb/f/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/d/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/f/j;
    .locals 1

    invoke-virtual {p0}, Lb/d/b/n;->g()Lb/f/a;

    move-result-object v0

    check-cast v0, Lb/f/i;

    invoke-interface {v0}, Lb/f/i;->a()Lb/f/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lb/d/b/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lb/f/a;
    .locals 1

    invoke-static {p0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/d/b/n;->g()Lb/f/a;

    move-result-object v0

    check-cast v0, Lb/f/i;

    invoke-interface {v0, p1}, Lb/f/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

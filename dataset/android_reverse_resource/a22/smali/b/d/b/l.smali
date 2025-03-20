.class public Lb/d/b/l;
.super Lb/d/b/k;

# interfaces
.implements Lb/f/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/d/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/d/b/l;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lb/f/a;
    .locals 1

    invoke-static {p0}, Lb/d/b/p;->a(Lb/d/b/l;)Lb/f/g;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/d/b/l;->g()Lb/f/a;

    move-result-object v0

    check-cast v0, Lb/f/g;

    invoke-interface {v0}, Lb/f/g;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i()Lb/f/h;
    .locals 1

    invoke-virtual {p0}, Lb/d/b/l;->g()Lb/f/a;

    move-result-object v0

    check-cast v0, Lb/f/g;

    invoke-interface {v0}, Lb/f/g;->i()Lb/f/h;

    move-result-object v0

    return-object v0
.end method

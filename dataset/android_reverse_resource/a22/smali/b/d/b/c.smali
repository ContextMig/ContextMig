.class public abstract Lb/d/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/f/a;


# instance fields
.field protected a:Lb/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/d/b/c;->g()Lb/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/f/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()Lb/f/a;
.end method

.method public c()Lb/f/c;
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public f()Lb/f/a;
    .locals 1

    iget-object v0, p0, Lb/d/b/c;->a:Lb/f/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/d/b/c;->b()Lb/f/a;

    move-result-object v0

    iput-object v0, p0, Lb/d/b/c;->a:Lb/f/a;

    :cond_0
    iget-object v0, p0, Lb/d/b/c;->a:Lb/f/a;

    return-object v0
.end method

.method protected g()Lb/f/a;
    .locals 1

    invoke-virtual {p0}, Lb/d/b/c;->f()Lb/f/a;

    iget-object v0, p0, Lb/d/b/c;->a:Lb/f/a;

    if-ne v0, p0, :cond_0

    new-instance v0, Lb/d/a;

    invoke-direct {v0}, Lb/d/a;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/d/b/c;->a:Lb/f/a;

    return-object v0
.end method

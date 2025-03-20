.class public abstract Lcom/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field c:Z

.field private d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/g;->d:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/g;->c:Z

    return-void
.end method

.method public static a(F)Lcom/b/a/g;
    .locals 1

    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0, p0}, Lcom/b/a/i;-><init>(F)V

    return-object v0
.end method

.method public static a(FF)Lcom/b/a/g;
    .locals 1

    new-instance v0, Lcom/b/a/h;

    invoke-direct {v0, p0, p1}, Lcom/b/a/h;-><init>(FF)V

    return-object v0
.end method

.method public static a(FI)Lcom/b/a/g;
    .locals 1

    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0, p0, p1}, Lcom/b/a/i;-><init>(FI)V

    return-object v0
.end method

.method public static b(F)Lcom/b/a/g;
    .locals 1

    new-instance v0, Lcom/b/a/h;

    invoke-direct {v0, p0}, Lcom/b/a/h;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/g;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/g;->c:Z

    return v0
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/b/a/g;->a:F

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/g;->e()Lcom/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/b/a/g;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract e()Lcom/b/a/g;
.end method

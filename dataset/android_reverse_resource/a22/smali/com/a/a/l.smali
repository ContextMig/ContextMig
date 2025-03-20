.class Lcom/a/a/l;
.super Lcom/a/a/k;


# instance fields
.field h:Lcom/a/a/d;

.field i:F

.field private j:Lcom/a/b/a;


# direct methods
.method public varargs constructor <init>(Lcom/a/b/c;[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/k;-><init>(Lcom/a/b/c;Lcom/a/a/k$1;)V

    invoke-virtual {p0, p2}, Lcom/a/a/l;->a([F)V

    instance-of v0, p1, Lcom/a/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/l;->b:Lcom/a/b/c;

    check-cast v0, Lcom/a/b/a;

    iput-object v0, p0, Lcom/a/a/l;->j:Lcom/a/b/a;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/k;-><init>(Ljava/lang/String;Lcom/a/a/k$1;)V

    invoke-virtual {p0, p2}, Lcom/a/a/l;->a([F)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/l;->e()Lcom/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/l;->h:Lcom/a/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/d;->b(F)F

    move-result v0

    iput v0, p0, Lcom/a/a/l;->i:F

    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/l;->b:Lcom/a/b/c;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/a/a/k;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public varargs a([F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/k;->a([F)V

    iget-object v0, p0, Lcom/a/a/l;->e:Lcom/a/a/h;

    check-cast v0, Lcom/a/a/d;

    iput-object v0, p0, Lcom/a/a/l;->h:Lcom/a/a/d;

    return-void
.end method

.method b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/l;->j:Lcom/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/l;->j:Lcom/a/b/a;

    iget v1, p0, Lcom/a/a/l;->i:F

    invoke-virtual {v0, p1, v1}, Lcom/a/b/a;->a(Ljava/lang/Object;F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/l;->b:Lcom/a/b/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/l;->b:Lcom/a/b/c;

    iget v1, p0, Lcom/a/a/l;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/a/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/l;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/l;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/a/a/l;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/a/a/l;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/a/a/l;->g:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/l;->e()Lcom/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/a/a/l;->i:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/a/l;
    .locals 2

    invoke-super {p0}, Lcom/a/a/k;->a()Lcom/a/a/k;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    iget-object v1, v0, Lcom/a/a/l;->e:Lcom/a/a/h;

    check-cast v1, Lcom/a/a/d;

    iput-object v1, v0, Lcom/a/a/l;->h:Lcom/a/a/d;

    return-object v0
.end method

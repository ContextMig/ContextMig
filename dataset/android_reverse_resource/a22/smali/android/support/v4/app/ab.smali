.class public abstract Landroid/support/v4/app/ab;
.super Landroid/support/v4/app/z;


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/content/Context;

.field final c:I

.field final d:Landroid/support/v4/app/ae;

.field private final e:Landroid/os/Handler;

.field private f:Landroid/support/v4/g/p;

.field private g:Z

.field private h:Landroid/support/v4/app/an;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/z;-><init>()V

    new-instance v0, Landroid/support/v4/app/ae;

    invoke-direct {v0}, Landroid/support/v4/app/ae;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    iput-object p1, p0, Landroid/support/v4/app/ab;->a:Landroid/app/Activity;

    iput-object p2, p0, Landroid/support/v4/app/ab;->b:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/app/ab;->e:Landroid/os/Handler;

    iput p4, p0, Landroid/support/v4/app/ab;->c:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/w;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/w;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/ab;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/g/p;

    invoke-direct {v0}, Landroid/support/v4/g/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Landroid/support/v4/app/an;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;Landroid/support/v4/app/ab;Z)V

    iget-object v1, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/ab;)V

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ab;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method a(Landroid/support/v4/g/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method a(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v4/app/ab;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/ab;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ab;->j:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->c()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ab;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/an;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/an;->h()V

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/ab;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/ab;->c:I

    return v0
.end method

.method public abstract g()Ljava/lang/Object;
.end method

.method h()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ab;->a:Landroid/app/Activity;

    return-object v0
.end method

.method i()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ab;->b:Landroid/content/Context;

    return-object v0
.end method

.method j()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ab;->e:Landroid/os/Handler;

    return-object v0
.end method

.method k()Landroid/support/v4/app/ae;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    return-object v0
.end method

.method l()Landroid/support/v4/app/an;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    :goto_0
    return-object v0

    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/ab;->i:Z

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/ab;->j:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/ab;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method m()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/ab;->g:Z

    return v0
.end method

.method n()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/ab;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/ab;->j:Z

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->b()V

    :cond_1
    :goto_1
    iput-boolean v3, p0, Landroid/support/v4/app/ab;->i:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/ab;->i:Z

    if-nez v0, :cond_1

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/ab;->j:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/ab;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    iget-boolean v0, v0, Landroid/support/v4/app/an;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->b()V

    goto :goto_1
.end method

.method o()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ab;->h:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->h()V

    goto :goto_0
.end method

.method p()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v0}, Landroid/support/v4/g/p;->size()I

    move-result v2

    new-array v3, v2, [Landroid/support/v4/app/an;

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/p;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v1, v3, v0

    invoke-virtual {v1}, Landroid/support/v4/app/an;->e()V

    invoke-virtual {v1}, Landroid/support/v4/app/an;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method q()Landroid/support/v4/g/p;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v0}, Landroid/support/v4/g/p;->size()I

    move-result v3

    new-array v4, v3, [Landroid/support/v4/app/an;

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/p;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v2, v4, v1

    iget-boolean v5, v2, Landroid/support/v4/app/an;->f:Z

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/an;->h()V

    iget-object v5, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    iget-object v2, v2, Landroid/support/v4/app/an;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/g/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/ab;->f:Landroid/support/v4/g/p;

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

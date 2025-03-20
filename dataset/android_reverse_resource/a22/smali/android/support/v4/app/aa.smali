.class public Landroid/support/v4/app/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/ab;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    return-void
.end method

.method public static final a(Landroid/support/v4/app/ab;)Landroid/support/v4/app/aa;
    .locals 1

    new-instance v0, Landroid/support/v4/app/aa;

    invoke-direct {v0, p0}, Landroid/support/v4/app/aa;-><init>(Landroid/support/v4/app/ab;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v4/app/ac;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->k()Landroid/support/v4/app/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/ae;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    iget-object v0, v0, Landroid/support/v4/app/ae;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->c()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    iget-object v0, v0, Landroid/support/v4/app/ae;->f:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ae;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ae;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    iget-object v1, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v2, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ab;Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public a(Landroid/support/v4/g/p;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ab;->a(Landroid/support/v4/g/p;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/ab;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ab;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ae;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ae;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ae;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/app/al;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->l()Landroid/support/v4/app/an;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ae;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ae;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    iget-object v0, v0, Landroid/support/v4/app/ae;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->i()V

    return-void
.end method

.method public e()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->h()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->g()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->j()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->k()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->l()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->m()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->n()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->o()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->p()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->r()V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->s()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/ae;

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->e()Z

    move-result v0

    return v0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->n()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->o()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->p()V

    return-void
.end method

.method public t()Landroid/support/v4/g/p;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->q()Landroid/support/v4/g/p;

    move-result-object v0

    return-object v0
.end method

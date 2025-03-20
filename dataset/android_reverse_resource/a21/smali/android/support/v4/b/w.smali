.class public Landroid/support/v4/b/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/b/x;


# direct methods
.method private constructor <init>(Landroid/support/v4/b/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    return-void
.end method

.method public static final a(Landroid/support/v4/b/x;)Landroid/support/v4/b/w;
    .locals 1

    new-instance v0, Landroid/support/v4/b/w;

    invoke-direct {v0, p0}, Landroid/support/v4/b/w;-><init>(Landroid/support/v4/b/x;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v4/b/y;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0}, Landroid/support/v4/b/x;->i()Landroid/support/v4/b/aa;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/b/aa;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    iget-object v0, v0, Landroid/support/v4/b/aa;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/b/w;->b()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    iget-object v0, v0, Landroid/support/v4/b/aa;->f:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/aa;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/b/aa;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/support/v4/b/o;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    iget-object v1, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v2, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/b/aa;->a(Landroid/support/v4/b/x;Landroid/support/v4/b/v;Landroid/support/v4/b/o;)V

    return-void
.end method

.method public a(Landroid/support/v4/h/q;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/x;->a(Landroid/support/v4/h/q;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/b/x;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/x;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/aa;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/aa;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/b/aa;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/aa;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    iget-object v0, v0, Landroid/support/v4/b/aa;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/aa;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/aa;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->h()V

    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->g()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->i()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->j()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->k()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->l()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->m()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->n()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->o()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->q()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->r()V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    iget-object v0, v0, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    invoke-virtual {v0}, Landroid/support/v4/b/aa;->d()Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0}, Landroid/support/v4/b/x;->j()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0}, Landroid/support/v4/b/x;->k()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0}, Landroid/support/v4/b/x;->l()V

    return-void
.end method

.method public s()Landroid/support/v4/h/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/w;->a:Landroid/support/v4/b/x;

    invoke-virtual {v0}, Landroid/support/v4/b/x;->m()Landroid/support/v4/h/q;

    move-result-object v0

    return-object v0
.end method

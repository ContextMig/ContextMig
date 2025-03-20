.class public abstract Landroid/support/v7/widget/cs;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/support/v7/widget/cu;

.field private b:Ljava/util/ArrayList;

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/cs;->a:Landroid/support/v7/widget/cu;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/cs;->b:Ljava/util/ArrayList;

    iput-wide v2, p0, Landroid/support/v7/widget/cs;->c:J

    iput-wide v2, p0, Landroid/support/v7/widget/cs;->d:J

    iput-wide v4, p0, Landroid/support/v7/widget/cs;->e:J

    iput-wide v4, p0, Landroid/support/v7/widget/cs;->f:J

    return-void
.end method

.method static d(Landroid/support/v7/widget/do;)I
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Landroid/support/v7/widget/do;->f(Landroid/support/v7/widget/do;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/do;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/do;->f()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/do;->e()I

    move-result v2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/dl;Landroid/support/v7/widget/do;)Landroid/support/v7/widget/cv;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/cs;->i()Landroid/support/v7/widget/cv;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/cv;->a(Landroid/support/v7/widget/do;)Landroid/support/v7/widget/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/dl;Landroid/support/v7/widget/do;ILjava/util/List;)Landroid/support/v7/widget/cv;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/cs;->i()Landroid/support/v7/widget/cv;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/cv;->a(Landroid/support/v7/widget/do;)Landroid/support/v7/widget/cv;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/cu;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/cs;->a:Landroid/support/v7/widget/cu;

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ct;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/cs;->b()Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/support/v7/widget/ct;->a()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract a(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/do;Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)Z
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/support/v7/widget/do;)V
.end method

.method public abstract c(Landroid/support/v7/widget/do;Landroid/support/v7/widget/cv;Landroid/support/v7/widget/cv;)Z
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/cs;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/cs;->c:J

    return-wide v0
.end method

.method public final e(Landroid/support/v7/widget/do;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cs;->f(Landroid/support/v7/widget/do;)V

    iget-object v0, p0, Landroid/support/v7/widget/cs;->a:Landroid/support/v7/widget/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cs;->a:Landroid/support/v7/widget/cu;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/cu;->a(Landroid/support/v7/widget/do;)V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/cs;->d:J

    return-wide v0
.end method

.method public f(Landroid/support/v7/widget/do;)V
    .locals 0

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/cs;->f:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/do;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ct;

    invoke-interface {v0}, Landroid/support/v7/widget/ct;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public i()Landroid/support/v7/widget/cv;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/cv;

    invoke-direct {v0}, Landroid/support/v7/widget/cv;-><init>()V

    return-object v0
.end method

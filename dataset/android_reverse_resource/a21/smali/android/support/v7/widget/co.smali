.class public abstract Landroid/support/v7/widget/co;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v7/widget/cp;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/cp;

    invoke-direct {v0}, Landroid/support/v7/widget/cp;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cp;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/co;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/do;
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cp;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/cp;->c(II)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ch;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/cq;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cp;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/cp;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/do;)V
    .locals 0

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/do;I)V
.end method

.method public a(Landroid/support/v7/widget/do;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/co;->a(Landroid/support/v7/widget/do;I)V

    return-void
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/do;
    .locals 1

    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/f/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/co;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/do;

    move-result-object v0

    iput p2, v0, Landroid/support/v7/widget/do;->e:I

    invoke-static {}, Landroid/support/v4/f/h;->a()V

    return-object v0
.end method

.method public b(Landroid/support/v7/widget/ch;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/support/v7/widget/cq;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cp;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/cp;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/support/v7/widget/do;I)V
    .locals 2

    iput p2, p1, Landroid/support/v7/widget/do;->b:I

    invoke-virtual {p0}, Landroid/support/v7/widget/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/co;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/do;->d:J

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/do;->a(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/f/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/do;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/co;->a(Landroid/support/v7/widget/do;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/do;->t()V

    invoke-static {}, Landroid/support/v4/f/h;->a()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/co;->b:Z

    return v0
.end method

.method public b(Landroid/support/v7/widget/do;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cp;

    invoke-virtual {v0}, Landroid/support/v7/widget/cp;->a()V

    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cp;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/cp;->a(II)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/do;)V
    .locals 0

    return-void
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cp;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/cp;->b(II)V

    return-void
.end method

.method public d(Landroid/support/v7/widget/do;)V
    .locals 0

    return-void
.end method

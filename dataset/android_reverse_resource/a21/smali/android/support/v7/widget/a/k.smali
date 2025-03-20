.class Landroid/support/v7/widget/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/a/b;


# instance fields
.field private final a:Landroid/support/v4/a/l;

.field private final b:I

.field private c:Z

.field final d:F

.field final e:F

.field final f:F

.field final g:F

.field final h:Landroid/support/v7/widget/do;

.field final i:I

.field public j:Z

.field k:F

.field l:F

.field m:Z

.field final synthetic n:Landroid/support/v7/widget/a/a;

.field private o:F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;IIFFFF)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/a/k;->n:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/support/v7/widget/a/k;->m:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/a/k;->c:Z

    iput p4, p0, Landroid/support/v7/widget/a/k;->i:I

    iput p3, p0, Landroid/support/v7/widget/a/k;->b:I

    iput-object p2, p0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iput p5, p0, Landroid/support/v7/widget/a/k;->d:F

    iput p6, p0, Landroid/support/v7/widget/a/k;->e:F

    iput p7, p0, Landroid/support/v7/widget/a/k;->f:F

    iput p8, p0, Landroid/support/v7/widget/a/k;->g:F

    invoke-static {}, Landroid/support/v4/a/a;->a()Landroid/support/v4/a/l;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a/k;->a:Landroid/support/v4/a/l;

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->a:Landroid/support/v4/a/l;

    new-instance v1, Landroid/support/v7/widget/a/l;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/a/l;-><init>(Landroid/support/v7/widget/a/k;Landroid/support/v7/widget/a/a;)V

    invoke-interface {v0, v1}, Landroid/support/v4/a/l;->a(Landroid/support/v4/a/d;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->a:Landroid/support/v4/a/l;

    iget-object v1, p2, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/a/l;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->a:Landroid/support/v4/a/l;

    invoke-interface {v0, p0}, Landroid/support/v4/a/l;->a(Landroid/support/v4/a/b;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a/k;->a(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/a/k;->c:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/a/k;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/a/k;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/do;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->a:Landroid/support/v4/a/l;

    invoke-interface {v0}, Landroid/support/v4/a/l;->a()V

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/a/k;->o:F

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->a:Landroid/support/v4/a/l;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/a/l;->a(J)V

    return-void
.end method

.method public a(Landroid/support/v4/a/l;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->a:Landroid/support/v4/a/l;

    invoke-interface {v0}, Landroid/support/v4/a/l;->b()V

    return-void
.end method

.method public b(Landroid/support/v4/a/l;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/a/k;->c:Z

    return-void
.end method

.method public c()V
    .locals 4

    iget v0, p0, Landroid/support/v7/widget/a/k;->d:F

    iget v1, p0, Landroid/support/v7/widget/a/k;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/i/bt;->m(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/k;->k:F

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/a/k;->e:F

    iget v1, p0, Landroid/support/v7/widget/a/k;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/i/bt;->n(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/k;->l:F

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/a/k;->d:F

    iget v1, p0, Landroid/support/v7/widget/a/k;->o:F

    iget v2, p0, Landroid/support/v7/widget/a/k;->f:F

    iget v3, p0, Landroid/support/v7/widget/a/k;->d:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/a/k;->k:F

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/a/k;->e:F

    iget v1, p0, Landroid/support/v7/widget/a/k;->o:F

    iget v2, p0, Landroid/support/v7/widget/a/k;->g:F

    iget v3, p0, Landroid/support/v7/widget/a/k;->e:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/a/k;->l:F

    goto :goto_1
.end method

.method public c(Landroid/support/v4/a/l;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a/k;->a(F)V

    return-void
.end method

.method public d(Landroid/support/v4/a/l;)V
    .locals 0

    return-void
.end method

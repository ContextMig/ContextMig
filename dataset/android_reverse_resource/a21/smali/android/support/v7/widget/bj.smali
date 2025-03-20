.class public Landroid/support/v7/widget/bj;
.super Landroid/support/v7/widget/cy;

# interfaces
.implements Landroid/support/v7/widget/a/m;


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/ce;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/bn;

.field final g:Landroid/support/v7/widget/bk;

.field private k:Landroid/support/v7/widget/bm;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/bj;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/cy;-><init>()V

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->m:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/bj;->d:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/bj;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bk;-><init>(Landroid/support/v7/widget/bj;)V

    iput-object v0, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/bj;->a(I)V

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/bj;->a(Z)V

    return-void
.end method

.method private A()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private a(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Z)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/bj;->c(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->d()I

    move-result v2

    sub-int v1, v2, v1

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ce;->a(I)V

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/bj;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/bj;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/dl;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/dl;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/bm;->h:I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput p1, v2, Landroid/support/v7/widget/bm;->f:I

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v2, Landroid/support/v7/widget/bm;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/bm;->h:I

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->A()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-boolean v4, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/bm;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v3, Landroid/support/v7/widget/bm;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/bm;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/bm;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->d()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput p2, v1, Landroid/support/v7/widget/bm;->c:I

    if-eqz p3, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v2, v1, Landroid/support/v7/widget/bm;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/bm;->c:I

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v0, v1, Landroid/support/v7/widget/bm;->g:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/bj;->z()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v4, v3, Landroid/support/v7/widget/bm;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v5}, Landroid/support/v7/widget/ce;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/bm;->h:I

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-boolean v4, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/bm;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v3, Landroid/support/v7/widget/bm;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/bm;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/bm;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/bk;)V
    .locals 2

    iget v0, p1, Landroid/support/v7/widget/bk;->a:I

    iget v1, p1, Landroid/support/v7/widget/bk;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/bj;->c(II)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/de;I)V
    .locals 5

    const/4 v1, 0x0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_2

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/de;II)V
    .locals 1

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-le p3, p2, :cond_2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/bj;->a(ILandroid/support/v7/widget/de;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/bj;->a(ILandroid/support/v7/widget/de;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;)V
    .locals 2

    iget-boolean v0, p2, Landroid/support/v7/widget/bm;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p2, Landroid/support/v7/widget/bm;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroid/support/v7/widget/bm;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/de;I)V

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/support/v7/widget/bm;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)Z
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/dl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->d:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/bj;->d:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/bj;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/dl;->d()I

    move-result v3

    if-lt v0, v3, :cond_3

    :cond_2
    iput v5, p0, Landroid/support/v7/widget/bj;->d:I

    iput v4, p0, Landroid/support/v7/widget/bj;->e:I

    move v1, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/bj;->d:I

    iput v0, p2, Landroid/support/v7/widget/bk;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    iget-boolean v0, v0, Landroid/support/v7/widget/bn;->c:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/bk;->c:Z

    iget-boolean v0, p2, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    iget v2, v2, Landroid/support/v7/widget/bn;->b:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/bk;->b:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    iget v2, v2, Landroid/support/v7/widget/bn;->b:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/bk;->b:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/bj;->e:I

    if-ne v0, v4, :cond_e

    iget v0, p0, Landroid/support/v7/widget/bj;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    invoke-virtual {p2}, Landroid/support/v7/widget/bk;->b()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->c()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/bk;->b:I

    iput-boolean v2, p2, Landroid/support/v7/widget/bk;->c:Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/bk;->b:I

    iput-boolean v1, p2, Landroid/support/v7/widget/bk;->c:Z

    goto/16 :goto_0

    :cond_8
    iget-boolean v2, p2, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->b()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/bk;->b:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/bj;->d:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/bj;->c:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroid/support/v7/widget/bk;->c:Z

    :cond_c
    invoke-virtual {p2}, Landroid/support/v7/widget/bk;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/bk;->c:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/bj;->e:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/bk;->b:I

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/bj;->e:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/bk;->b:I

    goto/16 :goto_0
.end method

.method private b(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Z)I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/bj;->c(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ce;->a(I)V

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/bj;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/bj;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/bk;)V
    .locals 2

    iget v0, p1, Landroid/support/v7/widget/bk;->a:I

    iget v1, p1, Landroid/support/v7/widget/bk;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/bj;->d(II)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/de;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v2

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->e()I

    move-result v0

    sub-int v3, v0, p2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;II)V
    .locals 9

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/de;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v7

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->d()I

    move-result v1

    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput-object v5, v0, Landroid/support/v7/widget/bm;->k:Ljava/util/List;

    if-lez v3, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->z()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/bj;->d(II)V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v3, v0, Landroid/support/v7/widget/bm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/bm;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {v0}, Landroid/support/v7/widget/bm;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    :cond_7
    if-lez v2, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->A()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/bj;->c(II)V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v2, v0, Landroid/support/v7/widget/bm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/bm;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {v0}, Landroid/support/v7/widget/bm;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/bm;->k:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/bj;->c(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/support/v7/widget/bk;->b()V

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->n:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Landroid/support/v7/widget/bk;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(II)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/bm;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/bm;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput p1, v0, Landroid/support/v7/widget/bm;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v1, v0, Landroid/support/v7/widget/bm;->f:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput p2, v0, Landroid/support/v7/widget/bm;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/bm;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->v()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p3, v2, p2}, Landroid/support/v7/widget/bk;->a(Landroid/support/v7/widget/bk;Landroid/view/View;Landroid/support/v7/widget/dl;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/bk;->a(Landroid/view/View;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/widget/bj;->l:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/bj;->n:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p3, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->f(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/bk;->b(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v0, p3, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    :goto_2
    iput v0, p3, Landroid/support/v7/widget/bk;->b:I

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->g(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v0

    goto :goto_2
.end method

.method private d(II)V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/bm;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput p1, v0, Landroid/support/v7/widget/bm;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/bm;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v1, v0, Landroid/support/v7/widget/bm;->f:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput p2, v0, Landroid/support/v7/widget/bm;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/bm;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private f(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->h(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->i(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->i(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->h(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/dl;)I
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->o:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/bj;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->o:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/bj;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/bj;->o:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/bj;->c:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/dr;->a(Landroid/support/v7/widget/dl;Landroid/support/v7/widget/ce;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/cy;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private h(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->d()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/support/v7/widget/dl;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->o:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/bj;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->o:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/bj;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/bj;->o:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/dr;->a(Landroid/support/v7/widget/dl;Landroid/support/v7/widget/ce;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/cy;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->d()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/bj;->a:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/bj;->a:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private j(Landroid/support/v7/widget/dl;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->o:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/bj;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->o:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/bj;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/bj;->o:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/dr;->b(Landroid/support/v7/widget/dl;Landroid/support/v7/widget/ce;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/cy;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private y()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/bj;->a:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->e()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->m:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/bj;->m:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private z()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/bj;->c(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I
    .locals 7

    const/high16 v6, -0x80000000

    iget v1, p2, Landroid/support/v7/widget/bm;->c:I

    iget v0, p2, Landroid/support/v7/widget/bm;->g:I

    if-eq v0, v6, :cond_1

    iget v0, p2, Landroid/support/v7/widget/bm;->c:I

    if-gez v0, :cond_0

    iget v0, p2, Landroid/support/v7/widget/bm;->g:I

    iget v2, p2, Landroid/support/v7/widget/bm;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/bm;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;)V

    :cond_1
    iget v0, p2, Landroid/support/v7/widget/bm;->c:I

    iget v2, p2, Landroid/support/v7/widget/bm;->h:I

    add-int/2addr v0, v2

    new-instance v2, Landroid/support/v7/widget/bl;

    invoke-direct {v2}, Landroid/support/v7/widget/bl;-><init>()V

    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/bm;->a(Landroid/support/v7/widget/dl;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/support/v7/widget/bl;->a()V

    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/bl;)V

    iget-boolean v3, v2, Landroid/support/v7/widget/bl;->b:Z

    if-eqz v3, :cond_4

    :cond_3
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/bm;->c:I

    sub-int v0, v1, v0

    return v0

    :cond_4
    iget v3, p2, Landroid/support/v7/widget/bm;->b:I

    iget v4, v2, Landroid/support/v7/widget/bl;->a:I

    iget v5, p2, Landroid/support/v7/widget/bm;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/bm;->b:I

    iget-boolean v3, v2, Landroid/support/v7/widget/bl;->c:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget-object v3, v3, Landroid/support/v7/widget/bm;->k:Ljava/util/List;

    if-nez v3, :cond_5

    invoke-virtual {p3}, Landroid/support/v7/widget/dl;->a()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget v3, p2, Landroid/support/v7/widget/bm;->c:I

    iget v4, v2, Landroid/support/v7/widget/bl;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/bm;->c:I

    iget v3, v2, Landroid/support/v7/widget/bl;->a:I

    sub-int/2addr v0, v3

    :cond_6
    iget v3, p2, Landroid/support/v7/widget/bm;->g:I

    if-eq v3, v6, :cond_8

    iget v3, p2, Landroid/support/v7/widget/bm;->g:I

    iget v4, v2, Landroid/support/v7/widget/bl;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/bm;->g:I

    iget v3, p2, Landroid/support/v7/widget/bm;->c:I

    if-gez v3, :cond_7

    iget v3, p2, Landroid/support/v7/widget/bm;->g:I

    iget v4, p2, Landroid/support/v7/widget/bm;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/bm;->g:I

    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/bl;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/dl;)I
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/dl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/cz;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v7/widget/cz;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/cz;-><init>(II)V

    return-object v0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v4

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v6

    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    if-eqz p3, :cond_0

    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_4

    if-nez v2, :cond_4

    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;III)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    :goto_1
    if-eq p3, p4, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_6

    move-object v0, v2

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->y()V

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/bj;->j(I)I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    if-ne v3, v6, :cond_2

    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/bj;->g(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {p0, v3, v1, v7, p4}, Landroid/support/v7/widget/bj;->a(IIZLandroid/support/v7/widget/dl;)V

    iget-object v1, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v5, v1, Landroid/support/v7/widget/bm;->g:I

    iget-object v1, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput-boolean v7, v1, Landroid/support/v7/widget/bm;->a:Z

    iget-object v1, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v1, p4, v4}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->z()Landroid/view/View;

    move-result-object v1

    :goto_2
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/bj;->f(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/bj;->A()Landroid/view/View;

    move-result-object v1

    goto :goto_2
.end method

.method public a(I)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/bj;->a:I

    iput-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->k()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/bj;->d:I

    iput p2, p0, Landroid/support/v7/widget/bj;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->b()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->k()V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/bn;

    iput-object p1, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->k()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/de;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/de;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/bj;->c(Landroid/support/v7/widget/de;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/de;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, -0x80000000

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->d:I

    if-eq v0, v6, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->d()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bj;->c(Landroid/support/v7/widget/de;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    iget v0, v0, Landroid/support/v7/widget/bn;->a:I

    iput v0, p0, Landroid/support/v7/widget/bj;->d:I

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput-boolean v1, v0, Landroid/support/v7/widget/bm;->a:Z

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->y()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    iget-boolean v2, p0, Landroid/support/v7/widget/bj;->c:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/bj;->n:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v7/widget/bk;->c:Z

    iget-object v0, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/dl;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v2, v2, Landroid/support/v7/widget/bm;->j:I

    if-ltz v2, :cond_8

    move v2, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->c()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->g()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/bj;->d:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Landroid/support/v7/widget/bj;->e:I

    if-eq v3, v7, :cond_3

    iget v3, p0, Landroid/support/v7/widget/bj;->d:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->d()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v3

    sub-int v3, v4, v3

    iget v4, p0, Landroid/support/v7/widget/bj;->e:I

    sub-int/2addr v3, v4

    :goto_2
    if-lez v3, :cond_a

    add-int/2addr v2, v3

    :cond_3
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-virtual {p0, p1, p2, v3}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;)V

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->a()Z

    move-result v4

    iput-boolean v4, v3, Landroid/support/v7/widget/bm;->i:Z

    iget-object v3, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    iget-boolean v3, v3, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/bk;)V

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v2, v3, Landroid/support/v7/widget/bm;->h:I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v2, v2, Landroid/support/v7/widget/bm;->b:I

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v4, v3, Landroid/support/v7/widget/bm;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v3, Landroid/support/v7/widget/bm;->c:I

    if-lez v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v3, Landroid/support/v7/widget/bm;->c:I

    add-int/2addr v0, v3

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bk;)V

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v0, v3, Landroid/support/v7/widget/bm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v0, Landroid/support/v7/widget/bm;->d:I

    iget-object v5, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v5, v5, Landroid/support/v7/widget/bm;->e:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/bm;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v0, Landroid/support/v7/widget/bm;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v0, v0, Landroid/support/v7/widget/bm;->c:I

    if-lez v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v0, v0, Landroid/support/v7/widget/bm;->c:I

    invoke-direct {p0, v4, v2}, Landroid/support/v7/widget/bj;->d(II)V

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v0, v2, Landroid/support/v7/widget/bm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v0, v0, Landroid/support/v7/widget/bm;->b:I

    :goto_4
    move v2, v0

    move v0, v3

    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroid/support/v7/widget/bj;->c:Z

    iget-boolean v4, p0, Landroid/support/v7/widget/bj;->n:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_d

    invoke-direct {p0, v0, p1, p2, v8}, Landroid/support/v7/widget/bj;->a(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/bj;->b(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Z)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v1

    :cond_6
    :goto_6
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;II)V

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iput v6, p0, Landroid/support/v7/widget/bj;->d:I

    iput v7, p0, Landroid/support/v7/widget/bj;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->a()V

    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->n:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    goto/16 :goto_0

    :cond_8
    move v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->c()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/bj;->e:I

    sub-int v3, v4, v3

    goto/16 :goto_2

    :cond_a
    sub-int/2addr v0, v3

    goto/16 :goto_3

    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bk;)V

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v0, v3, Landroid/support/v7/widget/bm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v0, v0, Landroid/support/v7/widget/bm;->b:I

    iget-object v3, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v3, v3, Landroid/support/v7/widget/bm;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v4, v4, Landroid/support/v7/widget/bm;->c:I

    if-lez v4, :cond_c

    iget-object v4, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v4, v4, Landroid/support/v7/widget/bm;->c:I

    add-int/2addr v2, v4

    :cond_c
    iget-object v4, p0, Landroid/support/v7/widget/bj;->g:Landroid/support/v7/widget/bk;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/bk;)V

    iget-object v4, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v2, v4, Landroid/support/v7/widget/bm;->h:I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v4, v2, Landroid/support/v7/widget/bm;->d:I

    iget-object v5, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v5, v5, Landroid/support/v7/widget/bm;->e:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/support/v7/widget/bm;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v2, v2, Landroid/support/v7/widget/bm;->b:I

    iget-object v4, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v4, v4, Landroid/support/v7/widget/bm;->c:I

    if-lez v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v4, v4, Landroid/support/v7/widget/bm;->c:I

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/bj;->c(II)V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput v4, v0, Landroid/support/v7/widget/bm;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v0, v0, Landroid/support/v7/widget/bm;->b:I

    goto/16 :goto_5

    :cond_d
    invoke-direct {p0, v2, p1, p2, v8}, Landroid/support/v7/widget/bj;->b(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/bj;->a(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Z)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v1

    goto/16 :goto_6

    :cond_e
    move v0, v2

    goto/16 :goto_4
.end method

.method a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bk;)V
    .locals 0

    return-void
.end method

.method a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/bl;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/bm;->a(Landroid/support/v7/widget/de;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iput-boolean v7, p4, Landroid/support/v7/widget/bl;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/cz;

    iget-object v0, p3, Landroid/support/v7/widget/bm;->k:Ljava/util/List;

    if-nez v0, :cond_5

    iget-boolean v3, p0, Landroid/support/v7/widget/bj;->c:Z

    iget v0, p3, Landroid/support/v7/widget/bm;->f:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->b(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/bl;->a:I

    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    if-ne v0, v7, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->p()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->t()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ce;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_3
    iget v3, p3, Landroid/support/v7/widget/bm;->f:I

    if-ne v3, v4, :cond_9

    iget v3, p3, Landroid/support/v7/widget/bm;->b:I

    iget v4, p3, Landroid/support/v7/widget/bm;->b:I

    iget v5, p4, Landroid/support/v7/widget/bl;->a:I

    sub-int/2addr v4, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    :goto_4
    iget v5, v6, Landroid/support/v7/widget/cz;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v6, Landroid/support/v7/widget/cz;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v6, Landroid/support/v7/widget/cz;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/support/v7/widget/cz;->bottomMargin:I

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroid/support/v7/widget/cz;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/cz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/bl;->c:Z

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/bl;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bj;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/bj;->c:Z

    iget v0, p3, Landroid/support/v7/widget/bm;->f:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->r()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ce;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    :cond_9
    iget v4, p3, Landroid/support/v7/widget/bm;->b:I

    iget v3, p3, Landroid/support/v7/widget/bm;->b:I

    iget v5, p4, Landroid/support/v7/widget/bl;->a:I

    add-int/2addr v3, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->s()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ce;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    iget v2, p3, Landroid/support/v7/widget/bm;->f:I

    if-ne v2, v4, :cond_b

    iget v2, p3, Landroid/support/v7/widget/bm;->b:I

    iget v4, p3, Landroid/support/v7/widget/bm;->b:I

    iget v5, p4, Landroid/support/v7/widget/bl;->a:I

    sub-int/2addr v4, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4

    :cond_b
    iget v4, p3, Landroid/support/v7/widget/bm;->b:I

    iget v2, p3, Landroid/support/v7/widget/bm;->b:I

    iget v5, p4, Landroid/support/v7/widget/bl;->a:I

    add-int/2addr v2, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->y()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/bj;->c:Z

    if-eqz v4, :cond_2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/bj;->a(II)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/bj;->a(II)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/bj;->a(II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/bj;->a(II)V

    goto :goto_1
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/cy;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/i/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/i/a/aq;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/aq;->b(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/i/a/aq;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/cy;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->m:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/bj;->m:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->k()V

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/bj;->c(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/dl;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bj;->h(Landroid/support/v7/widget/dl;)I

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bn;

    iget-object v1, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/bn;-><init>(Landroid/support/v7/widget/bn;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/bn;

    invoke-direct {v0}, Landroid/support/v7/widget/bn;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    iget-boolean v1, p0, Landroid/support/v7/widget/bj;->l:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/bj;->c:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/bn;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->A()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/bn;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/bn;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/bj;->z()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/bn;->a:I

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/bn;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->b()V

    goto :goto_0
.end method

.method public b(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/cy;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method c(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput-boolean v1, v0, Landroid/support/v7/widget/bm;->a:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/bj;->a(IIZLandroid/support/v7/widget/dl;)V

    iget-object v1, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iget v1, v1, Landroid/support/v7/widget/bm;->g:I

    iget-object v4, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/bm;Landroid/support/v7/widget/dl;Z)I

    move-result v4

    add-int/2addr v1, v4

    if-gez v1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ce;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    iput p1, v0, Landroid/support/v7/widget/bm;->j:I

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/dl;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bj;->h(Landroid/support/v7/widget/dl;)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/bj;->d:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/bj;->e:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->b()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->k()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/dl;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bj;->i(Landroid/support/v7/widget/dl;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/bj;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/dl;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bj;->i(Landroid/support/v7/widget/dl;)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->m()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/support/v7/widget/dl;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bj;->j(Landroid/support/v7/widget/dl;)I

    move-result v0

    return v0
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->g()Landroid/support/v7/widget/bm;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bj;->k:Landroid/support/v7/widget/bm;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bj;->a:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/ce;->a(Landroid/support/v7/widget/cy;I)Landroid/support/v7/widget/ce;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    :cond_1
    return-void
.end method

.method public g(Landroid/support/v7/widget/dl;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bj;->j(Landroid/support/v7/widget/dl;)I

    move-result v0

    return v0
.end method

.method g()Landroid/support/v7/widget/bm;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/bm;

    invoke-direct {v0}, Landroid/support/v7/widget/bm;-><init>()V

    return-object v0
.end method

.method public h()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/bj;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public i()I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->o()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/bj;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->f:Landroid/support/v7/widget/bn;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->l:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/bj;->n:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

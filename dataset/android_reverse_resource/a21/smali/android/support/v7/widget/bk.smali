.class Landroid/support/v7/widget/bk;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/bj;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/bk;Landroid/view/View;Landroid/support/v7/widget/dl;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bk;->a(Landroid/view/View;Landroid/support/v7/widget/dl;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/dl;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->c()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->c()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/dl;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/bk;->a:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/bk;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v0, v0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->b()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bk;->b(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/bk;->a:I

    iget-boolean v1, p0, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v1, v1, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->d()I

    move-result v1

    sub-int v0, v1, v0

    iget-object v1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v1, v1, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v1, v1, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->d()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/bk;->b:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v1, v1, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/bk;->b:I

    sub-int v1, v2, v1

    iget-object v2, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v2, v2, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v3, v3, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    iget v2, p0, Landroid/support/v7/widget/bk;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/bk;->b:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v1, v1, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v2, v2, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()I

    move-result v2

    sub-int v2, v1, v2

    iput v1, p0, Landroid/support/v7/widget/bk;->b:I

    if-lez v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v3, v3, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ce;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v3, v3, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->d()I

    move-result v3

    sub-int v0, v3, v0

    iget-object v3, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v3, v3, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v3, v3, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->d()I

    move-result v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/bk;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/bk;->b:I

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v0, v0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/bk;->b:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v0, v0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v0, v0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ce;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v1, v1, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/bk;->b:I

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/bk;->a:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bk;->d:Landroid/support/v7/widget/bj;

    iget-object v0, v0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ce;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/bk;->b:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bk;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bk;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bk;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

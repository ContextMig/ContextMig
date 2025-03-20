.class public Landroid/support/v7/widget/dl;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:I

.field private c:Landroid/util/SparseArray;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/dl;->b:I

    iput v1, p0, Landroid/support/v7/widget/dl;->a:I

    iput v1, p0, Landroid/support/v7/widget/dl;->d:I

    iput v1, p0, Landroid/support/v7/widget/dl;->e:I

    iput-boolean v1, p0, Landroid/support/v7/widget/dl;->f:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/dl;->g:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/dl;->h:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/dl;->i:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/dl;->j:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/dl;I)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/dl;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/dl;->e:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/dl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->i:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/dl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/dl;->f:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/dl;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/dl;->e:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/dl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->h:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/dl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/dl;->g:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/dl;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/dl;->d:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/dl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->j:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/dl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/dl;->h:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/dl;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/dl;->b:I

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/dl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->f:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/dl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/dl;->i:Z

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/dl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->g:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/dl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/dl;->j:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->g:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->i:Z

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/dl;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/dl;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/dl;->d:I

    iget v1, p0, Landroid/support/v7/widget/dl;->e:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/dl;->a:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/dl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/dl;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/dl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/dl;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/dl;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/dl;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/dl;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/dl;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/dl;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

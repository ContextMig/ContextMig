.class public abstract Landroid/support/v7/widget/cy;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field h:Landroid/support/v7/widget/as;

.field i:Landroid/support/v7/widget/ch;

.field j:Landroid/support/v7/widget/dj;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/support/v7/widget/cy;->a:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/cy;->b:Z

    return-void
.end method

.method public static a(IIIZ)I
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p3, :cond_2

    if-ltz p2, :cond_1

    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    goto :goto_0

    :cond_2
    if-gez p2, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method private a(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/as;->d(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/cy;Landroid/support/v7/widget/dj;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/dj;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/de;ILandroid/view/View;)V
    .locals 2

    invoke-static {p3}, Landroid/support/v7/widget/ch;->b(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v1}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/co;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/cy;->d(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/de;->b(Landroid/support/v7/widget/do;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/cy;->e(I)V

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/de;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/dj;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/support/v7/widget/ch;->b(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v1

    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->d:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ek;->c(Landroid/support/v7/widget/do;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->k()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/do;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->j()V

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/as;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/v7/widget/cz;->d:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iput-boolean v4, v0, Landroid/support/v7/widget/cz;->d:Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->d:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ek;->d(Landroid/support/v7/widget/do;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/do;->l()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/as;->b(Landroid/view/View;)I

    move-result v2

    if-ne p2, v5, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v3}, Landroid/support/v7/widget/as;->b()I

    move-result p2

    :cond_7
    if-ne v2, v5, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ch;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eq v2, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v3}, Landroid/support/v7/widget/ch;->f(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/cy;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/support/v7/widget/cy;->b(II)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/v7/widget/as;->a(Landroid/view/View;IZ)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/cz;->c:Z

    iget-object v2, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    invoke-virtual {v2}, Landroid/support/v7/widget/dj;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/dj;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/cy;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/cy;->a:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/cy;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/cy;->a:Z

    return p1
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a()Landroid/support/v7/widget/cz;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/cz;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/cz;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/cz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/cz;
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/cz;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/cz;

    check-cast p1, Landroid/support/v7/widget/cz;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cz;-><init>(Landroid/support/v7/widget/cz;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/cz;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cz;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/cz;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cz;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILandroid/support/v7/widget/de;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->d(I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/de;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method a(Landroid/support/v4/i/a/l;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->a:Landroid/support/v7/widget/de;

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v1, v1, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v4/i/a/l;)V

    return-void
.end method

.method a(Landroid/support/v7/widget/ch;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iput-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v0, p1, Landroid/support/v7/widget/ch;->c:Landroid/support/v7/widget/as;

    iput-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/ch;II)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/ch;III)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/ch;IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/cy;->c(Landroid/support/v7/widget/ch;II)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/de;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->d(Landroid/support/v7/widget/ch;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/co;Landroid/support/v7/widget/co;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/de;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/de;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0, p3, p4}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/ch;II)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/support/v4/i/a/l;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0, v2}, Landroid/support/v4/i/bt;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0, v2}, Landroid/support/v4/i/bt;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/i/a/l;->a(I)V

    invoke-virtual {p3, v1}, Landroid/support/v4/i/a/l;->e(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/i/a/l;->a(I)V

    invoke-virtual {p3, v1}, Landroid/support/v4/i/a/l;->e(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/cy;->c(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/cy;->d(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/cy;->e(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/cy;->b(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/i/a/v;->a(IIZI)Landroid/support/v4/i/a/v;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/i/a/l;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/view/View;Landroid/support/v4/i/a/l;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/cy;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/cy;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/i/a/w;->a(IIIIZZ)Landroid/support/v4/i/a/w;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/i/a/l;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    invoke-static {p3}, Landroid/support/v4/i/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/i/a/aq;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v2, v0}, Landroid/support/v4/i/bt;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v2, v3}, Landroid/support/v4/i/bt;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v2, v3}, Landroid/support/v4/i/bt;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v2, v0}, Landroid/support/v4/i/bt;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/i/a/aq;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/co;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/i/a/aq;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ch;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->p()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->r()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->t()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/cz;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/cz;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v0, Landroid/support/v7/widget/cz;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->c()Z

    move-result v5

    invoke-static {v3, v2, v4, v5}, Landroid/support/v7/widget/cy;->a(IIIZ)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->q()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->s()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->u()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/cz;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/cz;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iget v0, v0, Landroid/support/v7/widget/cz;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->d()Z

    move-result v4

    invoke-static {v3, v1, v0, v4}, Landroid/support/v7/widget/cy;->a(IIIZ)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p5, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/cz;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ch;->b(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v1, v1, Landroid/support/v7/widget/ch;->d:Landroid/support/v7/widget/ek;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ek;->c(Landroid/support/v7/widget/do;)V

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->q()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/as;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v1, v1, Landroid/support/v7/widget/ch;->d:Landroid/support/v7/widget/ek;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ek;->d(Landroid/support/v7/widget/do;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-nez v0, :cond_0

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ch;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;Landroid/support/v4/i/a/l;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ch;->b(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->q()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/as;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->a:Landroid/support/v7/widget/de;

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v1, v1, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/view/View;Landroid/support/v4/i/a/l;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/widget/de;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->c(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/de;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->a:Landroid/support/v7/widget/de;

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v1, v1, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ch;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->a:Landroid/support/v7/widget/de;

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v1, v1, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/dl;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/ch;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->r()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->s()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->p()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->t()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->q()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->u()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int v7, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v9, v7, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v10, v8, v0

    const/4 v0, 0x0

    sub-int v1, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    sub-int v2, v8, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    sub-int v11, v9, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v11, 0x0

    sub-int v6, v10, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->m()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    if-eqz v0, :cond_1

    :goto_0
    move v1, v0

    :goto_1
    if-eqz v2, :cond_4

    move v0, v2

    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    :cond_0
    if-eqz p4, :cond_5

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/ch;->scrollBy(II)V

    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_1
    sub-int v0, v9, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    sub-int v1, v7, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    :cond_4
    sub-int v0, v8, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/ch;->a(II)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/ch;Ljava/util/ArrayList;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/cz;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;ILandroid/os/Bundle;)Z
    .locals 6

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/ch;->scrollBy(II)V

    move v1, v2

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0, v4}, Landroid/support/v4/i/bt;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->q()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->s()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->u()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v3, v4}, Landroid/support/v4/i/bt;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->p()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->r()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->t()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0, v2}, Landroid/support/v4/i/bt;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->q()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->s()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->u()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v3, v2}, Landroid/support/v4/i/bt;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->p()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->r()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->t()I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v1, v0, Landroid/support/v7/widget/ch;->a:Landroid/support/v7/widget/de;

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v2, v0, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(ILandroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->o()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/ch;->b(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/do;->d()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v4, v4, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-virtual {v4}, Landroid/support/v7/widget/dl;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->q()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(II)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->e(I)V

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/cy;->c(Landroid/view/View;I)V

    return-void
.end method

.method b(Landroid/support/v7/widget/ch;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/cy;->b:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->c(Landroid/support/v7/widget/ch;)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/ch;II)V
    .locals 0

    return-void
.end method

.method b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/de;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/cy;->b:Z

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/cy;->a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/de;)V

    return-void
.end method

.method b(Landroid/support/v7/widget/de;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/de;->d()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/de;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/ch;->b(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/do;->a(Z)V

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/ch;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v4, v4, Landroid/support/v7/widget/ch;->e:Landroid/support/v7/widget/cs;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    iget-object v4, v4, Landroid/support/v7/widget/ch;->e:Landroid/support/v7/widget/cs;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/cs;->c(Landroid/support/v7/widget/do;)V

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/do;->a(Z)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/de;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/de;->e()V

    if-lez v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->invalidate()V

    :cond_4
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/cy;->b(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v1}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/co;->a()I

    move-result v0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public c(Landroid/support/v7/widget/ch;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/support/v7/widget/ch;II)V
    .locals 0

    return-void
.end method

.method public c(Landroid/support/v7/widget/de;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/ch;->b(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/cy;->a(ILandroid/support/v7/widget/de;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/as;->a(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;ILandroid/support/v7/widget/cz;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v1}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/cy;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/co;->a()I

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->c()I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/as;->a(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/ch;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/cy;->a(ILandroid/view/View;)V

    return-void
.end method

.method public e(Landroid/support/v7/widget/ch;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/support/v7/widget/de;Landroid/support/v7/widget/dl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/as;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/dl;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->m(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ch;->c(I)V

    :cond_0
    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->k(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ch;->b(I)V

    :cond_0
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/cy;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->requestLayout()V

    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    invoke-virtual {v0}, Landroid/support/v7/widget/dj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v4/i/bt;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v0}, Landroid/support/v7/widget/as;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/cy;->i:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/cy;->h:Landroid/support/v7/widget/as;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/as;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method w()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->j:Landroid/support/v7/widget/dj;

    invoke-virtual {v0}, Landroid/support/v7/widget/dj;->a()V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/cy;->a:Z

    return-void
.end method

.class final Landroid/support/design/widget/bk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Landroid/support/design/widget/bm;

.field private c:Landroid/view/animation/Animation;

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/bk;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/design/widget/bk;->b:Landroid/support/design/widget/bm;

    iput-object v1, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/design/widget/bl;

    invoke-direct {v0, p0}, Landroid/support/design/widget/bl;-><init>(Landroid/support/design/widget/bk;)V

    iput-object v0, p0, Landroid/support/design/widget/bk;->e:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/bk;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/bk;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private a(Landroid/support/design/widget/bm;)V
    .locals 2

    iget-object v0, p1, Landroid/support/design/widget/bm;->b:Landroid/view/animation/Animation;

    iput-object v0, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/support/design/widget/bk;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/bk;->a()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Landroid/support/design/widget/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/bm;

    iget-object v0, v0, Landroid/support/design/widget/bm;->b:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-ne v4, v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v5, p0, Landroid/support/design/widget/bk;->d:Ljava/lang/ref/WeakReference;

    iput-object v5, p0, Landroid/support/design/widget/bk;->b:Landroid/support/design/widget/bm;

    iput-object v5, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/bk;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    :cond_1
    return-void
.end method


# virtual methods
.method a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bk;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bk;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/bk;->a()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/bk;->c()V

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/bk;->d:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method a([I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/bm;

    iget-object v4, v0, Landroid/support/design/widget/bm;->a:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bk;->b:Landroid/support/design/widget/bm;

    if-ne v1, v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/bk;->b:Landroid/support/design/widget/bm;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/design/widget/bk;->d()V

    :cond_4
    iput-object v1, p0, Landroid/support/design/widget/bk;->b:Landroid/support/design/widget/bm;

    iget-object v0, p0, Landroid/support/design/widget/bk;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Landroid/support/design/widget/bk;->a(Landroid/support/design/widget/bm;)V

    goto :goto_1
.end method

.method public a([ILandroid/view/animation/Animation;)V
    .locals 2

    new-instance v0, Landroid/support/design/widget/bm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/design/widget/bm;-><init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/bl;)V

    iget-object v1, p0, Landroid/support/design/widget/bk;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/support/design/widget/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/bk;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/bk;->c:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    return-void
.end method

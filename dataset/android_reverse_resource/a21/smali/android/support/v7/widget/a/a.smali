.class public Landroid/support/v7/widget/a/a;
.super Landroid/support/v7/widget/cx;

# interfaces
.implements Landroid/support/v7/widget/da;


# instance fields
.field private A:J

.field final a:Ljava/util/List;

.field b:Landroid/support/v7/widget/do;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I

.field j:Landroid/support/v7/widget/a/g;

.field k:I

.field l:I

.field m:Ljava/util/List;

.field private final n:[F

.field private o:I

.field private p:Landroid/support/v7/widget/ch;

.field private final q:Ljava/lang/Runnable;

.field private r:Landroid/view/VelocityTracker;

.field private s:Ljava/util/List;

.field private t:Ljava/util/List;

.field private u:Landroid/support/v7/widget/cr;

.field private v:Landroid/view/View;

.field private w:I

.field private x:Landroid/support/v4/i/q;

.field private final y:Landroid/support/v7/widget/db;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a/g;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/cx;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->a:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iput v2, p0, Landroid/support/v7/widget/a/a;->i:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/a/a;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    new-instance v0, Landroid/support/v7/widget/a/b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/b;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->q:Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->u:Landroid/support/v7/widget/cr;

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->v:Landroid/view/View;

    iput v2, p0, Landroid/support/v7/widget/a/a;->w:I

    new-instance v0, Landroid/support/v7/widget/a/c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/c;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->y:Landroid/support/v7/widget/db;

    iput-object p1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/a/a;->w:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;Z)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/do;Z)I

    move-result v0

    return v0
.end method

.method private a(Landroid/support/v7/widget/do;Z)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    iget-object v2, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    if-ne v2, p1, :cond_1

    iget-boolean v2, v0, Landroid/support/v7/widget/a/k;->m:Z

    or-int/2addr v2, p2

    iput-boolean v2, v0, Landroid/support/v7/widget/a/k;->m:Z

    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/a/k;->b()V

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/do;->a(Z)V

    invoke-static {v0}, Landroid/support/v7/widget/a/k;->b(Landroid/support/v7/widget/a/k;)I

    move-result v0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;)Landroid/support/v7/widget/a/k;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->c(Landroid/view/MotionEvent;)Landroid/support/v7/widget/a/k;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)Landroid/support/v7/widget/do;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/a/a;->i:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v2, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-static {p1, v2}, Landroid/support/v4/i/ay;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/i/ay;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/a/a;->c:F

    sub-float/2addr v3, v4

    invoke-static {p1, v2}, Landroid/support/v4/i/ay;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v4, p0, Landroid/support/v7/widget/a/a;->d:F

    sub-float/2addr v2, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/support/v7/widget/a/a;->o:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/a/a;->o:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_0

    :cond_2
    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/cy;->c()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/widget/cy;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->a(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/do;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v7/widget/a/a;->t:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    invoke-virtual {v1}, Landroid/support/v7/widget/a/g;->c()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->g:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/a/a;->e:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v5, v2, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->h:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/a/a;->f:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v6, v2, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v5

    mul-int/lit8 v3, v1, 0x2

    add-int v7, v2, v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v6

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v2, v1

    add-int v1, v5, v7

    div-int/lit8 v9, v1, 0x2

    add-int v1, v6, v8

    div-int/lit8 v10, v1, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/widget/cy;->o()I

    move-result v12

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v12, :cond_4

    invoke-virtual {v11, v4}, Landroid/support/v7/widget/cy;->f(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gt v2, v8, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-lt v2, v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ch;->a(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v3, v14, v13}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Landroid/support/v7/widget/do;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v2, v2

    mul-int/2addr v1, v1

    add-int v14, v2, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_3
    if-ge v2, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->t:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v14, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    invoke-interface {v1, v3, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->t:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    return-object v1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->o:I

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/cx;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->y:Landroid/support/v7/widget/db;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/db;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/da;)V

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->c()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/k;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/k;I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/do;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/do;I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->c(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/a/k;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    new-instance v1, Landroid/support/v7/widget/a/e;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/widget/a/e;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/k;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/support/v7/widget/do;I)V
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/a/a;->k:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v7/widget/a/a;->A:J

    iget v4, p0, Landroid/support/v7/widget/a/a;->k:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/do;Z)I

    iput p2, p0, Landroid/support/v7/widget/a/a;->k:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->v:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->h()V

    :cond_1
    const/4 v0, 0x1

    mul-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v11, v0, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v1, v2, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x2

    if-ne v4, v0, :cond_6

    const/4 v9, 0x0

    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->g()V

    sparse-switch v9, :sswitch_data_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x2

    if-ne v4, v0, :cond_7

    const/16 v3, 0x8

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->a([F)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    const/4 v1, 0x1

    aget v6, v0, v1

    new-instance v0, Landroid/support/v7/widget/a/d;

    move-object v1, p0

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/a/d;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/do;IIFFFFILandroid/support/v7/widget/do;)V

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    sub-float v4, v7, v5

    sub-float v5, v8, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;IFF)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/a/k;->a(J)V

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v7/widget/a/k;->a()V

    const/4 v0, 0x1

    :goto_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    :cond_2
    move v1, v0

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I

    move-result v0

    and-int/2addr v0, v11

    iget v2, p0, Landroid/support/v7/widget/a/a;->k:I

    mul-int/lit8 v2, v2, 0x8

    shr-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/a/a;->l:I

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->g:F

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->h:F

    iput-object p1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    if-nez v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/cy;->x()V

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget v2, p0, Landroid/support/v7/widget/a/a;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/do;I)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/do;)I

    move-result v9

    goto/16 :goto_1

    :sswitch_0
    const/4 v8, 0x0

    iget v0, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v0, v1

    goto/16 :goto_2

    :sswitch_1
    const/4 v7, 0x0

    iget v0, p0, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    goto/16 :goto_2

    :cond_7
    if-lez v9, :cond_8

    const/4 v3, 0x2

    goto/16 :goto_3

    :cond_8
    const/4 v3, 0x4

    goto/16 :goto_3

    :cond_9
    iget-object v1, v2, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->c(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/widget/a/g;->c(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)V

    goto/16 :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/MotionEvent;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, p3}, Landroid/support/v4/i/ay;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p1, p3}, Landroid/support/v4/i/ay;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/a/a;->c:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/a/a;->e:F

    iget v0, p0, Landroid/support/v7/widget/a/a;->d:F

    sub-float v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->f:F

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->e:F

    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->e:F

    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->f:F

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->f:F

    :cond_3
    return-void
.end method

.method private a([F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/widget/a/a;->l:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/a/a;->g:F

    iget v1, p0, Landroid/support/v7/widget/a/a;->e:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v1, v1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/a/a;->l:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/a/a;->h:F

    iget v1, p0, Landroid/support/v7/widget/a/a;->f:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v1, v1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/i/bt;->m(Landroid/view/View;)F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/i/bt;->n(Landroid/view/View;)F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private a(ILandroid/view/MotionEvent;I)Z
    .locals 10

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-nez v2, :cond_0

    if-ne p1, v3, :cond_0

    iget v2, p0, Landroid/support/v7/widget/a/a;->k:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    invoke-virtual {v2}, Landroid/support/v7/widget/a/g;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v2}, Landroid/support/v7/widget/ch;->getScrollState()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;)Landroid/support/v7/widget/do;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    invoke-static {p2, p3}, Landroid/support/v4/i/ay;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-static {p2, p3}, Landroid/support/v4/i/ay;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/a/a;->c:F

    sub-float/2addr v4, v6

    iget v6, p0, Landroid/support/v7/widget/a/a;->d:F

    sub-float/2addr v5, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/a/a;->o:I

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_2

    iget v8, p0, Landroid/support/v7/widget/a/a;->o:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_0

    :cond_2
    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    cmpg-float v5, v4, v9

    if-gez v5, :cond_3

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    :cond_3
    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    :cond_4
    iput v9, p0, Landroid/support/v7/widget/a/a;->f:F

    iput v9, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {p2, v0}, Landroid/support/v4/i/ay;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/do;I)V

    move v0, v1

    goto :goto_0

    :cond_5
    cmpg-float v4, v5, v9

    if-gez v4, :cond_6

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    :cond_6
    cmpl-float v4, v5, v9

    if-lez v4, :cond_4

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;ILandroid/view/MotionEvent;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/a/a;->a(ILandroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/do;I)I
    .locals 6

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v5, 0x0

    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/a/a;->e:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/a/a;->i:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-static {v3, v4}, Landroid/support/v4/i/bo;->a(Landroid/view/VelocityTracker;I)F

    move-result v3

    cmpl-float v4, v3, v5

    if-lez v4, :cond_2

    :goto_1
    and-int v2, v1, p2

    if-eqz v2, :cond_3

    if-ne v0, v1, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v3}, Landroid/support/v7/widget/ch;->getMinFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    move v0, v1

    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/do;)F

    move-result v2

    mul-float/2addr v1, v2

    and-int v2, p2, v0

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic b(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/widget/a/a;->g:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->e:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/a/a;->h:F

    iget v5, p0, Landroid/support/v7/widget/a/a;->f:F

    add-float/2addr v2, v5

    invoke-static {v0, v3, v4, v1, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/view/View;FFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    iget-object v1, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget-object v1, v1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    iget v5, v0, Landroid/support/v7/widget/a/k;->k:F

    iget v0, v0, Landroid/support/v7/widget/a/k;->l:F

    invoke-static {v1, v3, v4, v5, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/view/View;FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/ch;->a(FF)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/a/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/cx;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->y:Landroid/support/v7/widget/db;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/db;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/da;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/a/g;->c(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->v:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/a;->w:I

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->g()V

    return-void
.end method

.method private b(Landroid/support/v7/widget/do;)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/a/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/do;)F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/a/a;->g:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->e:F

    add-float/2addr v1, v2

    float-to-int v6, v1

    iget v1, p0, Landroid/support/v7/widget/a/a;->h:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->f:F

    add-float/2addr v1, v2

    float-to-int v7, v1

    iget-object v1, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/do;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    invoke-virtual {v1, p1, v0, v6, v7}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/do;Ljava/util/List;II)Landroid/support/v7/widget/do;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/widget/do;->e()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/widget/do;->e()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, v1, p1, v4}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Landroid/support/v7/widget/do;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;ILandroid/support/v7/widget/do;III)V

    goto/16 :goto_0
.end method

.method private c(Landroid/support/v7/widget/do;)I
    .locals 5

    const v4, 0xff00

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/widget/a/a;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-static {v3}, Landroid/support/v4/i/bt;->h(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/widget/a/g;->d(II)I

    move-result v2

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    and-int/2addr v1, v4

    shr-int/lit8 v3, v1, 0x8

    iget v1, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/do;I)I

    move-result v1

    if-lez v1, :cond_3

    and-int v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v4/i/bt;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v7/widget/a/g;->a(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/do;I)I

    move-result v1

    if-lez v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/do;I)I

    move-result v1

    if-lez v1, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/do;I)I

    move-result v1

    if-lez v1, :cond_0

    and-int v0, v3, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v4/i/bt;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v7/widget/a/g;->a(II)I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/do;I)I
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/a/a;->f:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/a/a;->i:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-static {v3, v4}, Landroid/support/v4/i/bo;->b(Landroid/view/VelocityTracker;I)F

    move-result v3

    cmpl-float v4, v3, v5

    if-lez v4, :cond_2

    :goto_1
    and-int v2, v1, p2

    if-eqz v2, :cond_3

    if-ne v1, v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v3}, Landroid/support/v7/widget/ch;->getMinFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    move v0, v1

    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/do;)F

    move-result v2

    mul-float/2addr v1, v2

    and-int v2, p2, v0

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private c(Landroid/view/MotionEvent;)Landroid/support/v7/widget/a/k;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    iget-object v4, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget-object v4, v4, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    if-eq v4, v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/ch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:Landroid/support/v4/i/q;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/i/q;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/a/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/a/j;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/b;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/i/q;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->x:Landroid/support/v4/i/q;

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->v:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->v:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->u:Landroid/support/v7/widget/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->setChildDrawingOrderCallback(Landroid/support/v7/widget/cr;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/a/a;)Landroid/support/v4/i/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:Landroid/support/v4/i/q;

    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic e(Landroid/support/v7/widget/a/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->f()V

    return-void
.end method

.method private e()Z
    .locals 14

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-nez v1, :cond_0

    iput-wide v12, p0, Landroid/support/v7/widget/a/a;->A:J

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v2, p0, Landroid/support/v7/widget/a/a;->A:J

    cmp-long v1, v2, v12

    if-nez v1, :cond_6

    const-wide/16 v6, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->z:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/a/a;->z:Landroid/graphics/Rect;

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v2, v2, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->z:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/cy;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/support/v7/widget/a/a;->g:F

    iget v3, p0, Landroid/support/v7/widget/a/a;->e:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v4}, Landroid/support/v7/widget/ch;->getPaddingLeft()I

    move-result v4

    sub-int v4, v3, v4

    iget v3, p0, Landroid/support/v7/widget/a/a;->e:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_7

    if-gez v4, :cond_7

    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/support/v7/widget/cy;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/support/v7/widget/a/a;->h:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->f:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, v2

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v3}, Landroid/support/v7/widget/ch;->getPaddingTop()I

    move-result v3

    sub-int v8, v2, v3

    iget v2, p0, Landroid/support/v7/widget/a/a;->f:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_9

    if-gez v8, :cond_9

    :cond_3
    :goto_3
    if-eqz v4, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v3, v3, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v5}, Landroid/support/v7/widget/ch;->getWidth()I

    move-result v5

    invoke-virtual/range {v1 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;IIIJ)I

    move-result v4

    move v9, v4

    :goto_4
    if-eqz v8, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v3, v3, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v4}, Landroid/support/v7/widget/ch;->getHeight()I

    move-result v5

    move v4, v8

    invoke-virtual/range {v1 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;IIIJ)I

    move-result v1

    :goto_5
    if-nez v9, :cond_4

    if-eqz v1, :cond_b

    :cond_4
    iget-wide v2, p0, Landroid/support/v7/widget/a/a;->A:J

    cmp-long v0, v2, v12

    if-nez v0, :cond_5

    iput-wide v10, p0, Landroid/support/v7/widget/a/a;->A:J

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, v9, v1}, Landroid/support/v7/widget/ch;->scrollBy(II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    iget-wide v2, p0, Landroid/support/v7/widget/a/a;->A:J

    sub-long v6, v10, v2

    goto/16 :goto_1

    :cond_7
    iget v3, p0, Landroid/support/v7/widget/a/a;->e:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v3, v3, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v3}, Landroid/support/v7/widget/ch;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v4}, Landroid/support/v7/widget/ch;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v3

    if-gtz v4, :cond_2

    :cond_8
    move v4, v0

    goto/16 :goto_2

    :cond_9
    iget v2, p0, Landroid/support/v7/widget/a/a;->f:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v2, v2, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v2}, Landroid/support/v7/widget/ch;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v3}, Landroid/support/v7/widget/ch;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v8, v1, v2

    if-gtz v8, :cond_3

    :cond_a
    move v8, v0

    goto/16 :goto_3

    :cond_b
    iput-wide v12, p0, Landroid/support/v7/widget/a/a;->A:J

    goto/16 :goto_0

    :cond_c
    move v1, v8

    goto :goto_5

    :cond_d
    move v9, v4

    goto/16 :goto_4
.end method

.method static synthetic f(Landroid/support/v7/widget/a/a;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/a/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->v:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->u:Landroid/support/v7/widget/cr;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/a/f;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/f;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->u:Landroid/support/v7/widget/cr;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->u:Landroid/support/v7/widget/cr;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->setChildDrawingOrderCallback(Landroid/support/v7/widget/cr;)V

    goto :goto_0
.end method

.method static synthetic h(Landroid/support/v7/widget/a/a;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Landroid/support/v7/widget/a/a;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/a/a;->w:I

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/dl;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/a;->w:I

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->a([F)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    iget v5, p0, Landroid/support/v7/widget/a/a;->k:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/a/g;Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V

    return-void

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/dl;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ch;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->b()V

    :cond_2
    iput-object p1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->a()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/dl;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->a([F)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    iget v5, p0, Landroid/support/v7/widget/a/a;->k:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/a/g;Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V

    return-void

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/a;->c(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ch;->a(Landroid/view/View;)Landroid/support/v7/widget/do;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/do;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/do;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/do;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->a:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/ch;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/a/g;->c(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)V

    goto :goto_0
.end method

.class public Lio/codetail/a/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/codetail/a/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lio/codetail/a/a;)Lcom/a/a/b;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Lio/codetail/a/d;

    invoke-direct {v0, p0}, Lio/codetail/a/d;-><init>(Lio/codetail/a/a;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Lio/codetail/a/c;

    invoke-direct {v0, p0}, Lio/codetail/a/c;-><init>(Lio/codetail/a/a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/codetail/a/b;

    invoke-direct {v0, p0}, Lio/codetail/a/b;-><init>(Lio/codetail/a/a;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;IIFF)Lio/codetail/a/g;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lio/codetail/a/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View must be inside RevealFrameLayout or RevealLinearLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/codetail/a/a;

    new-instance v0, Lio/codetail/a/e;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/codetail/a/e;-><init>(IIFFLjava/lang/ref/WeakReference;)V

    invoke-interface {v6, v0}, Lio/codetail/a/a;->a(Lio/codetail/a/e;)V

    sget-boolean v0, Lio/codetail/a/k;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lio/codetail/a/i;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lio/codetail/a/i;-><init>(Landroid/animation/Animator;Lio/codetail/a/a;)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lio/codetail/a/a;->a:Lio/codetail/a/f;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    invoke-static {v6, v0, v1}, Lcom/a/a/i;->a(Ljava/lang/Object;Lcom/a/b/c;[F)Lcom/a/a/i;

    move-result-object v1

    invoke-static {v6}, Lio/codetail/a/k;->a(Lio/codetail/a/a;)Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/i;->a(Lcom/a/a/b;)V

    new-instance v0, Lio/codetail/a/j;

    invoke-direct {v0, v1, v6}, Lio/codetail/a/j;-><init>(Lcom/a/a/a;Lio/codetail/a/a;)V

    goto :goto_0
.end method

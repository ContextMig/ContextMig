.class public Lio/codetail/a/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(IIFFLjava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/codetail/a/e;->a:I

    iput p2, p0, Lio/codetail/a/e;->b:I

    iput p3, p0, Lio/codetail/a/e;->c:F

    iput p4, p0, Lio/codetail/a/e;->d:F

    iput-object p5, p0, Lio/codetail/a/e;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lio/codetail/a/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

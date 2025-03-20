.class public Lio/codetail/a/b;
.super Lio/codetail/a/l;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lio/codetail/a/a;)V
    .locals 1

    invoke-direct {p0}, Lio/codetail/a/l;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/codetail/a/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a;)V
    .locals 1

    iget-object v0, p0, Lio/codetail/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/codetail/a/a;

    invoke-interface {v0}, Lio/codetail/a/a;->h()V

    return-void
.end method

.method public b(Lcom/a/a/a;)V
    .locals 1

    iget-object v0, p0, Lio/codetail/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/codetail/a/a;

    invoke-interface {v0}, Lio/codetail/a/a;->i()V

    return-void
.end method

.method public bridge synthetic c(Lcom/a/a/a;)V
    .locals 0

    invoke-super {p0, p1}, Lio/codetail/a/l;->c(Lcom/a/a/a;)V

    return-void
.end method

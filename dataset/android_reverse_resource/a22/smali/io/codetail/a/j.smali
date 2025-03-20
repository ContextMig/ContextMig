.class final Lio/codetail/a/j;
.super Lio/codetail/a/g;


# instance fields
.field b:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/a/a/a;Lio/codetail/a/a;)V
    .locals 1

    invoke-direct {p0, p2}, Lio/codetail/a/g;-><init>(Lio/codetail/a/a;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/codetail/a/j;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lio/codetail/a/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lio/codetail/a/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    if-eqz v0, :cond_0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a;->a(J)Lcom/a/a/a;

    :cond_0
    return-void
.end method

.method public a(Lio/codetail/a/h;)V
    .locals 2

    iget-object v0, p0, Lio/codetail/a/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/a;->a(Lcom/a/a/b;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lio/codetail/a/j$1;

    invoke-direct {v1, p0, p1}, Lio/codetail/a/j$1;-><init>(Lio/codetail/a/j;Lio/codetail/a/h;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a;->a(Lcom/a/a/b;)V

    goto :goto_0
.end method

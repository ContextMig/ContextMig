.class public Lio/codetail/a/c;
.super Lio/codetail/a/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field b:I

.field c:I


# direct methods
.method constructor <init>(Lio/codetail/a/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/codetail/a/b;-><init>(Lio/codetail/a/a;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    iput v0, p0, Lio/codetail/a/c;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lio/codetail/a/c;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a;)V
    .locals 3

    iget-object v0, p0, Lio/codetail/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lio/codetail/a/c;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lio/codetail/a/b;->a(Lcom/a/a/a;)V

    return-void
.end method

.method public b(Lcom/a/a/a;)V
    .locals 3

    iget-object v0, p0, Lio/codetail/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lio/codetail/a/c;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lio/codetail/a/b;->b(Lcom/a/a/a;)V

    return-void
.end method

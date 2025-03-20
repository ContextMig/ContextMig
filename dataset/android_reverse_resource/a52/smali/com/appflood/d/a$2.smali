.class final Lcom/appflood/d/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/d/a;->requestFinished(Lcom/appflood/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/appflood/d/a;


# direct methods
.method constructor <init>(Lcom/appflood/d/a;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/d/a$2;->b:Lcom/appflood/d/a;

    iput-object p2, p0, Lcom/appflood/d/a$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appflood/d/a$2;->b:Lcom/appflood/d/a;

    iget-object v1, p0, Lcom/appflood/d/a$2;->b:Lcom/appflood/d/a;

    invoke-virtual {v1}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/appflood/d/a;->m:I

    iget v3, v0, Lcom/appflood/d/a;->n:I

    invoke-virtual {v0, v2, v3}, Lcom/appflood/d/a;->a(II)V

    invoke-static {}, Lcom/appflood/c/f;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    :goto_0
    invoke-virtual {v0}, Lcom/appflood/d/a;->b()V

    iget-object v0, p0, Lcom/appflood/d/a$2;->b:Lcom/appflood/d/a;

    iget-object v0, v0, Lcom/appflood/d/a;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appflood/d/a$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    new-instance v2, Lcom/appflood/d/a$3;

    invoke-direct {v2, v0, v1}, Lcom/appflood/d/a$3;-><init>(Lcom/appflood/d/a;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

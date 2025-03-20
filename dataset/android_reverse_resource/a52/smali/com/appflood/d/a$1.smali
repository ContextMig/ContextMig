.class final Lcom/appflood/d/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/d/a;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appflood/d/a;


# direct methods
.method constructor <init>(Lcom/appflood/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget-object v1, p0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    invoke-virtual {v1}, Lcom/appflood/d/a;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/appflood/d/a;->k:I

    iget-object v0, p0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget-object v1, p0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    invoke-virtual {v1}, Lcom/appflood/d/a;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/appflood/d/a;->l:I

    iget-object v0, p0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget v0, v0, Lcom/appflood/d/a;->k:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget v0, v0, Lcom/appflood/d/a;->l:I

    if-gtz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/appflood/d/a$1$1;

    invoke-direct {v0, p0}, Lcom/appflood/d/a$1$1;-><init>(Lcom/appflood/d/a$1;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

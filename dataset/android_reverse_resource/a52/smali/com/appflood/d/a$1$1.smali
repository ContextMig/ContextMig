.class final Lcom/appflood/d/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/d/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/d/a$1;


# direct methods
.method constructor <init>(Lcom/appflood/d/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    iget-object v1, v1, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    iget-object v1, v1, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    iget-object v0, v0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget-object v1, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    iget-object v1, v1, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    invoke-virtual {v1}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/d/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    iget-object v0, v0, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget-object v1, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    iget-object v1, v1, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget v1, v1, Lcom/appflood/d/a;->m:I

    iget-object v2, p0, Lcom/appflood/d/a$1$1;->a:Lcom/appflood/d/a$1;

    iget-object v2, v2, Lcom/appflood/d/a$1;->a:Lcom/appflood/d/a;

    iget v2, v2, Lcom/appflood/d/a;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/appflood/d/a;->a(II)V

    return-void
.end method

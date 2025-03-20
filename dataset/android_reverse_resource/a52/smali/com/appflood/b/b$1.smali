.class final Lcom/appflood/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/b/b$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI image download failed. statuscode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/appflood/b/b$1$1;

    invoke-direct {v1, p0, v0}, Lcom/appflood/b/b$1$1;-><init>(Lcom/appflood/b/b$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

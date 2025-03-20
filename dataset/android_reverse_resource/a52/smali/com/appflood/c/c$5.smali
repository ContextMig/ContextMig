.class final Lcom/appflood/c/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/c;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/c;


# direct methods
.method constructor <init>(Lcom/appflood/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/c$5;->a:Lcom/appflood/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/c$5;->a:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/c$5;->a:Lcom/appflood/c/c;

    iget-boolean v0, v0, Lcom/appflood/c/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/c$5;->a:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/appflood/c/c$a;->a(Z)V

    iget-object v0, p0, Lcom/appflood/c/c$5;->a:Lcom/appflood/c/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appflood/c/c;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

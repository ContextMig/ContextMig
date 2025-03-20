.class final Lcom/appflood/c/d$b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/d$b$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/d$b$2;


# direct methods
.method constructor <init>(Lcom/appflood/c/d$b$2;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/d$b$2$1;->a:Lcom/appflood/c/d$b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/d$b$2$1;->a:Lcom/appflood/c/d$b$2;

    iget-object v0, v0, Lcom/appflood/c/d$b$2;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/d$b$2$1;->a:Lcom/appflood/c/d$b$2;

    iget-object v0, v0, Lcom/appflood/c/d$b$2;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/d$b$2$1;->a:Lcom/appflood/c/d$b$2;

    iget-object v0, v0, Lcom/appflood/c/d$b$2;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "something wrong when dialog dismiss"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

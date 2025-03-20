.class final Lcom/appflood/c/d$b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/d$b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appflood/c/d$b$1;


# direct methods
.method constructor <init>(Lcom/appflood/c/d$b$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/d$b$1$1;->a:Lcom/appflood/c/d$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/d$b$1$1;->a:Lcom/appflood/c/d$b$1;

    iget-object v0, v0, Lcom/appflood/c/d$b$1;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/d$b$1$1;->a:Lcom/appflood/c/d$b$1;

    iget-object v0, v0, Lcom/appflood/c/d$b$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/d$b$1$1;->a:Lcom/appflood/c/d$b$1;

    iget-object v0, v0, Lcom/appflood/c/d$b$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/appflood/c/d$b$1$1;->a:Lcom/appflood/c/d$b$1;

    iget-object v1, v1, Lcom/appflood/c/d$b$1;->b:Lcom/appflood/c/d$b;

    iget-object v1, v1, Lcom/appflood/c/d$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/appflood/c/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/appflood/c/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appflood/c/d$b$1$1$2;

    invoke-direct {v2, p0}, Lcom/appflood/c/d$b$1$1$2;-><init>(Lcom/appflood/c/d$b$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/appflood/c/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appflood/c/d$b$1$1$1;

    invoke-direct {v2}, Lcom/appflood/c/d$b$1$1$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "something wrong when dialog popup"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

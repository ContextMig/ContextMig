.class final Lcom/appflood/c/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appflood/c/d$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/d$b;->a:Landroid/content/Context;

    const-string v1, ""

    sget-object v2, Lcom/appflood/c/d;->c:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/appflood/c/d$b$1;

    invoke-direct {v1, p0, v0}, Lcom/appflood/c/d$b$1;-><init>(Lcom/appflood/c/d$b;Landroid/app/ProgressDialog;)V

    invoke-static {v1}, Lcom/appflood/c/d;->b(Lcom/appflood/c/d$a;)Lcom/appflood/c/d$a;

    new-instance v1, Lcom/appflood/c/d$b$2;

    invoke-direct {v1, v0}, Lcom/appflood/c/d$b$2;-><init>(Landroid/app/ProgressDialog;)V

    invoke-static {v1}, Lcom/appflood/c/d;->c(Lcom/appflood/c/d$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "showProgress failed"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

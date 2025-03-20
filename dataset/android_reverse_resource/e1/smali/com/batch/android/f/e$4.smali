.class Lcom/batch/android/f/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/e;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/batch/android/f/e;


# direct methods
.method constructor <init>(Lcom/batch/android/f/e;Z)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/batch/android/f/e$4;->b:Lcom/batch/android/f/e;

    iput-boolean p2, p0, Lcom/batch/android/f/e$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    const-string v0, "pushtoken"

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 594
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/batch/android/f/e$4;->a:Z

    if-eqz v0, :cond_2

    .line 603
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/f/e$4;->b:Lcom/batch/android/f/e;

    invoke-static {v1}, Lcom/batch/android/f/e;->b(Lcom/batch/android/f/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    :cond_1
    const-string v0, "No push token retreived"

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 646
    const-string v1, "Error while requesting push token"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 607
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/f/e$4;->b:Lcom/batch/android/f/e;

    invoke-static {v1}, Lcom/batch/android/f/e;->b(Lcom/batch/android/f/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 619
    :cond_3
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/f/e$4$1;

    invoke-direct {v2, p0, v0}, Lcom/batch/android/f/e$4$1;-><init>(Lcom/batch/android/f/e$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

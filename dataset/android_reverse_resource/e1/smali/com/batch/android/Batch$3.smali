.class final Lcom/batch/android/Batch$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 1258
    iput-boolean p1, p0, Lcom/batch/android/Batch$3;->a:Z

    iput-object p2, p0, Lcom/batch/android/Batch$3;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/batch/android/Batch$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)Lcom/batch/android/i/d;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop called with state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 1264
    iget-boolean v0, p0, Lcom/batch/android/Batch$3;->a:Z

    if-eqz v0, :cond_0

    .line 1266
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->e()V

    .line 1269
    :cond_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->c()Landroid/app/Activity;

    move-result-object v2

    .line 1273
    iget-object v0, p0, Lcom/batch/android/Batch$3;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 1275
    iget-object v0, p0, Lcom/batch/android/Batch$3;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1281
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    .line 1283
    const-string v0, "Closing a sub activity"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 1322
    :goto_1
    return-object v0

    .line 1290
    :cond_1
    iget-boolean v0, p0, Lcom/batch/android/Batch$3;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/batch/android/Batch$3;->c:Z

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1292
    const-string v0, "onStop called but activity is not finishing... saving date"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 1293
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->b()V

    move-object v0, v1

    .line 1294
    goto :goto_1

    .line 1297
    :cond_2
    iget-boolean v0, p0, Lcom/batch/android/Batch$3;->a:Z

    if-nez v0, :cond_3

    .line 1302
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Landroid/app/Activity;)V

    .line 1308
    :cond_3
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1310
    :cond_4
    const-string v0, "onStop called, but Batch is retained by a Service or Activity"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 1311
    goto :goto_1

    .line 1317
    :cond_5
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/c;->f()V

    .line 1322
    sget-object v0, Lcom/batch/android/i/d;->c:Lcom/batch/android/i/d;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

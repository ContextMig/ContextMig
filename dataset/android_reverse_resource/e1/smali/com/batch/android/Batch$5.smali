.class final Lcom/batch/android/Batch$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)Lcom/batch/android/i/d;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStop, called with state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 1386
    invoke-static {}, Lcom/batch/android/f/c;->a()Lcom/batch/android/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/c;->g()V

    .line 1387
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v0

    const-string v1, "_STOP"

    invoke-virtual {v0, v1}, Lcom/batch/android/f/f;->a(Ljava/lang/String;)V

    .line 1392
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/Batch;->i()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/b/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 1393
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/batch/android/i/c;->a(Landroid/content/Context;)V

    .line 1394
    invoke-static {v2}, Lcom/batch/android/Batch;->a(Lcom/batch/android/g;)Lcom/batch/android/g;

    .line 1395
    invoke-static {v2}, Lcom/batch/android/Batch;->a(Lcom/batch/android/i;)Lcom/batch/android/i;

    .line 1396
    invoke-static {v2}, Lcom/batch/android/Batch;->a(Lcom/batch/android/o;)Lcom/batch/android/o;

    .line 1397
    invoke-static {v2}, Lcom/batch/android/Batch;->a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 1398
    invoke-static {}, Lcom/batch/android/Batch;->j()Lcom/batch/android/c/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1400
    invoke-static {}, Lcom/batch/android/Batch;->j()Lcom/batch/android/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/w;->a()V

    .line 1401
    invoke-static {v2}, Lcom/batch/android/Batch;->a(Lcom/batch/android/c/w;)Lcom/batch/android/c/w;

    .line 1407
    :cond_0
    invoke-static {}, Lcom/batch/android/c/a;->c()V

    .line 1408
    invoke-static {}, Lcom/batch/android/c/t;->a()V

    .line 1409
    invoke-static {}, Lcom/batch/android/c/ab;->b()V

    .line 1410
    invoke-static {}, Lcom/batch/android/c/m;->a()V

    .line 1411
    invoke-static {}, Lcom/batch/android/c/q;->a()V

    .line 1412
    invoke-static {}, Lcom/batch/android/g;->e()V

    .line 1417
    invoke-static {v2}, Lcom/batch/android/Batch;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1422
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    return-object v0
.end method

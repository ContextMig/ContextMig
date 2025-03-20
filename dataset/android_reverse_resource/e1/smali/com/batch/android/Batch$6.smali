.class final Lcom/batch/android/Batch$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->isRunningInDevMode()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/batch/android/Batch$6;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1453
    invoke-static {}, Lcom/batch/android/Batch;->d()Lcom/batch/android/Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1455
    const-string v0, "You must call Batch.setConfig before asking isRunningInDevMode, returning default value : false"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 1468
    :goto_0
    return-void

    .line 1461
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/Batch$6;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/a;->a(Landroid/content/Context;)Lcom/batch/android/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/c/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1463
    :catch_0
    move-exception v0

    .line 1465
    const-string v1, "An internal Batch error occured while retreiving run mode, returning default value : false"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 1466
    const-string v1, "Error while retreiving dev mode"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

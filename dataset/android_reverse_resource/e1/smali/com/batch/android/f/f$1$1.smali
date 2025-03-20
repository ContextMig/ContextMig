.class Lcom/batch/android/f/f$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/f$1;->a(Lcom/batch/android/i/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/f/f$1;


# direct methods
.method constructor <init>(Lcom/batch/android/f/f$1;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->b(Lcom/batch/android/f/f;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->c(Lcom/batch/android/f/f;)Lcom/batch/android/j/b;

    move-result-object v1

    iget-object v0, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->b(Lcom/batch/android/f/f;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/d/b;

    invoke-virtual {v1, v0}, Lcom/batch/android/j/b;->a(Lcom/batch/android/d/b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    :try_start_1
    const-string v1, "Exception while flushing"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    iget-object v0, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->a(Lcom/batch/android/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 275
    :goto_1
    return-void

    .line 253
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    sget-object v1, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    new-instance v2, Lcom/batch/android/f/f$1$1$1;

    invoke-direct {v2, p0}, Lcom/batch/android/f/f$1$1$1;-><init>(Lcom/batch/android/f/f$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/d;Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->e(Lcom/batch/android/f/f;)Lcom/batch/android/d/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->e(Lcom/batch/android/f/f;)Lcom/batch/android/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/d/c;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->a(Lcom/batch/android/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v1, v1, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v1}, Lcom/batch/android/f/f;->a(Lcom/batch/android/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.class Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 315
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask.3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;->this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .prologue
    .line 319
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask.3;"
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;->this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->access$400(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 328
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 322
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 325
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 326
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$3;->this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->access$400(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0
.end method

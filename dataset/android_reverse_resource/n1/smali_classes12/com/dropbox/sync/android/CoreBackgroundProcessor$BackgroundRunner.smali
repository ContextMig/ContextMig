.class abstract Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;
.super Ljava/lang/Object;
.source "CoreBackgroundProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreBackgroundProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BackgroundRunner"
.end annotation


# instance fields
.field private mCurRetrySeconds:I

.field private final mInitialRetrySeconds:I

.field protected final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mMaxRetrySeconds:I

.field final synthetic this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/CoreLogger;)V
    .locals 1
    .param p2, "logger"    # Lcom/dropbox/sync/android/CoreLogger;

    .prologue
    const/4 v0, -0x1

    .line 222
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 224
    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mInitialRetrySeconds:I

    .line 225
    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mMaxRetrySeconds:I

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mCurRetrySeconds:I

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/CoreLogger;II)V
    .locals 1
    .param p2, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .param p3, "initialRetrySeconds"    # I
    .param p4, "maxRetrySeconds"    # I

    .prologue
    .line 229
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 231
    iput p3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mInitialRetrySeconds:I

    .line 232
    iput p4, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mMaxRetrySeconds:I

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mCurRetrySeconds:I

    .line 234
    return-void
.end method

.method private declared-synchronized getNextRetrySeconds()I
    .locals 3

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mInitialRetrySeconds:I

    iget v1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mCurRetrySeconds:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mMaxRetrySeconds:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mCurRetrySeconds:I

    .line 267
    iget v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mCurRetrySeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract attemptRun()Z
.end method

.method public run()V
    .locals 7

    .prologue
    .line 239
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->attemptRun()Z

    move-result v1

    .line 240
    .local v1, "lastRun":Z
    if-nez v1, :cond_0

    iget v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mMaxRetrySeconds:I

    if-lez v3, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->getNextRetrySeconds()I

    move-result v2

    .line 243
    .local v2, "retrySecs":I
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Background task will retry in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-static {v3}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$100(Lcom/dropbox/sync/android/CoreBackgroundProcessor;)V

    .line 246
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-static {v3}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$200(Lcom/dropbox/sync/android/CoreBackgroundProcessor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    int-to-long v4, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v2    # "retrySecs":I
    :goto_0
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-static {v3}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$300(Lcom/dropbox/sync/android/CoreBackgroundProcessor;)V

    .line 260
    return-void

    .line 248
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Background task complete."

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    .end local v1    # "lastRun":Z
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionOnApiThread(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 253
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-static {v4}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$300(Lcom/dropbox/sync/android/CoreBackgroundProcessor;)V

    throw v3

    .line 254
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Error;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionOnApiThread(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 256
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

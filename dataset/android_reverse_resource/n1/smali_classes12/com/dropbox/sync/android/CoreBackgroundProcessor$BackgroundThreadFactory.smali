.class Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;
.super Ljava/lang/Object;
.source "CoreBackgroundProcessor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreBackgroundProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundThreadFactory"
.end annotation


# instance fields
.field private final mDefaultFactory:Ljava/util/concurrent/ThreadFactory;

.field private final mThreadIndex:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;->mDefaultFactory:Ljava/util/concurrent/ThreadFactory;

    .line 298
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;->mThreadIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 299
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;->mDefaultFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 304
    .local v0, "t":Ljava/lang/Thread;
    sget v1, Lcom/dropbox/sync/android/NativeThreads;->BACKGROUND_THREAD_PRIORITY:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncApiBackground["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;->mThreadIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    new-instance v1, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory$1;

    invoke-direct {v1, p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory$1;-><init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 312
    return-object v0
.end method

.class public Lcom/batch/android/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static l:Lcom/batch/android/i/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Ljava/util/Date;

.field private e:Landroid/app/Activity;

.field private f:Lcom/batch/android/i/b;

.field private g:Ljava/util/Date;

.field private h:Lcom/batch/android/i/d;

.field private i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/batch/android/i/c;->b:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    iput-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;

    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/batch/android/i/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    iget-object v0, p0, Lcom/batch/android/i/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 79
    iget-object v0, p0, Lcom/batch/android/i/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 85
    return-void
.end method

.method public static declared-synchronized l()Lcom/batch/android/i/c;
    .locals 2

    .prologue
    .line 435
    const-class v1, Lcom/batch/android/i/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/batch/android/i/c;->l:Lcom/batch/android/i/c;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/batch/android/i/c;

    invoke-direct {v0}, Lcom/batch/android/i/c;-><init>()V

    sput-object v0, Lcom/batch/android/i/c;->l:Lcom/batch/android/i/c;

    .line 440
    :cond_0
    sget-object v0, Lcom/batch/android/i/c;->l:Lcom/batch/android/i/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/i/c;->g:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/i/c;->g:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 249
    :goto_0
    iput-object v1, p0, Lcom/batch/android/i/c;->g:Ljava/util/Date;

    .line 245
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/batch/android/i/c;->g:Ljava/util/Date;

    throw v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/batch/android/i/c;->e:Landroid/app/Activity;

    .line 279
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 404
    iget-object v0, p0, Lcom/batch/android/i/c;->f:Lcom/batch/android/i/b;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lcom/batch/android/i/b;

    invoke-direct {v0}, Lcom/batch/android/i/b;-><init>()V

    iput-object v0, p0, Lcom/batch/android/i/c;->f:Lcom/batch/android/i/b;

    .line 407
    iget-object v0, p0, Lcom/batch/android/i/c;->f:Lcom/batch/android/i/b;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 409
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 382
    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/batch/android/i/c;->a:Landroid/content/Context;

    .line 388
    return-void
.end method

.method public a(Lcom/batch/android/i/e;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;

    invoke-interface {p1, v0}, Lcom/batch/android/i/e;->a(Lcom/batch/android/i/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/batch/android/i/a;)Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;

    invoke-interface {p1, v0}, Lcom/batch/android/i/a;->a(Lcom/batch/android/i/d;)Lcom/batch/android/i/d;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 103
    iput-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/batch/android/i/d;Lcom/batch/android/i/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 139
    :goto_0
    return v0

    .line 132
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;

    invoke-interface {p2, v1}, Lcom/batch/android/i/a;->a(Lcom/batch/android/i/d;)Lcom/batch/android/i/d;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_1

    .line 135
    iput-object v1, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/batch/android/i/c;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/batch/android/i/d;Lcom/batch/android/i/e;)Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;

    invoke-interface {p2, v0}, Lcom/batch/android/i/e;->a(Lcom/batch/android/i/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    const/4 v0, 0x1

    .line 189
    iget-object v1, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/batch/android/i/d;Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 225
    :goto_0
    return v0

    .line 223
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    const/4 v0, 0x1

    .line 229
    iget-object v1, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/batch/android/i/c;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/d;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;

    sget-object v1, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    if-eq v0, v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/batch/android/i/c;->g:Ljava/util/Date;

    goto :goto_0
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/batch/android/i/c;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/batch/android/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 298
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/batch/android/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 307
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/batch/android/i/c;->h:Lcom/batch/android/i/d;

    sget-object v1, Lcom/batch/android/i/d;->b:Lcom/batch/android/i/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v2, p0, Lcom/batch/android/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 326
    if-gez v2, :cond_3

    .line 328
    const-string v3, "Batch has been under-locked. You probably called Batch.onServiceDestroy() too many times. Recovering, but this may leave Batch in an undesired state."

    invoke-static {v1, v3}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/batch/android/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 335
    if-gez v2, :cond_2

    .line 337
    iget-object v3, p0, Lcom/batch/android/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 350
    :cond_1
    :goto_0
    return v0

    .line 345
    :cond_2
    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 350
    :cond_3
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 361
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/batch/android/i/c;->d:Ljava/util/Date;

    .line 362
    return-void
.end method

.method public i()Ljava/util/Date;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/batch/android/i/c;->d:Ljava/util/Date;

    return-object v0
.end method

.method public j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/batch/android/i/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/batch/android/i/c;->f:Lcom/batch/android/i/b;

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/i/c;->f:Lcom/batch/android/i/b;

    invoke-virtual {v0}, Lcom/batch/android/i/b;->a()Z

    move-result v0

    goto :goto_0
.end method

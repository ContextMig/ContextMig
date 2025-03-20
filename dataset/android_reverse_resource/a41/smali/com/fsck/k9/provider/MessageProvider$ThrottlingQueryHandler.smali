.class public Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ThrottlingQueryHandler"
.end annotation


# instance fields
.field private delegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

.field final synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/MessageProvider;
    .param p2, "delegate"    # Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    iput-object p2, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->delegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    .line 1025
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->delegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    invoke-interface {v0}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1037
    const/4 v6, 0x0

    .line 1039
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->delegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1041
    if-nez v6, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1047
    :cond_0
    instance-of v0, v6, Landroid/database/CrossProcessCursor;

    if-nez v0, :cond_2

    .line 1048
    const-string v0, "Unsupported cursor, returning null: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1050
    const/4 v8, 0x0

    .line 1075
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 1041
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-nez v6, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v1, v1, Lcom/fsck/k9/provider/MessageProvider;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    throw v0

    .line 1053
    :cond_2
    new-instance v8, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;

    check-cast v6, Landroid/database/CrossProcessCursor;

    .end local v6    # "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {v8, v6, v0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;-><init>(Landroid/database/CrossProcessCursor;Ljava/util/concurrent/Semaphore;)V

    .line 1056
    .local v8, "wrapped":Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1059
    .local v7, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;>;"
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->scheduledPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;

    invoke-direct {v1, p0, v7}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;-><init>(Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;Ljava/lang/ref/WeakReference;)V

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

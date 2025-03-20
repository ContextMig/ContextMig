.class public final Lcom/appflood/c/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/util/Timer;

.field private static c:Landroid/os/Handler;

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/appflood/b/a;

.field private static f:Lcom/appflood/a/a;

.field private static g:Landroid/content/Context;

.field private static h:Lcom/appflood/c/h;

.field private static i:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/f;->i:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/appflood/c/f;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/appflood/c/f;->c:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/appflood/c/f;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/appflood/c/f;->d:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "context ctx is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.papayamobile.ACTION_GET_VIRTUAL_ID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "version"

    const-string v2, "V2.1"

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ctx = ctx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/appflood/c/f;->i:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "com_appflood_provider_file"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/f;->i:Ljava/io/File;

    :cond_0
    sget-object v0, Lcom/appflood/c/f;->b:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    const-string v1, "appflood timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appflood/c/f;->b:Ljava/util/Timer;

    :cond_1
    sget-object v0, Lcom/appflood/c/f;->e:Lcom/appflood/b/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/appflood/b/a;

    invoke-direct {v0}, Lcom/appflood/b/a;-><init>()V

    sput-object v0, Lcom/appflood/c/f;->e:Lcom/appflood/b/a;

    :cond_2
    sget-object v0, Lcom/appflood/c/f;->f:Lcom/appflood/a/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/appflood/a/a;

    const-string v1, "ppy_cross"

    invoke-direct {v0, v1, p0}, Lcom/appflood/a/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/appflood/c/f;->f:Lcom/appflood/a/a;

    :cond_3
    if-eqz p1, :cond_7

    sget-object v0, Lcom/appflood/c/f;->f:Lcom/appflood/a/a;

    const-string v1, "ppyid"

    invoke-virtual {v0, v1}, Lcom/appflood/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/a;->a(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/f;->a:Ljava/lang/String;

    :cond_4
    sget-object v0, Lcom/appflood/c/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/appflood/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/appflood/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    sget-object v0, Lcom/appflood/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/appflood/e/j;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/f;->a:Ljava/lang/String;

    sget-object v0, Lcom/appflood/c/f;->f:Lcom/appflood/a/a;

    const-string v1, "ppyid"

    sget-object v2, Lcom/appflood/c/f;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/j;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appflood/a/a;->a(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Can\'t write cache initially!"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :cond_6
    sput-object p0, Lcom/appflood/c/f;->g:Landroid/content/Context;

    if-nez p0, :cond_8

    const-string v0, "context ctx is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/appflood/c/f$1;

    invoke-direct {v0}, Lcom/appflood/c/f$1;-><init>()V

    invoke-static {v0}, Lcom/appflood/c/d;->a(Lcom/appflood/c/d$a;)V

    :cond_7
    return-void

    :cond_8
    new-instance v0, Lcom/appflood/c/h;

    invoke-direct {v0}, Lcom/appflood/c/h;-><init>()V

    sput-object v0, Lcom/appflood/c/f;->h:Lcom/appflood/c/h;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.papayamobile.ACTION_RETURN_VIRTUAL_ID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appflood/c/f;->h:Lcom/appflood/c/h;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/appflood/c/f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/appflood/c/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/appflood/c/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred in handler run thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/appflood/c/f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appflood/c/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/TimerTask;J)V
    .locals 1

    sget-object v0, Lcom/appflood/c/f;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appflood/c/f;->b:Ljava/util/Timer;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/appflood/a/a;
    .locals 1

    sget-object v0, Lcom/appflood/c/f;->f:Lcom/appflood/a/a;

    return-object v0
.end method

.method public static c()Lcom/appflood/b/a;
    .locals 1

    sget-object v0, Lcom/appflood/c/f;->e:Lcom/appflood/b/a;

    return-object v0
.end method

.method public static d()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/appflood/c/f;->i:Ljava/io/File;

    return-object v0
.end method

.method public static e()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/appflood/c/f;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "context ctx is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sput-object v4, Lcom/appflood/c/f;->g:Landroid/content/Context;

    sget-object v0, Lcom/appflood/c/f;->e:Lcom/appflood/b/a;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/appflood/c/f;->e:Lcom/appflood/b/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/appflood/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appflood/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    iput-object v3, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/appflood/c/f;->h:Lcom/appflood/c/h;

    if-eqz v1, :cond_0

    :try_start_2
    sget-object v1, Lcom/appflood/c/f;->h:Lcom/appflood/c/h;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/appflood/c/f;->h:Lcom/appflood/c/h;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "failed to unregister Receiver"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, v1, Lcom/appflood/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v1, Lcom/appflood/b/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/appflood/b/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/appflood/b/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    sput-object v4, Lcom/appflood/c/f;->e:Lcom/appflood/b/a;

    :cond_4
    sget-object v0, Lcom/appflood/c/f;->b:Ljava/util/Timer;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/appflood/c/f;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v4, Lcom/appflood/c/f;->b:Ljava/util/Timer;

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "failed to shutdown the httpservice"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static f()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/appflood/c/f;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/appflood/c/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/appflood/c/f;->g:Landroid/content/Context;

    return-object v0
.end method

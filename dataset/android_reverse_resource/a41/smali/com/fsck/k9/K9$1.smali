.class Lcom/fsck/k9/K9$1;
.super Ljava/lang/Object;
.source "K9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/K9;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/K9;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/fsck/k9/K9;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/K9;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/fsck/k9/K9$1;->this$0:Lcom/fsck/k9/K9;

    iput-object p2, p0, Lcom/fsck/k9/K9$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/K9$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 432
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class Lcom/fsck/k9/controller/MessagingController$2;
.super Ljava/lang/Thread;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->runInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$command:Lcom/fsck/k9/controller/MessagingController$Command;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingController$Command;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$2;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$2;->val$command:Lcom/fsck/k9/controller/MessagingController$Command;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 210
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingController$2;->sleep(J)V

    .line 211
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$2;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->access$100(Lcom/fsck/k9/controller/MessagingController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$2;->val$command:Lcom/fsck/k9/controller/MessagingController$Command;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Interrupted while putting a pending command for an unavailable account back into the queue. THIS SHOULD NEVER HAPPEN."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.class Lcom/fsck/k9/controller/MessagingController$20$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/controller/MessagingController$20;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/controller/MessagingController$20;

    .prologue
    .line 2406
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$20$1;->this$1:Lcom/fsck/k9/controller/MessagingController$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 2409
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$20$1;->this$1:Lcom/fsck/k9/controller/MessagingController$20;

    iget-object v1, v1, Lcom/fsck/k9/controller/MessagingController$20;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 2410
    .local v0, "listener":Lcom/fsck/k9/controller/MessagingListener;
    invoke-interface {v0, p1}, Lcom/fsck/k9/controller/MessagingListener;->updateProgress(I)V

    goto :goto_0

    .line 2412
    .end local v0    # "listener":Lcom/fsck/k9/controller/MessagingListener;
    :cond_0
    return-void
.end method

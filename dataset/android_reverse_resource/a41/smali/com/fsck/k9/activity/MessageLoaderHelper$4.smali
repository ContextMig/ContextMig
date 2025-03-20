.class Lcom/fsck/k9/activity/MessageLoaderHelper$4;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "MessageLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMessageRemoteFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0, p4}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$1100(Lcom/fsck/k9/activity/MessageLoaderHelper;Ljava/lang/Throwable;)V

    .line 453
    return-void
.end method

.method public loadMessageRemoteFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$200(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/fsck/k9/activity/MessageReference;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$1000(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    goto :goto_0
.end method

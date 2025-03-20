.class final Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/StorageManager$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StorageListenerImplementation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
    .locals 0

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/activity/MessageList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/activity/MessageList;
    .param p2, "x1"    # Lcom/fsck/k9/activity/MessageList$1;

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;-><init>(Lcom/fsck/k9/activity/MessageList;)V

    return-void
.end method


# virtual methods
.method public onMount(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 1332
    return-void
.end method

.method public onUnmount(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$100(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$100(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;->this$0:Lcom/fsck/k9/activity/MessageList;

    new-instance v1, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation$1;-><init>(Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1327
    :cond_0
    return-void
.end method

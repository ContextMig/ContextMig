.class Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation$1;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;->onUnmount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation$1;->this$1:Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation$1;->this$1:Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$StorageListenerImplementation;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageList;->onAccountUnavailable()V

    .line 1324
    return-void
.end method

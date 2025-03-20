.class Lcom/fsck/k9/controller/MessagingControllerPushReceiver$1;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "MessagingControllerPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->syncFolder(Lcom/fsck/k9/mail/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingControllerPushReceiver;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingControllerPushReceiver;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingControllerPushReceiver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver$1;->this$0:Lcom/fsck/k9/controller/MessagingControllerPushReceiver;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 57
    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 51
    return-void
.end method

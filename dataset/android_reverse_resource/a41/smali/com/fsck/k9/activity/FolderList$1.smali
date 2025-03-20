.class Lcom/fsck/k9/activity/FolderList$1;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList;->checkMail(Lcom/fsck/k9/activity/FolderInfoHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;

.field final synthetic val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$1;->this$0:Lcom/fsck/k9/activity/FolderList;

    iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$1;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

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
    .line 226
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    goto :goto_0
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    goto :goto_0
.end method

.class Lcom/fsck/k9/controller/MessagingController$24;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->getFolderUnreadMessageCount(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$l:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$24;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$folderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$l:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2824
    const/4 v2, 0x0

    .line 2826
    .local v2, "unreadMessageCount":I
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$folderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v0

    .line 2827
    .local v0, "localFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2831
    .end local v0    # "localFolder":Lcom/fsck/k9/mail/Folder;
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$l:Lcom/fsck/k9/controller/MessagingListener;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$folderName:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lcom/fsck/k9/controller/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    .line 2832
    return-void

    .line 2828
    :catch_0
    move-exception v1

    .line 2829
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Count not get unread count for account %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$24;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

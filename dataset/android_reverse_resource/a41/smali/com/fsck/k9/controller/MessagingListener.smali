.class public interface abstract Lcom/fsck/k9/controller/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# virtual methods
.method public abstract accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
.end method

.method public abstract accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V
.end method

.method public abstract checkMailFinished(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.end method

.method public abstract checkMailStarted(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.end method

.method public abstract emptyTrashCompleted(Lcom/fsck/k9/Account;)V
.end method

.method public abstract enableProgressIndicator(Z)V
.end method

.method public abstract folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
.end method

.method public abstract listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.end method

.method public abstract listFoldersFinished(Lcom/fsck/k9/Account;)V
.end method

.method public abstract listFoldersStarted(Lcom/fsck/k9/Account;)V
.end method

.method public abstract listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
.end method

.method public abstract loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)V
.end method

.method public abstract loadMessageRemoteFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract loadMessageRemoteFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.end method

.method public abstract messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.end method

.method public abstract pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.end method

.method public abstract pendingCommandsFinished(Lcom/fsck/k9/Account;)V
.end method

.method public abstract pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
.end method

.method public abstract remoteSearchFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remoteSearchFinished(Ljava/lang/String;IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract remoteSearchServerQueryComplete(Ljava/lang/String;II)V
.end method

.method public abstract remoteSearchStarted(Ljava/lang/String;)V
.end method

.method public abstract searchStats(Lcom/fsck/k9/AccountStats;)V
.end method

.method public abstract sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
.end method

.method public abstract sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
.end method

.method public abstract sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
.end method

.method public abstract setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
.end method

.method public abstract synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.end method

.method public abstract synchronizeMailboxHeadersFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.end method

.method public abstract synchronizeMailboxHeadersProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.end method

.method public abstract synchronizeMailboxHeadersStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.end method

.method public abstract synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.end method

.method public abstract synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.end method

.method public abstract synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.end method

.method public abstract synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.end method

.method public abstract systemStatusChanged()V
.end method

.method public abstract updateProgress(I)V
.end method

.class public abstract Lcom/fsck/k9/controller/SimpleMessagingListener;
.super Ljava/lang/Object;
.source "SimpleMessagingListener.java"

# interfaces
.implements Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "oldSize"    # J
    .param p4, "newSize"    # J

    .prologue
    .line 29
    return-void
.end method

.method public accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;
    .param p2, "stats"    # Lcom/fsck/k9/AccountStats;

    .prologue
    .line 25
    return-void
.end method

.method public checkMailFinished(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 103
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 99
    return-void
.end method

.method public emptyTrashCompleted(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 119
    return-void
.end method

.method public enableProgressIndicator(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 123
    return-void
.end method

.method public listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
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

    .prologue
    .line 37
    .local p2, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    return-void
.end method

.method public listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method public listFoldersFinished(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 41
    return-void
.end method

.method public listFoldersStarted(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 33
    return-void
.end method

.method public listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
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

    .prologue
    .line 49
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    return-void
.end method

.method public loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "part"    # Lcom/fsck/k9/mail/Part;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 147
    return-void
.end method

.method public loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 143
    return-void
.end method

.method public loadMessageRemoteFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    return-void
.end method

.method public loadMessageRemoteFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method public messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 131
    return-void
.end method

.method public messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "oldUid"    # Ljava/lang/String;
    .param p4, "newUid"    # Ljava/lang/String;

    .prologue
    .line 135
    return-void
.end method

.method public pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 159
    return-void
.end method

.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method

.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 163
    return-void
.end method

.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 155
    return-void
.end method

.method public remoteSearchFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method public remoteSearchFinished(Ljava/lang/String;IILjava/util/List;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "numResults"    # I
    .param p3, "maxResults"    # I
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

    .prologue
    .line 175
    .local p4, "extraResults":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    return-void
.end method

.method public remoteSearchServerQueryComplete(Ljava/lang/String;II)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "numResults"    # I
    .param p3, "maxResults"    # I

    .prologue
    .line 171
    return-void
.end method

.method public remoteSearchStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method

.method public searchStats(Lcom/fsck/k9/AccountStats;)V
    .locals 0
    .param p1, "stats"    # Lcom/fsck/k9/AccountStats;

    .prologue
    .line 21
    return-void
.end method

.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 111
    return-void
.end method

.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 115
    return-void
.end method

.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 107
    return-void
.end method

.method public setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 83
    return-void
.end method

.method public synchronizeMailboxHeadersFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 66
    return-void
.end method

.method public synchronizeMailboxHeadersProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "completed"    # I
    .param p4, "total"    # I

    .prologue
    .line 61
    return-void
.end method

.method public synchronizeMailboxHeadersStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 74
    return-void
.end method

.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "completed"    # I
    .param p4, "total"    # I

    .prologue
    .line 70
    return-void
.end method

.method public synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 78
    return-void
.end method

.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public systemStatusChanged()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public updateProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 188
    return-void
.end method

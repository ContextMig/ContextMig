.class public Lcom/fsck/k9/fragment/MlfUtils;
.super Ljava/lang/Object;
.source "MlfUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildSubject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "subjectFromCursor"    # Ljava/lang/String;
    .param p1, "emptySubject"    # Ljava/lang/String;
    .param p2, "threadCount"    # I

    .prologue
    .line 51
    move-object v0, p0

    .line 52
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    .end local p1    # "emptySubject":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 54
    .restart local p1    # "emptySubject":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 56
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->stripSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 58
    goto :goto_0
.end method

.method static getOpenFolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LocalFolder;
    .locals 3
    .param p0, "folderName"    # Ljava/lang/String;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    .line 27
    .local v1, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v1, p0}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v0

    .line 28
    .local v0, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 29
    return-object v0
.end method

.method static getSenderAddressFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "fromList":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 47
    .local v0, "fromAddrs":[Lcom/fsck/k9/mail/Address;
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static setLastSelectedFolderName(Lcom/fsck/k9/Preferences;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p0, "preferences"    # Lcom/fsck/k9/Preferences;
    .param p2, "destFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Preferences;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v5, 0x0

    .line 35
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/MessageReference;

    .line 36
    .local v2, "firstMsg":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 37
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/fsck/k9/fragment/MlfUtils;->getOpenFolder(Ljava/lang/String;Lcom/fsck/k9/Account;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v3

    .line 38
    .local v3, "firstMsgFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v3, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->setLastSelectedFolderName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "firstMsg":Lcom/fsck/k9/activity/MessageReference;
    .end local v3    # "firstMsgFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v4, "Error getting folder for setLastSelectedFolderName()"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

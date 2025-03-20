.class public Lcom/fsck/k9/notification/NotificationActionService;
.super Lcom/fsck/k9/service/CoreService;
.source "NotificationActionService.java"


# static fields
.field private static final ACTION_ARCHIVE:Ljava/lang/String; = "ACTION_ARCHIVE"

.field private static final ACTION_DELETE:Ljava/lang/String; = "ACTION_DELETE"

.field private static final ACTION_DISMISS:Ljava/lang/String; = "ACTION_DISMISS"

.field private static final ACTION_MARK_AS_READ:Ljava/lang/String; = "ACTION_MARK_AS_READ"

.field private static final ACTION_SPAM:Ljava/lang/String; = "ACTION_SPAM"

.field private static final EXTRA_ACCOUNT_UUID:Ljava/lang/String; = "accountUuid"

.field private static final EXTRA_MESSAGE_REFERENCE:Ljava/lang/String; = "messageReference"

.field private static final EXTRA_MESSAGE_REFERENCES:Ljava/lang/String; = "messageReferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    return-void
.end method

.method private archiveMessages(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "controller"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    const/4 v7, 0x0

    .line 177
    const-string v5, "NotificationActionService archiving messages"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "archiveFolderName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->confirmSpam()Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    :cond_0
    invoke-direct {p0, p3, p2, v0}, Lcom/fsck/k9/notification/NotificationActionService;->isMovePossible(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 183
    :cond_1
    const-string v5, "Can not archive messages"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_2
    return-void

    .line 187
    :cond_3
    const-string v5, "messageReferences"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    .local v2, "messageReferenceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 189
    .local v3, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/MessageReference;

    .line 190
    .local v1, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {p3, v1}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 191
    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "sourceFolderName":Ljava/lang/String;
    invoke-virtual {p3, p2, v4, v1, v0}, Lcom/fsck/k9/controller/MessagingController;->moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelNotifications(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "controller"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 215
    const-string v4, "messageReference"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    const-string v4, "messageReference"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "messageReferenceString":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 218
    .local v0, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p3, p2, v0}, Lcom/fsck/k9/controller/MessagingController;->cancelNotificationForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    .line 232
    .end local v0    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .end local v1    # "messageReferenceString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v0    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .restart local v1    # "messageReferenceString":Ljava/lang/String;
    :cond_1
    const-string v4, "Invalid message reference: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    .end local v0    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .end local v1    # "messageReferenceString":Ljava/lang/String;
    :cond_2
    const-string v4, "messageReferences"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    const-string v4, "messageReferences"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 225
    .local v2, "messageReferenceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 226
    .local v3, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    .line 227
    .restart local v0    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {p3, p2, v0}, Lcom/fsck/k9/controller/MessagingController;->cancelNotificationForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_1

    .line 230
    .end local v0    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .end local v2    # "messageReferenceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    :cond_3
    invoke-virtual {p3, p2}, Lcom/fsck/k9/controller/MessagingController;->cancelNotificationsForAccount(Lcom/fsck/k9/Account;)V

    goto :goto_0
.end method

.method static createArchiveAllIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_ARCHIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "accountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "messageReferences"

    invoke-static {p2}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method static createArchiveMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_ARCHIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "accountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "messageReferences"

    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationActionService;->createSingleItemArrayList(Lcom/fsck/k9/activity/MessageReference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method public static createDeleteAllMessagesIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "accountUuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "messageReferences"

    invoke-static {p2}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method static createDeleteMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "accountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "messageReferences"

    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationActionService;->createSingleItemArrayList(Lcom/fsck/k9/activity/MessageReference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method static createDismissAllMessagesIntent(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_DISMISS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "accountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method static createDismissMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_DISMISS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "accountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "messageReference"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method static createMarkAllAsReadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_MARK_AS_READ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "accountUuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "messageReferences"

    invoke-static {p2}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method static createMarkMessageAsReadIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_MARK_AS_READ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "accountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "messageReferences"

    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationActionService;->createSingleItemArrayList(Lcom/fsck/k9/activity/MessageReference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method static createMarkMessageAsSpamIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_SPAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "accountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "messageReference"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    return-object v0
.end method

.method private static createSingleItemArrayList(Lcom/fsck/k9/activity/MessageReference;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/activity/MessageReference;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v0, "messageReferenceStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method private deleteMessages(Landroid/content/Intent;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "controller"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 169
    const-string v2, "NotificationActionService deleting messages"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-string v2, "messageReferences"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    .local v0, "messageReferenceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->deleteMessages(Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 174
    return-void
.end method

.method private isMovePossible(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    .locals 4
    .param p1, "controller"    # Lcom/fsck/k9/controller/MessagingController;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "destinationFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    const-string v3, "-NONE-"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 238
    .local v0, "isSpecialFolderConfigured":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "isSpecialFolderConfigured":Z
    :cond_0
    move v0, v2

    .line 236
    goto :goto_0

    .restart local v0    # "isSpecialFolderConfigured":Z
    :cond_1
    move v1, v2

    .line 238
    goto :goto_1
.end method

.method private markMessageAsSpam(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "controller"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    const/4 v6, 0x0

    .line 198
    const-string v4, "NotificationActionService moving messages to spam"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const-string v4, "messageReference"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "messageReferenceString":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v0

    .line 202
    .local v0, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    if-nez v0, :cond_1

    .line 203
    const-string v4, "Invalid message reference: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "spamFolderName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->confirmSpam()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p3, p2, v3}, Lcom/fsck/k9/notification/NotificationActionService;->isMovePossible(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "sourceFolderName":Ljava/lang/String;
    invoke-virtual {p3, p2, v2, v0, v3}, Lcom/fsck/k9/controller/MessagingController;->moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private markMessagesAsRead(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "controller"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 157
    const-string v0, "NotificationActionService marking messages as read"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-string v0, "messageReferences"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 160
    .local v7, "messageReferenceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 161
    .local v8, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/activity/MessageReference;

    .line 162
    .local v6, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {v6}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "folderName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "uid":Ljava/lang/String;
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v5, 0x1

    move-object v0, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 166
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    .end local v6    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    :cond_0
    return-void
.end method


# virtual methods
.method public startService(Landroid/content/Intent;I)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 125
    const-string v5, "NotificationActionService started with startId = %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const-string v5, "accountUuid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    .line 129
    .local v4, "preferences":Lcom/fsck/k9/Preferences;
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 131
    .local v0, "account":Lcom/fsck/k9/Account;
    if-nez v0, :cond_0

    .line 132
    const-string v5, "Could not find account for notification action."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_0
    return v9

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/notification/NotificationActionService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v3

    .line 138
    .local v3, "controller":Lcom/fsck/k9/controller/MessagingController;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "action":Ljava/lang/String;
    const-string v5, "ACTION_MARK_AS_READ"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-direct {p0, p1, v0, v3}, Lcom/fsck/k9/notification/NotificationActionService;->markMessagesAsRead(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V

    .line 151
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/fsck/k9/notification/NotificationActionService;->cancelNotifications(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string v5, "ACTION_DELETE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-direct {p0, p1, v3}, Lcom/fsck/k9/notification/NotificationActionService;->deleteMessages(Landroid/content/Intent;Lcom/fsck/k9/controller/MessagingController;)V

    goto :goto_1

    .line 143
    :cond_3
    const-string v5, "ACTION_ARCHIVE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    invoke-direct {p0, p1, v0, v3}, Lcom/fsck/k9/notification/NotificationActionService;->archiveMessages(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V

    goto :goto_1

    .line 145
    :cond_4
    const-string v5, "ACTION_SPAM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 146
    invoke-direct {p0, p1, v0, v3}, Lcom/fsck/k9/notification/NotificationActionService;->markMessageAsSpam(Landroid/content/Intent;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V

    goto :goto_1

    .line 147
    :cond_5
    const-string v5, "ACTION_DISMISS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    const-string v5, "Notification dismissed"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

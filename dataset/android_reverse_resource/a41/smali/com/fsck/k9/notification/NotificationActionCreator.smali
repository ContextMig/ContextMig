.class Lcom/fsck/k9/notification/NotificationActionCreator;
.super Ljava/lang/Object;
.source "NotificationActionCreator.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private buildAccountsBackStack()Landroid/support/v4/app/TaskStackBuilder;
    .locals 4

    .prologue
    .line 208
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .line 209
    .local v1, "stack":Landroid/support/v4/app/TaskStackBuilder;
    invoke-direct {p0}, Lcom/fsck/k9/notification/NotificationActionCreator;->skipAccountsInBackStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const-class v3, Lcom/fsck/k9/activity/Accounts;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "startup"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method private buildFolderListBackStack(Lcom/fsck/k9/Account;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildAccountsBackStack()Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .line 221
    .local v1, "stack":Landroid/support/v4/app/TaskStackBuilder;
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 225
    return-object v1
.end method

.method private buildMessageListBackStack(Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/NotificationActionCreator;->skipFolderListInBackStack(Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildAccountsBackStack()Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    .line 243
    .local v2, "stack":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1, p2}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {v1, p2}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v5, v5}, Lcom/fsck/k9/activity/MessageList;->intentDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 250
    return-object v2

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "search":Lcom/fsck/k9/search/LocalSearch;
    .end local v2    # "stack":Landroid/support/v4/app/TaskStackBuilder;
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildFolderListBackStack(Lcom/fsck/k9/Account;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    goto :goto_0
.end method

.method private buildMessageViewBackStack(Lcom/fsck/k9/activity/MessageReference;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 6
    .param p1, "message"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 254
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 255
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "folderName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildMessageListBackStack(Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v3

    .line 258
    .local v3, "stack":Landroid/support/v4/app/TaskStackBuilder;
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/fsck/k9/activity/MessageList;->actionDisplayMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v2

    .line 260
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 262
    return-object v3
.end method

.method private buildUnreadBackStack(Lcom/fsck/k9/Account;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-direct {p0}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildAccountsBackStack()Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    .line 231
    .local v2, "stack":Landroid/support/v4/app/TaskStackBuilder;
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/fsck/k9/activity/Accounts;->createUnreadSearch(Landroid/content/Context;Lcom/fsck/k9/BaseAccount;)Lcom/fsck/k9/search/LocalSearch;

    move-result-object v1

    .line 232
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4, v5, v5}, Lcom/fsck/k9/activity/MessageList;->intentDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 236
    return-object v2
.end method

.method private createDeleteConfirmationPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->getIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createDeleteServicePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/notification/NotificationActionService;->createDeleteMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x48000000    # 131072.0f

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getDeleteAllConfirmationPendingIntent(Ljava/util/List;II)Landroid/app/PendingIntent;
    .locals 2
    .param p2, "notificationId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;II)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->getIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getDeleteAllServicePendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;II)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;II)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "accountUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v2, v0, p2}, Lcom/fsck/k9/notification/NotificationActionService;->createDeleteAllMessagesIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v2, p3, v1, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private getFolderNameOfAllMessages(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    .line 267
    .local v0, "firstMessage":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "folderName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/MessageReference;

    .line 270
    .local v2, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    const/4 v1, 0x0

    .line 275
    .end local v1    # "folderName":Ljava/lang/String;
    .end local v2    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    :cond_1
    return-object v1
.end method

.method private getMarkAsReadPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;I",
            "Landroid/content/Context;",
            "I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p4, v0, p2}, Lcom/fsck/k9/notification/NotificationActionService;->createMarkAllAsReadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p4, p3, v1, p5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private skipAccountsInBackStack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 283
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private skipFolderListInBackStack(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 279
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createArchiveAllPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/fsck/k9/notification/NotificationActionService;->createArchiveAllIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x50000000

    invoke-static {v1, p3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createArchiveMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/notification/NotificationActionService;->createArchiveMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x50000000

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createDeleteAllPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDeleteFromNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/high16 v0, 0x10000000

    invoke-direct {p0, p2, p3, v0}, Lcom/fsck/k9/notification/NotificationActionCreator;->getDeleteAllConfirmationPendingIntent(Ljava/util/List;II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/high16 v0, 0x50000000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fsck/k9/notification/NotificationActionCreator;->getDeleteAllServicePendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;II)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public createDeleteMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 127
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDeleteFromNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDeleteConfirmationPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDeleteServicePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public createDismissAllMessagesPendingIntent(Lcom/fsck/k9/Account;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "notificationId"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/notification/NotificationActionService;->createDismissAllMessagesIntent(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x50000000

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createDismissMessagePendingIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p3, "notificationId"    # I

    .prologue
    .line 86
    invoke-static {p1, p2}, Lcom/fsck/k9/notification/NotificationActionService;->createDismissMessageIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-static {p1, p3, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createMarkAllAsReadPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v5, 0x50000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/notification/NotificationActionCreator;->getMarkAsReadPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public createMarkMessageAsReadPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 100
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/notification/NotificationActionService;->createMarkMessageAsReadIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x48000000    # 131072.0f

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createMarkMessageAsSpamPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/notification/NotificationActionService;->createMarkMessageAsSpamIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x50000000

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createReplyPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/fsck/k9/activity/compose/MessageActions;->getActionReplyIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v2, 0x48000000    # 131072.0f

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createViewFolderListPendingIntent(Lcom/fsck/k9/Account;I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "notificationId"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildFolderListBackStack(Lcom/fsck/k9/Account;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 73
    .local v0, "stack":Landroid/support/v4/app/TaskStackBuilder;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createViewFolderPendingIntent(Lcom/fsck/k9/Account;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "notificationId"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildMessageListBackStack(Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 49
    .local v0, "stack":Landroid/support/v4/app/TaskStackBuilder;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, p3, v1}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createViewMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "notificationId"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildMessageViewBackStack(Lcom/fsck/k9/activity/MessageReference;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 44
    .local v0, "stack":Landroid/support/v4/app/TaskStackBuilder;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public createViewMessagesPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->goToUnreadMessageSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildUnreadBackStack(Lcom/fsck/k9/Account;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .line 68
    .local v1, "stack":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    const/high16 v2, 0x50000000

    invoke-virtual {v1, p3, v2}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 59
    .end local v1    # "stack":Landroid/support/v4/app/TaskStackBuilder;
    :cond_0
    invoke-direct {p0, p2}, Lcom/fsck/k9/notification/NotificationActionCreator;->getFolderNameOfAllMessages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "folderName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildFolderListBackStack(Lcom/fsck/k9/Account;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .restart local v1    # "stack":Landroid/support/v4/app/TaskStackBuilder;
    goto :goto_0

    .line 64
    .end local v1    # "stack":Landroid/support/v4/app/TaskStackBuilder;
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/notification/NotificationActionCreator;->buildMessageListBackStack(Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .restart local v1    # "stack":Landroid/support/v4/app/TaskStackBuilder;
    goto :goto_0
.end method

.method public getDeleteAllPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/high16 v1, 0x20000000

    .line 160
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDeleteFromNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0, p2, p3, v1}, Lcom/fsck/k9/notification/NotificationActionCreator;->getDeleteAllConfirmationPendingIntent(Ljava/util/List;II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/fsck/k9/notification/NotificationActionCreator;->getDeleteAllServicePendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;II)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public getMarkAllAsReadPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p3, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationActionCreator;->context:Landroid/content/Context;

    const/high16 v5, 0x20000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/notification/NotificationActionCreator;->getMarkAsReadPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/fsck/k9/helper/UnreadWidgetProperties;
.super Ljava/lang/Object;
.source "UnreadWidgetProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;
    }
.end annotation


# instance fields
.field private accountUuid:Ljava/lang/String;

.field private appWidgetId:I

.field private folderName:Ljava/lang/String;

.field private type:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appWidgetId"    # I
    .param p2, "accountUuid"    # Ljava/lang/String;
    .param p3, "folderName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->appWidgetId:I

    .line 28
    iput-object p2, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->folderName:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->calculateType()V

    .line 31
    return-void
.end method

.method private calculateType()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "unified_inbox"

    iget-object v1, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "all_messages"

    iget-object v1, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    sget-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->SEARCH_ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    iput-object v0, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->type:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->folderName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->FOLDER:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    iput-object v0, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->type:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->ACCOUNT:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    iput-object v0, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->type:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    goto :goto_0
.end method

.method private getAccount(Landroid/content/Context;)Lcom/fsck/k9/BaseAccount;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v0, "unified_inbox"

    iget-object v1, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Lcom/fsck/k9/search/SearchAccount;->createUnifiedInboxAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string v0, "all_messages"

    iget-object v1, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {p1}, Lcom/fsck/k9/search/SearchAccount;->createAllMessagesAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    goto :goto_0
.end method

.method private getClickIntentForAccount(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 114
    .local v0, "account":Lcom/fsck/k9/Account;
    const-string v2, "-NONE-"

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {p1, v0, v4}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/content/Intent;

    move-result-object v2

    .line 120
    :goto_0
    return-object v2

    .line 117
    :cond_0
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 120
    invoke-static {p1, v1, v4, v5, v5}, Lcom/fsck/k9/activity/MessageList;->intentDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method

.method private getClickIntentForFolder(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 124
    invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 125
    .local v0, "account":Lcom/fsck/k9/Account;
    new-instance v2, Lcom/fsck/k9/search/LocalSearch;

    iget-object v3, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->folderName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "search":Lcom/fsck/k9/search/LocalSearch;
    iget-object v3, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->folderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v5, v5}, Lcom/fsck/k9/activity/MessageList;->intentDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, "clickIntent":Landroid/content/Intent;
    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    return-object v1
.end method


# virtual methods
.method public getAccountUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->accountUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->appWidgetId:I

    return v0
.end method

.method public getClickIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 66
    sget-object v1, Lcom/fsck/k9/helper/UnreadWidgetProperties$1;->$SwitchMap$com$fsck$k9$helper$UnreadWidgetProperties$Type:[I

    iget-object v2, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->type:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    invoke-virtual {v2}, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 76
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 68
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getAccount(Landroid/content/Context;)Lcom/fsck/k9/BaseAccount;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/search/SearchAccount;

    .line 70
    .local v0, "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    invoke-virtual {v0}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v1

    const/4 v2, 0x0

    .line 69
    invoke-static {p1, v1, v2, v3, v3}, Lcom/fsck/k9/activity/MessageList;->intentDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZZ)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 72
    .end local v0    # "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getClickIntentForAccount(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getClickIntentForFolder(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getAccount(Landroid/content/Context;)Lcom/fsck/k9/BaseAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "accountName":Ljava/lang/String;
    sget-object v1, Lcom/fsck/k9/helper/UnreadWidgetProperties$1;->$SwitchMap$com$fsck$k9$helper$UnreadWidgetProperties$Type:[I

    iget-object v2, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->type:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    invoke-virtual {v2}, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 42
    const/4 v0, 0x0

    .end local v0    # "accountName":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object v0

    .line 40
    .restart local v0    # "accountName":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f0703b4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->folderName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUnreadCount(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getAccount(Landroid/content/Context;)Lcom/fsck/k9/BaseAccount;

    move-result-object v1

    .line 49
    .local v1, "baseAccount":Lcom/fsck/k9/BaseAccount;
    sget-object v4, Lcom/fsck/k9/helper/UnreadWidgetProperties$1;->$SwitchMap$com$fsck$k9$helper$UnreadWidgetProperties$Type:[I

    iget-object v5, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->type:Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;

    invoke-virtual {v5}, Lcom/fsck/k9/helper/UnreadWidgetProperties$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 61
    const/4 v4, -0x1

    .end local v1    # "baseAccount":Lcom/fsck/k9/BaseAccount;
    :goto_0
    return v4

    .line 51
    .restart local v1    # "baseAccount":Lcom/fsck/k9/BaseAccount;
    :pswitch_0
    invoke-static {p1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v2

    .line 52
    .local v2, "controller":Lcom/fsck/k9/controller/MessagingController;
    check-cast v1, Lcom/fsck/k9/search/SearchAccount;

    .end local v1    # "baseAccount":Lcom/fsck/k9/BaseAccount;
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/fsck/k9/controller/MessagingController;->getSearchAccountStatsSynchronous(Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)Lcom/fsck/k9/AccountStats;

    move-result-object v3

    .line 53
    .local v3, "stats":Lcom/fsck/k9/AccountStats;
    iget v4, v3, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    goto :goto_0

    .end local v2    # "controller":Lcom/fsck/k9/controller/MessagingController;
    .end local v3    # "stats":Lcom/fsck/k9/AccountStats;
    .restart local v1    # "baseAccount":Lcom/fsck/k9/BaseAccount;
    :pswitch_1
    move-object v0, v1

    .line 55
    check-cast v0, Lcom/fsck/k9/Account;

    .line 56
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v3

    .line 57
    .restart local v3    # "stats":Lcom/fsck/k9/AccountStats;
    iget v4, v3, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    goto :goto_0

    .line 59
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v3    # "stats":Lcom/fsck/k9/AccountStats;
    :pswitch_2
    check-cast v1, Lcom/fsck/k9/Account;

    .end local v1    # "baseAccount":Lcom/fsck/k9/BaseAccount;
    iget-object v4, p0, Lcom/fsck/k9/helper/UnreadWidgetProperties;->folderName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4}, Lcom/fsck/k9/Account;->getFolderUnreadCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

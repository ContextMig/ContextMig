.class Lcom/fsck/k9/notification/DeviceNotifications;
.super Lcom/fsck/k9/notification/BaseNotifications;
.source "DeviceNotifications.java"


# instance fields
.field private final lockScreenNotification:Lcom/fsck/k9/notification/LockScreenNotification;

.field private final wearNotifications:Lcom/fsck/k9/notification/WearNotifications;


# direct methods
.method constructor <init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;Lcom/fsck/k9/notification/LockScreenNotification;Lcom/fsck/k9/notification/WearNotifications;)V
    .locals 0
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p2, "actionCreator"    # Lcom/fsck/k9/notification/NotificationActionCreator;
    .param p3, "lockScreenNotification"    # Lcom/fsck/k9/notification/LockScreenNotification;
    .param p4, "wearNotifications"    # Lcom/fsck/k9/notification/WearNotifications;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/BaseNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;)V

    .line 35
    iput-object p4, p0, Lcom/fsck/k9/notification/DeviceNotifications;->wearNotifications:Lcom/fsck/k9/notification/WearNotifications;

    .line 36
    iput-object p3, p0, Lcom/fsck/k9/notification/DeviceNotifications;->lockScreenNotification:Lcom/fsck/k9/notification/LockScreenNotification;

    .line 37
    return-void
.end method

.method private addDeleteAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;I)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "content"    # Lcom/fsck/k9/notification/NotificationContent;
    .param p3, "notificationId"    # I

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/fsck/k9/notification/DeviceNotifications;->isDeleteActionEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/notification/DeviceNotifications;->getDeleteActionIcon()I

    move-result v1

    .line 213
    .local v1, "icon":I
    iget-object v4, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v5, 0x7f0702d8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "title":Ljava/lang/String;
    iget-object v2, p2, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 216
    .local v2, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v4, p0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v4, v2, p3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDeleteMessagePendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 218
    .local v0, "action":Landroid/app/PendingIntent;
    invoke-virtual {p1, v1, v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private addDeleteAllAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 8
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 192
    invoke-static {}, Lcom/fsck/k9/K9;->getNotificationQuickDeleteBehaviour()Lcom/fsck/k9/K9$NotificationQuickDelete;

    move-result-object v6

    sget-object v7, Lcom/fsck/k9/K9$NotificationQuickDelete;->ALWAYS:Lcom/fsck/k9/K9$NotificationQuickDelete;

    if-eq v6, v7, :cond_0

    .line 205
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/notification/DeviceNotifications;->getDeleteActionIcon()I

    move-result v2

    .line 197
    .local v2, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 200
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v4

    .line 201
    .local v4, "notificationId":I
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAllMessageReferences()Ljava/util/ArrayList;

    move-result-object v3

    .line 202
    .local v3, "messageReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v6, p0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v6, v0, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDeleteAllPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 204
    .local v1, "action":Landroid/app/PendingIntent;
    invoke-virtual {p1, v2, v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private addMarkAllAsReadAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 8
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/fsck/k9/notification/DeviceNotifications;->getMarkAsReadActionIcon()I

    move-result v1

    .line 180
    .local v1, "icon":I
    iget-object v6, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v7, 0x7f0702db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 183
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getAllMessageReferences()Ljava/util/ArrayList;

    move-result-object v3

    .line 184
    .local v3, "messageReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/MessageReference;>;"
    invoke-static {v0}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v4

    .line 185
    .local v4, "notificationId":I
    iget-object v6, p0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    .line 186
    invoke-virtual {v6, v0, v3, v4}, Lcom/fsck/k9/notification/NotificationActionCreator;->createMarkAllAsReadPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 188
    .local v2, "markAllAsReadPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v1, v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 189
    return-void
.end method

.method private addMarkAsReadAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;I)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "content"    # Lcom/fsck/k9/notification/NotificationContent;
    .param p3, "notificationId"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/fsck/k9/notification/DeviceNotifications;->getMarkAsReadActionIcon()I

    move-result v1

    .line 169
    .local v1, "icon":I
    iget-object v4, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v5, 0x7f0702db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "title":Ljava/lang/String;
    iget-object v2, p2, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 173
    .local v2, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v4, p0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v4, v2, p3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createMarkMessageAsReadPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 175
    .local v0, "action":Landroid/app/PendingIntent;
    invoke-virtual {p1, v1, v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 176
    return-void
.end method

.method private addReplyAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;I)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "content"    # Lcom/fsck/k9/notification/NotificationContent;
    .param p3, "notificationId"    # I

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/fsck/k9/notification/DeviceNotifications;->getReplyActionIcon()I

    move-result v0

    .line 223
    .local v0, "icon":I
    iget-object v4, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v5, 0x7f0702dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "title":Ljava/lang/String;
    iget-object v1, p2, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 226
    .local v1, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v4, p0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    .line 227
    invoke-virtual {v4, v1, p3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createReplyPendingIntent(Lcom/fsck/k9/activity/MessageReference;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 229
    .local v2, "replyToMessagePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v0, v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 230
    return-void
.end method

.method private createBigTextStyleSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "holder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v2

    .line 109
    .local v2, "notificationId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/fsck/k9/notification/DeviceNotifications;->createBigTextStyleNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 110
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 112
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v1, p2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 113
    .local v1, "content":Lcom/fsck/k9/notification/NotificationContent;
    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/notification/DeviceNotifications;->addReplyAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;I)V

    .line 114
    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/notification/DeviceNotifications;->addMarkAsReadAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;I)V

    .line 115
    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/notification/DeviceNotifications;->addDeleteAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;I)V

    .line 117
    return-object v0
.end method

.method private createInboxStyleSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 19
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/notification/NotificationData;->getHolderForLatestNotification()Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v7

    .line 125
    .local v7, "latestNotification":Lcom/fsck/k9/notification/NotificationHolder;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/notification/NotificationData;->getNewMessagesCount()I

    move-result v9

    .line 126
    .local v9, "newMessagesCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/notification/DeviceNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/fsck/k9/notification/NotificationController;->getAccountName(Lcom/fsck/k9/Account;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060003

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 128
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    .line 127
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v9, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "title":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/notification/NotificationData;->hasSummaryOverflowMessages()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v15, 0x7f0702de

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/notification/NotificationData;->getSummaryOverflowMessagesCount()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v2, v16, v17

    .line 130
    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 133
    .local v12, "summary":Ljava/lang/String;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/notification/NotificationGroupKeys;->getGroupKey(Lcom/fsck/k9/Account;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "groupKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/notification/DeviceNotifications;->createAndInitializeNotificationBuilder(Lcom/fsck/k9/Account;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    .line 136
    move/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    iget-object v15, v7, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v15, v15, Lcom/fsck/k9/notification/NotificationContent;->summary:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    .line 138
    invoke-virtual {v14, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    const/4 v15, 0x1

    .line 139
    invoke-virtual {v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    .line 140
    invoke-virtual {v14, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    .line 141
    invoke-virtual {v14, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 143
    .local v3, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/fsck/k9/notification/DeviceNotifications;->createInboxStyle(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v14

    .line 144
    invoke-virtual {v14, v13}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v14

    .line 145
    invoke-virtual {v14, v12}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v11

    .line 147
    .local v11, "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/notification/NotificationData;->getContentForSummaryNotification()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/notification/NotificationContent;

    .line 148
    .local v4, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget-object v15, v4, Lcom/fsck/k9/notification/NotificationContent;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v11, v15}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_1

    .end local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "content":Lcom/fsck/k9/notification/NotificationContent;
    .end local v6    # "groupKey":Ljava/lang/String;
    .end local v11    # "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v12    # "summary":Ljava/lang/String;
    :cond_0
    move-object v12, v2

    .line 130
    goto :goto_0

    .line 151
    .restart local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v6    # "groupKey":Ljava/lang/String;
    .restart local v11    # "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v12    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/fsck/k9/notification/DeviceNotifications;->addMarkAllAsReadAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/fsck/k9/notification/DeviceNotifications;->addDeleteAllAction(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/notification/DeviceNotifications;->wearNotifications:Lcom/fsck/k9/notification/WearNotifications;

    move-object/from16 v0, p2

    invoke-virtual {v14, v3, v0}, Lcom/fsck/k9/notification/WearNotifications;->addSummaryActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v10

    .line 159
    .local v10, "notificationId":I
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/notification/NotificationData;->getAllMessageReferences()Ljava/util/ArrayList;

    move-result-object v8

    .line 160
    .local v8, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v8, v10}, Lcom/fsck/k9/notification/NotificationActionCreator;->createViewMessagesPendingIntent(Lcom/fsck/k9/Account;Ljava/util/List;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 162
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 164
    return-object v3
.end method

.method private createSimpleSummaryNotification(Lcom/fsck/k9/Account;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 10
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "unreadMessageCount"    # I

    .prologue
    .line 89
    iget-object v5, p0, Lcom/fsck/k9/notification/DeviceNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v5, p1}, Lcom/fsck/k9/notification/NotificationController;->getAccountName(Lcom/fsck/k9/Account;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "accountName":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v6, 0x7f0702e9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "newMailText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const v6, 0x7f0702e8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    .line 91
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "unreadMessageCountText":Ljava/lang/String;
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v3

    .line 95
    .local v3, "notificationId":I
    iget-object v5, p0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v5, p1, v3}, Lcom/fsck/k9/notification/NotificationActionCreator;->createViewFolderListPendingIntent(Lcom/fsck/k9/Account;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 97
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/DeviceNotifications;->createAndInitializeNotificationBuilder(Lcom/fsck/k9/Account;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 98
    invoke-virtual {v5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 99
    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 100
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 102
    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 97
    return-object v5
.end method

.method private getDeleteActionIcon()I
    .locals 1

    .prologue
    .line 247
    const v0, 0x7f02007f

    return v0
.end method

.method private getMarkAsReadActionIcon()I
    .locals 1

    .prologue
    .line 243
    const v0, 0x7f020080

    return v0
.end method

.method private getReplyActionIcon()I
    .locals 1

    .prologue
    .line 251
    const v0, 0x7f020081

    return v0
.end method

.method private isPrivacyModeActive()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 233
    iget-object v6, p0, Lcom/fsck/k9/notification/DeviceNotifications;->context:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 235
    .local v0, "keyguardService":Landroid/app/KeyguardManager;
    invoke-static {}, Lcom/fsck/k9/K9;->getNotificationHideSubject()Lcom/fsck/k9/K9$NotificationHideSubject;

    move-result-object v6

    sget-object v7, Lcom/fsck/k9/K9$NotificationHideSubject;->ALWAYS:Lcom/fsck/k9/K9$NotificationHideSubject;

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 236
    .local v1, "privacyModeAlwaysEnabled":Z
    :goto_0
    invoke-static {}, Lcom/fsck/k9/K9;->getNotificationHideSubject()Lcom/fsck/k9/K9$NotificationHideSubject;

    move-result-object v6

    sget-object v7, Lcom/fsck/k9/K9$NotificationHideSubject;->WHEN_LOCKED:Lcom/fsck/k9/K9$NotificationHideSubject;

    if-ne v6, v7, :cond_3

    move v2, v4

    .line 237
    .local v2, "privacyModeEnabledWhenLocked":Z
    :goto_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 239
    .local v3, "screenLocked":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    return v5

    .end local v1    # "privacyModeAlwaysEnabled":Z
    .end local v2    # "privacyModeEnabledWhenLocked":Z
    .end local v3    # "screenLocked":Z
    :cond_2
    move v1, v5

    .line 235
    goto :goto_0

    .restart local v1    # "privacyModeAlwaysEnabled":Z
    :cond_3
    move v2, v5

    .line 236
    goto :goto_1
.end method

.method public static newInstance(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;Lcom/fsck/k9/notification/WearNotifications;)Lcom/fsck/k9/notification/DeviceNotifications;
    .locals 2
    .param p0, "controller"    # Lcom/fsck/k9/notification/NotificationController;
    .param p1, "actionCreator"    # Lcom/fsck/k9/notification/NotificationActionCreator;
    .param p2, "wearNotifications"    # Lcom/fsck/k9/notification/WearNotifications;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/fsck/k9/notification/LockScreenNotification;->newInstance(Lcom/fsck/k9/notification/NotificationController;)Lcom/fsck/k9/notification/LockScreenNotification;

    move-result-object v0

    .line 42
    .local v0, "lockScreenNotification":Lcom/fsck/k9/notification/LockScreenNotification;
    new-instance v1, Lcom/fsck/k9/notification/DeviceNotifications;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/fsck/k9/notification/DeviceNotifications;-><init>(Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/notification/NotificationActionCreator;Lcom/fsck/k9/notification/LockScreenNotification;Lcom/fsck/k9/notification/WearNotifications;)V

    return-object v1
.end method


# virtual methods
.method public buildSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;Z)Landroid/app/Notification;
    .locals 12
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;
    .param p3, "silent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getUnreadMessageCount()I

    move-result v11

    .line 50
    .local v11, "unreadMessageCount":I
    invoke-direct {p0}, Lcom/fsck/k9/notification/DeviceNotifications;->isPrivacyModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fsck/k9/notification/NotificationController;->platformSupportsExtendedNotifications()Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    :cond_0
    invoke-direct {p0, p1, v11}, Lcom/fsck/k9/notification/DeviceNotifications;->createSimpleSummaryNotification(Lcom/fsck/k9/Account;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 59
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_0
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->containsStarredMessages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 63
    :cond_1
    invoke-static {p1}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I

    move-result v9

    .line 64
    .local v9, "notificationId":I
    iget-object v0, p0, Lcom/fsck/k9/notification/DeviceNotifications;->actionCreator:Lcom/fsck/k9/notification/NotificationActionCreator;

    invoke-virtual {v0, p1, v9}, Lcom/fsck/k9/notification/NotificationActionCreator;->createDismissAllMessagesPendingIntent(Lcom/fsck/k9/Account;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 66
    .local v7, "deletePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    iget-object v0, p0, Lcom/fsck/k9/notification/DeviceNotifications;->lockScreenNotification:Lcom/fsck/k9/notification/LockScreenNotification;

    invoke-virtual {v0, v1, p2}, Lcom/fsck/k9/notification/LockScreenNotification;->configureLockScreenNotification(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, "ringAndVibrate":Z
    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isRingNotified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-virtual {p1, v2}, Lcom/fsck/k9/Account;->setRingNotified(Z)V

    .line 73
    const/4 v6, 0x1

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v10

    .line 77
    .local v10, "notificationSetting":Lcom/fsck/k9/NotificationSetting;
    iget-object v0, p0, Lcom/fsck/k9/notification/DeviceNotifications;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 79
    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->isRingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->getRingtone()Ljava/lang/String;

    move-result-object v2

    .line 80
    :goto_1
    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->isVibrateEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->getVibration()[J

    move-result-object v3

    .line 81
    :goto_2
    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->isLedEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->getLedColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    const/4 v5, 0x0

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/notification/NotificationController;->configureNotification(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;[JLjava/lang/Integer;IZ)V

    .line 85
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 52
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "ringAndVibrate":Z
    .end local v7    # "deletePendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "notificationId":I
    .end local v10    # "notificationSetting":Lcom/fsck/k9/NotificationSetting;
    :cond_4
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->isSingleMessageNotification()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {p2}, Lcom/fsck/k9/notification/NotificationData;->getHolderForLatestNotification()Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v8

    .line 54
    .local v8, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    invoke-direct {p0, p1, v8}, Lcom/fsck/k9/notification/DeviceNotifications;->createBigTextStyleSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationHolder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 55
    .restart local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    goto :goto_0

    .line 56
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v8    # "holder":Lcom/fsck/k9/notification/NotificationHolder;
    :cond_5
    invoke-direct {p0, p1, p2, v11}, Lcom/fsck/k9/notification/DeviceNotifications;->createInboxStyleSummaryNotification(Lcom/fsck/k9/Account;Lcom/fsck/k9/notification/NotificationData;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .restart local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    goto :goto_0

    .restart local v6    # "ringAndVibrate":Z
    .restart local v7    # "deletePendingIntent":Landroid/app/PendingIntent;
    .restart local v9    # "notificationId":I
    .restart local v10    # "notificationSetting":Lcom/fsck/k9/NotificationSetting;
    :cond_6
    move-object v2, v4

    .line 79
    goto :goto_1

    :cond_7
    move-object v3, v4

    .line 80
    goto :goto_2
.end method

.method protected createInboxStyle(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 255
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-object v0
.end method

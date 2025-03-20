.class Lcom/fsck/k9/notification/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# static fields
.field static final MAX_NUMBER_OF_MESSAGES_FOR_SUMMARY_NOTIFICATION:I = 0x5

.field static final MAX_NUMBER_OF_STACKED_NOTIFICATIONS:I = 0x8


# instance fields
.field private final account:Lcom/fsck/k9/Account;

.field private final activeNotifications:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fsck/k9/notification/NotificationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final additionalNotifications:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/fsck/k9/notification/NotificationContent;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationIdsInUse:Landroid/util/SparseBooleanArray;

.field private unreadMessageCount:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    .line 29
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->notificationIdsInUse:Landroid/util/SparseBooleanArray;

    .line 34
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lcom/fsck/k9/Account;

    .line 35
    return-void
.end method

.method private addToAdditionalNotifications(Lcom/fsck/k9/notification/NotificationHolder;)V
    .locals 2
    .param p1, "notificationHolder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    iget-object v1, p1, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private calculateNumberOfMessagesForSummaryNotification()I
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getNewNotificationId()I
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lcom/fsck/k9/Account;

    invoke-static {v2, v0}, Lcom/fsck/k9/notification/NotificationIds;->getNewMailStackedNotificationId(Lcom/fsck/k9/Account;I)I

    move-result v1

    .line 71
    .local v1, "notificationId":I
    invoke-direct {p0, v1}, Lcom/fsck/k9/notification/NotificationData;->isNotificationInUse(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-direct {p0, v1}, Lcom/fsck/k9/notification/NotificationData;->markNotificationIdAsInUse(I)V

    .line 73
    return v1

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "notificationId":I
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "getNewNotificationId() called with no free notification ID"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private getNotificationHolderForMessage(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/notification/NotificationHolder;
    .locals 3
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/notification/NotificationHolder;

    .line 190
    .local v0, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    iget-object v2, v0, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v2, v2, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/activity/MessageReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    .end local v0    # "holder":Lcom/fsck/k9/notification/NotificationHolder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaxNumberOfActiveNotificationsReached()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotificationInUse(I)Z
    .locals 1
    .param p1, "notificationId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->notificationIdsInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private markNotificationIdAsFree(I)V
    .locals 1
    .param p1, "notificationId"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->notificationIdsInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 90
    return-void
.end method

.method private markNotificationIdAsInUse(I)V
    .locals 2
    .param p1, "notificationId"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->notificationIdsInUse:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 86
    return-void
.end method


# virtual methods
.method public addNotificationContent(Lcom/fsck/k9/notification/NotificationContent;)Lcom/fsck/k9/notification/AddNotificationResult;
    .locals 4
    .param p1, "content"    # Lcom/fsck/k9/notification/NotificationContent;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/fsck/k9/notification/NotificationData;->isMaxNumberOfActiveNotificationsReached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/notification/NotificationHolder;

    .line 42
    .local v1, "notificationHolder":Lcom/fsck/k9/notification/NotificationHolder;
    invoke-direct {p0, v1}, Lcom/fsck/k9/notification/NotificationData;->addToAdditionalNotifications(Lcom/fsck/k9/notification/NotificationHolder;)V

    .line 43
    iget v2, v1, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 44
    .local v2, "notificationId":I
    const/4 v0, 0x1

    .line 50
    .end local v1    # "notificationHolder":Lcom/fsck/k9/notification/NotificationHolder;
    .local v0, "cancelNotificationIdBeforeReuse":Z
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/fsck/k9/notification/NotificationData;->createNotificationHolder(ILcom/fsck/k9/notification/NotificationContent;)Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v1

    .line 51
    .restart local v1    # "notificationHolder":Lcom/fsck/k9/notification/NotificationHolder;
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-static {v1}, Lcom/fsck/k9/notification/AddNotificationResult;->replaceNotification(Lcom/fsck/k9/notification/NotificationHolder;)Lcom/fsck/k9/notification/AddNotificationResult;

    move-result-object v3

    .line 56
    :goto_1
    return-object v3

    .line 46
    .end local v0    # "cancelNotificationIdBeforeReuse":Z
    .end local v1    # "notificationHolder":Lcom/fsck/k9/notification/NotificationHolder;
    .end local v2    # "notificationId":I
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/notification/NotificationData;->getNewNotificationId()I

    move-result v2

    .line 47
    .restart local v2    # "notificationId":I
    const/4 v0, 0x0

    .restart local v0    # "cancelNotificationIdBeforeReuse":Z
    goto :goto_0

    .line 56
    .restart local v1    # "notificationHolder":Lcom/fsck/k9/notification/NotificationHolder;
    :cond_1
    invoke-static {v1}, Lcom/fsck/k9/notification/AddNotificationResult;->newNotification(Lcom/fsck/k9/notification/NotificationHolder;)Lcom/fsck/k9/notification/AddNotificationResult;

    move-result-object v3

    goto :goto_1
.end method

.method public containsStarredMessages()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/notification/NotificationHolder;

    .line 98
    .local v1, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    iget-object v4, v1, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-boolean v4, v4, Lcom/fsck/k9/notification/NotificationContent;->starred:Z

    if-eqz v4, :cond_0

    .line 109
    .end local v1    # "holder":Lcom/fsck/k9/notification/NotificationHolder;
    :goto_0
    return v2

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/notification/NotificationContent;

    .line 104
    .local v0, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget-boolean v4, v0, Lcom/fsck/k9/notification/NotificationContent;->starred:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 109
    .end local v0    # "content":Lcom/fsck/k9/notification/NotificationContent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method createNotificationHolder(ILcom/fsck/k9/notification/NotificationContent;)Lcom/fsck/k9/notification/NotificationHolder;
    .locals 1
    .param p1, "notificationId"    # I
    .param p2, "content"    # Lcom/fsck/k9/notification/NotificationContent;

    .prologue
    .line 93
    new-instance v0, Lcom/fsck/k9/notification/NotificationHolder;

    invoke-direct {v0, p1, p2}, Lcom/fsck/k9/notification/NotificationHolder;-><init>(ILcom/fsck/k9/notification/NotificationContent;)V

    return-object v0
.end method

.method public getAccount()Lcom/fsck/k9/Account;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->account:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method public getActiveNotificationIds()[I
    .locals 5

    .prologue
    .line 156
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 157
    .local v3, "size":I
    new-array v2, v3, [I

    .line 159
    .local v2, "notificationIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 160
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/notification/NotificationHolder;

    .line 161
    .local v0, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    iget v4, v0, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    aput v4, v2, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "holder":Lcom/fsck/k9/notification/NotificationHolder;
    :cond_0
    return-object v2
.end method

.method public getAllMessageReferences()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    add-int v3, v4, v5

    .line 212
    .local v3, "newSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v2, "messageReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/notification/NotificationHolder;

    .line 215
    .local v1, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    iget-object v5, v1, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v5, v5, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v1    # "holder":Lcom/fsck/k9/notification/NotificationHolder;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/notification/NotificationContent;

    .line 219
    .local v0, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget-object v5, v0, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v0    # "content":Lcom/fsck/k9/notification/NotificationContent;
    :cond_1
    return-object v2
.end method

.method public getContentForSummaryNotification()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/notification/NotificationContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/fsck/k9/notification/NotificationData;->calculateNumberOfMessagesForSummaryNotification()I

    move-result v4

    .line 138
    .local v4, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/notification/NotificationContent;>;"
    iget-object v5, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fsck/k9/notification/NotificationHolder;>;"
    const/4 v2, 0x0

    .line 142
    .local v2, "notificationCount":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    if-ge v2, v5, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/notification/NotificationHolder;

    .line 144
    .local v0, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    iget-object v5, v0, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto :goto_0

    .line 148
    .end local v0    # "holder":Lcom/fsck/k9/notification/NotificationHolder;
    :cond_0
    return-object v3
.end method

.method public getHolderForLatestNotification()Lcom/fsck/k9/notification/NotificationHolder;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/notification/NotificationHolder;

    return-object v0
.end method

.method public getNewMessagesCount()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSummaryOverflowMessagesCount()I
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x5

    .line 118
    .local v0, "activeOverflowCount":I
    if-lez v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 121
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getUnreadMessageCount()I
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/fsck/k9/notification/NotificationData;->unreadMessageCount:I

    invoke-virtual {p0}, Lcom/fsck/k9/notification/NotificationData;->getNewMessagesCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasSummaryOverflowMessages()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleMessageNotification()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeNotificationForMessage(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/notification/RemoveNotificationResult;
    .locals 5
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationData;->getNotificationHolderForMessage(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v0

    .line 169
    .local v0, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/fsck/k9/notification/RemoveNotificationResult;->unknownNotification()Lcom/fsck/k9/notification/RemoveNotificationResult;

    move-result-object v4

    .line 185
    :goto_0
    return-object v4

    .line 173
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 175
    iget v2, v0, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 176
    .local v2, "notificationId":I
    invoke-direct {p0, v2}, Lcom/fsck/k9/notification/NotificationData;->markNotificationIdAsFree(I)V

    .line 178
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->additionalNotifications:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/notification/NotificationContent;

    .line 180
    .local v1, "newContent":Lcom/fsck/k9/notification/NotificationContent;
    invoke-virtual {p0, v2, v1}, Lcom/fsck/k9/notification/NotificationData;->createNotificationHolder(ILcom/fsck/k9/notification/NotificationContent;)Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v3

    .line 181
    .local v3, "replacement":Lcom/fsck/k9/notification/NotificationHolder;
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationData;->activeNotifications:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 182
    invoke-static {v3}, Lcom/fsck/k9/notification/RemoveNotificationResult;->createNotification(Lcom/fsck/k9/notification/NotificationHolder;)Lcom/fsck/k9/notification/RemoveNotificationResult;

    move-result-object v4

    goto :goto_0

    .line 185
    .end local v1    # "newContent":Lcom/fsck/k9/notification/NotificationContent;
    .end local v3    # "replacement":Lcom/fsck/k9/notification/NotificationHolder;
    :cond_1
    invoke-static {v2}, Lcom/fsck/k9/notification/RemoveNotificationResult;->cancelNotification(I)Lcom/fsck/k9/notification/RemoveNotificationResult;

    move-result-object v4

    goto :goto_0
.end method

.method public setUnreadMessageCount(I)V
    .locals 0
    .param p1, "unreadMessageCount"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/fsck/k9/notification/NotificationData;->unreadMessageCount:I

    .line 208
    return-void
.end method

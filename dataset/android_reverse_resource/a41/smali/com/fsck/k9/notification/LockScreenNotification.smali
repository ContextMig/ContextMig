.class Lcom/fsck/k9/notification/LockScreenNotification;
.super Ljava/lang/Object;
.source "LockScreenNotification.java"


# static fields
.field static final MAX_NUMBER_OF_SENDERS_IN_LOCK_SCREEN_NOTIFICATION:I = 0x5


# instance fields
.field private final context:Landroid/content/Context;

.field private final controller:Lcom/fsck/k9/notification/NotificationController;


# direct methods
.method constructor <init>(Lcom/fsck/k9/notification/NotificationController;)V
    .locals 1
    .param p1, "controller"    # Lcom/fsck/k9/notification/NotificationController;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/notification/LockScreenNotification;->context:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/fsck/k9/notification/LockScreenNotification;->controller:Lcom/fsck/k9/notification/NotificationController;

    .line 30
    return-void
.end method

.method private createPublicNotification(Lcom/fsck/k9/notification/NotificationData;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 9
    .param p1, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 93
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationData;->getNewMessagesCount()I

    move-result v1

    .line 94
    .local v1, "newMessages":I
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationData;->getUnreadMessageCount()I

    move-result v3

    .line 95
    .local v3, "unreadCount":I
    iget-object v4, p0, Lcom/fsck/k9/notification/LockScreenNotification;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060003

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 95
    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/notification/LockScreenNotification;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v4}, Lcom/fsck/k9/notification/NotificationController;->createNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f020082

    .line 99
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 100
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 101
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 102
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "email"

    .line 103
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 98
    return-object v4
.end method

.method private createPublicNotificationWithNewMessagesCount(Lcom/fsck/k9/notification/NotificationData;)Landroid/app/Notification;
    .locals 4
    .param p1, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/LockScreenNotification;->createPublicNotification(Lcom/fsck/k9/notification/NotificationData;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 84
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationData;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 85
    .local v0, "account":Lcom/fsck/k9/Account;
    iget-object v3, p0, Lcom/fsck/k9/notification/LockScreenNotification;->controller:Lcom/fsck/k9/notification/NotificationController;

    invoke-virtual {v3, v0}, Lcom/fsck/k9/notification/NotificationController;->getAccountName(Lcom/fsck/k9/Account;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "accountName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 88
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private createPublicNotificationWithSenderList(Lcom/fsck/k9/notification/NotificationData;)Landroid/app/Notification;
    .locals 6
    .param p1, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/LockScreenNotification;->createPublicNotification(Lcom/fsck/k9/notification/NotificationData;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 69
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationData;->getNewMessagesCount()I

    move-result v3

    .line 70
    .local v3, "newMessages":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationData;->getHolderForLatestNotification()Lcom/fsck/k9/notification/NotificationHolder;

    move-result-object v2

    .line 72
    .local v2, "holder":Lcom/fsck/k9/notification/NotificationHolder;
    iget-object v5, v2, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    iget-object v5, v5, Lcom/fsck/k9/notification/NotificationContent;->sender:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 79
    .end local v2    # "holder":Lcom/fsck/k9/notification/NotificationHolder;
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    return-object v5

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/notification/NotificationData;->getContentForSummaryNotification()Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/notification/NotificationContent;>;"
    invoke-virtual {p0, v1}, Lcom/fsck/k9/notification/LockScreenNotification;->createCommaSeparatedListOfSenders(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "senderList":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public static newInstance(Lcom/fsck/k9/notification/NotificationController;)Lcom/fsck/k9/notification/LockScreenNotification;
    .locals 1
    .param p0, "controller"    # Lcom/fsck/k9/notification/NotificationController;

    .prologue
    .line 33
    new-instance v0, Lcom/fsck/k9/notification/LockScreenNotification;

    invoke-direct {v0, p0}, Lcom/fsck/k9/notification/LockScreenNotification;-><init>(Lcom/fsck/k9/notification/NotificationController;)V

    return-object v0
.end method


# virtual methods
.method public configureLockScreenNotification(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationData;)V
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notificationData"    # Lcom/fsck/k9/notification/NotificationData;

    .prologue
    .line 37
    invoke-static {}, Lcom/fsck/k9/notification/NotificationController;->platformSupportsLockScreenNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v1, Lcom/fsck/k9/notification/LockScreenNotification$1;->$SwitchMap$com$fsck$k9$K9$LockScreenNotificationVisibility:[I

    invoke-static {}, Lcom/fsck/k9/K9;->getLockScreenNotificationVisibility()Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 47
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 51
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/fsck/k9/notification/LockScreenNotification;->createPublicNotificationWithSenderList(Lcom/fsck/k9/notification/NotificationData;)Landroid/app/Notification;

    move-result-object v0

    .line 56
    .local v0, "publicNotification":Landroid/app/Notification;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 60
    .end local v0    # "publicNotification":Landroid/app/Notification;
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/fsck/k9/notification/LockScreenNotification;->createPublicNotificationWithNewMessagesCount(Lcom/fsck/k9/notification/NotificationData;)Landroid/app/Notification;

    move-result-object v0

    .line 61
    .restart local v0    # "publicNotification":Landroid/app/Notification;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method createCommaSeparatedListOfSenders(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/notification/NotificationContent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/notification/NotificationContent;>;"
    const/4 v4, 0x5

    .line 109
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 110
    .local v1, "senders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/notification/NotificationContent;

    .line 111
    .local v0, "content":Lcom/fsck/k9/notification/NotificationContent;
    iget-object v3, v0, Lcom/fsck/k9/notification/NotificationContent;->sender:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 117
    .end local v0    # "content":Lcom/fsck/k9/notification/NotificationContent;
    :cond_1
    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

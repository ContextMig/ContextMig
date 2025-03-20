.class Lcom/fsck/k9/notification/RemoveNotificationResult;
.super Ljava/lang/Object;
.source "RemoveNotificationResult.java"


# instance fields
.field private final notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;

.field private final notificationId:I

.field private final unknownNotification:Z


# direct methods
.method private constructor <init>(Lcom/fsck/k9/notification/NotificationHolder;IZ)V
    .locals 0
    .param p1, "notificationHolder"    # Lcom/fsck/k9/notification/NotificationHolder;
    .param p2, "notificationId"    # I
    .param p3, "unknownNotification"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/fsck/k9/notification/RemoveNotificationResult;->notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;

    .line 13
    iput p2, p0, Lcom/fsck/k9/notification/RemoveNotificationResult;->notificationId:I

    .line 14
    iput-boolean p3, p0, Lcom/fsck/k9/notification/RemoveNotificationResult;->unknownNotification:Z

    .line 15
    return-void
.end method

.method public static cancelNotification(I)Lcom/fsck/k9/notification/RemoveNotificationResult;
    .locals 3
    .param p0, "notificationId"    # I

    .prologue
    .line 22
    new-instance v0, Lcom/fsck/k9/notification/RemoveNotificationResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/fsck/k9/notification/RemoveNotificationResult;-><init>(Lcom/fsck/k9/notification/NotificationHolder;IZ)V

    return-object v0
.end method

.method public static createNotification(Lcom/fsck/k9/notification/NotificationHolder;)Lcom/fsck/k9/notification/RemoveNotificationResult;
    .locals 3
    .param p0, "notificationHolder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 18
    new-instance v0, Lcom/fsck/k9/notification/RemoveNotificationResult;

    iget v1, p0, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/notification/RemoveNotificationResult;-><init>(Lcom/fsck/k9/notification/NotificationHolder;IZ)V

    return-object v0
.end method

.method public static unknownNotification()Lcom/fsck/k9/notification/RemoveNotificationResult;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lcom/fsck/k9/notification/RemoveNotificationResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/notification/RemoveNotificationResult;-><init>(Lcom/fsck/k9/notification/NotificationHolder;IZ)V

    return-object v0
.end method


# virtual methods
.method public getNotificationHolder()Lcom/fsck/k9/notification/NotificationHolder;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/fsck/k9/notification/RemoveNotificationResult;->shouldCreateNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getNotificationHolder() can only be called when shouldCreateNotification() returns true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/notification/RemoveNotificationResult;->notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/notification/RemoveNotificationResult;->isUnknownNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getNotificationId() can only be called when isUnknownNotification() returns false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget v0, p0, Lcom/fsck/k9/notification/RemoveNotificationResult;->notificationId:I

    return v0
.end method

.method public isUnknownNotification()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/fsck/k9/notification/RemoveNotificationResult;->unknownNotification:Z

    return v0
.end method

.method public shouldCreateNotification()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/notification/RemoveNotificationResult;->notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

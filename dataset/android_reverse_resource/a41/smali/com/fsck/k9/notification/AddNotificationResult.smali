.class Lcom/fsck/k9/notification/AddNotificationResult;
.super Ljava/lang/Object;
.source "AddNotificationResult.java"


# instance fields
.field private final cancelNotificationBeforeReuse:Z

.field private final notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/notification/NotificationHolder;Z)V
    .locals 0
    .param p1, "notificationHolder"    # Lcom/fsck/k9/notification/NotificationHolder;
    .param p2, "cancelNotificationBeforeReuse"    # Z

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/fsck/k9/notification/AddNotificationResult;->notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;

    .line 12
    iput-boolean p2, p0, Lcom/fsck/k9/notification/AddNotificationResult;->cancelNotificationBeforeReuse:Z

    .line 13
    return-void
.end method

.method public static newNotification(Lcom/fsck/k9/notification/NotificationHolder;)Lcom/fsck/k9/notification/AddNotificationResult;
    .locals 2
    .param p0, "notificationHolder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 16
    new-instance v0, Lcom/fsck/k9/notification/AddNotificationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/notification/AddNotificationResult;-><init>(Lcom/fsck/k9/notification/NotificationHolder;Z)V

    return-object v0
.end method

.method public static replaceNotification(Lcom/fsck/k9/notification/NotificationHolder;)Lcom/fsck/k9/notification/AddNotificationResult;
    .locals 2
    .param p0, "notificationHolder"    # Lcom/fsck/k9/notification/NotificationHolder;

    .prologue
    .line 20
    new-instance v0, Lcom/fsck/k9/notification/AddNotificationResult;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/notification/AddNotificationResult;-><init>(Lcom/fsck/k9/notification/NotificationHolder;Z)V

    return-object v0
.end method


# virtual methods
.method public getNotificationHolder()Lcom/fsck/k9/notification/NotificationHolder;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fsck/k9/notification/AddNotificationResult;->notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/fsck/k9/notification/AddNotificationResult;->shouldCancelNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getNotificationId() can only be called when shouldCancelNotification() returns true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/notification/AddNotificationResult;->notificationHolder:Lcom/fsck/k9/notification/NotificationHolder;

    iget v0, v0, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    return v0
.end method

.method public shouldCancelNotification()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/fsck/k9/notification/AddNotificationResult;->cancelNotificationBeforeReuse:Z

    return v0
.end method

.class Lcom/fsck/k9/notification/NotificationHolder;
.super Ljava/lang/Object;
.source "NotificationHolder.java"


# instance fields
.field public final content:Lcom/fsck/k9/notification/NotificationContent;

.field public final notificationId:I


# direct methods
.method public constructor <init>(ILcom/fsck/k9/notification/NotificationContent;)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "content"    # Lcom/fsck/k9/notification/NotificationContent;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/fsck/k9/notification/NotificationHolder;->notificationId:I

    .line 11
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationHolder;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 12
    return-void
.end method

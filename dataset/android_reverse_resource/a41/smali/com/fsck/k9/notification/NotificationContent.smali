.class Lcom/fsck/k9/notification/NotificationContent;
.super Ljava/lang/Object;
.source "NotificationContent.java"


# instance fields
.field public final messageReference:Lcom/fsck/k9/activity/MessageReference;

.field public final preview:Ljava/lang/CharSequence;

.field public final sender:Ljava/lang/String;

.field public final starred:Z

.field public final subject:Ljava/lang/String;

.field public final summary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "preview"    # Ljava/lang/CharSequence;
    .param p5, "summary"    # Ljava/lang/CharSequence;
    .param p6, "starred"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 19
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationContent;->sender:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/fsck/k9/notification/NotificationContent;->subject:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/fsck/k9/notification/NotificationContent;->preview:Ljava/lang/CharSequence;

    .line 22
    iput-object p5, p0, Lcom/fsck/k9/notification/NotificationContent;->summary:Ljava/lang/CharSequence;

    .line 23
    iput-boolean p6, p0, Lcom/fsck/k9/notification/NotificationContent;->starred:Z

    .line 24
    return-void
.end method

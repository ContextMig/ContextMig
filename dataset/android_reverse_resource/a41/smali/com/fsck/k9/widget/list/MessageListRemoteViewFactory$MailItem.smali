.class Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;
.super Ljava/lang/Object;
.source "MessageListRemoteViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailItem"
.end annotation


# instance fields
.field final date:J

.field final hasAttachment:Z

.field final preview:Ljava/lang/String;

.field final sender:Ljava/lang/String;

.field final subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

.field final unread:Z

.field final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLandroid/net/Uri;)V
    .locals 1
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "preview"    # Ljava/lang/String;
    .param p7, "unread"    # Z
    .param p8, "hasAttachment"    # Z
    .param p9, "viewUri"    # Landroid/net/Uri;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->this$0:Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->sender:Ljava/lang/String;

    .line 188
    iput-wide p3, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->date:J

    .line 189
    iput-object p6, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->preview:Ljava/lang/String;

    .line 190
    iput-object p5, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->subject:Ljava/lang/String;

    .line 191
    iput-boolean p7, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->unread:Z

    .line 192
    iput-object p9, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->uri:Landroid/net/Uri;

    .line 193
    iput-boolean p8, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->hasAttachment:Z

    .line 194
    return-void
.end method


# virtual methods
.method getDateFormatted(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 201
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->this$0:Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    invoke-static {v0}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->access$200(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)Ljava/util/Calendar;

    move-result-object v0

    iget-wide v2, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->this$0:Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    .line 204
    invoke-static {v2}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->access$200(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->this$0:Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    .line 205
    invoke-static {v1}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->access$200(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 203
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextColor()I
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->unread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->this$0:Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    invoke-static {v0}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->access$000(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->this$0:Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    invoke-static {v0}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->access$100(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)I

    move-result v0

    goto :goto_0
.end method

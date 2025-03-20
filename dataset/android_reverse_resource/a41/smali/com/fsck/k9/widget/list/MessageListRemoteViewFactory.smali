.class public Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;
.super Ljava/lang/Object;
.source "MessageListRemoteViewFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;
    }
.end annotation


# static fields
.field private static MAIL_LIST_PROJECTIONS:[Ljava/lang/String;


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final context:Landroid/content/Context;

.field private final mailItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;",
            ">;"
        }
    .end annotation
.end field

.field private readTextColor:I

.field private senderAboveSubject:Z

.field private unreadTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sender"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unread"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->MAIL_LIST_PROJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->mailItems:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->calendar:Ljava/util/Calendar;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    .prologue
    .line 26
    iget v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->unreadTextColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    .prologue
    .line 26
    iget v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->readTextColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private bold(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 165
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 166
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 167
    return-object v0
.end method

.method private loadMessageList()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->mailItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    sget-object v0, Lcom/fsck/k9/provider/MessageProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "inbox_messages"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, "unifiedInboxUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->MAIL_LIST_PROJECTIONS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 74
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 93
    :goto_0
    return-void

    .line 79
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "sender":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v6, 0x0

    .line 82
    .local v6, "date":J
    :goto_2
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "subject":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "preview":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->toBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 85
    .local v10, "unread":Z
    const/4 v0, 0x5

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->toBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 86
    .local v11, "hasAttachment":Z
    const/4 v0, 0x6

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 88
    .local v12, "viewUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->mailItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;-><init>(Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLandroid/net/Uri;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 91
    .end local v5    # "sender":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "preview":Ljava/lang/String;
    .end local v10    # "unread":Z
    .end local v11    # "hasAttachment":Z
    .end local v12    # "viewUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0

    .line 81
    .restart local v5    # "sender":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    goto :goto_2

    .line 91
    .end local v5    # "sender":Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private toBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->mailItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const v3, 0x7f0c00d7

    .line 143
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030031

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 144
    .local v0, "loadingView":Landroid/widget/RemoteViews;
    iget-object v1, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    const v2, 0x7f070282

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13
    .param p1, "position"    # I

    .prologue
    const v12, 0x7f0c00d6

    const v11, 0x7f0c00d3

    const v10, 0x7f0c00d2

    const v9, 0x7f0c00d5

    const v8, 0x7f0c00d4

    .line 107
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030030

    invoke-direct {v2, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v2, "remoteView":Landroid/widget/RemoteViews;
    iget-object v6, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->mailItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;

    .line 110
    .local v1, "item":Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;
    iget-boolean v6, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->unread:Z

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->sender:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->bold(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 111
    .local v3, "sender":Ljava/lang/CharSequence;
    :goto_0
    iget-boolean v6, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->unread:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->subject:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->bold(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 113
    .local v4, "subject":Ljava/lang/CharSequence;
    :goto_1
    iget-boolean v6, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->senderAboveSubject:Z

    if-eqz v6, :cond_2

    .line 114
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    :goto_2
    const-string v6, "%d %s"

    invoke-virtual {v1, v6}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->getDateFormatted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    iget-object v6, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->preview:Ljava/lang/String;

    invoke-virtual {v2, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v1}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->getTextColor()I

    move-result v5

    .line 124
    .local v5, "textColor":I
    invoke-virtual {v2, v8, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 125
    invoke-virtual {v2, v9, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 126
    invoke-virtual {v2, v10, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 127
    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 129
    iget-boolean v6, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->hasAttachment:Z

    if-eqz v6, :cond_3

    .line 130
    const-string v6, "setVisibility"

    const/4 v7, 0x0

    invoke-virtual {v2, v11, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 135
    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    const v6, 0x7f0c00d1

    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 138
    return-object v2

    .line 110
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "sender":Ljava/lang/CharSequence;
    .end local v4    # "subject":Ljava/lang/CharSequence;
    .end local v5    # "textColor":I
    :cond_0
    iget-object v3, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->sender:Ljava/lang/String;

    goto :goto_0

    .line 111
    .restart local v3    # "sender":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, v1, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory$MailItem;->subject:Ljava/lang/String;

    goto :goto_1

    .line 117
    .restart local v4    # "subject":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v2, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 132
    .restart local v5    # "textColor":I
    :cond_3
    const-string v6, "setVisibility"

    const/16 v7, 0x8

    invoke-virtual {v2, v11, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/fsck/k9/K9;->messageListSenderAboveSubject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->senderAboveSubject:Z

    .line 54
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    const v1, 0x7f0a0005

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->readTextColor:I

    .line 55
    iget-object v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    const v1, 0x7f0a0006

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->unreadTextColor:I

    .line 56
    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 62
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/widget/list/MessageListRemoteViewFactory;->loadMessageList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

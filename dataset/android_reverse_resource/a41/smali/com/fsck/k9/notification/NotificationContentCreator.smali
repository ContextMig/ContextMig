.class Lcom/fsck/k9/notification/NotificationContentCreator;
.super Ljava/lang/Object;
.source "NotificationContentCreator.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private buildMessageSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 88
    .end local p2    # "subject":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 83
    .restart local p2    # "subject":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 84
    .local v0, "summary":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 86
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p2, v0

    .line 88
    goto :goto_0
.end method

.method private getMessagePreview(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "subject":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationContentCreator;->getPreview(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "snippet":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 46
    .local v2, "isSubjectEmpty":Z
    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 47
    .local v1, "isSnippetPresent":Z
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 60
    .end local v4    # "snippet":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 46
    .end local v1    # "isSnippetPresent":Z
    .restart local v4    # "snippet":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    .restart local v1    # "isSnippetPresent":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessageSubject(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "displaySubject":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 54
    .local v3, "preview":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 55
    if-eqz v1, :cond_2

    .line 56
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 57
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    move-object v4, v3

    .line 60
    goto :goto_1
.end method

.method private getMessageSender(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 9
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "isSelf":Z
    invoke-static {}, Lcom/fsck/k9/K9;->showContactName()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v0

    .line 103
    .local v0, "contacts":Lcom/fsck/k9/helper/Contacts;
    :goto_0
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 105
    .local v1, "fromAddresses":[Lcom/fsck/k9/mail/Address;
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p1, v1}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v2

    .line 107
    if-nez v2, :cond_2

    array-length v5, v1

    if-lez v5, :cond_2

    .line 108
    aget-object v4, v1, v8

    invoke-static {v4, v0}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly(Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    :cond_0
    :goto_1
    return-object v4

    .end local v0    # "contacts":Lcom/fsck/k9/helper/Contacts;
    .end local v1    # "fromAddresses":[Lcom/fsck/k9/mail/Address;
    :cond_1
    move-object v0, v4

    .line 102
    goto :goto_0

    .line 112
    .restart local v0    # "contacts":Lcom/fsck/k9/helper/Contacts;
    .restart local v1    # "fromAddresses":[Lcom/fsck/k9/mail/Address;
    :cond_2
    if-eqz v2, :cond_0

    .line 114
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    .line 116
    .local v3, "recipients":[Lcom/fsck/k9/mail/Address;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 117
    iget-object v4, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->context:Landroid/content/Context;

    const v5, 0x7f0702ac

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v3, v8

    .line 118
    invoke-static {v7, v0}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly(Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 117
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getMessageSenderForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .end local p1    # "sender":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "sender":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->context:Landroid/content/Context;

    const v1, 0x7f07021a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getMessageSubject(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    .end local v0    # "subject":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "subject":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->context:Landroid/content/Context;

    const v2, 0x7f07021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreview(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getPreviewType()Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    move-result-object v0

    .line 65
    .local v0, "previewType":Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    sget-object v1, Lcom/fsck/k9/notification/NotificationContentCreator$1;->$SwitchMap$com$fsck$k9$message$extractors$PreviewResult$PreviewType:[I

    invoke-virtual {v0}, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown preview type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 68
    :pswitch_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 70
    :pswitch_1
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getPreview()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v1, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->context:Landroid/content/Context;

    const v2, 0x7f07030a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createFromMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/notification/NotificationContent;
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 30
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    .line 31
    .local v1, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessageSender(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "sender":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessageSenderForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "displaySender":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessageSubject(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "subject":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessagePreview(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 35
    .local v4, "preview":Ljava/lang/CharSequence;
    invoke-direct {p0, v7, v3}, Lcom/fsck/k9/notification/NotificationContentCreator;->buildMessageSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 36
    .local v5, "summary":Ljava/lang/CharSequence;
    sget-object v0, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    .line 38
    .local v6, "starred":Z
    new-instance v0, Lcom/fsck/k9/notification/NotificationContent;

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/notification/NotificationContent;-><init>(Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.class public Lcom/fsck/k9/helper/MessageHelper;
.super Ljava/lang/Object;
.source "MessageHelper.java"


# static fields
.field private static final TOO_MANY_ADDRESSES:I = 0x32

.field private static sInstance:Lcom/fsck/k9/helper/MessageHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/MessageHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/fsck/k9/helper/MessageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/helper/MessageHelper;->sInstance:Lcom/fsck/k9/helper/MessageHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/fsck/k9/helper/MessageHelper;

    invoke-direct {v0, p0}, Lcom/fsck/k9/helper/MessageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fsck/k9/helper/MessageHelper;->sInstance:Lcom/fsck/k9/helper/MessageHelper;

    .line 41
    :cond_0
    sget-object v0, Lcom/fsck/k9/helper/MessageHelper;->sInstance:Lcom/fsck/k9/helper/MessageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static toFriendly(Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "address"    # Lcom/fsck/k9/mail/Address;
    .param p1, "contacts"    # Lcom/fsck/k9/helper/Contacts;

    .prologue
    .line 129
    .line 130
    invoke-static {}, Lcom/fsck/k9/K9;->showCorrespondentNames()Z

    move-result v0

    .line 131
    invoke-static {}, Lcom/fsck/k9/K9;->changeContactNameColor()Z

    move-result v1

    .line 132
    invoke-static {}, Lcom/fsck/k9/K9;->getContactNameColor()I

    move-result v2

    .line 129
    invoke-static {p0, p1, v0, v1, v2}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly(Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;ZZI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static toFriendly(Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;ZZI)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "address"    # Lcom/fsck/k9/mail/Address;
    .param p1, "contacts"    # Lcom/fsck/k9/helper/Contacts;
    .param p2, "showCorrespondentNames"    # Z
    .param p3, "changeContactNameColor"    # Z
    .param p4, "contactNameColor"    # I

    .prologue
    .line 159
    if-nez p2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 161
    :cond_0
    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fsck/k9/helper/Contacts;->getNameForAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 165
    if-eqz p3, :cond_1

    .line 166
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    .local v0, "coloredName":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    .line 167
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .end local v0    # "coloredName":Landroid/text/SpannableString;
    :cond_1
    move-object v0, v1

    .line 174
    goto :goto_0

    .line 179
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;
    .param p1, "contacts"    # Lcom/fsck/k9/helper/Contacts;

    .prologue
    .line 136
    if-nez p0, :cond_1

    .line 137
    const/4 v1, 0x0

    .line 152
    :cond_0
    return-object v1

    .line 140
    :cond_1
    array-length v2, p0

    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    .line 142
    const/4 p1, 0x0

    .line 145
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 146
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 147
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly(Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 148
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 149
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 146
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "fromAddrs"    # [Lcom/fsck/k9/mail/Address;
    .param p3, "toAddrs"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 94
    invoke-static {}, Lcom/fsck/k9/K9;->showContactName()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v0

    .line 97
    .local v0, "contactHelper":Lcom/fsck/k9/helper/Contacts;
    :goto_0
    array-length v3, p2

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {p1, v3}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-static {p3, v0}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 99
    .local v2, "to":Ljava/lang/CharSequence;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0702ad

    .line 100
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 105
    .end local v2    # "to":Ljava/lang/CharSequence;
    .local v1, "displayName":Ljava/lang/CharSequence;
    :goto_1
    return-object v1

    .line 94
    .end local v0    # "contactHelper":Lcom/fsck/k9/helper/Contacts;
    .end local v1    # "displayName":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    .restart local v0    # "contactHelper":Lcom/fsck/k9/helper/Contacts;
    :cond_1
    invoke-static {p2, v0}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "displayName":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public populate(Lcom/fsck/k9/activity/MessageInfoHolder;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/activity/FolderInfoHolder;Lcom/fsck/k9/Account;)V
    .locals 7
    .param p1, "target"    # Lcom/fsck/k9/activity/MessageInfoHolder;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p3, "folder"    # Lcom/fsck/k9/activity/FolderInfoHolder;
    .param p4, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-static {}, Lcom/fsck/k9/K9;->showContactName()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v1

    .line 56
    .local v1, "contactHelper":Lcom/fsck/k9/helper/Contacts;
    :goto_0
    iput-object p2, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 57
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getInternalDate()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->compareArrival:Ljava/util/Date;

    .line 58
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->compareDate:Ljava/util/Date;

    .line 59
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->compareDate:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 60
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getInternalDate()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->compareDate:Ljava/util/Date;

    .line 63
    :cond_0
    iput-object p3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->folder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 65
    sget-object v3, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    iput-boolean v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->read:Z

    .line 66
    sget-object v3, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    iput-boolean v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->answered:Z

    .line 67
    sget-object v3, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    iput-boolean v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->forwarded:Z

    .line 68
    sget-object v3, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    iput-boolean v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->flagged:Z

    .line 70
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 72
    .local v0, "addrs":[Lcom/fsck/k9/mail/Address;
    array-length v3, v0

    if-lez v3, :cond_2

    aget-object v3, v0, v6

    invoke-virtual {p4, v3}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p2, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 74
    .local v2, "to":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->compareCounterparty:Ljava/lang/String;

    .line 75
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0702ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->sender:Ljava/lang/CharSequence;

    .line 81
    .end local v2    # "to":Ljava/lang/CharSequence;
    :goto_1
    array-length v3, v0

    if-lez v3, :cond_3

    .line 82
    aget-object v3, v0, v6

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->senderAddress:Ljava/lang/String;

    .line 88
    :goto_2
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->uid:Ljava/lang/String;

    .line 89
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccountUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->account:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->uri:Ljava/lang/String;

    .line 91
    return-void

    .line 54
    .end local v0    # "addrs":[Lcom/fsck/k9/mail/Address;
    .end local v1    # "contactHelper":Lcom/fsck/k9/helper/Contacts;
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 77
    .restart local v0    # "addrs":[Lcom/fsck/k9/mail/Address;
    .restart local v1    # "contactHelper":Lcom/fsck/k9/helper/Contacts;
    :cond_2
    invoke-static {v0, v1}, Lcom/fsck/k9/helper/MessageHelper;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->sender:Ljava/lang/CharSequence;

    .line 78
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->sender:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->compareCounterparty:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_3
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->compareCounterparty:Ljava/lang/String;

    iput-object v3, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->senderAddress:Ljava/lang/String;

    goto :goto_2
.end method

.method public toMe(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Address;)Z
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "toAddrs"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v1, 0x0

    .line 109
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 110
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    const/4 v1, 0x1

    .line 114
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_0
    return v1

    .line 109
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

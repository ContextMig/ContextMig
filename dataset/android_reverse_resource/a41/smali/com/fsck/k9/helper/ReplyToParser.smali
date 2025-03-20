.class public Lcom/fsck/k9/helper/ReplyToParser;
.super Ljava/lang/Object;
.source "ReplyToParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecipientsToReplyAllTo(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;
    .locals 10
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyTo(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;

    move-result-object v6

    iget-object v6, v6, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;->to:[Lcom/fsck/k9/mail/Address;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, "replyToAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 47
    .local v1, "alreadyAddedAddresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/fsck/k9/mail/Address;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v4, "toAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Address;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "ccAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Address;>;"
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 51
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p2, v0}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 52
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_1
    sget-object v6, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 58
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p2, v0}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 59
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_3
    sget-object v6, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v0, v6, v5

    .line 65
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p2, v0}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 66
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 71
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_5
    new-instance v5, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;

    invoke-direct {v5, v4, v2}, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method

.method public getRecipientsToReplyTo(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;
    .locals 6
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    .line 24
    .local v4, "replyToAddresses":[Lcom/fsck/k9/mail/Address;
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/ListHeaders;->getListPostAddresses(Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    .line 25
    .local v2, "listPostAddresses":[Lcom/fsck/k9/mail/Address;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 27
    .local v1, "fromAddresses":[Lcom/fsck/k9/mail/Address;
    array-length v5, v4

    if-lez v5, :cond_1

    .line 28
    move-object v0, v4

    .line 35
    .local v0, "candidateAddress":[Lcom/fsck/k9/mail/Address;
    :goto_0
    invoke-virtual {p2, v0}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v3

    .line 36
    .local v3, "replyToAddressIsUserIdentity":Z
    if-eqz v3, :cond_0

    .line 37
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 40
    :cond_0
    new-instance v5, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;

    invoke-direct {v5, v0}, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;-><init>([Lcom/fsck/k9/mail/Address;)V

    return-object v5

    .line 29
    .end local v0    # "candidateAddress":[Lcom/fsck/k9/mail/Address;
    .end local v3    # "replyToAddressIsUserIdentity":Z
    :cond_1
    array-length v5, v2

    if-lez v5, :cond_2

    .line 30
    move-object v0, v2

    .restart local v0    # "candidateAddress":[Lcom/fsck/k9/mail/Address;
    goto :goto_0

    .line 32
    .end local v0    # "candidateAddress":[Lcom/fsck/k9/mail/Address;
    :cond_2
    move-object v0, v1

    .restart local v0    # "candidateAddress":[Lcom/fsck/k9/mail/Address;
    goto :goto_0
.end method

.class public Lcom/fsck/k9/helper/IdentityHelper;
.super Ljava/lang/Object;
.source "IdentityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecipientIdentityFromMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/Identity;
    .locals 8
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 28
    .local v3, "recipient":Lcom/fsck/k9/Identity;
    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->X_ORIGINAL_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v0, v6, v4

    .line 29
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v2

    .line 30
    .local v2, "identity":Lcom/fsck/k9/Identity;
    if-eqz v2, :cond_6

    .line 31
    move-object v3, v2

    .line 36
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    :cond_0
    if-nez v3, :cond_1

    .line 37
    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->DELIVERED_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v0, v6, v4

    .line 38
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v2

    .line 39
    .restart local v2    # "identity":Lcom/fsck/k9/Identity;
    if-eqz v2, :cond_7

    .line 40
    move-object v3, v2

    .line 46
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    :cond_1
    if-nez v3, :cond_2

    .line 47
    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->X_ENVELOPE_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v0, v6, v4

    .line 48
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v2

    .line 49
    .restart local v2    # "identity":Lcom/fsck/k9/Identity;
    if-eqz v2, :cond_8

    .line 50
    move-object v3, v2

    .line 56
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    :cond_2
    if-nez v3, :cond_3

    .line 57
    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_3
    if-ge v4, v7, :cond_3

    aget-object v0, v6, v4

    .line 58
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v2

    .line 59
    .restart local v2    # "identity":Lcom/fsck/k9/Identity;
    if-eqz v2, :cond_9

    .line 60
    move-object v3, v2

    .line 66
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    :cond_3
    if-nez v3, :cond_4

    .line 67
    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 68
    .local v1, "ccAddresses":[Lcom/fsck/k9/mail/Address;
    array-length v4, v1

    if-lez v4, :cond_4

    .line 69
    array-length v6, v1

    move v4, v5

    :goto_4
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 70
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v2

    .line 71
    .restart local v2    # "identity":Lcom/fsck/k9/Identity;
    if-eqz v2, :cond_a

    .line 72
    move-object v3, v2

    .line 79
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v1    # "ccAddresses":[Lcom/fsck/k9/mail/Address;
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    :cond_4
    if-nez v3, :cond_5

    .line 80
    invoke-virtual {p0, v5}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Identity;

    move-result-object v3

    .line 83
    :cond_5
    return-object v3

    .line 28
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    .restart local v2    # "identity":Lcom/fsck/k9/Identity;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 47
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 57
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 69
    .restart local v1    # "ccAddresses":[Lcom/fsck/k9/mail/Address;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

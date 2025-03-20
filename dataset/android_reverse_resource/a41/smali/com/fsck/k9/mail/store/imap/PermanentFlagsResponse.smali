.class Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;
.super Ljava/lang/Object;
.source "PermanentFlagsResponse.java"


# instance fields
.field private final canCreateKeywords:Z

.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Z)V
    .locals 1
    .param p2, "canCreateKeywords"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;->flags:Ljava/util/Set;

    .line 21
    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;->canCreateKeywords:Z

    .line 22
    return-void
.end method

.method public static parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;
    .locals 14
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0, v10}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v13, "OK"

    invoke-static {v9, v13}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, v11}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isList(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v8

    .line 29
    :cond_1
    invoke-virtual {p0, v11}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v6

    .line 30
    .local v6, "responseTextList":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v9

    if-lt v9, v12, :cond_0

    invoke-virtual {v6, v10}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v13, "PERMANENTFLAGS"

    invoke-static {v9, v13}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 31
    invoke-virtual {v6, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 35
    invoke-virtual {v6, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v5

    .line 36
    .local v5, "permanentFlagsList":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v7

    .line 37
    .local v7, "size":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 38
    .local v3, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "canCreateKeywords":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 41
    invoke-virtual {v5, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 45
    invoke-virtual {v5, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "flag":Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "compareFlag":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 40
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    :sswitch_0
    const-string v13, "\\deleted"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v9, v10

    goto :goto_2

    :sswitch_1
    const-string v13, "\\answered"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v9, v11

    goto :goto_2

    :sswitch_2
    const-string v13, "\\seen"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v9, v12

    goto :goto_2

    :sswitch_3
    const-string v13, "\\flagged"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_4
    const-string v13, "$forwarded"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v9, 0x4

    goto :goto_2

    :sswitch_5
    const-string v13, "\\*"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v9, 0x5

    goto :goto_2

    .line 50
    :pswitch_0
    sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 54
    :pswitch_1
    sget-object v9, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 58
    :pswitch_2
    sget-object v9, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    :pswitch_3
    sget-object v9, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 66
    :pswitch_4
    sget-object v9, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 70
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_3

    .line 76
    .end local v1    # "compareFlag":Ljava/lang/String;
    .end local v2    # "flag":Ljava/lang/String;
    :cond_3
    new-instance v8, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;

    invoke-direct {v8, v3, v0}, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;-><init>(Ljava/util/Set;Z)V

    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ea9afc3 -> :sswitch_0
        -0x28a21580 -> :sswitch_4
        0xb4e -> :sswitch_5
        0x54640d7 -> :sswitch_2
        0x267a687e -> :sswitch_3
        0x2ad13939 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public canCreateKeywords()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;->canCreateKeywords:Z

    return v0
.end method

.method public getFlags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;->flags:Ljava/util/Set;

    return-object v0
.end method

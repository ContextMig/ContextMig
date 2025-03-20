.class Lcom/fsck/k9/mail/store/imap/CopyUidResponse;
.super Ljava/lang/Object;
.source "CopyUidResponse.java"


# instance fields
.field private final uidMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "uidMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/CopyUidResponse;->uidMapping:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/CopyUidResponse;
    .locals 15
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v9

    if-lt v9, v12, :cond_0

    invoke-virtual {p0, v13}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "OK"

    invoke-static {v9, v10}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 23
    invoke-virtual {p0, v11}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isList(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v8

    .line 27
    :cond_1
    invoke-virtual {p0, v11}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v3

    .line 28
    .local v3, "responseTextList":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    invoke-virtual {v3, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "COPYUID"

    invoke-static {v9, v10}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 29
    invoke-virtual {v3, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3, v12}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3, v14}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 33
    invoke-virtual {v3, v12}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 34
    .local v6, "sourceUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v14}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 36
    .local v1, "destinationUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 37
    .local v4, "size":I
    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ne v4, v9, :cond_0

    .line 41
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .local v7, "uidMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 43
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 44
    .local v5, "sourceUid":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "destinationUid":Ljava/lang/String;
    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "destinationUid":Ljava/lang/String;
    .end local v5    # "sourceUid":Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/fsck/k9/mail/store/imap/CopyUidResponse;

    invoke-direct {v8, v7}, Lcom/fsck/k9/mail/store/imap/CopyUidResponse;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public getUidMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/CopyUidResponse;->uidMapping:Ljava/util/Map;

    return-object v0
.end method

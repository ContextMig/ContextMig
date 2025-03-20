.class Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
.super Ljava/lang/Object;
.source "CapabilityResponse.java"


# instance fields
.field private final capabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "capabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->capabilities:Ljava/util/Set;

    .line 19
    return-void
.end method

.method static parse(Lcom/fsck/k9/mail/store/imap/ImapList;)Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    .locals 7
    .param p0, "capabilityList"    # Lcom/fsck/k9/mail/store/imap/ImapList;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "CAPABILITY"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v4

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v2

    .line 47
    .local v2, "size":I
    new-instance v0, Ljava/util/HashSet;

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 49
    .local v0, "capabilities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 50
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "uppercaseCapability":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "uppercaseCapability":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;

    invoke-direct {v4, v0}, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;-><init>(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public static parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Lcom/fsck/k9/mail/store/imap/CapabilityResponse;"
        }
    .end annotation

    .prologue
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    const/4 v6, 0x1

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 24
    .local v1, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "OK"

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isList(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v0

    .line 26
    .local v0, "capabilityList":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->parse(Lcom/fsck/k9/mail/store/imap/ImapList;)Lcom/fsck/k9/mail/store/imap/CapabilityResponse;

    move-result-object v2

    .line 33
    .end local v0    # "capabilityList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .local v2, "result":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    :goto_0
    if-eqz v2, :cond_0

    .line 38
    .end local v1    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v2    # "result":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    :goto_1
    return-object v2

    .line 27
    .restart local v1    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 28
    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->parse(Lcom/fsck/k9/mail/store/imap/ImapList;)Lcom/fsck/k9/mail/store/imap/CapabilityResponse;

    move-result-object v2

    .restart local v2    # "result":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    goto :goto_0

    .line 30
    .end local v2    # "result":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "result":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    goto :goto_0

    .line 38
    .end local v1    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v2    # "result":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->capabilities:Ljava/util/Set;

    return-object v0
.end method

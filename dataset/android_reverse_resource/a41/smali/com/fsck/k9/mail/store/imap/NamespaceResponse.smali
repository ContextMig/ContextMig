.class Lcom/fsck/k9/mail/store/imap/NamespaceResponse;
.super Ljava/lang/Object;
.source "NamespaceResponse.java"


# instance fields
.field private hierarchyDelimiter:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "hierarchyDelimiter"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->prefix:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->hierarchyDelimiter:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/NamespaceResponse;
    .locals 9
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "NAMESPACE"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v4

    .line 35
    :cond_1
    invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isList(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v2

    .line 40
    .local v2, "personalNamespaces":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v2, v7}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    invoke-virtual {v2, v7}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v0

    .line 45
    .local v0, "firstPersonalNamespace":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v8}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "hierarchyDelimiter":Ljava/lang/String;
    new-instance v4, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;

    invoke-direct {v4, v3, v1}, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/NamespaceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Lcom/fsck/k9/mail/store/imap/NamespaceResponse;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 21
    .local v1, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/NamespaceResponse;

    move-result-object v0

    .line 22
    .local v0, "prefix":Lcom/fsck/k9/mail/store/imap/NamespaceResponse;
    if-eqz v0, :cond_0

    .line 27
    .end local v0    # "prefix":Lcom/fsck/k9/mail/store/imap/NamespaceResponse;
    .end local v1    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHierarchyDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->hierarchyDelimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->prefix:Ljava/lang/String;

    return-object v0
.end method

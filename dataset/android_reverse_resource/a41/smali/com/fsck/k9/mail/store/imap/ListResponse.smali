.class Lcom/fsck/k9/mail/store/imap/ListResponse;
.super Ljava/lang/Object;
.source "ListResponse.java"


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hierarchyDelimiter:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "hierarchyDelimiter"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ListResponse;->attributes:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ListResponse;->hierarchyDelimiter:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ListResponse;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private static extractAttributes(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/util/List;
    .locals 6
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v3

    .line 69
    .local v3, "nameAttributes":Lcom/fsck/k9/mail/store/imap/ImapList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v1, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "nameAttribute":Ljava/lang/Object;
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_1

    .line 73
    const/4 v1, 0x0

    .line 80
    .end local v1    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "nameAttribute":Ljava/lang/Object;
    :cond_0
    return-object v1

    .restart local v1    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "nameAttribute":Ljava/lang/Object;
    :cond_1
    move-object v0, v2

    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "attribute":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parse(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "commandResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ListResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "listResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ListResponse;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 36
    .local v2, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {v2, p1}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parseSingleLine(Lcom/fsck/k9/mail/store/imap/ImapResponse;Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ListResponse;

    move-result-object v0

    .line 37
    .local v0, "listResponse":Lcom/fsck/k9/mail/store/imap/ListResponse;
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v0    # "listResponse":Lcom/fsck/k9/mail/store/imap/ListResponse;
    .end local v2    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static parseList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ListResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    const-string v0, "LIST"

    invoke-static {p0, v0}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parse(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseLsub(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ListResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    const-string v0, "LSUB"

    invoke-static {p0, v0}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parse(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static parseSingleLine(Lcom/fsck/k9/mail/store/imap/ImapResponse;Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ListResponse;
    .locals 6
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .param p1, "commandResponse"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v3

    .line 52
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/mail/store/imap/ListResponse;->extractAttributes(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 57
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "hierarchyDelimiter":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 62
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Lcom/fsck/k9/mail/store/imap/ListResponse;

    invoke-direct {v3, v0, v1, v2}, Lcom/fsck/k9/mail/store/imap/ListResponse;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ListResponse;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getHierarchyDelimiter()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ListResponse;->hierarchyDelimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ListResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ListResponse;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "attributeInResponse":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 94
    .end local v0    # "attributeInResponse":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

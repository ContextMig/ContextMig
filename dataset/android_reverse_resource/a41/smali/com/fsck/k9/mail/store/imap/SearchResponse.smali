.class Lcom/fsck/k9/mail/store/imap/SearchResponse;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# instance fields
.field private final numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/SearchResponse;->numbers:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/SearchResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Lcom/fsck/k9/mail/store/imap/SearchResponse;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v0, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 22
    .local v1, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {v1, v0}, Lcom/fsck/k9/mail/store/imap/SearchResponse;->parseSingleLine(Lcom/fsck/k9/mail/store/imap/ImapResponse;Ljava/util/List;)V

    goto :goto_0

    .line 25
    .end local v1    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_0
    new-instance v2, Lcom/fsck/k9/mail/store/imap/SearchResponse;

    invoke-direct {v2, v0}, Lcom/fsck/k9/mail/store/imap/SearchResponse;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private static parseSingleLine(Lcom/fsck/k9/mail/store/imap/ImapResponse;Ljava/util/List;)V
    .locals 7
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "SEARCH"

    invoke-static {v3, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v1

    .line 34
    .local v1, "end":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getLong(I)J

    move-result-wide v4

    .line 37
    .local v4, "number":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    .end local v4    # "number":J
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/SearchResponse;->numbers:Ljava/util/List;

    return-object v0
.end method

.class Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "NegativeImapResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x33b1e24bd929101aL


# instance fields
.field private alertText:Ljava/lang/String;

.field private final responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    .line 18
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->alertText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->getLastResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 24
    .local v0, "lastResponse":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/AlertResponse;->getAlertText(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->alertText:Ljava/lang/String;

    .line 27
    .end local v0    # "lastResponse":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->alertText:Ljava/lang/String;

    return-object v1
.end method

.method public getLastResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    return-object v0
.end method

.method public wasByeResponseReceived()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 32
    .local v0, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v4

    if-lt v4, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BYE"

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    .end local v0    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.class Lcom/fsck/k9/mail/store/imap/FetchBodyCallback;
.super Ljava/lang/Object;
.source "FetchBodyCallback.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;


# instance fields
.field private mMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/FetchBodyCallback;->mMessageMap:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public foundLiteral(Lcom/fsck/k9/mail/store/imap/ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .param p2, "literal"    # Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 22
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 23
    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "FETCH"

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    const-string v3, "FETCH"

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 25
    .local v0, "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    const-string v3, "UID"

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/FetchBodyCallback;->mMessageMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 28
    .local v1, "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    .end local v0    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v1    # "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .end local v2    # "uid":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

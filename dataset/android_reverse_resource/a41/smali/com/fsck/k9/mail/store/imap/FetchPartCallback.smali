.class Lcom/fsck/k9/mail/store/imap/FetchPartCallback;
.super Ljava/lang/Object;
.source "FetchPartCallback.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;


# instance fields
.field private final bodyFactory:Lcom/fsck/k9/mail/BodyFactory;

.field private final part:Lcom/fsck/k9/mail/Part;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/BodyFactory;)V
    .locals 0
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .param p2, "bodyFactory"    # Lcom/fsck/k9/mail/BodyFactory;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/FetchPartCallback;->part:Lcom/fsck/k9/mail/Part;

    .line 19
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/FetchPartCallback;->bodyFactory:Lcom/fsck/k9/mail/BodyFactory;

    .line 20
    return-void
.end method


# virtual methods
.method public foundLiteral(Lcom/fsck/k9/mail/store/imap/ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .param p2, "literal"    # Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "FETCH"

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/FetchPartCallback;->part:Lcom/fsck/k9/mail/Part;

    const-string v3, "Content-Transfer-Encoding"

    invoke-interface {v2, v3}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    .line 28
    .local v0, "contentTransferEncoding":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/FetchPartCallback;->part:Lcom/fsck/k9/mail/Part;

    const-string v3, "Content-Type"

    invoke-interface {v2, v3}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v4

    .line 30
    .local v1, "contentType":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/FetchPartCallback;->bodyFactory:Lcom/fsck/k9/mail/BodyFactory;

    invoke-interface {v2, v0, v1, p2}, Lcom/fsck/k9/mail/BodyFactory;->createBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/fsck/k9/mail/Body;

    move-result-object v2

    .line 32
    .end local v0    # "contentTransferEncoding":Ljava/lang/String;
    .end local v1    # "contentType":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

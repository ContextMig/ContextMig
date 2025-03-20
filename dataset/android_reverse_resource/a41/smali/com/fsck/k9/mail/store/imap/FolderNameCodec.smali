.class Lcom/fsck/k9/mail/store/imap/FolderNameCodec;
.super Ljava/lang/Object;
.source "FolderNameCodec.java"


# instance fields
.field private final asciiCharset:Ljava/nio/charset/Charset;

.field private final modifiedUtf7Charset:Ljava/nio/charset/Charset;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v0}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->modifiedUtf7Charset:Ljava/nio/charset/Charset;

    .line 25
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->asciiCharset:Ljava/nio/charset/Charset;

    .line 26
    return-void
.end method

.method public static newInstance()Lcom/fsck/k9/mail/store/imap/FolderNameCodec;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;-><init>()V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "encodedFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->modifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 38
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->asciiCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 41
    .local v1, "charBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->modifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 31
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->asciiCharset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

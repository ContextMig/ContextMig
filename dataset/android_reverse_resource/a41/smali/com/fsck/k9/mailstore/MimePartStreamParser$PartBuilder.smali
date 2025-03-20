.class Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;
.super Ljava/lang/Object;
.source "MimePartStreamParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/MimePartStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartBuilder"
.end annotation


# instance fields
.field private final decryptedRootPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

.field private final fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/util/FileFactory;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 1
    .param p1, "fileFactory"    # Lcom/fsck/k9/mailstore/util/FileFactory;
    .param p2, "decryptedRootPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 75
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

    .line 76
    iput-object p2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->decryptedRootPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 77
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "bd"    # Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 174
    .local v1, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "transferEncoding":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

    invoke-static {p2, v2, v3}, Lcom/fsck/k9/mailstore/MimePartStreamParser;->access$000(Ljava/io/InputStream;Ljava/lang/String;Lcom/fsck/k9/mailstore/util/FileFactory;)Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 177
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    invoke-interface {v1, v0}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 178
    return-void
.end method

.method public endBodyPart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public endHeader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public endMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public endMultipart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const-class v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v1}, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->expect(Ljava/lang/Class;)V

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v0, "epilogue":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 149
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setEpilogue([B)V

    .line 150
    return-void
.end method

.method public field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 4
    .param p1, "parsedField"    # Lorg/apache/james/mime4j/stream/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "raw":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 128
    .local v1, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {v1, v0, v2}, Lcom/fsck/k9/mail/Part;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const-class v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v1}, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->expect(Ljava/lang/Class;)V

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v0, "preamble":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 141
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setPreamble([B)V

    .line 142
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 103
    .local v2, "multipart":Lcom/fsck/k9/mail/Multipart;
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    .line 104
    .local v0, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 106
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 107
    .end local v0    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Lorg/apache/james/mime4j/MimeException;

    invoke-direct {v3, v1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startHeader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public startMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->decryptedRootPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 86
    .local v1, "part":Lcom/fsck/k9/mail/Part;
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 87
    .local v0, "innerMessage":Lcom/fsck/k9/mail/Message;
    invoke-interface {v1, v0}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 89
    iget-object v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startMultipart(Lorg/apache/james/mime4j/stream/BodyDescriptor;)V
    .locals 5
    .param p1, "bd"    # Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v4, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 156
    .local v3, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "mimeType":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "boundary":Ljava/lang/String;
    new-instance v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {v2, v1, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v2, "multipart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    invoke-interface {v3, v2}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 162
    iget-object v4, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

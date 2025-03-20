.class public Lorg/apache/james/mime4j/message/DefaultMessageBuilder;
.super Ljava/lang/Object;
.source "DefaultMessageBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/MessageBuilder;


# instance fields
.field private bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

.field private bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

.field private config:Lorg/apache/james/mime4j/stream/MimeConfig;

.field private contentDecoding:Z

.field private fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private flatMode:Z

.field private messageImplFactory:Lorg/apache/james/mime4j/message/MessageImplFactory;

.field private monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 53
    iput-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->messageImplFactory:Lorg/apache/james/mime4j/message/MessageImplFactory;

    .line 54
    iput-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 55
    iput-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 56
    iput-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->contentDecoding:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->flatMode:Z

    .line 59
    iput-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 63
    return-void
.end method

.method private newMessageImpl()Lorg/apache/james/mime4j/message/MessageImpl;
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->messageImplFactory:Lorg/apache/james/mime4j/message/MessageImplFactory;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->messageImplFactory:Lorg/apache/james/mime4j/message/MessageImplFactory;

    .line 324
    .local v0, "mif":Lorg/apache/james/mime4j/message/MessageImplFactory;
    :goto_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/message/MessageImplFactory;->messageImpl()Lorg/apache/james/mime4j/message/MessageImpl;

    move-result-object v1

    return-object v1

    .line 323
    .end local v0    # "mif":Lorg/apache/james/mime4j/message/MessageImplFactory;
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/message/DefaultMessageImplFactory;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/DefaultMessageImplFactory;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public copy(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Body;
    .locals 2
    .param p1, "body"    # Lorg/apache/james/mime4j/dom/Body;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/Message;

    if-eqz v0, :cond_1

    .line 199
    check-cast p1, Lorg/apache/james/mime4j/dom/Message;

    .end local p1    # "body":Lorg/apache/james/mime4j/dom/Body;
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 201
    .restart local p1    # "body":Lorg/apache/james/mime4j/dom/Body;
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/Multipart;

    if-eqz v0, :cond_2

    .line 202
    check-cast p1, Lorg/apache/james/mime4j/dom/Multipart;

    .end local p1    # "body":Lorg/apache/james/mime4j/dom/Body;
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;

    move-result-object v0

    goto :goto_0

    .line 204
    .restart local p1    # "body":Lorg/apache/james/mime4j/dom/Body;
    :cond_2
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/SingleBody;

    if-eqz v0, :cond_3

    .line 205
    check-cast p1, Lorg/apache/james/mime4j/dom/SingleBody;

    .end local p1    # "body":Lorg/apache/james/mime4j/dom/Body;
    invoke-virtual {p1}, Lorg/apache/james/mime4j/dom/SingleBody;->copy()Lorg/apache/james/mime4j/dom/SingleBody;

    move-result-object v0

    goto :goto_0

    .line 207
    .restart local p1    # "body":Lorg/apache/james/mime4j/dom/Body;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported body class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;
    .locals 4
    .param p1, "other"    # Lorg/apache/james/mime4j/dom/Header;

    .prologue
    .line 108
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    .line 109
    .local v0, "copy":Lorg/apache/james/mime4j/message/HeaderImpl;
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Header;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/stream/Field;

    .line 110
    .local v1, "otherField":Lorg/apache/james/mime4j/stream/Field;
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/HeaderImpl;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_0

    .line 112
    .end local v1    # "otherField":Lorg/apache/james/mime4j/stream/Field;
    :cond_0
    return-object v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;
    .locals 2
    .param p1, "other"    # Lorg/apache/james/mime4j/dom/Message;

    .prologue
    .line 229
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->newMessageImpl()Lorg/apache/james/mime4j/message/MessageImpl;

    move-result-object v0

    .line 230
    .local v0, "copy":Lorg/apache/james/mime4j/message/MessageImpl;
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/MessageImpl;->setHeader(Lorg/apache/james/mime4j/dom/Header;)V

    .line 233
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 234
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/MessageImpl;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    .line 236
    :cond_1
    return-object v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;
    .locals 4
    .param p1, "other"    # Lorg/apache/james/mime4j/dom/Multipart;

    .prologue
    .line 162
    new-instance v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/message/MultipartImpl;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "copy":Lorg/apache/james/mime4j/message/MultipartImpl;
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/Entity;

    .line 164
    .local v1, "otherBodyPart":Lorg/apache/james/mime4j/dom/Entity;
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Entity;)Lorg/apache/james/mime4j/message/BodyPart;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/message/MultipartImpl;->addBodyPart(Lorg/apache/james/mime4j/dom/Entity;)V

    goto :goto_0

    .line 166
    .end local v1    # "otherBodyPart":Lorg/apache/james/mime4j/dom/Entity;
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getPreamble()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/message/MultipartImpl;->setPreamble(Ljava/lang/String;)V

    .line 167
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getEpilogue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/message/MultipartImpl;->setEpilogue(Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Entity;)Lorg/apache/james/mime4j/message/BodyPart;
    .locals 2
    .param p1, "other"    # Lorg/apache/james/mime4j/dom/Entity;

    .prologue
    .line 133
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 134
    .local v0, "copy":Lorg/apache/james/mime4j/message/BodyPart;
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setHeader(Lorg/apache/james/mime4j/dom/Header;)V

    .line 137
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Entity;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Body;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    .line 140
    :cond_1
    return-object v0
.end method

.method public newHeader()Lorg/apache/james/mime4j/dom/Header;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    return-object v0
.end method

.method public newHeader(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;
    .locals 1
    .param p1, "source"    # Lorg/apache/james/mime4j/dom/Header;

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    return-object v0
.end method

.method public newMessage()Lorg/apache/james/mime4j/dom/Message;
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->newMessageImpl()Lorg/apache/james/mime4j/message/MessageImpl;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;
    .locals 1
    .param p1, "source"    # Lorg/apache/james/mime4j/dom/Message;

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;

    move-result-object v0

    return-object v0
.end method

.method public newMultipart(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Multipart;
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Lorg/apache/james/mime4j/message/MultipartImpl;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/message/MultipartImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newMultipart(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;
    .locals 1
    .param p1, "source"    # Lorg/apache/james/mime4j/dom/Multipart;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->copy(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;

    move-result-object v0

    return-object v0
.end method

.method public parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Header;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 257
    .local v6, "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    :goto_0
    invoke-virtual {v6}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v8

    .line 258
    .local v8, "strict":Z
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 260
    .local v4, "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :goto_1
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 262
    .local v3, "fp":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    :goto_2
    new-instance v5, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v5}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    .line 263
    .local v5, "header":Lorg/apache/james/mime4j/message/HeaderImpl;
    new-instance v2, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    const/4 v0, 0x0

    invoke-direct {v2, v6, v4, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    .line 264
    .local v2, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;-><init>(Lorg/apache/james/mime4j/message/DefaultMessageBuilder;Lorg/apache/james/mime4j/parser/MimeStreamParser;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/message/HeaderImpl;)V

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 281
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return-object v5

    .line 256
    .end local v2    # "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    .end local v3    # "fp":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    .end local v4    # "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .end local v5    # "header":Lorg/apache/james/mime4j/message/HeaderImpl;
    .end local v6    # "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    .end local v8    # "strict":Z
    :cond_0
    sget-object v6, Lorg/apache/james/mime4j/stream/MimeConfig;->DEFAULT:Lorg/apache/james/mime4j/stream/MimeConfig;

    goto :goto_0

    .line 258
    .restart local v6    # "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    .restart local v8    # "strict":Z
    :cond_1
    if-eqz v8, :cond_2

    sget-object v4, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    .line 260
    .restart local v4    # "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :cond_3
    if-eqz v8, :cond_4

    .line 261
    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/apache/james/mime4j/field/LenientFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v3

    goto :goto_2

    .line 282
    .restart local v2    # "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    .restart local v3    # "fp":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    .restart local v5    # "header":Lorg/apache/james/mime4j/message/HeaderImpl;
    :catch_0
    move-exception v7

    .line 283
    .local v7, "ex":Lorg/apache/james/mime4j/MimeException;
    new-instance v0, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v0, v7}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v0
.end method

.method public parseMessage(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Message;
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->newMessageImpl()Lorg/apache/james/mime4j/message/MessageImpl;

    move-result-object v4

    .line 299
    .local v4, "message":Lorg/apache/james/mime4j/message/MessageImpl;
    iget-object v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz v8, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 300
    .local v2, "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v7

    .line 301
    .local v7, "strict":Z
    iget-object v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz v8, :cond_1

    iget-object v5, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 303
    .local v5, "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :goto_1
    iget-object v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    if-eqz v8, :cond_3

    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .line 306
    .local v0, "bdb":Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    :goto_2
    iget-object v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v8, :cond_6

    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 307
    .local v1, "bf":Lorg/apache/james/mime4j/message/BodyFactory;
    :goto_3
    new-instance v6, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v6, v2, v5, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    .line 308
    .local v6, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v8, Lorg/apache/james/mime4j/internal/ParserStreamContentHandler;

    invoke-direct {v8, v4, v1}, Lorg/apache/james/mime4j/internal/ParserStreamContentHandler;-><init>(Lorg/apache/james/mime4j/dom/Entity;Lorg/apache/james/mime4j/message/BodyFactory;)V

    invoke-virtual {v6, v8}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 309
    iget-boolean v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->contentDecoding:Z

    invoke-virtual {v6, v8}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentDecoding(Z)V

    .line 310
    iget-boolean v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->flatMode:Z

    if-eqz v8, :cond_8

    .line 311
    invoke-virtual {v6}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setFlat()V

    .line 315
    :goto_4
    invoke-virtual {v6, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 316
    return-object v4

    .line 299
    .end local v0    # "bdb":Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    .end local v1    # "bf":Lorg/apache/james/mime4j/message/BodyFactory;
    .end local v2    # "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    .end local v5    # "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .end local v6    # "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    .end local v7    # "strict":Z
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/stream/MimeConfig;->DEFAULT:Lorg/apache/james/mime4j/stream/MimeConfig;

    goto :goto_0

    .line 301
    .restart local v2    # "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    .restart local v7    # "strict":Z
    :cond_1
    if-eqz v7, :cond_2

    sget-object v5, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    :cond_2
    sget-object v5, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    .line 303
    .restart local v5    # "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :cond_3
    new-instance v0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;

    const/4 v9, 0x0

    iget-object v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 305
    :goto_5
    invoke-direct {v0, v9, v8, v5}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 317
    .end local v2    # "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    .end local v4    # "message":Lorg/apache/james/mime4j/message/MessageImpl;
    .end local v5    # "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .end local v7    # "strict":Z
    :catch_0
    move-exception v3

    .line 318
    .local v3, "e":Lorg/apache/james/mime4j/MimeException;
    new-instance v8, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v8, v3}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v8

    .line 303
    .end local v3    # "e":Lorg/apache/james/mime4j/MimeException;
    .restart local v2    # "cfg":Lorg/apache/james/mime4j/stream/MimeConfig;
    .restart local v4    # "message":Lorg/apache/james/mime4j/message/MessageImpl;
    .restart local v5    # "mon":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .restart local v7    # "strict":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 305
    :try_start_1
    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v8

    goto :goto_5

    :cond_5
    invoke-static {}, Lorg/apache/james/mime4j/field/LenientFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v8

    goto :goto_5

    .line 306
    .restart local v0    # "bdb":Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    :cond_6
    new-instance v1, Lorg/apache/james/mime4j/message/BasicBodyFactory;

    if-nez v7, :cond_7

    const/4 v8, 0x1

    :goto_6
    invoke-direct {v1, v8}, Lorg/apache/james/mime4j/message/BasicBodyFactory;-><init>(Z)V

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    .line 313
    .restart local v1    # "bf":Lorg/apache/james/mime4j/message/BodyFactory;
    .restart local v6    # "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    :cond_8
    invoke-virtual {v6}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRecurse()V
    :try_end_1
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public setBodyDescriptorBuilder(Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 0
    .param p1, "bodyDescBuilder"    # Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .line 83
    return-void
.end method

.method public setBodyFactory(Lorg/apache/james/mime4j/message/BodyFactory;)V
    .locals 0
    .param p1, "bodyFactory"    # Lorg/apache/james/mime4j/message/BodyFactory;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 75
    return-void
.end method

.method public setContentDecoding(Z)V
    .locals 0
    .param p1, "contentDecoding"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->contentDecoding:Z

    .line 91
    return-void
.end method

.method public setDecodeMonitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 87
    return-void
.end method

.method public setFieldParser(Lorg/apache/james/mime4j/dom/FieldParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "fieldParser":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 67
    return-void
.end method

.method public setFlatMode(Z)V
    .locals 0
    .param p1, "flatMode"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->flatMode:Z

    .line 95
    return-void
.end method

.method public setMessageImplFactory(Lorg/apache/james/mime4j/message/MessageImplFactory;)V
    .locals 0
    .param p1, "messageImplFactory"    # Lorg/apache/james/mime4j/message/MessageImplFactory;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->messageImplFactory:Lorg/apache/james/mime4j/message/MessageImplFactory;

    .line 71
    return-void
.end method

.method public setMimeEntityConfig(Lorg/apache/james/mime4j/stream/MimeConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/james/mime4j/stream/MimeConfig;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 79
    return-void
.end method

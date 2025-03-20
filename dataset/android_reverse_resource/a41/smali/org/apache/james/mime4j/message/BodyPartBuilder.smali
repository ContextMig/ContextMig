.class public Lorg/apache/james/mime4j/message/BodyPartBuilder;
.super Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
.source "BodyPartBuilder.java"


# instance fields
.field private bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPartBuilder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPartBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 0
    .param p1, "field"    # Lorg/apache/james/mime4j/stream/Field;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 68
    return-object p0
.end method

.method public build()Lorg/apache/james/mime4j/message/BodyPart;
    .locals 5

    .prologue
    .line 210
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 211
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    new-instance v2, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v2}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    .line 212
    .local v2, "header":Lorg/apache/james/mime4j/message/HeaderImpl;
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/message/BodyPart;->setHeader(Lorg/apache/james/mime4j/dom/Header;)V

    .line 213
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/stream/Field;

    .line 214
    .local v1, "field":Lorg/apache/james/mime4j/stream/Field;
    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/message/HeaderImpl;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_0

    .line 217
    .end local v1    # "field":Lorg/apache/james/mime4j/stream/Field;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/message/BodyPart;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    .line 219
    return-object v0
.end method

.method public removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 74
    return-object p0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    .end local p2    # "subtype":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 174
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/james/mime4j/stream/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/james/mime4j/stream/NameValuePair;

    const-string v5, "charset"

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    .line 179
    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/message/BodyPartBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v2, :cond_3

    .line 180
    iget-object v3, p0, Lorg/apache/james/mime4j/message/BodyPartBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 181
    invoke-static {p1, p3}, Lorg/apache/james/mime4j/io/InputStreams;->create(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz p3, :cond_2

    .line 182
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_2
    invoke-interface {v3, v4, v2}, Lorg/apache/james/mime4j/message/BodyFactory;->textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/TextBody;

    move-result-object v1

    .line 186
    .local v1, "textBody":Lorg/apache/james/mime4j/dom/Body;
    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v2

    return-object v2

    .line 172
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "textBody":Lorg/apache/james/mime4j/dom/Body;
    .restart local p2    # "subtype":Ljava/lang/String;
    :cond_0
    const-string p2, "plain"

    goto :goto_0

    .line 176
    .end local p2    # "subtype":Ljava/lang/String;
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    goto :goto_1

    .line 182
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 184
    :cond_3
    sget-object v2, Lorg/apache/james/mime4j/message/BasicBodyFactory;->INSTANCE:Lorg/apache/james/mime4j/message/BasicBodyFactory;

    invoke-virtual {v2, p1, p3}, Lorg/apache/james/mime4j/message/BasicBodyFactory;->textBody(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/dom/TextBody;

    move-result-object v1

    .restart local v1    # "textBody":Lorg/apache/james/mime4j/dom/Body;
    goto :goto_3
.end method

.method public setBody(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "binaryBody"    # Lorg/apache/james/mime4j/dom/BinaryBody;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 133
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "body"    # Lorg/apache/james/mime4j/dom/Body;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 121
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "message"    # Lorg/apache/james/mime4j/dom/Message;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 145
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "multipart"    # Lorg/apache/james/mime4j/dom/Multipart;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 139
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "textBody"    # Lorg/apache/james/mime4j/dom/TextBody;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 127
    return-object p0
.end method

.method public setBody([BLjava/lang/String;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 3
    .param p1, "bin"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .end local p2    # "mimeType":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    .line 201
    iget-object v1, p0, Lorg/apache/james/mime4j/message/BodyPartBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lorg/apache/james/mime4j/message/BodyPartBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-static {p1}, Lorg/apache/james/mime4j/io/InputStreams;->create([B)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/message/BodyFactory;->binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/BinaryBody;

    move-result-object v0

    .line 206
    .local v0, "binBody":Lorg/apache/james/mime4j/dom/Body;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v1

    return-object v1

    .line 199
    .end local v0    # "binBody":Lorg/apache/james/mime4j/dom/Body;
    .restart local p2    # "mimeType":Ljava/lang/String;
    :cond_0
    const-string p2, "application/octet-stream"

    goto :goto_0

    .line 204
    .end local p2    # "mimeType":Ljava/lang/String;
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/message/BasicBodyFactory;->INSTANCE:Lorg/apache/james/mime4j/message/BasicBodyFactory;

    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/message/BasicBodyFactory;->binaryBody([B)Lorg/apache/james/mime4j/dom/BinaryBody;

    move-result-object v0

    .restart local v0    # "binBody":Lorg/apache/james/mime4j/dom/Body;
    goto :goto_1
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p7}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 92
    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 98
    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 1
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 104
    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 1
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "creationDate"    # Ljava/util/Date;
    .param p6, "modificationDate"    # Ljava/util/Date;
    .param p7, "readDate"    # Ljava/util/Date;

    .prologue
    .line 114
    invoke-super/range {p0 .. p7}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 115
    return-object p0
.end method

.method public bridge synthetic setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 80
    return-object p0
.end method

.method public bridge synthetic setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "parameters"    # [Lorg/apache/james/mime4j/stream/NameValuePair;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 86
    return-object p0
.end method

.method public bridge synthetic setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPartBuilder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/message/BodyPartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "field"    # Lorg/apache/james/mime4j/stream/Field;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 62
    return-object p0
.end method

.method public use(Lorg/apache/james/mime4j/message/BodyFactory;)Lorg/apache/james/mime4j/message/BodyPartBuilder;
    .locals 0
    .param p1, "bodyFactory"    # Lorg/apache/james/mime4j/message/BodyFactory;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/james/mime4j/message/BodyPartBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 56
    return-object p0
.end method

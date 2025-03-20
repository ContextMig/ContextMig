.class public abstract Lorg/apache/james/mime4j/message/AbstractEntity;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/Entity;


# instance fields
.field private body:Lorg/apache/james/mime4j/dom/Body;

.field private header:Lorg/apache/james/mime4j/dom/Header;

.field private parent:Lorg/apache/james/mime4j/dom/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    .line 37
    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    .line 38
    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->parent:Lorg/apache/james/mime4j/dom/Entity;

    .line 45
    return-void
.end method

.method private getContentTypeField()Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    return-object v0
.end method


# virtual methods
.method protected abstract calcCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
.end method

.method protected abstract calcMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
.end method

.method protected abstract calcTransferEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/Body;->dispose()V

    .line 217
    :cond_0
    return-void
.end method

.method public getBody()Lorg/apache/james/mime4j/dom/Body;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->calcCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    .line 153
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;

    .line 155
    .local v0, "f":Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->calcTransferEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    .line 167
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    if-nez v0, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 170
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    .line 182
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getFilename()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeader()Lorg/apache/james/mime4j/dom/Header;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getContentTypeField()Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v0

    .line 128
    .local v0, "childType":Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getParent()Lorg/apache/james/mime4j/dom/Entity;

    move-result-object v1

    .line 129
    .local v1, "parent":Lorg/apache/james/mime4j/dom/Entity;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-object v2, v3

    .line 130
    .local v2, "parentType":Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    :goto_0
    invoke-virtual {p0, v0, v2}, Lorg/apache/james/mime4j/message/AbstractEntity;->calcMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 129
    .end local v2    # "parentType":Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/apache/james/mime4j/dom/Entity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->parent:Lorg/apache/james/mime4j/dom/Entity;

    return-object v0
.end method

.method public isMultipart()Z
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getContentTypeField()Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v0

    .line 198
    .local v0, "f":Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    .line 200
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    .line 244
    .local v0, "header":Lorg/apache/james/mime4j/dom/Header;
    if-nez v0, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 247
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/ParsedField;

    goto :goto_0
.end method

.method obtainHeader()Lorg/apache/james/mime4j/dom/Header;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    return-object v0
.end method

.method public removeBody()Lorg/apache/james/mime4j/dom/Body;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 123
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    .line 120
    .local v0, "body":Lorg/apache/james/mime4j/dom/Body;
    iput-object v1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    .line 121
    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Body;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    goto :goto_0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Body;)V
    .locals 2
    .param p1, "body"    # Lorg/apache/james/mime4j/dom/Body;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "body already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    .line 105
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/dom/Body;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    .line 106
    return-void
.end method

.method public setHeader(Lorg/apache/james/mime4j/dom/Header;)V
    .locals 0
    .param p1, "header"    # Lorg/apache/james/mime4j/dom/Header;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    .line 83
    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/dom/Entity;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/james/mime4j/dom/Entity;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->parent:Lorg/apache/james/mime4j/dom/Entity;

    .line 65
    return-void
.end method

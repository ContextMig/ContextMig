.class Lcom/dropbox/core/v2/files/PreviewError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PreviewError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/PreviewError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/PreviewError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/PreviewError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 303
    :goto_0
    if-nez v2, :cond_1

    .line 304
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 299
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 300
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 301
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 306
    :cond_1
    const-string/jumbo v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string/jumbo v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 309
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 310
    invoke-static {v1}, Lcom/dropbox/core/v2/files/PreviewError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/PreviewError;

    move-result-object v3

    .line 324
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/files/PreviewError;
    :goto_1
    if-nez v0, :cond_2

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 326
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 328
    :cond_2
    return-object v3

    .line 312
    .end local v3    # "value":Lcom/dropbox/core/v2/files/PreviewError;
    :cond_3
    const-string/jumbo v4, "in_progress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 313
    sget-object v3, Lcom/dropbox/core/v2/files/PreviewError;->IN_PROGRESS:Lcom/dropbox/core/v2/files/PreviewError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/PreviewError;
    goto :goto_1

    .line 315
    .end local v3    # "value":Lcom/dropbox/core/v2/files/PreviewError;
    :cond_4
    const-string/jumbo v4, "unsupported_extension"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 316
    sget-object v3, Lcom/dropbox/core/v2/files/PreviewError;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/PreviewError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/PreviewError;
    goto :goto_1

    .line 318
    .end local v3    # "value":Lcom/dropbox/core/v2/files/PreviewError;
    :cond_5
    const-string/jumbo v4, "unsupported_content"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 319
    sget-object v3, Lcom/dropbox/core/v2/files/PreviewError;->UNSUPPORTED_CONTENT:Lcom/dropbox/core/v2/files/PreviewError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/PreviewError;
    goto :goto_1

    .line 322
    .end local v3    # "value":Lcom/dropbox/core/v2/files/PreviewError;
    :cond_6
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/PreviewError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/PreviewError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/PreviewError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/files/PreviewError$1;->$SwitchMap$com$dropbox$core$v2$files$PreviewError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/PreviewError;->tag()Lcom/dropbox/core/v2/files/PreviewError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/PreviewError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/PreviewError;->tag()Lcom/dropbox/core/v2/files/PreviewError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 264
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 265
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/PreviewError;->access$000(Lcom/dropbox/core/v2/files/PreviewError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 267
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 286
    :goto_0
    return-void

    .line 271
    :pswitch_1
    const-string/jumbo v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :pswitch_2
    const-string/jumbo v0, "unsupported_extension"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :pswitch_3
    const-string/jumbo v0, "unsupported_content"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 256
    check-cast p1, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->serialize(Lcom/dropbox/core/v2/files/PreviewError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

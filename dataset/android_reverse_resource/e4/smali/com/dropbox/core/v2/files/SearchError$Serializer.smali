.class Lcom/dropbox/core/v2/files/SearchError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SearchError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SearchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SearchError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SearchError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/dropbox/core/v2/files/SearchError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SearchError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SearchError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 257
    :goto_0
    if-nez v2, :cond_1

    .line 258
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 253
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 254
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 260
    :cond_1
    const-string/jumbo v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string/jumbo v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 263
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/dropbox/core/v2/files/SearchError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/SearchError;

    move-result-object v3

    .line 269
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/files/SearchError;
    :goto_1
    if-nez v0, :cond_2

    .line 270
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 271
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 273
    :cond_2
    return-object v3

    .line 267
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SearchError;
    :cond_3
    sget-object v3, Lcom/dropbox/core/v2/files/SearchError;->OTHER:Lcom/dropbox/core/v2/files/SearchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SearchError;
    goto :goto_1
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
    .line 222
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SearchError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SearchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/SearchError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/files/SearchError$1;->$SwitchMap$com$dropbox$core$v2$files$SearchError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SearchError;->tag()Lcom/dropbox/core/v2/files/SearchError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SearchError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 230
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 231
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchError;->access$000(Lcom/dropbox/core/v2/files/SearchError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 233
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 222
    check-cast p1, Lcom/dropbox/core/v2/files/SearchError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SearchError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SearchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

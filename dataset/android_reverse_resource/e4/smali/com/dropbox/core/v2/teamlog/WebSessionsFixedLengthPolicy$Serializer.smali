.class Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "WebSessionsFixedLengthPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 283
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 291
    :goto_0
    if-nez v2, :cond_1

    .line 292
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 287
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 288
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 294
    :cond_1
    const-string/jumbo v4, "defined"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "fieldValue":Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    sget-object v4, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    move-result-object v1

    .line 297
    invoke-static {v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->defined(Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    move-result-object v3

    .line 305
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    .local v3, "value":Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    :goto_1
    if-nez v0, :cond_2

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 309
    :cond_2
    return-object v3

    .line 299
    .end local v3    # "value":Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    :cond_3
    const-string/jumbo v4, "undefined"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 300
    sget-object v3, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .restart local v3    # "value":Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    goto :goto_1

    .line 303
    .end local v3    # "value":Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .restart local v3    # "value":Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
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
    .line 253
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$1;->$SwitchMap$com$dropbox$core$v2$teamlog$WebSessionsFixedLengthPolicy$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->tag()Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 260
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 261
    const-string/jumbo v0, "defined"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 262
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;->access$000(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;)Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DurationLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 263
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 267
    :pswitch_1
    const-string/jumbo v0, "undefined"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 253
    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

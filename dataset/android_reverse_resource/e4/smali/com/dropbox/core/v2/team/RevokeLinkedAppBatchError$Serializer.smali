.class Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RevokeLinkedAppBatchError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 55
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 63
    :goto_0
    if-nez v1, :cond_1

    .line 64
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 59
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 60
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 61
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 67
    :cond_1
    sget-object v2, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;->OTHER:Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;

    .line 69
    .local v2, "value":Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;
    if-nez v0, :cond_2

    .line 70
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 71
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 73
    :cond_2
    return-object v2
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
    .line 36
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$1;->$SwitchMap$com$dropbox$core$v2$team$RevokeLinkedAppBatchError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 43
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 46
    return-void
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
    .line 36
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->serialize(Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

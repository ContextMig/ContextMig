.class Lcom/dropbox/core/v2/files/SharingInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SharingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SharingInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SharingInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SharingInfo$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/SharingInfo;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 111
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 112
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 114
    :cond_0
    if-nez v2, :cond_5

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "f_readOnly":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 119
    const-string/jumbo v4, "read_only"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_readOnly":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .restart local v0    # "f_readOnly":Ljava/lang/Boolean;
    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 126
    .end local v1    # "field":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 127
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field \"read_only\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_3
    new-instance v3, Lcom/dropbox/core/v2/files/SharingInfo;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/dropbox/core/v2/files/SharingInfo;-><init>(Z)V

    .line 134
    .local v3, "value":Lcom/dropbox/core/v2/files/SharingInfo;
    if-nez p2, :cond_4

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 137
    :cond_4
    return-object v3

    .line 132
    .end local v0    # "f_readOnly":Ljava/lang/Boolean;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SharingInfo;
    :cond_5
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No subtype found that matches tag: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/SharingInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SharingInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/SharingInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p3, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 99
    :cond_0
    const-string/jumbo v0, "read_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 101
    if-nez p3, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 104
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 91
    check-cast p1, Lcom/dropbox/core/v2/files/SharingInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/SharingInfo$Serializer;->serialize(Lcom/dropbox/core/v2/files/SharingInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

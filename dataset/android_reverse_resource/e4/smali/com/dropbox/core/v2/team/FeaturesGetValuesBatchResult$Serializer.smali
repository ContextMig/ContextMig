.class Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FeaturesGetValuesBatchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
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
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 118
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 119
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_0
    if-nez v2, :cond_5

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "f_values":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/FeatureValue;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_2

    .line 124
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 126
    const-string/jumbo v4, "values"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    sget-object v4, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeatureValue$Serializer;

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_values":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/FeatureValue;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "f_values":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/FeatureValue;>;"
    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 133
    .end local v1    # "field":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 134
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field \"values\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_3
    new-instance v3, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;

    invoke-direct {v3, v0}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;-><init>(Ljava/util/List;)V

    .line 141
    .local v3, "value":Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    if-nez p2, :cond_4

    .line 142
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 144
    :cond_4
    return-object v3

    .line 139
    .end local v0    # "f_values":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/FeatureValue;>;"
    .end local v3    # "value":Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
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
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p3, :cond_0

    .line 104
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 106
    :cond_0
    const-string/jumbo v0, "values"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeatureValue$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;->values:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 108
    if-nez p3, :cond_1

    .line 109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 111
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
    .line 98
    check-cast p1, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

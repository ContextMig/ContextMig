.class Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PaperChangePolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 152
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 153
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 155
    :cond_0
    if-nez v3, :cond_6

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "f_newValue":Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    const/4 v1, 0x0

    .line 158
    .local v1, "f_previousValue":Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 159
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 161
    const-string/jumbo v5, "new_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    sget-object v5, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_1
    const-string/jumbo v5, "previous_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    sget-object v5, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_previousValue":Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    check-cast v1, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    .restart local v1    # "f_previousValue":Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    goto :goto_0

    .line 168
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 171
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 172
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v6, "Required field \"new_value\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;-><init>(Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;)V

    .line 179
    .local v4, "value":Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;
    if-nez p2, :cond_5

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 182
    :cond_5
    return-object v4

    .line 177
    .end local v0    # "f_newValue":Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    .end local v1    # "f_previousValue":Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;
    .end local v4    # "value":Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;
    :cond_6
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No subtype found that matches tag: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p3, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 136
    :cond_0
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 138
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperEnabledPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 142
    :cond_1
    if-nez p3, :cond_2

    .line 143
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 145
    :cond_2
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
    .line 128
    check-cast p1, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

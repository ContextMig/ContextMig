.class Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberChangeEmailDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;
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
    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 172
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 173
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_0
    if-nez v3, :cond_6

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "f_newValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 178
    .local v1, "f_previousValue":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 179
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 181
    const-string/jumbo v5, "new_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_newValue":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_newValue":Ljava/lang/String;
    goto :goto_0

    .line 184
    :cond_1
    const-string/jumbo v5, "previous_value"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_previousValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_previousValue":Ljava/lang/String;
    goto :goto_0

    .line 188
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 191
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 192
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v6, "Required field \"new_value\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v4, "value":Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;
    if-nez p2, :cond_5

    .line 200
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 202
    :cond_5
    return-object v4

    .line 197
    .end local v0    # "f_newValue":Ljava/lang/String;
    .end local v1    # "f_previousValue":Ljava/lang/String;
    .end local v4    # "value":Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;
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
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p3, :cond_0

    .line 154
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 156
    :cond_0
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;->newValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 158
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;->previousValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 159
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;->previousValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 162
    :cond_1
    if-nez p3, :cond_2

    .line 163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 165
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
    .line 148
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

.class Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "RevokeLinkedAppStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
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
    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 137
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_0
    if-nez v3, :cond_6

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "f_success":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 142
    .local v0, "f_errorType":Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 143
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 145
    const-string/jumbo v5, "success"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_success":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .restart local v1    # "f_success":Ljava/lang/Boolean;
    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v5, "error_type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    sget-object v5, Lcom/dropbox/core/v2/team/RevokeLinkedAppError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppError$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_errorType":Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    check-cast v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .restart local v0    # "f_errorType":Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 155
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 156
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v6, "Required field \"success\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;-><init>(ZLcom/dropbox/core/v2/team/RevokeLinkedAppError;)V

    .line 163
    .local v4, "value":Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
    if-nez p2, :cond_5

    .line 164
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 166
    :cond_5
    return-object v4

    .line 161
    .end local v0    # "f_errorType":Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    .end local v1    # "f_success":Ljava/lang/Boolean;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
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
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p3, :cond_0

    .line 118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 120
    :cond_0
    const-string/jumbo v0, "success"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 122
    iget-object v0, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v0, "error_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppError$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 126
    :cond_1
    if-nez p3, :cond_2

    .line 127
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 129
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
    .line 112
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

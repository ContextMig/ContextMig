.class Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "InviteeInfoWithPermissionLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
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
    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_0
    if-nez v3, :cond_7

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "f_invitee":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    const/4 v1, 0x0

    .line 141
    .local v1, "f_permissionLevel":Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 142
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 144
    const-string/jumbo v5, "invitee"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    sget-object v5, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_1
    const-string/jumbo v5, "permission_level"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    sget-object v5, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 154
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 155
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v6, "Required field \"invitee\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 157
    :cond_4
    if-nez v1, :cond_5

    .line 158
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v6, "Required field \"permission_level\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;-><init>(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V

    .line 165
    .local v4, "value":Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
    if-nez p2, :cond_6

    .line 166
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 168
    :cond_6
    return-object v4

    .line 163
    .end local v0    # "f_invitee":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .end local v1    # "f_permissionLevel":Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
    :cond_7
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
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p3, :cond_0

    .line 119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 121
    :cond_0
    const-string/jumbo v0, "invitee"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 123
    const-string/jumbo v0, "permission_level"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 125
    if-nez p3, :cond_1

    .line 126
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 128
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
    .line 113
    check-cast p1, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->serialize(Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

.class public Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AddTemplateArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 139
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 140
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 142
    :cond_0
    if-nez v4, :cond_9

    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "f_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 145
    .local v0, "f_description":Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 147
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 149
    const-string/jumbo v6, "name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 152
    :cond_1
    const-string/jumbo v6, "description"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_description":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_description":Ljava/lang/String;
    goto :goto_0

    .line 155
    :cond_2
    const-string/jumbo v6, "fields"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    sget-object v6, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;>;"
    goto :goto_0

    .line 159
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 162
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 163
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v7, "Required field \"name\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 165
    :cond_5
    if-nez v0, :cond_6

    .line 166
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v7, "Required field \"description\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 168
    :cond_6
    if-nez v1, :cond_7

    .line 169
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v7, "Required field \"fields\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 171
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;

    invoke-direct {v5, v2, v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 176
    .local v5, "value":Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;
    if-nez p2, :cond_8

    .line 177
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 179
    :cond_8
    return-object v5

    .line 174
    .end local v0    # "f_description":Ljava/lang/String;
    .end local v1    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;>;"
    .end local v2    # "f_name":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;
    :cond_9
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
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
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p3, :cond_0

    .line 121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 123
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 125
    const-string/jumbo v0, "description"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 127
    const-string/jumbo v0, "fields"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;->fields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 129
    if-nez p3, :cond_1

    .line 130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 132
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
    .line 115
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

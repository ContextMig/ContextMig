.class public Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "OverwritePropertyGroupArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;
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
    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 149
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 150
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 152
    :cond_0
    if-nez v3, :cond_7

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "f_path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyGroup;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 156
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 158
    const-string/jumbo v5, "path"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_path":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 161
    :cond_1
    const-string/jumbo v5, "property_groups"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    sget-object v5, Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyGroup;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyGroup;>;"
    goto :goto_0

    .line 165
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 168
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 169
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v6, "Required field \"path\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_4
    if-nez v1, :cond_5

    .line 172
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v6, "Required field \"property_groups\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 179
    .local v4, "value":Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;
    if-nez p2, :cond_6

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 182
    :cond_6
    return-object v4

    .line 177
    .end local v0    # "f_path":Ljava/lang/String;
    .end local v1    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertyGroup;>;"
    .end local v4    # "value":Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;
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
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p3, :cond_0

    .line 133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 135
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 137
    const-string/jumbo v0, "property_groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;->propertyGroups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 139
    if-nez p3, :cond_1

    .line 140
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 142
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
    .line 127
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method

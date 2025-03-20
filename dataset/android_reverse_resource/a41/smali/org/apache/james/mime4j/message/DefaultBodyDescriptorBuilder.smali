.class public Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;
.super Ljava/lang/Object;
.source "DefaultBodyDescriptorBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String;

.field private static final DEFAULT_MEDIA_TYPE:Ljava/lang/String; = "text"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_SUB_TYPE:Ljava/lang/String; = "plain"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final MEDIA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field private static final MEDIA_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final SUB_TYPE_EMAIL:Ljava/lang/String; = "rfc822"

.field private static final US_ASCII:Ljava/lang/String; = "us-ascii"


# instance fields
.field private final fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private final parentMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "Content-Type"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentMimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "parentMimeType"    # Ljava/lang/String;
    .param p3, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;",
            "Lorg/apache/james/mime4j/codec/DecodeMonitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "fieldParser":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    .line 80
    if-eqz p2, :cond_0

    .end local p2    # "fieldParser":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 81
    if-eqz p3, :cond_1

    .end local p3    # "monitor":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :goto_1
    iput-object p3, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    .line 83
    return-void

    .line 80
    .restart local p2    # "fieldParser":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    .restart local p3    # "monitor":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :cond_0
    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object p2

    goto :goto_0

    .line 81
    .end local p2    # "fieldParser":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<+Lorg/apache/james/mime4j/dom/field/ParsedField;>;"
    :cond_1
    sget-object p3, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/Field;
    .locals 4
    .param p1, "rawfield"    # Lorg/apache/james/mime4j/stream/RawField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    iget-object v3, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-interface {v2, p1, v3}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    .line 91
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/ParsedField;
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ParsedField;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    return-object v0
.end method

.method public build()Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .locals 9

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "actualMimeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 101
    .local v2, "actualMediaType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 102
    .local v3, "actualSubType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 103
    .local v5, "actualCharset":Ljava/lang/String;
    const/4 v4, 0x0

    .line 104
    .local v4, "actualBoundary":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    sget-object v6, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    .line 105
    .local v7, "contentTypeField":Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    if-eqz v7, :cond_0

    .line 106
    invoke-interface {v7}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-interface {v7}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMediaType()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-interface {v7}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getSubType()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-interface {v7}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-interface {v7}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v4

    .line 112
    if-eqz v2, :cond_4

    const-string v0, "multipart"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    .line 113
    .local v8, "multipart":Z
    :goto_0
    if-eqz v8, :cond_0

    if-nez v4, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v3, 0x0

    .line 119
    .end local v8    # "multipart":Z
    :cond_0
    if-nez v1, :cond_1

    .line 120
    const-string v0, "multipart/digest"

    iget-object v6, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    invoke-static {v0, v6}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    const-string v1, "message/rfc822"

    .line 122
    const-string v2, "message"

    .line 123
    const-string v3, "rfc822"

    .line 130
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    const-string v0, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v5, "us-ascii"

    .line 133
    :cond_2
    invoke-static {v1}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    const/4 v4, 0x0

    .line 136
    :cond_3
    new-instance v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;

    iget-object v6, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 112
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 125
    :cond_5
    const-string v1, "text/plain"

    .line 126
    const-string v2, "text"

    .line 127
    const-string v3, "plain"

    goto :goto_1
.end method

.method public newChild()Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    .locals 5

    .prologue
    .line 143
    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    sget-object v3, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    .line 144
    .local v1, "contentTypeField":Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "actualMimeType":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    iget-object v4, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-object v2

    .line 147
    .end local v0    # "actualMimeType":Ljava/lang/String;
    :cond_0
    const-string v2, "multipart/digest"

    iget-object v3, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const-string v0, "message/rfc822"

    .restart local v0    # "actualMimeType":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "actualMimeType":Ljava/lang/String;
    :cond_1
    const-string v0, "text/plain"

    .restart local v0    # "actualMimeType":Ljava/lang/String;
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

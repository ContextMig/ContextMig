.class Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;
.source "DefaultMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/message/DefaultMessageBuilder;->parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/james/mime4j/message/DefaultMessageBuilder;

.field final synthetic val$fp:Lorg/apache/james/mime4j/dom/FieldParser;

.field final synthetic val$header:Lorg/apache/james/mime4j/message/HeaderImpl;

.field final synthetic val$mon:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field final synthetic val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/message/DefaultMessageBuilder;Lorg/apache/james/mime4j/parser/MimeStreamParser;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/message/HeaderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/james/mime4j/message/DefaultMessageBuilder;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->this$0:Lorg/apache/james/mime4j/message/DefaultMessageBuilder;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    iput-object p3, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$fp:Lorg/apache/james/mime4j/dom/FieldParser;

    iput-object p4, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$mon:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    iput-object p5, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$header:Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endHeader()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->stop()V

    .line 268
    return-void
.end method

.method public field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 3
    .param p1, "field"    # Lorg/apache/james/mime4j/stream/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 272
    instance-of v1, p1, Lorg/apache/james/mime4j/dom/field/ParsedField;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 273
    check-cast v0, Lorg/apache/james/mime4j/dom/field/ParsedField;

    .line 277
    .local v0, "parsedField":Lorg/apache/james/mime4j/dom/field/ParsedField;
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$header:Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/HeaderImpl;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    .line 278
    return-void

    .line 275
    .end local v0    # "parsedField":Lorg/apache/james/mime4j/dom/field/ParsedField;
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$fp:Lorg/apache/james/mime4j/dom/FieldParser;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultMessageBuilder$1;->val$mon:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-interface {v1, p1, v2}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    .restart local v0    # "parsedField":Lorg/apache/james/mime4j/dom/field/ParsedField;
    goto :goto_0
.end method

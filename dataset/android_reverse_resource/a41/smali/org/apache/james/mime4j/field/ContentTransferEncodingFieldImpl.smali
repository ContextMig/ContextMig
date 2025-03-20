.class public Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentTransferEncodingFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoding:Ljava/lang/String;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parsed:Z

    .line 40
    return-void
.end method

.method public static getEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "7bit"

    goto :goto_0
.end method

.method private parse()V
    .locals 3

    .prologue
    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parsed:Z

    .line 44
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->encoding:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->encoding:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parse()V

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

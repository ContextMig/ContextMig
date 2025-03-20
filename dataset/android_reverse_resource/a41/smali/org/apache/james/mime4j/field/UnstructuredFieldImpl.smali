.class public Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "UnstructuredFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/UnstructuredField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/UnstructuredField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parsed:Z

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->parsed:Z

    .line 38
    return-void
.end method

.method private parse()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "body":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->value:Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->parsed:Z

    .line 56
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->parse()V

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->value:Ljava/lang/String;

    return-object v0
.end method

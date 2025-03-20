.class public Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentMD5FieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentMD5Field;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/ContentMD5Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private md5raw:Ljava/lang/String;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->parsed:Z

    .line 37
    return-void
.end method

.method private parse()V
    .locals 2

    .prologue
    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->parsed:Z

    .line 41
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->md5raw:Ljava/lang/String;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->md5raw:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMD5Raw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->parse()V

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->md5raw:Ljava/lang/String;

    return-object v0
.end method

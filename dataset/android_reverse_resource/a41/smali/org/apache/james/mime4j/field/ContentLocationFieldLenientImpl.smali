.class public Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentLocationFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentLocationField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/ContentLocationField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private location:Ljava/lang/String;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->parsed:Z

    .line 43
    return-void
.end method

.method private parse()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 46
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->parsed:Z

    .line 47
    iput-object v11, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->location:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->getRawField()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v4

    .line 49
    .local v4, "f":Lorg/apache/james/mime4j/stream/RawField;
    invoke-virtual {v4}, Lorg/apache/james/mime4j/stream/RawField;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 50
    .local v1, "buf":Lorg/apache/james/mime4j/util/ByteSequence;
    invoke-virtual {v4}, Lorg/apache/james/mime4j/stream/RawField;->getDelimiterIdx()I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 51
    .local v7, "pos":I
    if-nez v1, :cond_1

    .line 52
    invoke-virtual {v4}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 70
    .end local v0    # "body":Ljava/lang/String;
    :goto_0
    return-void

    .line 56
    .restart local v0    # "body":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 57
    const/4 v7, 0x0

    .line 59
    .end local v0    # "body":Ljava/lang/String;
    :cond_1
    sget-object v6, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 60
    .local v6, "parser":Lorg/apache/james/mime4j/stream/RawFieldParser;
    new-instance v3, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v10

    invoke-direct {v3, v7, v10}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 61
    .local v3, "cursor":Lorg/apache/james/mime4j/stream/ParserCursor;
    invoke-virtual {v6, v1, v3, v11}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "token":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 64
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 65
    .local v2, "ch":C
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_2

    .line 66
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 69
    .end local v2    # "ch":C
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->location:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->parse()V

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->location:Ljava/lang/String;

    return-object v0
.end method

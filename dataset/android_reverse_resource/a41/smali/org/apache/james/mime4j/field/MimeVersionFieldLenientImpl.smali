.class public Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MimeVersionFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/MimeVersionField;


# static fields
.field public static final DEFAULT_MAJOR_VERSION:I = 0x1

.field public static final DEFAULT_MINOR_VERSION:I = 0x0

.field private static final DELIM:Ljava/util/BitSet;

.field private static final FULL_STOP:I = 0x2e

.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/MimeVersionField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private major:I

.field private minor:I

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e

    aput v2, v0, v1

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->DELIM:Ljava/util/BitSet;

    .line 105
    new-instance v0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 2
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 45
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->parsed:Z

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->major:I

    .line 47
    iput v1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->minor:I

    .line 51
    return-void
.end method

.method private parse()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 54
    iput-boolean v9, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->parsed:Z

    .line 55
    iput v9, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->major:I

    .line 56
    iput v8, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->minor:I

    .line 57
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->getRawField()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v3

    .line 58
    .local v3, "f":Lorg/apache/james/mime4j/stream/RawField;
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/RawField;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 59
    .local v1, "buf":Lorg/apache/james/mime4j/util/ByteSequence;
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/RawField;->getDelimiterIdx()I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 60
    .local v5, "pos":I
    if-nez v1, :cond_2

    .line 61
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 89
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "body":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 66
    const/4 v5, 0x0

    .line 68
    .end local v0    # "body":Ljava/lang/String;
    :cond_2
    sget-object v4, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 69
    .local v4, "parser":Lorg/apache/james/mime4j/stream/RawFieldParser;
    new-instance v2, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v8

    invoke-direct {v2, v5, v8}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 70
    .local v2, "cursor":Lorg/apache/james/mime4j/stream/ParserCursor;
    sget-object v8, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->DELIM:Ljava/util/BitSet;

    invoke-virtual {v4, v1, v2, v8}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "token1":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->major:I

    .line 73
    iget v8, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->major:I

    if-gez v8, :cond_3

    .line 74
    const/4 v8, 0x0

    iput v8, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->major:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v8

    invoke-interface {v1, v8}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_4

    .line 79
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 81
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v2, v8}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "token2":Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->minor:I

    .line 84
    iget v8, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->minor:I

    if-gez v8, :cond_0

    .line 85
    const/4 v8, 0x0

    iput v8, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->minor:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v8

    goto :goto_0

    .line 76
    .end local v7    # "token2":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->parse()V

    .line 102
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->major:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->parse()V

    .line 95
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->minor:I

    return v0
.end method

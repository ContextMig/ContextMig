.class public Lorg/apache/james/mime4j/field/DateTimeFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "DateTimeFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/DateTimeField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/DateTimeField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    .line 44
    return-void
.end method

.method private parse()V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "body":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/dom/datetime/DateTime;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->date:Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    .line 80
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    iput-object v1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_0

    .line 75
    .end local v1    # "e":Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parse()V

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->date:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parse()V

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    return-object v0
.end method

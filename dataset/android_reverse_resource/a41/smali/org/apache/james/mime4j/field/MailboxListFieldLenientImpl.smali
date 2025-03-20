.class public Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxListFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/MailboxListField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/MailboxListField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->parsed:Z

    .line 47
    return-void
.end method

.method private parse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 57
    iput-boolean v7, p0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->parsed:Z

    .line 58
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->getRawField()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v3

    .line 59
    .local v3, "f":Lorg/apache/james/mime4j/stream/RawField;
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/RawField;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 60
    .local v1, "buf":Lorg/apache/james/mime4j/util/ByteSequence;
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/RawField;->getDelimiterIdx()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 61
    .local v4, "pos":I
    if-nez v1, :cond_1

    .line 62
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    new-instance v5, Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    iput-object v5, p0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    .line 72
    .end local v0    # "body":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    .restart local v0    # "body":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 68
    const/4 v4, 0x0

    .line 70
    .end local v0    # "body":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 71
    .local v2, "cursor":Lorg/apache/james/mime4j/stream/ParserCursor;
    sget-object v5, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/LenientAddressParser;

    invoke-virtual {v5, v1, v2}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseAddressList(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/james/mime4j/dom/address/AddressList;->flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    goto :goto_0
.end method


# virtual methods
.method public getMailboxList()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->parse()V

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    return-object v0
.end method

.class public Lorg/apache/james/mime4j/field/MailboxListFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxListFieldImpl.java"

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

.field private parseException:Lorg/apache/james/mime4j/field/address/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxListFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parsed:Z

    .line 41
    return-void
.end method

.method private parse()V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "body":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/DefaultAddressParser;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v2, v0, v3}, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->parseAddressList(Ljava/lang/CharSequence;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/AddressList;->flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parsed:Z

    .line 74
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/apache/james/mime4j/field/address/ParseException;
    iput-object v1, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parseException:Lorg/apache/james/mime4j/field/address/ParseException;

    goto :goto_0
.end method


# virtual methods
.method public getMailboxList()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parse()V

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->mailboxList:Lorg/apache/james/mime4j/dom/address/MailboxList;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/address/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/ParseException;
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parse()V

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parseException:Lorg/apache/james/mime4j/field/address/ParseException;

    return-object v0
.end method

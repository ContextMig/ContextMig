.class public Lorg/apache/james/mime4j/dom/Message$Builder;
.super Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/dom/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

.field private bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

.field private config:Lorg/apache/james/mime4j/stream/MimeConfig;

.field private fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<*>;"
        }
    .end annotation
.end field

.field private flatMode:Z

.field private monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private rawContent:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;-><init>()V

    .line 161
    return-void
.end method

.method private getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 983
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/AddressListField;

    .line 984
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/AddressListField;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/AddressListField;->getAddressList()Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/MailboxField;

    .line 919
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/MailboxField;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/MailboxField;->getMailbox()Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 941
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/MailboxListField;

    .line 942
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/MailboxListField;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/MailboxListField;->getMailboxList()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static of()Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lorg/apache/james/mime4j/dom/Message$Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/dom/Message$Builder;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lorg/apache/james/mime4j/dom/Message$Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/dom/Message$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/james/mime4j/dom/Message$Builder;->parse(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p0, "other"    # Lorg/apache/james/mime4j/dom/Message;

    .prologue
    .line 168
    new-instance v0, Lorg/apache/james/mime4j/dom/Message$Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/dom/Message$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/james/mime4j/dom/Message$Builder;->copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method private varargs parseAddresses([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 1001
    :cond_0
    const/4 v1, 0x0

    .line 1007
    :cond_1
    return-object v1

    .line 1003
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Address;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 1005
    .local v0, "address":Ljava/lang/String;
    sget-object v4, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/DefaultAddressParser;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->parseAddress(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private varargs parseMailboxes([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "mailboxes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 958
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 959
    :cond_0
    const/4 v0, 0x0

    .line 965
    :cond_1
    return-object v0

    .line 961
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 963
    .local v1, "mailbox":Ljava/lang/String;
    sget-object v4, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/DefaultAddressParser;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->parseMailbox(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setAddressList(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 992
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/DefaultAddressParser;

    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->parseMailbox(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    goto :goto_0
.end method

.method private setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 1016
    .local p2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 1021
    :goto_0
    return-object p0

    .line 1019
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method private setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "address"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 988
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs setAddressList(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 1012
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/dom/Message$Builder;->parseAddresses([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method private varargs setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "addresses"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 996
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private setMailbox(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 932
    if-nez p2, :cond_0

    .line 933
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 937
    :goto_0
    return-object p0

    .line 935
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/DefaultAddressParser;

    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->parseMailbox(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/james/mime4j/field/Fields;->mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method private setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 923
    if-nez p2, :cond_0

    .line 924
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 928
    :goto_0
    return-object p0

    .line 926
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method private setMailboxList(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 950
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/DefaultAddressParser;

    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->parseMailbox(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    goto :goto_0
.end method

.method private setMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 974
    .local p2, "mailboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 979
    :goto_0
    return-object p0

    .line 977
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method private setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 946
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs setMailboxList(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailboxes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 970
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/dom/Message$Builder;->parseMailboxes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method private varargs setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailboxes"    # [Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 954
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "field"    # Lorg/apache/james/mime4j/stream/Field;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 295
    return-object p0
.end method

.method public bridge synthetic addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/james/mime4j/dom/Message;
    .locals 5

    .prologue
    .line 902
    new-instance v2, Lorg/apache/james/mime4j/message/MessageImpl;

    invoke-direct {v2}, Lorg/apache/james/mime4j/message/MessageImpl;-><init>()V

    .line 903
    .local v2, "message":Lorg/apache/james/mime4j/message/MessageImpl;
    new-instance v1, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    .line 904
    .local v1, "header":Lorg/apache/james/mime4j/message/HeaderImpl;
    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/message/MessageImpl;->setHeader(Lorg/apache/james/mime4j/dom/Header;)V

    .line 905
    const-string v3, "MIME-Version"

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/dom/Message$Builder;->containsField(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 906
    const-string v3, "1.0"

    invoke-static {v3}, Lorg/apache/james/mime4j/field/Fields;->version(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/MimeVersionField;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/message/HeaderImpl;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    .line 908
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/stream/Field;

    .line 909
    .local v0, "field":Lorg/apache/james/mime4j/stream/Field;
    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/HeaderImpl;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_0

    .line 912
    .end local v0    # "field":Lorg/apache/james/mime4j/stream/Field;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/MessageImpl;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    .line 914
    return-object v2
.end method

.method public clearFields()Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->clearFields()Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 307
    return-object p0
.end method

.method public bridge synthetic clearFields()Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/Message$Builder;->clearFields()Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 7
    .param p1, "other"    # Lorg/apache/james/mime4j/dom/Message;

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-object p0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/Message$Builder;->clearFields()Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 266
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v4

    .line 267
    .local v4, "otherHeader":Lorg/apache/james/mime4j/dom/Header;
    if-eqz v4, :cond_1

    .line 268
    invoke-interface {v4}, Lorg/apache/james/mime4j/dom/Header;->getFields()Ljava/util/List;

    move-result-object v3

    .line 269
    .local v3, "otherFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/stream/Field;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/stream/Field;

    .line 270
    .local v1, "field":Lorg/apache/james/mime4j/stream/Field;
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/dom/Message$Builder;->addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_1

    .line 273
    .end local v1    # "field":Lorg/apache/james/mime4j/stream/Field;
    .end local v3    # "otherFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/stream/Field;>;"
    :cond_1
    const/4 v0, 0x0

    .line 274
    .local v0, "body":Lorg/apache/james/mime4j/dom/Body;
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Message;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v2

    .line 275
    .local v2, "otherBody":Lorg/apache/james/mime4j/dom/Body;
    instance-of v5, v2, Lorg/apache/james/mime4j/dom/Message;

    if-eqz v5, :cond_3

    .line 276
    check-cast v2, Lorg/apache/james/mime4j/dom/Message;

    .end local v2    # "otherBody":Lorg/apache/james/mime4j/dom/Body;
    invoke-static {v2}, Lorg/apache/james/mime4j/dom/Message$Builder;->of(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/james/mime4j/dom/Message$Builder;->build()Lorg/apache/james/mime4j/dom/Message;

    move-result-object v0

    .line 282
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0

    .line 277
    .restart local v2    # "otherBody":Lorg/apache/james/mime4j/dom/Body;
    :cond_3
    instance-of v5, v2, Lorg/apache/james/mime4j/dom/Multipart;

    if-eqz v5, :cond_4

    .line 278
    check-cast v2, Lorg/apache/james/mime4j/dom/Multipart;

    .end local v2    # "otherBody":Lorg/apache/james/mime4j/dom/Body;
    invoke-static {v2}, Lorg/apache/james/mime4j/message/MultipartBuilder;->createCopy(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/message/MultipartBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/james/mime4j/message/MultipartBuilder;->build()Lorg/apache/james/mime4j/dom/Multipart;

    move-result-object v0

    goto :goto_2

    .line 279
    .restart local v2    # "otherBody":Lorg/apache/james/mime4j/dom/Body;
    :cond_4
    instance-of v5, v2, Lorg/apache/james/mime4j/dom/SingleBody;

    if-eqz v5, :cond_2

    .line 280
    check-cast v2, Lorg/apache/james/mime4j/dom/SingleBody;

    .end local v2    # "otherBody":Lorg/apache/james/mime4j/dom/Body;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/SingleBody;->copy()Lorg/apache/james/mime4j/dom/SingleBody;

    move-result-object v0

    goto :goto_2
.end method

.method public disableContentDecoding()Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->rawContent:Z

    .line 258
    return-object p0
.end method

.method public disableFlatMode()Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->flatMode:Z

    .line 242
    return-object p0
.end method

.method public enableContentDecoding()Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->rawContent:Z

    .line 250
    return-object p0
.end method

.method public enableFlatMode()Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->flatMode:Z

    .line 234
    return-object p0
.end method

.method public generateMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 462
    :goto_0
    return-object p0

    .line 460
    :cond_0
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->generateMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method public getBcc()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    .prologue
    .line 785
    const-string v0, "Bcc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getCc()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    .prologue
    .line 738
    const-string v0, "Cc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 516
    const-string v1, "Date"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/dom/Message$Builder;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/DateTimeField;

    .line 517
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/DateTimeField;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrom()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 1

    .prologue
    .line 596
    const-string v0, "From"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/dom/Message$Builder;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    .line 446
    .local v0, "field":Lorg/apache/james/mime4j/stream/Field;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReplyTo()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    .prologue
    .line 832
    const-string v0, "Reply-To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1

    .prologue
    .line 561
    const-string v0, "Sender"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    const-string v1, "Subject"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/dom/Message$Builder;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    .line 488
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/UnstructuredField;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/UnstructuredField;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTo()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    .prologue
    .line 667
    const-string v0, "To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 14
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 872
    iget-object v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    if-eqz v10, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 873
    .local v2, "currentConfig":Lorg/apache/james/mime4j/stream/MimeConfig;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v9

    .line 874
    .local v9, "strict":Z
    iget-object v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    if-eqz v10, :cond_2

    iget-object v3, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 875
    .local v3, "currentMonitor":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :goto_1
    iget-object v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    if-eqz v10, :cond_4

    iget-object v0, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .line 878
    .local v0, "currentBodyDescBuilder":Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    :goto_2
    iget-object v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v10, :cond_7

    iget-object v1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 879
    .local v1, "currentBodyFactory":Lorg/apache/james/mime4j/message/BodyFactory;
    :goto_3
    new-instance v8, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v8, v2, v3, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    .line 881
    .local v8, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v7, Lorg/apache/james/mime4j/message/MessageImpl;

    invoke-direct {v7}, Lorg/apache/james/mime4j/message/MessageImpl;-><init>()V

    .line 882
    .local v7, "message":Lorg/apache/james/mime4j/dom/Message;
    new-instance v10, Lorg/apache/james/mime4j/internal/ParserStreamContentHandler;

    invoke-direct {v10, v7, v1}, Lorg/apache/james/mime4j/internal/ParserStreamContentHandler;-><init>(Lorg/apache/james/mime4j/dom/Entity;Lorg/apache/james/mime4j/message/BodyFactory;)V

    invoke-virtual {v8, v10}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 883
    iget-boolean v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->rawContent:Z

    if-nez v10, :cond_9

    :goto_4
    invoke-virtual {v8, v11}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentDecoding(Z)V

    .line 884
    iget-boolean v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->flatMode:Z

    if-eqz v10, :cond_0

    .line 885
    invoke-virtual {v8}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setFlat()V

    .line 888
    :cond_0
    :try_start_0
    invoke-virtual {v8, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/Message$Builder;->clearFields()Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 893
    invoke-interface {v7}, Lorg/apache/james/mime4j/dom/Message;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/james/mime4j/dom/Header;->getFields()Ljava/util/List;

    move-result-object v6

    .line 894
    .local v6, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/stream/Field;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/james/mime4j/stream/Field;

    .line 895
    .local v5, "field":Lorg/apache/james/mime4j/stream/Field;
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/dom/Message$Builder;->addField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_5

    .line 872
    .end local v0    # "currentBodyDescBuilder":Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    .end local v1    # "currentBodyFactory":Lorg/apache/james/mime4j/message/BodyFactory;
    .end local v2    # "currentConfig":Lorg/apache/james/mime4j/stream/MimeConfig;
    .end local v3    # "currentMonitor":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .end local v5    # "field":Lorg/apache/james/mime4j/stream/Field;
    .end local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/stream/Field;>;"
    .end local v7    # "message":Lorg/apache/james/mime4j/dom/Message;
    .end local v8    # "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    .end local v9    # "strict":Z
    :cond_1
    sget-object v2, Lorg/apache/james/mime4j/stream/MimeConfig;->DEFAULT:Lorg/apache/james/mime4j/stream/MimeConfig;

    goto :goto_0

    .line 874
    .restart local v2    # "currentConfig":Lorg/apache/james/mime4j/stream/MimeConfig;
    .restart local v9    # "strict":Z
    :cond_2
    if-eqz v9, :cond_3

    sget-object v3, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    :cond_3
    sget-object v3, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_1

    .line 875
    .restart local v3    # "currentMonitor":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :cond_4
    new-instance v0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;

    const/4 v13, 0x0

    iget-object v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 877
    :goto_6
    invoke-direct {v0, v13, v10, v3}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    goto :goto_2

    .line 875
    :cond_5
    if-eqz v9, :cond_6

    .line 877
    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v10

    goto :goto_6

    :cond_6
    invoke-static {}, Lorg/apache/james/mime4j/field/LenientFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object v10

    goto :goto_6

    .line 878
    .restart local v0    # "currentBodyDescBuilder":Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    :cond_7
    new-instance v1, Lorg/apache/james/mime4j/message/BasicBodyFactory;

    if-nez v9, :cond_8

    move v10, v11

    :goto_7
    invoke-direct {v1, v10}, Lorg/apache/james/mime4j/message/BasicBodyFactory;-><init>(Z)V

    goto :goto_3

    :cond_8
    move v10, v12

    goto :goto_7

    .restart local v1    # "currentBodyFactory":Lorg/apache/james/mime4j/message/BodyFactory;
    .restart local v7    # "message":Lorg/apache/james/mime4j/dom/Message;
    .restart local v8    # "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    :cond_9
    move v11, v12

    .line 883
    goto :goto_4

    .line 889
    :catch_0
    move-exception v4

    .line 890
    .local v4, "e":Lorg/apache/james/mime4j/MimeException;
    new-instance v10, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v10, v4}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v10

    .line 897
    .end local v4    # "e":Lorg/apache/james/mime4j/MimeException;
    .restart local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/stream/Field;>;"
    :cond_a
    invoke-interface {v7}, Lorg/apache/james/mime4j/dom/Message;->getBody()Lorg/apache/james/mime4j/dom/Body;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 898
    return-object p0
.end method

.method public removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 301
    return-object p0
.end method

.method public bridge synthetic removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBcc(Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "bcc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBcc(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "bcc"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 797
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setBcc([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "bcc"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 809
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    .end local p2    # "subtype":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 403
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/james/mime4j/stream/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/james/mime4j/stream/NameValuePair;

    const-string v5, "charset"

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 408
    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v2, :cond_3

    .line 409
    iget-object v3, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 410
    invoke-static {p1, p3}, Lorg/apache/james/mime4j/io/InputStreams;->create(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz p3, :cond_2

    .line 411
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 409
    :goto_2
    invoke-interface {v3, v4, v2}, Lorg/apache/james/mime4j/message/BodyFactory;->textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/TextBody;

    move-result-object v1

    .line 415
    .local v1, "textBody":Lorg/apache/james/mime4j/dom/Body;
    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v2

    return-object v2

    .line 401
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "textBody":Lorg/apache/james/mime4j/dom/Body;
    .restart local p2    # "subtype":Ljava/lang/String;
    :cond_0
    const-string p2, "plain"

    goto :goto_0

    .line 405
    .end local p2    # "subtype":Ljava/lang/String;
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_1

    .line 411
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 413
    :cond_3
    sget-object v2, Lorg/apache/james/mime4j/message/BasicBodyFactory;->INSTANCE:Lorg/apache/james/mime4j/message/BasicBodyFactory;

    invoke-virtual {v2, p1, p3}, Lorg/apache/james/mime4j/message/BasicBodyFactory;->textBody(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/dom/TextBody;

    move-result-object v1

    .restart local v1    # "textBody":Lorg/apache/james/mime4j/dom/Body;
    goto :goto_3
.end method

.method public setBody(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "binaryBody"    # Lorg/apache/james/mime4j/dom/BinaryBody;

    .prologue
    .line 361
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 362
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "body"    # Lorg/apache/james/mime4j/dom/Body;

    .prologue
    .line 349
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 350
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "message"    # Lorg/apache/james/mime4j/dom/Message;

    .prologue
    .line 373
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 374
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "multipart"    # Lorg/apache/james/mime4j/dom/Multipart;

    .prologue
    .line 367
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 368
    return-object p0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "textBody"    # Lorg/apache/james/mime4j/dom/TextBody;

    .prologue
    .line 355
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 356
    return-object p0
.end method

.method public setBody([BLjava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 3
    .param p1, "bin"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    if-eqz p2, :cond_0

    .end local p2    # "mimeType":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 430
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-static {p1}, Lorg/apache/james/mime4j/io/InputStreams;->create([B)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/message/BodyFactory;->binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/BinaryBody;

    move-result-object v0

    .line 435
    .local v0, "binBody":Lorg/apache/james/mime4j/dom/Body;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v1

    return-object v1

    .line 428
    .end local v0    # "binBody":Lorg/apache/james/mime4j/dom/Body;
    .restart local p2    # "mimeType":Ljava/lang/String;
    :cond_0
    const-string p2, "application/octet-stream"

    goto :goto_0

    .line 433
    .end local p2    # "mimeType":Ljava/lang/String;
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/message/BasicBodyFactory;->INSTANCE:Lorg/apache/james/mime4j/message/BasicBodyFactory;

    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/message/BasicBodyFactory;->binaryBody([B)Lorg/apache/james/mime4j/dom/BinaryBody;

    move-result-object v0

    .restart local v0    # "binBody":Lorg/apache/james/mime4j/dom/Body;
    goto :goto_1
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/BinaryBody;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/Body;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setBody(Lorg/apache/james/mime4j/dom/TextBody;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCc(Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, "cc":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCc(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "cc"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 750
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setCc([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "cc"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 762
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 325
    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 331
    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 337
    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "creationDate"    # Ljava/util/Date;
    .param p6, "modificationDate"    # Ljava/util/Date;
    .param p7, "readDate"    # Ljava/util/Date;

    .prologue
    .line 343
    invoke-super/range {p0 .. p7}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 344
    return-object p0
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setContentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/dom/Message$Builder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/james/mime4j/dom/Message$Builder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p7}, Lorg/apache/james/mime4j/dom/Message$Builder;->setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 313
    return-object p0
.end method

.method public bridge synthetic setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "parameters"    # [Lorg/apache/james/mime4j/stream/NameValuePair;

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 319
    return-object p0
.end method

.method public bridge synthetic setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/dom/Message$Builder;->setContentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setDate(Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDate(Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 550
    :goto_0
    return-object p0

    .line 548
    :cond_0
    const-string v0, "Date"

    invoke-static {v0, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method public setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "field"    # Lorg/apache/james/mime4j/stream/Field;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;

    .line 289
    return-object p0
.end method

.method public bridge synthetic setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/internal/AbstractEntityBuilder;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 620
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 656
    .local p1, "from":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "from"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 608
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFrom([Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "from"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 644
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFrom([Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "from"    # [Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 632
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 477
    :goto_0
    return-object p0

    .line 475
    :cond_0
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method public setReplyTo(Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, "replyTo":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setReplyTo(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "replyTo"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 844
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setReplyTo([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "replyTo"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 856
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSender(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "sender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 585
    const-string v0, "Sender"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailbox(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSender(Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "sender"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 573
    const-string v0, "Sender"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->removeFields(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    .line 506
    :goto_0
    return-object p0

    .line 504
    :cond_0
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->subject(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/dom/Message$Builder;->setField(Lorg/apache/james/mime4j/stream/Field;)Lorg/apache/james/mime4j/dom/Message$Builder;

    goto :goto_0
.end method

.method public setTo(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 691
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTo(Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, "to":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTo(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "to"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 679
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setTo([Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "to"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/dom/field/ParseException;
        }
    .end annotation

    .prologue
    .line 715
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setTo([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 1
    .param p1, "to"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 703
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/dom/Message$Builder;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public use(Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 193
    return-object p0
.end method

.method public use(Lorg/apache/james/mime4j/dom/FieldParser;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<*>;)",
            "Lorg/apache/james/mime4j/dom/Message$Builder;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "fieldParser":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<*>;"
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    .line 215
    return-object p0
.end method

.method public use(Lorg/apache/james/mime4j/message/BodyFactory;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "bodyFactory"    # Lorg/apache/james/mime4j/message/BodyFactory;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 226
    return-object p0
.end method

.method public use(Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "bodyDescBuilder"    # Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .prologue
    .line 203
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .line 204
    return-object p0
.end method

.method public use(Lorg/apache/james/mime4j/stream/MimeConfig;)Lorg/apache/james/mime4j/dom/Message$Builder;
    .locals 0
    .param p1, "config"    # Lorg/apache/james/mime4j/stream/MimeConfig;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/Message$Builder;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 182
    return-object p0
.end method

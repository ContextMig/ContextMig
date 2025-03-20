.class public Lorg/apache/james/mime4j/field/address/AddressFormatter;
.super Ljava/lang/Object;
.source "AddressFormatter.java"


# static fields
.field public static final DEFAULT:Lorg/apache/james/mime4j/field/address/AddressFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressFormatter;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/AddressFormatter;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressFormatter;->DEFAULT:Lorg/apache/james/mime4j/field/address/AddressFormatter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/james/mime4j/dom/address/Group;)Ljava/lang/String;
    .locals 2
    .param p1, "group"    # Lorg/apache/james/mime4j/dom/address/Group;

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode(Lorg/apache/james/mime4j/dom/address/Mailbox;)Ljava/lang/String;
    .locals 2
    .param p1, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "address"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 78
    if-nez p2, :cond_0

    .line 88
    .end local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :goto_0
    return-void

    .line 81
    .restart local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_0
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v0, :cond_1

    .line 82
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .end local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    goto :goto_0

    .line 83
    .restart local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_1
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Group;

    if-eqz v0, :cond_2

    .line 84
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Group;

    .end local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;)V

    goto :goto_0

    .line 86
    .restart local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuppported Address class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "group"    # Lorg/apache/james/mime4j/dom/address/Group;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StringBuilder may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    if-nez p2, :cond_1

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Group may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    const/4 v0, 0x1

    .line 195
    .local v0, "first":Z
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getMailboxes()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 196
    .local v1, "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x0

    .line 202
    :goto_1
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0, p1, v1}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    goto :goto_0

    .line 199
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 205
    .end local v1    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    :cond_3
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    return-void
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StringBuilder may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-nez p2, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mailbox may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, " <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 142
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 146
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_4
    return-void
.end method

.method public format(Lorg/apache/james/mime4j/dom/address/Group;Z)Ljava/lang/String;
    .locals 2
    .param p1, "group"    # Lorg/apache/james/mime4j/dom/address/Group;
    .param p2, "includeRoute"    # Z

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;Z)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Lorg/apache/james/mime4j/dom/address/Mailbox;Z)Ljava/lang/String;
    .locals 2
    .param p1, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;
    .param p2, "includeRoute"    # Z

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Address;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "address"    # Lorg/apache/james/mime4j/dom/address/Address;
    .param p3, "includeRoute"    # Z

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 69
    .end local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :goto_0
    return-void

    .line 62
    .restart local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_0
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v0, :cond_1

    .line 63
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .end local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V

    goto :goto_0

    .line 64
    .restart local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_1
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Group;

    if-eqz v0, :cond_2

    .line 65
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Group;

    .end local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;Z)V

    goto :goto_0

    .line 67
    .restart local p2    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuppported Address class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;Z)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "group"    # Lorg/apache/james/mime4j/dom/address/Group;
    .param p3, "includeRoute"    # Z

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StringBuilder may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Group may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    const/4 v0, 0x1

    .line 167
    .local v0, "first":Z
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getMailboxes()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 168
    .local v1, "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    if-eqz v0, :cond_2

    .line 169
    const/4 v0, 0x0

    .line 173
    :goto_1
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V

    goto :goto_0

    .line 171
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 176
    .end local v1    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    :cond_3
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    return-void
.end method

.method public format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;
    .param p3, "includeRoute"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "StringBuilder may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    if-nez p2, :cond_1

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mailbox may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_0
    and-int/2addr p3, v1

    .line 98
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_9

    :cond_2
    move v0, v2

    .line 99
    .local v0, "includeAngleBrackets":Z
    :goto_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :cond_3
    if-eqz v0, :cond_4

    .line 104
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_4
    if-eqz p3, :cond_5

    .line 107
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/dom/address/DomainList;->toRouteString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_5
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 112
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_6
    if-eqz v0, :cond_7

    .line 116
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_7
    return-void

    .end local v0    # "includeAngleBrackets":Z
    :cond_8
    move v1, v3

    .line 97
    goto :goto_0

    :cond_9
    move v0, v3

    .line 98
    goto :goto_1
.end method

.class public Lorg/apache/james/mime4j/field/address/LenientAddressParser;
.super Ljava/lang/Object;
.source "LenientAddressParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/AddressParser;


# static fields
.field private static final AT:I = 0x40

.field private static final AT_AND_CLOSING_BRACKET:Ljava/util/BitSet;

.field private static final CLOSING_BRACKET:I = 0x3e

.field private static final CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

.field private static final COLON:I = 0x3a

.field private static final COLON_ONLY:Ljava/util/BitSet;

.field private static final COMMA:I = 0x2c

.field private static final COMMA_ONLY:Ljava/util/BitSet;

.field public static final DEFAULT:Lorg/apache/james/mime4j/field/address/LenientAddressParser;

.field private static final OPENING_BRACKET:I = 0x3c

.field private static final SEMICOLON:I = 0x3b

.field private static final SEMICOLON_ONLY:Ljava/util/BitSet;


# instance fields
.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private final parser:Lorg/apache/james/mime4j/stream/RawFieldParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->AT_AND_CLOSING_BRACKET:Ljava/util/BitSet;

    .line 54
    new-array v0, v3, [I

    const/16 v1, 0x3e

    aput v1, v0, v2

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

    .line 55
    new-array v0, v3, [I

    const/16 v1, 0x2c

    aput v1, v0, v2

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->COMMA_ONLY:Ljava/util/BitSet;

    .line 56
    new-array v0, v3, [I

    const/16 v1, 0x3a

    aput v1, v0, v2

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->COLON_ONLY:Ljava/util/BitSet;

    .line 57
    new-array v0, v3, [I

    const/16 v1, 0x3b

    aput v1, v0, v2

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->SEMICOLON_ONLY:Ljava/util/BitSet;

    .line 59
    new-instance v0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;

    sget-object v1, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;-><init>(Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/LenientAddressParser;

    return-void

    .line 53
    :array_0
    .array-data 4
        0x40
        0x3e
    .end array-data
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 67
    new-instance v0, Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 68
    return-void
.end method

.method private createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 2
    .param p1, "localPart"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    new-instance v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-direct {v0, v1, v1, p1, v1}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "route"    # Lorg/apache/james/mime4j/dom/address/DomainList;
    .param p3, "localPart"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 132
    invoke-static {p1, v0}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0, p2, p3, p4}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v1

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseAddress(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 306
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 307
    .local v1, "raw":Lorg/apache/james/mime4j/util/ByteSequence;
    new-instance v0, Lorg/apache/james/mime4j/stream/ParserCursor;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 308
    .local v0, "cursor":Lorg/apache/james/mime4j/stream/ParserCursor;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseAddress(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object v2

    return-object v2
.end method

.method public parseAddress(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 8
    .param p1, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    const/4 v7, 0x0

    .line 270
    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v6}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    .line 271
    .local v0, "bitset":Ljava/util/BitSet;
    if-eqz p3, :cond_0

    .line 272
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 274
    :cond_0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v6, p1, p2, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "openingText":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v6

    .line 301
    :goto_0
    return-object v6

    .line 278
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v5

    .line 279
    .local v5, "pos":I
    invoke-interface {p1, v5}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-char v1, v6

    .line 280
    .local v1, "current":C
    const/16 v6, 0x3c

    if-ne v1, v6, :cond_2

    .line 282
    invoke-virtual {p0, v4, p1, p2}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseMailboxAddress(Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v6

    goto :goto_0

    .line 283
    :cond_2
    const/16 v6, 0x40

    if-ne v1, v6, :cond_3

    .line 285
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "domain":Ljava/lang/String;
    new-instance v6, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-direct {v6, v7, v7, v4, v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v2    # "domain":Ljava/lang/String;
    :cond_3
    const/16 v6, 0x3a

    if-ne v1, v6, :cond_5

    .line 290
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 291
    sget-object v6, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->SEMICOLON_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v6}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseMailboxes(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v3

    .line 292
    .local v3, "mboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v6

    if-nez v6, :cond_4

    .line 293
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v5

    .line 294
    invoke-interface {p1, v5}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-char v1, v6

    .line 295
    const/16 v6, 0x3b

    if-ne v1, v6, :cond_4

    .line 296
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 299
    :cond_4
    new-instance v6, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-direct {v6, v4, v3}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 301
    .end local v3    # "mboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    :cond_5
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v6

    goto :goto_0

    .line 270
    :array_0
    .array-data 4
        0x3a
        0x40
        0x3c
    .end array-data
.end method

.method public parseAddressList(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 329
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 330
    .local v1, "raw":Lorg/apache/james/mime4j/util/ByteSequence;
    new-instance v0, Lorg/apache/james/mime4j/stream/ParserCursor;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 331
    .local v0, "cursor":Lorg/apache/james/mime4j/stream/ParserCursor;
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseAddressList(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v2

    return-object v2
.end method

.method public parseAddressList(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 6
    .param p1, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;

    .prologue
    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Address;>;"
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v4

    if-nez v4, :cond_2

    .line 314
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 315
    .local v3, "pos":I
    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v2, v4

    .line 316
    .local v2, "current":I
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_1

    .line 317
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v4, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->COMMA_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseAddress(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object v0

    .line 320
    .local v0, "address":Lorg/apache/james/mime4j/dom/address/Address;
    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    .end local v0    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v2    # "current":I
    .end local v3    # "pos":I
    :cond_2
    new-instance v4, Lorg/apache/james/mime4j/dom/address/AddressList;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/apache/james/mime4j/dom/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-object v4
.end method

.method parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 3
    .param p1, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v1, "dst":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v0, v2

    .line 74
    .local v0, "current":C
    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    .end local v0    # "current":C
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    .restart local v0    # "current":C
    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v2, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    .line 78
    :cond_2
    const/16 v2, 0x28

    if-ne v0, v2, :cond_3

    .line 79
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v2, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v2, p1, p2, p3, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->copyContent(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public parseGroup(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Group;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 264
    .local v1, "raw":Lorg/apache/james/mime4j/util/ByteSequence;
    new-instance v0, Lorg/apache/james/mime4j/stream/ParserCursor;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 265
    .local v0, "cursor":Lorg/apache/james/mime4j/stream/ParserCursor;
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseGroup(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Group;

    move-result-object v2

    return-object v2
.end method

.method public parseGroup(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Group;
    .locals 6
    .param p1, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;

    .prologue
    .line 249
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    sget-object v5, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->COLON_ONLY:Ljava/util/BitSet;

    invoke-virtual {v4, p1, p2, v5}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    new-instance v4, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 259
    :goto_0
    return-object v4

    .line 253
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 254
    .local v3, "pos":I
    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v0, v4

    .line 255
    .local v0, "current":I
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_1

    .line 256
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 258
    :cond_1
    sget-object v4, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->SEMICOLON_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseMailboxes(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "mboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    new-instance v4, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-direct {v4, v2, v1}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public parseMailbox(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 220
    .local v1, "raw":Lorg/apache/james/mime4j/util/ByteSequence;
    new-instance v0, Lorg/apache/james/mime4j/stream/ParserCursor;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 221
    .local v0, "cursor":Lorg/apache/james/mime4j/stream/ParserCursor;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseMailbox(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v2

    return-object v2
.end method

.method public parseMailbox(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 7
    .param p1, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    const/4 v6, 0x0

    .line 195
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    .line 196
    .local v0, "bitset":Ljava/util/BitSet;
    if-eqz p3, :cond_0

    .line 197
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 199
    :cond_0
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v5, p1, p2, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "openingText":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    .line 214
    :goto_0
    return-object v5

    .line 203
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v4

    .line 204
    .local v4, "pos":I
    invoke-interface {p1, v4}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v1, v5

    .line 205
    .local v1, "current":C
    const/16 v5, 0x3c

    if-ne v1, v5, :cond_2

    .line 207
    invoke-virtual {p0, v3, p1, p2}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseMailboxAddress(Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto :goto_0

    .line 208
    :cond_2
    const/16 v5, 0x40

    if-ne v1, v5, :cond_3

    .line 210
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "domain":Ljava/lang/String;
    new-instance v5, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-direct {v5, v6, v6, v3, v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v2    # "domain":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto :goto_0

    .line 195
    nop

    :array_0
    .array-data 4
        0x40
        0x3c
    .end array-data
.end method

.method parseMailboxAddress(Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 8
    .param p1, "openingText"    # Ljava/lang/String;
    .param p2, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p3, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;

    .prologue
    const/4 v7, 0x0

    .line 138
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-direct {p0, v7, v7, p1, v7}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    .line 182
    :goto_0
    return-object v5

    .line 141
    :cond_0
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v4

    .line 142
    .local v4, "pos":I
    invoke-interface {p2, v4}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v0, v5

    .line 143
    .local v0, "current":C
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_1

    .line 144
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p3, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 148
    sget-object v5, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p2, p3, v5}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseRoute(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v2

    .line 149
    .local v2, "domainList":Lorg/apache/james/mime4j/dom/address/DomainList;
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    sget-object v6, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->AT_AND_CLOSING_BRACKET:Ljava/util/BitSet;

    invoke-virtual {v5, p2, p3, v6}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "localPart":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    invoke-direct {p0, p1, v2, v3, v7}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto :goto_0

    .line 146
    .end local v2    # "domainList":Lorg/apache/james/mime4j/dom/address/DomainList;
    .end local v3    # "localPart":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v7, v7, p1, v7}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto :goto_0

    .line 153
    .restart local v2    # "domainList":Lorg/apache/james/mime4j/dom/address/DomainList;
    .restart local v3    # "localPart":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v4

    .line 154
    invoke-interface {p2, v4}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v0, v5

    .line 155
    const/16 v5, 0x40

    if-ne v0, v5, :cond_3

    .line 156
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p3, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 160
    sget-object v5, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p2, p3, v5}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    invoke-direct {p0, p1, v2, v3, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto :goto_0

    .line 158
    .end local v1    # "domain":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v2, v3, v7}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto :goto_0

    .line 164
    .restart local v1    # "domain":Ljava/lang/String;
    :cond_4
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v4

    .line 165
    invoke-interface {p2, v4}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v0, v5

    .line 166
    const/16 v5, 0x3e

    if-ne v0, v5, :cond_5

    .line 167
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p3, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 171
    :goto_1
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-nez v5, :cond_7

    .line 172
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v4

    .line 173
    invoke-interface {p2, v4}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v0, v5

    .line 174
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 175
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v5, p2, p3}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_1

    .line 169
    :cond_5
    invoke-direct {p0, p1, v2, v3, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto/16 :goto_0

    .line 176
    :cond_6
    const/16 v5, 0x28

    if-ne v0, v5, :cond_7

    .line 177
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v5, p2, p3}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_1

    .line 182
    :cond_7
    invoke-direct {p0, p1, v2, v3, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v5

    goto/16 :goto_0
.end method

.method parseMailboxes(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/util/List;
    .locals 8
    .param p1, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/util/ByteSequence;",
            "Lorg/apache/james/mime4j/stream/ParserCursor;",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x2c

    .line 226
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v5}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    .line 227
    .local v0, "bitset":Ljava/util/BitSet;
    if-eqz p3, :cond_0

    .line 228
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 230
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "mboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-nez v5, :cond_2

    .line 232
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v4

    .line 233
    .local v4, "pos":I
    invoke-interface {p1, v4}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v1, v5

    .line 234
    .local v1, "current":I
    if-eqz p3, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    .end local v1    # "current":I
    .end local v4    # "pos":I
    :cond_2
    return-object v3

    .line 236
    .restart local v1    # "current":I
    .restart local v4    # "pos":I
    :cond_3
    if-ne v1, v7, :cond_4

    .line 237
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    goto :goto_0

    .line 239
    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseMailbox(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v2

    .line 240
    .local v2, "mbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    if-eqz v2, :cond_1

    .line 241
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method parseRoute(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/DomainList;
    .locals 6
    .param p1, "buf"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "cursor"    # Lorg/apache/james/mime4j/stream/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    .line 88
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    .line 89
    .local v0, "bitset":Ljava/util/BitSet;
    if-eqz p3, :cond_0

    .line 90
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 94
    .local v2, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v5, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipAllWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    .line 95
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    :cond_1
    :goto_1
    if-eqz v2, :cond_6

    new-instance v5, Lorg/apache/james/mime4j/dom/address/DomainList;

    invoke-direct {v5, v2}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v5

    .line 98
    :cond_2
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 99
    .local v3, "pos":I
    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v1, v5

    .line 100
    .local v1, "current":I
    const/16 v5, 0x40

    if-ne v1, v5, :cond_1

    .line 101
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 105
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressParser;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 107
    if-nez v2, :cond_3

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .restart local v2    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_4
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 116
    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v1, v5

    .line 117
    const/16 v5, 0x2c

    if-ne v1, v5, :cond_5

    .line 118
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    goto :goto_0

    .line 119
    :cond_5
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_1

    .line 120
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v5}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    goto :goto_1

    .line 126
    .end local v1    # "current":I
    .end local v3    # "pos":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 88
    :array_0
    .array-data 4
        0x2c
        0x3a
    .end array-data
.end method

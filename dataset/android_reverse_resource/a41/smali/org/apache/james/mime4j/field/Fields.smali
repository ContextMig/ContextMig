.class public Lorg/apache/james/mime4j/field/Fields;
.super Ljava/lang/Object;
.source "Fields.java"


# static fields
.field private static final FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "[\\x21-\\x39\\x3b-\\x7e]+"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 661
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method private static addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/AddressListField;

    return-object v1
.end method

.method public static bcc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "Bcc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static bcc(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 546
    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs bcc([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 557
    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static cc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "Cc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static cc(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 513
    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cc([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 524
    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method private static checkValidFieldName(Ljava/lang/String;)V
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 688
    sget-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid field name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    return-void
.end method

.method public static contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 2
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Disposition"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 7
    .param p0, "dispositionType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/stream/NameValuePair;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/ContentDispositionField;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "parameters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/stream/NameValuePair;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidDispositionType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 240
    :cond_0
    if-nez p1, :cond_1

    .line 241
    sget-object v5, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v6, "Content-Disposition"

    invoke-static {v5, v6, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v5

    check-cast v5, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    .line 252
    :goto_0
    return-object v5

    .line 244
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 246
    .local v2, "param":Lorg/apache/james/mime4j/stream/NameValuePair;
    const-string v6, "; "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    .end local v4    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {v1, v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_2

    .line 251
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "param":Lorg/apache/james/mime4j/stream/NameValuePair;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "contentDisposition":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object v5

    goto :goto_0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 7
    .param p0, "dispositionType"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 270
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object v0

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 8
    .param p0, "dispositionType"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 290
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object v0

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 6
    .param p0, "dispositionType"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "creationDate"    # Ljava/util/Date;
    .param p5, "modificationDate"    # Ljava/util/Date;
    .param p6, "readDate"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 322
    const-string v1, "filename"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_1

    .line 325
    const-string v1, "size"

    .line 326
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1
    if-eqz p4, :cond_2

    .line 329
    const-string v1, "creation-date"

    .line 330
    invoke-static {p4, v4}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_2
    if-eqz p5, :cond_3

    .line 333
    const-string v1, "modification-date"

    .line 334
    invoke-static {p5, v4}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_3
    if-eqz p6, :cond_4

    .line 337
    const-string v1, "read-date"

    .line 338
    invoke-static {p6, v4}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object v1

    return-object v1
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 6
    .param p0, "dispositionType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/ContentDispositionField;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidDispositionType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 209
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    :cond_1
    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v4, "Content-Disposition"

    invoke-static {v3, v4, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    .line 220
    :goto_0
    return-object v3

    .line 213
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    invoke-static {v3, v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "contentDisposition":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object v3

    goto :goto_0
.end method

.method public static contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;
    .locals 2
    .param p0, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Transfer-Encoding"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;

    return-object v0
.end method

.method public static contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Type"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    return-object v0
.end method

.method public static contentType(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/stream/NameValuePair;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/ContentTypeField;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "parameters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/stream/NameValuePair;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidMimeType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid MIME type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 130
    :cond_0
    if-nez p1, :cond_1

    .line 131
    sget-object v5, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v6, "Content-Type"

    invoke-static {v5, v6, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v5

    check-cast v5, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    .line 142
    :goto_0
    return-object v5

    .line 134
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 136
    .local v2, "param":Lorg/apache/james/mime4j/stream/NameValuePair;
    const-string v6, "; "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    .end local v4    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {v1, v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_2

    .line 141
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "param":Lorg/apache/james/mime4j/stream/NameValuePair;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v5

    goto :goto_0
.end method

.method public static contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/ContentTypeField;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    :cond_1
    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v4, "Content-Type"

    invoke-static {v3, v4, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    .line 110
    :goto_0
    return-object v3

    .line 103
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    invoke-static {v3, v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs contentType(Ljava/lang/String;[Lorg/apache/james/mime4j/stream/NameValuePair;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "parameters"    # [Lorg/apache/james/mime4j/stream/NameValuePair;

    .prologue
    .line 158
    if-nez p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 367
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 385
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 386
    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public static date(Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 352
    const-string v0, "Date"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method private static date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 666
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "formattedDate":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/DateTimeField;

    return-object v1
.end method

.method private static encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 717
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Address;

    .line 720
    .local v0, "address":Lorg/apache/james/mime4j/dom/address/Address;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 721
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_0
    sget-object v3, Lorg/apache/james/mime4j/field/address/AddressFormatter;->DEFAULT:Lorg/apache/james/mime4j/field/address/AddressFormatter;

    invoke-virtual {v3, v1, v0}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Address;)V

    goto :goto_0

    .line 725
    .end local v0    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static from(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/MailboxListField;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "mailboxes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    const-string v0, "From"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxListField;
    .locals 2
    .param p0, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 447
    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs from([Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxListField;
    .locals 2
    .param p0, "mailboxes"    # [Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 458
    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method public static generateMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;
    .locals 3
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-static {p0}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v2, "Message-ID"

    invoke-static {v1, v2, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    return-object v1
.end method

.method private static isValidDispositionType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 706
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMimeType(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 693
    if-nez p0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v3

    .line 696
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 697
    .local v0, "idx":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 700
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "subType":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 620
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 621
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;

    move-result-object v0

    return-object v0
.end method

.method private static mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 671
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/MailboxField;

    return-object v1
.end method

.method public static mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/MailboxListField;"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "mailboxes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 639
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method private static mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/MailboxListField;"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "mailboxes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/MailboxListField;

    return-object v1
.end method

.method public static messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;
    .locals 2
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Message-ID"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    return-object v0
.end method

.method private static parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">(",
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, "parser":Lorg/apache/james/mime4j/dom/FieldParser;, "Lorg/apache/james/mime4j/dom/FieldParser<TF;>;"
    new-instance v0, Lorg/apache/james/mime4j/stream/RawField;

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .local v0, "rawField":Lorg/apache/james/mime4j/stream/RawField;
    sget-object v1, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-interface {p0, v0, v1}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v1

    return-object v1
.end method

.method public static replyTo(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "Reply-To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static replyTo(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 580
    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs replyTo([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 592
    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static sender(Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;
    .locals 1
    .param p0, "mailbox"    # Lorg/apache/james/mime4j/dom/address/Mailbox;

    .prologue
    .line 436
    const-string v0, "Sender"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;

    move-result-object v0

    return-object v0
.end method

.method public static subject(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;
    .locals 4
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v2, "Subject"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    .line 422
    .local v1, "usedCharacters":I
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v2, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v2, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v3, "Subject"

    invoke-static {v2, v3, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    return-object v2
.end method

.method public static to(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/dom/address/Address;>;"
    const-string v0, "To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 480
    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs to([Lorg/apache/james/mime4j/dom/address/Address;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 491
    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static version(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/MimeVersionField;
    .locals 2
    .param p0, "ver"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "MIME-Version"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/dom/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/MimeVersionField;

    return-object v0
.end method

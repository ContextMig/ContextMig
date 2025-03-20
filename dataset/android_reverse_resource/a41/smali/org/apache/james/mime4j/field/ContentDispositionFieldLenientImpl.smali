.class public Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentDispositionFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentDispositionField;


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy hh:mm:ss ZZZZ"

.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser",
            "<",
            "Lorg/apache/james/mime4j/dom/field/ContentDispositionField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationDate:Ljava/util/Date;

.field private creationDateParsed:Z

.field private final datePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dispositionType:Ljava/lang/String;

.field private modificationDate:Ljava/util/Date;

.field private modificationDateParsed:Z

.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsed:Z

.field private readDate:Ljava/util/Date;

.field private readDateParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Ljava/util/Collection;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 2
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p3, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/stream/Field;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/james/mime4j/codec/DecodeMonitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "dateParsers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->datePatterns:Ljava/util/List;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->datePatterns:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->datePatterns:Ljava/util/List;

    const-string v1, "EEE, dd MMM yyyy hh:mm:ss ZZZZ"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parse()V
    .locals 8

    .prologue
    .line 161
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    .line 162
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getRawField()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v1

    .line 163
    .local v1, "f":Lorg/apache/james/mime4j/stream/RawField;
    sget-object v5, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v5, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseRawBody(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/RawBody;

    move-result-object v0

    .line 164
    .local v0, "body":Lorg/apache/james/mime4j/stream/RawBody;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/RawBody;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "main":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 166
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    .line 170
    :goto_0
    iget-object v5, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 171
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/RawBody;->getParams()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 172
    .local v4, "nmp":Lorg/apache/james/mime4j/stream/NameValuePair;
    invoke-virtual {v4}, Lorg/apache/james/mime4j/stream/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/stream/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nmp":Lorg/apache/james/mime4j/stream/NameValuePair;
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v3

    .line 182
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->datePatterns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, "datePattern":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 185
    .local v1, "parser":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 186
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 187
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 191
    .end local v0    # "datePattern":Ljava/lang/String;
    .end local v1    # "parser":Ljava/text/SimpleDateFormat;
    :cond_2
    iget-object v4, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parameter is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parameter is ignored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 188
    .restart local v0    # "datePattern":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDateParsed:Z

    if-nez v0, :cond_0

    .line 125
    const-string v0, "creation-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDate:Ljava/util/Date;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDateParsed:Z

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "filename"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDateParsed:Z

    if-nez v0, :cond_0

    .line 133
    const-string v0, "modification-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDate:Ljava/util/Date;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDateParsed:Z

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReadDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDateParsed:Z

    if-nez v0, :cond_0

    .line 141
    const-string v0, "read-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDate:Ljava/util/Date;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDateParsed:Z

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 148
    const-string v6, "size"

    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-wide v4

    .line 153
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 154
    .local v2, "size":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    move-wide v2, v4

    .end local v2    # "size":J
    :cond_1
    move-wide v4, v2

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public isAttachment()Z
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDispositionType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

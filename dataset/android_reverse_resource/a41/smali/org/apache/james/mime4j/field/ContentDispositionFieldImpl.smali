.class public Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentDispositionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentDispositionField;


# static fields
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

.field private parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

.field private parsed:Z

.field private readDate:Ljava/util/Date;

.field private readDateParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "rawField"    # Lorg/apache/james/mime4j/stream/Field;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private parse()V
    .locals 12

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "body":Ljava/lang/String;
    new-instance v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;-><init>(Ljava/io/Reader;)V

    .line 223
    .local v9, "parser":Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;
    :try_start_0
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :goto_0
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getDispositionType()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "dispositionType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 233
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    .line 235
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamNames()Ljava/util/List;

    move-result-object v6

    .line 236
    .local v6, "paramNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamValues()Ljava/util/List;

    move-result-object v8

    .line 238
    .local v8, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    .line 239
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 240
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 241
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "paramName":Ljava/lang/String;
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 243
    .local v7, "paramValue":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    invoke-interface {v10, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "dispositionType":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "paramName":Ljava/lang/String;
    .end local v6    # "paramNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "paramValue":Ljava/lang/String;
    .end local v8    # "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    goto :goto_0

    .line 226
    .end local v2    # "e":Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
    :catch_1
    move-exception v2

    .line 227
    .local v2, "e":Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;
    new-instance v10, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    goto :goto_0

    .line 248
    .end local v2    # "e":Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;
    .restart local v1    # "dispositionType":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    .line 249
    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 197
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "returning null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    :cond_0
    :goto_0
    return-object v2

    .line 202
    :cond_1
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/dom/datetime/DateTime;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parameter is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parameter is ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 210
    .end local v0    # "e":Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parameter is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "parameter is ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDateParsed:Z

    if-nez v0, :cond_0

    .line 147
    const-string v0, "creation-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDate:Ljava/util/Date;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDateParsed:Z

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "filename"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDateParsed:Z

    if-nez v0, :cond_0

    .line 159
    const-string v0, "modification-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDate:Ljava/util/Date;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDateParsed:Z

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

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
    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    return-object v0
.end method

.method public getReadDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDateParsed:Z

    if-nez v0, :cond_0

    .line 171
    const-string v0, "read-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDate:Ljava/util/Date;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDateParsed:Z

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 182
    const-string v6, "size"

    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-wide v4

    .line 187
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 188
    .local v2, "size":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    move-wide v2, v4

    .end local v2    # "size":J
    :cond_1
    move-wide v4, v2

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public isAttachment()Z
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDispositionType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

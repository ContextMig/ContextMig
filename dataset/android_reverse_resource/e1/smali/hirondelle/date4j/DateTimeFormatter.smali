.class final Lhirondelle/date4j/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/DateTimeFormatter$1;,
        Lhirondelle/date4j/DateTimeFormatter$EscapedRange;,
        Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;,
        Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final D:Ljava/lang/String; = "D"

.field private static final DD:Ljava/lang/String; = "DD"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ESCAPED_RANGE:Ljava/util/regex/Pattern;

.field private static final ESCAPE_CHAR:Ljava/lang/String; = "|"

.field private static final FRACTIONALS:Ljava/util/regex/Pattern;

.field private static final M:Ljava/lang/String; = "M"

.field private static final MM:Ljava/lang/String; = "MM"

.field private static final MMM:Ljava/lang/String; = "MMM"

.field private static final MMMM:Ljava/lang/String; = "MMMM"

.field private static final PM:I = 0x1

.field private static final TOKENS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WWW:Ljava/lang/String; = "WWW"

.field private static final WWWW:Ljava/lang/String; = "WWWW"

.field private static final YY:Ljava/lang/String; = "YY"

.field private static final YYYY:Ljava/lang/String; = "YYYY"

.field private static final a:Ljava/lang/String; = "a"

.field private static final h:Ljava/lang/String; = "h"

.field private static final h12:Ljava/lang/String; = "h12"

.field private static final hh:Ljava/lang/String; = "hh"

.field private static final hh12:Ljava/lang/String; = "hh12"

.field private static final m:Ljava/lang/String; = "m"

.field private static final mm:Ljava/lang/String; = "mm"

.field private static final s:Ljava/lang/String; = "s"

.field private static final ss:Ljava/lang/String; = "ss"


# instance fields
.field private final fAmPm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

.field private fEscapedRanges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lhirondelle/date4j/DateTimeFormatter$EscapedRange;",
            ">;"
        }
    .end annotation
.end field

.field private final fFormat:Ljava/lang/String;

.field private fInterpretedRanges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;",
            ">;"
        }
    .end annotation
.end field

.field private final fLocale:Ljava/util/Locale;

.field private final fMonths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fWeekdays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "\\|[^\\|]*\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeFormatter;->ESCAPED_RANGE:Ljava/util/regex/Pattern;

    .line 187
    const-string v0, "f{1,9}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeFormatter;->FRACTIONALS:Ljava/util/regex/Pattern;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    .line 197
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "YYYY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "YY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "MMMM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "MMM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "MM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "M"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "DD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "D"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "WWWW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "WWW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "hh12"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "h12"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "hh"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "m"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ss"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fffffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ffffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aFormat"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    .line 33
    iput-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    .line 34
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->validateState()V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "aFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "aMonths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "aWeekdays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "aAmPmIndicators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    .line 63
    iput-object p1, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    .line 65
    new-instance v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    invoke-direct {v0, p0, p2, p3, p4}, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;-><init>(Lhirondelle/date4j/DateTimeFormatter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    .line 66
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->validateState()V

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "aFormat"    # Ljava/lang/String;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    .line 48
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->validateState()V

    .line 49
    return-void
.end method

.method private addLeadingZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aTimePart"    # Ljava/lang/String;

    .prologue
    .line 433
    move-object v0, p1

    .line 434
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    return-object v0
.end method

.method private amPmIndicator(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "aHour"    # Ljava/lang/Integer;

    .prologue
    .line 550
    const-string v0, ""

    .line 551
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 552
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    if-eqz v1, :cond_1

    .line 553
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupCustomAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_0
    :goto_0
    return-object v0

    .line 555
    :cond_1
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    .line 556
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Your date pattern requires either a Locale, or your own custom localizations for text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v3}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findEscapedRanges()V
    .locals 4

    .prologue
    .line 230
    sget-object v2, Lhirondelle/date4j/DateTimeFormatter;->ESCAPED_RANGE:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 231
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    new-instance v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;-><init>(Lhirondelle/date4j/DateTimeFormatter$1;)V

    .line 233
    .local v0, "escapedRange":Lhirondelle/date4j/DateTimeFormatter$EscapedRange;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->Start:I

    .line 234
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->End:I

    .line 235
    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fEscapedRanges:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v0    # "escapedRange":Lhirondelle/date4j/DateTimeFormatter$EscapedRange;
    :cond_0
    return-void
.end method

.method private firstNChars(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "aText"    # Ljava/lang/String;
    .param p2, "aN"    # I

    .prologue
    .line 528
    move-object v0, p1

    .line 529
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p2, :cond_0

    .line 530
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_0
    return-object v0
.end method

.method private firstThreeChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 441
    move-object v0, p1

    .line 442
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 443
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_0
    return-object v0
.end method

.method private fullMonth(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "aMonth"    # Ljava/lang/Integer;

    .prologue
    .line 449
    const-string v0, ""

    .line 450
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 451
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    if-eqz v1, :cond_1

    .line 452
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupCustomMonthFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_0
    :goto_0
    return-object v0

    .line 454
    :cond_1
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    .line 455
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupMonthFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Your date pattern requires either a Locale, or your own custom localizations for text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v3}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fullWeekday(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "aWeekday"    # Ljava/lang/Integer;

    .prologue
    .line 488
    const-string v0, ""

    .line 489
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 490
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    if-eqz v1, :cond_1

    .line 491
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupCustomWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 500
    :cond_0
    :goto_0
    return-object v0

    .line 493
    :cond_1
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    .line 494
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Your date pattern requires either a Locale, or your own custom localizations for text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v3}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAmPmTextFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "aHour"    # Ljava/lang/Integer;

    .prologue
    .line 596
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "a"

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 597
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 598
    .local v1, "someDay":Ljava/util/Calendar;
    const/4 v2, 0x1

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 599
    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 600
    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 601
    const/16 v2, 0xb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 602
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getInterpretation(I)Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    .locals 4
    .param p1, "aIdx"    # I

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, "result":Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fInterpretedRanges:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;

    .line 313
    .local v1, "interpretedRange":Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    iget v3, v1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    if-ne v3, p1, :cond_0

    .line 314
    move-object v2, v1

    goto :goto_0

    .line 317
    .end local v1    # "interpretedRange":Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    :cond_1
    return-object v2
.end method

.method private interpretInput(Lhirondelle/date4j/DateTime;)V
    .locals 7
    .param p1, "aDateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 257
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    .line 258
    .local v0, "format":Ljava/lang/String;
    sget-object v6, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 259
    .local v5, "token":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 260
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 261
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    new-instance v2, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;-><init>(Lhirondelle/date4j/DateTimeFormatter$1;)V

    .line 263
    .local v2, "interpretedRange":Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    iput v6, v2, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    .line 264
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->End:I

    .line 265
    invoke-direct {p0, v2}, Lhirondelle/date4j/DateTimeFormatter;->isInEscapedRange(Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 266
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lhirondelle/date4j/DateTimeFormatter;->interpretThe(Ljava/lang/String;Lhirondelle/date4j/DateTime;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Text:Ljava/lang/String;

    .line 267
    iget-object v6, p0, Lhirondelle/date4j/DateTimeFormatter;->fInterpretedRanges:Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v2    # "interpretedRange":Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    :cond_1
    invoke-direct {p0, v5}, Lhirondelle/date4j/DateTimeFormatter;->withCharDenotingAlreadyInterpreted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 271
    goto :goto_0

    .line 272
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private interpretThe(Ljava/lang/String;Lhirondelle/date4j/DateTime;)Ljava/lang/String;
    .locals 10
    .param p1, "aCurrentToken"    # Ljava/lang/String;
    .param p2, "aDateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 325
    const-string v5, ""

    .line 326
    .local v5, "result":Ljava/lang/String;
    const-string v7, "YYYY"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 403
    :goto_0
    return-object v5

    .line 329
    :cond_0
    const-string v7, "YY"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 330
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->noCentury(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 332
    :cond_1
    const-string v7, "MMMM"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 333
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 334
    .local v2, "month":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->fullMonth(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    .line 335
    goto :goto_0

    .line 336
    .end local v2    # "month":I
    :cond_2
    const-string v7, "MMM"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 337
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 338
    .restart local v2    # "month":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->fullMonth(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->firstThreeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    goto :goto_0

    .line 340
    .end local v2    # "month":I
    :cond_3
    const-string v7, "MM"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 343
    :cond_4
    const-string v7, "M"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 344
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 346
    :cond_5
    const-string v7, "DD"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 347
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 349
    :cond_6
    const-string v7, "D"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 350
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 352
    :cond_7
    const-string v7, "WWWW"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 353
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 354
    .local v6, "weekday":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->fullWeekday(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    .line 355
    goto/16 :goto_0

    .line 356
    .end local v6    # "weekday":I
    :cond_8
    const-string v7, "WWW"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 357
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 358
    .restart local v6    # "weekday":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->fullWeekday(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->firstThreeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    goto/16 :goto_0

    .line 360
    .end local v6    # "weekday":I
    :cond_9
    const-string v7, "hh"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 361
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 363
    :cond_a
    const-string v7, "h"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 364
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 366
    :cond_b
    const-string v7, "h12"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 367
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->twelveHourStyle(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 369
    :cond_c
    const-string v7, "hh12"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 370
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->twelveHourStyle(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 372
    :cond_d
    const-string v7, "a"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 373
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 374
    .local v0, "hour":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->amPmIndicator(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    .line 375
    goto/16 :goto_0

    .line 376
    .end local v0    # "hour":I
    :cond_e
    const-string v7, "mm"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 377
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 379
    :cond_f
    const-string v7, "m"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 380
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 382
    :cond_10
    const-string v7, "ss"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 383
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 385
    :cond_11
    const-string v7, "s"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 386
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 388
    :cond_12
    const-string v7, "f"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 389
    sget-object v7, Lhirondelle/date4j/DateTimeFormatter;->FRACTIONALS:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 390
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 391
    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lhirondelle/date4j/DateTimeFormatter;->nanosWithLeadingZeroes(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "nanos":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 393
    .local v4, "numDecimalsToShow":I
    invoke-direct {p0, v3, v4}, Lhirondelle/date4j/DateTimeFormatter;->firstNChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 394
    goto/16 :goto_0

    .line 396
    .end local v3    # "nanos":Ljava/lang/String;
    .end local v4    # "numDecimalsToShow":I
    :cond_13
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown token in date formatting pattern: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 400
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_14
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown token in date formatting pattern: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private isInEscapedRange(Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;)Z
    .locals 5
    .param p1, "aInterpretedRange"    # Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "result":Z
    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fEscapedRanges:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;

    .line 244
    .local v0, "escapedRange":Lhirondelle/date4j/DateTimeFormatter$EscapedRange;
    iget v3, v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->Start:I

    iget v4, p1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    if-gt v3, v4, :cond_0

    iget v3, p1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    iget v4, v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->End:I

    if-gt v3, v4, :cond_0

    .line 245
    const/4 v2, 0x1

    .line 249
    .end local v0    # "escapedRange":Lhirondelle/date4j/DateTimeFormatter$EscapedRange;
    :cond_1
    return v2
.end method

.method private lookupAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "aHour"    # Ljava/lang/Integer;

    .prologue
    .line 579
    const-string v1, ""

    .line 580
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v0, "indicators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lhirondelle/date4j/DateTimeFormatter;->getAmPmTextFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lhirondelle/date4j/DateTimeFormatter;->getAmPmTextFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .end local v0    # "indicators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    .line 587
    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 592
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 590
    :cond_1
    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private lookupCustomAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "aHour"    # Ljava/lang/Integer;

    .prologue
    .line 568
    const-string v0, ""

    .line 569
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 570
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v1, v1, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->AmPmIndicators:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 575
    .restart local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 573
    :cond_0
    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v1, v1, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->AmPmIndicators:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private lookupCustomMonthFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p1, "aMonth"    # Ljava/lang/Integer;

    .prologue
    .line 465
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v0, v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->Months:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private lookupCustomWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p1, "aWeekday"    # Ljava/lang/Integer;

    .prologue
    .line 504
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v0, v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->Weekdays:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private lookupMonthFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8
    .param p1, "aMonth"    # Ljava/lang/Integer;

    .prologue
    .line 469
    const-string v5, ""

    .line 470
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v4, "months":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "MMMM"

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 473
    .local v1, "format":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    const/16 v6, 0xb

    if-gt v2, v6, :cond_0

    .line 474
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 475
    .local v0, "firstDayOfMonth":Ljava/util/Calendar;
    const/4 v6, 0x1

    const/16 v7, 0x7d0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 476
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 477
    const/4 v6, 0x5

    const/16 v7, 0xf

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 478
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "monthText":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "firstDayOfMonth":Ljava/util/Calendar;
    .end local v3    # "monthText":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "idx":I
    .end local v4    # "months":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 484
    .restart local v5    # "result":Ljava/lang/String;
    return-object v5
.end method

.method private lookupWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 9
    .param p1, "aWeekday"    # Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x1

    .line 508
    const-string v3, ""

    .line 509
    .local v3, "result":Ljava/lang/String;
    iget-object v6, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 510
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v5, "weekdays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "EEEE"

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 513
    .local v1, "format":Ljava/text/SimpleDateFormat;
    const/16 v2, 0x8

    .local v2, "idx":I
    :goto_0
    const/16 v6, 0xe

    if-gt v2, v6, :cond_0

    .line 514
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 515
    .local v0, "firstDayOfWeek":Ljava/util/Calendar;
    const/16 v6, 0x7d9

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 516
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 517
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 518
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, "weekdayText":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "firstDayOfWeek":Ljava/util/Calendar;
    .end local v4    # "weekdayText":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "idx":I
    .end local v5    # "weekdays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 524
    .restart local v3    # "result":Ljava/lang/String;
    return-object v3
.end method

.method private nanosWithLeadingZeroes(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "aNanos"    # Ljava/lang/Integer;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_0
    return-object v0
.end method

.method private nextLetter(I)Ljava/lang/String;
    .locals 2
    .param p1, "aIdx"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private noCentury(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "aItem"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v0, ""

    .line 416
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_0
    return-object v0
.end method

.method private produceFinalOutput()Ljava/lang/String;
    .locals 5

    .prologue
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 293
    .local v0, "idx":I
    :goto_0
    iget-object v4, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 294
    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->nextLetter(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "letter":Ljava/lang/String;
    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->getInterpretation(I)Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;

    move-result-object v1

    .line 296
    .local v1, "interpretation":Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    if-eqz v1, :cond_1

    .line 297
    iget-object v4, v1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget v0, v1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->End:I

    .line 305
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 306
    goto :goto_0

    .line 301
    :cond_1
    const-string v4, "|"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 307
    .end local v1    # "interpretation":Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    .end local v2    # "letter":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private twelveHourStyle(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "aHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v2, 0xc

    .line 537
    move-object v0, p1

    .line 538
    .local v0, "result":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 540
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 546
    :cond_0
    :goto_0
    return-object v0

    .line 542
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 543
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private validateState()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v0}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DateTime format has no content."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    return-void
.end method

.method private valueStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "aItem"    # Ljava/lang/Object;

    .prologue
    .line 407
    const-string v0, ""

    .line 408
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 409
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_0
    return-object v0
.end method

.method private withCharDenotingAlreadyInterpreted(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aToken"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "idx":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 284
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method format(Lhirondelle/date4j/DateTime;)Ljava/lang/String;
    .locals 1
    .param p1, "aDateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fEscapedRanges:Ljava/util/Collection;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fInterpretedRanges:Ljava/util/Collection;

    .line 73
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->findEscapedRanges()V

    .line 74
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->interpretInput(Lhirondelle/date4j/DateTime;)V

    .line 75
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->produceFinalOutput()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

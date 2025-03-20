.class public abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DE:Ljava/lang/String; = "DE"

.field public static final ISO_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final ISO_PATTERN_MIN:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final JA:Ljava/lang/String; = "JA"

.field public static final US:Ljava/lang/String; = "US"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x35a80ac84b45d50L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getDateAsString(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1, p0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    .line 47
    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getFormattedDateString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getDateFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-static {p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateTimeFormatter(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 41
    invoke-static {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateFromString(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static getDateFromString(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-static {p0, p1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static getDateTimeFormatter(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 57
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    .line 58
    const-string v2, "US"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    .line 60
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .local v0, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    .line 70
    :goto_0
    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    return-object v0

    .line 62
    .end local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_0
    const-string v2, "DE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 64
    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .restart local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 66
    .end local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    :cond_1
    const-string v2, "JA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_2
    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    .line 68
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .restart local v0    # "formatter":Lorg/joda/time/format/DateTimeFormatter;
    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getFormattedDateString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-static {p0, p1, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 26
    invoke-static {p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateTimeFormatter(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 27
    invoke-virtual {v2, v1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    return-object v1
.end method

.class public abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final COMMA:Ljava/lang/String; = ","

.field public static final DASH:Ljava/lang/String; = "- "

.field public static final DETAIL_SEPARATOR:Ljava/lang/String; = ": "

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final LEFT_BRACE:Ljava/lang/String; = "[ "

.field public static final NEW_LINE:Ljava/lang/String; = "\n"

.field public static final PARSE_ERROR:D = -1.0

.field public static final RIGHT_BRACE:Ljava/lang/String; = " ] "

.field public static final SPACE:Ljava/lang/String; = " "


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f31ce66c6ee0fc9L    # -1.7900527248302773E81

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getDoubleAsString(DLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 34
    :try_start_0
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 35
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    .local v1, "numberAsString":Ljava/lang/String;
    const/4 v3, 0x7

    aput-boolean v6, v2, v3

    .line 41
    .end local v1    # "numberAsString":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x9

    aput-boolean v6, v2, v3

    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    const/16 v3, 0x8

    aput-boolean v6, v2, v3

    goto :goto_0
.end method

.method public static getStringAsDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 49
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 50
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 55
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 55
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public static getStringAsDouble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 65
    :try_start_0
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->getStringAsDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    .local v0, "stringAsDouble":Ljava/lang/Double;
    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    .line 86
    .end local v0    # "stringAsDouble":Ljava/lang/Double;
    :goto_0
    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    return-object v0

    .line 67
    :catch_0
    move-exception v2

    const/16 v2, 0x10

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v2

    .line 71
    invoke-static {p0, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->getStringAsDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 83
    .restart local v0    # "stringAsDouble":Ljava/lang/Double;
    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 73
    .end local v0    # "stringAsDouble":Ljava/lang/Double;
    :catch_1
    move-exception v2

    const/16 v2, 0x12

    const/4 v3, 0x1

    :try_start_2
    aput-boolean v3, v1, v2

    .line 77
    invoke-static {p0, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->getStringAsDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 82
    .restart local v0    # "stringAsDouble":Ljava/lang/Double;
    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 79
    .end local v0    # "stringAsDouble":Ljava/lang/Double;
    :catch_2
    move-exception v2

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    .line 81
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 26
    if-nez p0, :cond_0

    aput-boolean v1, v2, v1

    :goto_0
    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.class public final Lcom/iliakplv/notes/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x490cc6a91702a87eL    # -5.387707401138033E-44

    const-string v2, "com/iliakplv/notes/utils/StringUtils"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Instance creation not allowed!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    aput-boolean v3, v0, v3

    throw v1
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 30
    if-eqz p0, :cond_0

    const/16 v1, 0x13

    aput-boolean v0, v2, v1

    .line 32
    :goto_0
    if-eqz p0, :cond_2

    const/16 v1, 0x16

    aput-boolean v0, v2, v1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x17

    aput-boolean v0, v2, v3

    move v0, v1

    .line 35
    :goto_1
    return v0

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0x14

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 31
    :cond_1
    const/16 v1, 0x15

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x18

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_1
.end method

.method public static getNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    if-eqz p0, :cond_0

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-object p0

    :cond_0
    const-string p0, ""

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 18
    if-nez p0, :cond_0

    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    :goto_0
    const/16 v0, 0xc

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0xe

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0xd

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 14
    if-nez p0, :cond_0

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 22
    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static wrapWithEmptyLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/utils/StringUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

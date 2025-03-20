.class public Lchan/android/app/pocketnote/util/TextUtility;
.super Ljava/lang/Object;
.source "TextUtility.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/TextUtility;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x21c5d61c036dd805L    # 5.464777140951271E-146

    const-string v2, "chan/android/app/pocketnote/util/TextUtility"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/TextUtility;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/TextUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/TextUtility;->$jacocoInit()[Z

    move-result-object v2

    .line 10
    if-nez p0, :cond_0

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public static removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/TextUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v3, v0, v3

    return-object v1
.end method

.class public Lorg/asdtm/goodweather/utils/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/PermissionUtil;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4c8a9f46ea9ef3a3L    # -8.314657893409912E-61

    const-string v2, "org/asdtm/goodweather/utils/PermissionUtil"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/PermissionUtil;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/PermissionUtil;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static verifyPermissions([I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/PermissionUtil;->$jacocoInit()[Z

    move-result-object v4

    .line 8
    array-length v3, p0

    if-ge v3, v2, :cond_0

    .line 9
    aput-boolean v2, v4, v2

    .line 17
    .local v0, "result":I
    :goto_0
    return v1

    .line 12
    .end local v0    # "result":I
    :cond_0
    array-length v5, p0

    const/4 v3, 0x2

    aput-boolean v2, v4, v3

    move v3, v1

    .restart local v0    # "result":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget v0, p0, v3

    .line 13
    if-eqz v0, :cond_1

    .line 14
    const/4 v3, 0x3

    aput-boolean v2, v4, v3

    goto :goto_0

    .line 12
    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x4

    aput-boolean v2, v4, v6

    goto :goto_1

    .line 17
    :cond_2
    const/4 v1, 0x5

    aput-boolean v2, v4, v1

    move v1, v2

    goto :goto_0
.end method

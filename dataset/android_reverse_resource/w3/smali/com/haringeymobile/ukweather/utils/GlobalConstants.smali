.class public Lcom/haringeymobile/ukweather/utils/GlobalConstants;
.super Ljava/lang/Object;
.source "GlobalConstants.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final IS_BUILD_VERSION_AT_LEAST_JELLY_BEAN_16:Z

.field public static final IS_BUILD_VERSION_AT_LEAST_JELLY_BEAN_17:Z

.field public static final IS_BUILD_VERSION_AT_LEAST_KITKAT_19:Z

.field public static final IS_BUILD_VERSION_AT_LEAST_LOLLIPOP_21:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7437e8b155c5c04dL    # -6.571874483241577E-252

    const-string v2, "com/haringeymobile/ukweather/utils/GlobalConstants"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->$jacocoInit()[Z

    move-result-object v3

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_0

    aput-boolean v1, v3, v1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->IS_BUILD_VERSION_AT_LEAST_JELLY_BEAN_16:Z

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_1

    const/4 v0, 0x3

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->IS_BUILD_VERSION_AT_LEAST_JELLY_BEAN_17:Z

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_2

    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->IS_BUILD_VERSION_AT_LEAST_KITKAT_19:Z

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_3

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    move v2, v1

    :goto_3
    sput-boolean v2, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->IS_BUILD_VERSION_AT_LEAST_LOLLIPOP_21:Z

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    return-void

    .line 7
    :cond_0
    const/4 v0, 0x2

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 9
    :cond_1
    const/4 v0, 0x4

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 11
    :cond_2
    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_2

    .line 13
    :cond_3
    const/16 v0, 0x8

    aput-boolean v1, v3, v0

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/GlobalConstants;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

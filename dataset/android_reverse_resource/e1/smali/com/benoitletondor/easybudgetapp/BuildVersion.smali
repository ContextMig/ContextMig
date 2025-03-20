.class public Lcom/benoitletondor/easybudgetapp/BuildVersion;
.super Ljava/lang/Object;
.source "BuildVersion.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final VERSION_1:I = 0x14

.field public static final VERSION_1_0_1:I = 0x15

.field public static final VERSION_1_0_2:I = 0x16

.field public static final VERSION_1_0_3:I = 0x17

.field public static final VERSION_1_1_3:I = 0x1c

.field public static final VERSION_1_2:I = 0x23

.field public static final VERSION_1_2_1:I = 0x24

.field public static final VERSION_1_3:I = 0x27

.field public static final VERSION_1_3_1:I = 0x28

.field public static final VERSION_1_4:I = 0x2a

.field public static final VERSION_1_5_2:I = 0x2d


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/BuildVersion;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2bbf6ccb2cd3d093L    # -7.080807615967175E97

    const-string v2, "com/benoitletondor/easybudgetapp/BuildVersion"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/BuildVersion;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/BuildVersion;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

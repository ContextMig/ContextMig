.class public final Lcom/moonpi/swiftnotes/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.moonpi.swiftnotes"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final VERSION_CODE:I = 0xb

.field public static final VERSION_NAME:Ljava/lang/String; = "3.1.4"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/BuildConfig;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xd2059a284e138a8L

    const-string v2, "com/moonpi/swiftnotes/BuildConfig"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/BuildConfig;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/BuildConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    const-string v1, "true"

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/moonpi/swiftnotes/BuildConfig;->DEBUG:Z

    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/BuildConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

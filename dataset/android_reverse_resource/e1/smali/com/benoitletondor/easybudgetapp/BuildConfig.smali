.class public final Lcom/benoitletondor/easybudgetapp/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ANALYTICS_ACTIVATED:Z = false

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.benoitletondor.easybudgetapp"

.field public static final BATCH_API_KEY:Ljava/lang/String; = "BATCH_DEV_API_KEY"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final CRASHLYTICS_ACTIVATED:Z = false

.field public static final DEBUG:Z

.field public static final DEBUG_LOG:Z = true

.field public static final DEV_PREFERENCES:Z = true

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final GCM_SENDER_ID:Ljava/lang/String; = "YOUR_GCM_SENDER_ID"

.field public static final LICENCE_KEY:Ljava/lang/String; = "YOUR_GOOGLE_PLAY_LICENCE_KEY"

.field public static final VERSION_CODE:I = 0x2d

.field public static final VERSION_NAME:Ljava/lang/String; = "1.5.2"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/BuildConfig;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x37cac7769d5c6ca7L    # -7.221079818409216E39

    const-string v2, "com/benoitletondor/easybudgetapp/BuildConfig"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/BuildConfig;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/BuildConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    const-string v1, "true"

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/benoitletondor/easybudgetapp/BuildConfig;->DEBUG:Z

    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/BuildConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

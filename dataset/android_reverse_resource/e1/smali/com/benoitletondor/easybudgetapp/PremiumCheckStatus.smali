.class public final enum Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
.super Ljava/lang/Enum;
.source "PremiumCheckStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum CHECKING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

.field public static final enum ERROR:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

.field public static final enum INITIALIZING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

.field public static final enum NOT_PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

.field public static final enum PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3a439a6a7cb0150cL    # 4.948540201240823E-28

    const-string v2, "com/benoitletondor/easybudgetapp/PremiumCheckStatus"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    new-instance v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const-string v2, "INITIALIZING"

    invoke-direct {v1, v2, v6}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->INITIALIZING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-boolean v3, v0, v4

    .line 28
    new-instance v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const-string v2, "CHECKING"

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->CHECKING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-boolean v3, v0, v5

    .line 30
    new-instance v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const-string v2, "ERROR"

    invoke-direct {v1, v2, v7}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->ERROR:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 32
    new-instance v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const-string v2, "NOT_PREMIUM"

    invoke-direct {v1, v2, v4}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->NOT_PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 34
    new-instance v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const-string v2, "PREMIUM"

    invoke-direct {v1, v2, v5}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    .line 24
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->INITIALIZING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->CHECKING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->ERROR:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-object v2, v1, v7

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->NOT_PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-object v2, v1, v5

    sput-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$VALUES:[Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$jacocoInit()[Z

    move-result-object v1

    .line 24
    const-class v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$jacocoInit()[Z

    move-result-object v1

    .line 24
    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->$VALUES:[Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-virtual {v0}, [Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

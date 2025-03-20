.class Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;
.super Ltimber/log/Timber$Tree;
.source "MtApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/MtApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReleaseTree"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4f20ae19cb39ed73L    # -2.7697571727306394E-73

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/MtApp$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    aput-boolean v1, v0, v1

    return-void
.end method

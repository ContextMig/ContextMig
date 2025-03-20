.class public final Landroid/arch/lifecycle/viewmodel/R;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/arch/lifecycle/viewmodel/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5bc99437891b1556L    # 1.4524834118777862E134

    const-string/jumbo v2, "android/arch/lifecycle/viewmodel/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/arch/lifecycle/viewmodel/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/arch/lifecycle/viewmodel/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

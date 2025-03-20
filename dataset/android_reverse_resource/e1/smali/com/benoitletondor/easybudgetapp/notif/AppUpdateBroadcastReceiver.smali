.class public Lcom/benoitletondor/easybudgetapp/notif/AppUpdateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppUpdateBroadcastReceiver.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/notif/AppUpdateBroadcastReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x37e18c33d852fc3bL    # 1.6114986219889128E-39

    const-string v2, "com/benoitletondor/easybudgetapp/notif/AppUpdateBroadcastReceiver"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/notif/AppUpdateBroadcastReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/AppUpdateBroadcastReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/AppUpdateBroadcastReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    aput-boolean v1, v0, v1

    return-void
.end method

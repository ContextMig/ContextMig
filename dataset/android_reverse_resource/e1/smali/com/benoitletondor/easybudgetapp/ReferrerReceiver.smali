.class public Lcom/benoitletondor/easybudgetapp/ReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReferrerReceiver.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/ReferrerReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xed1f9f62e57008aL    # -1.5273873414260698E237

    const-string v2, "com/benoitletondor/easybudgetapp/ReferrerReceiver"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/ReferrerReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/ReferrerReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/ReferrerReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    aput-boolean v3, v0, v3

    .line 43
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 44
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->buildAppInvitesReferrerDeeplink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 46
    invoke-static {p2, v1}, Lcom/google/android/gms/appinvite/AppInviteReferral;->addPlayStoreReferrerToIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 47
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 48
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void
.end method

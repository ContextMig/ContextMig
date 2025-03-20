.class public Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IabBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"


# instance fields
.field private final mListener:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2eec660bf9fff878L    # 1.169468265497268E-82

    const-string v2, "com/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;->mListener:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;

    .line 52
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;->mListener:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;

    if-nez v1, :cond_0

    aput-boolean v2, v0, v2

    .line 59
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 56
    :cond_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;->mListener:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;

    invoke-interface {v1}, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;->receivedBroadcast()V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

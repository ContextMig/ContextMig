.class Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;
.super Landroid/content/BroadcastReceiver;
.source "Onboarding2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6a87655447aa37deL

    const-string v2, "com/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;

    const-string v2, "currency.iso.key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->access$002(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;Ljava/util/Currency;)Ljava/util/Currency;

    aput-boolean v3, v0, v3

    .line 92
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->access$100(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;)V

    .line 93
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.class public Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;
.super Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;
.source "Onboarding1Fragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x166521ac65514033L    # 8.627083137389557E-201

    const-string v2, "com/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;-><init>()V

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getStatusBarColor()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    const v1, 0x7f0e005d

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 46
    const v2, 0x7f0f00c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    return-object v1
.end method

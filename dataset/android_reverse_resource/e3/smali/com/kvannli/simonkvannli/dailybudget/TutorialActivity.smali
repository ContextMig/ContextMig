.class public Lcom/kvannli/simonkvannli/dailybudget/TutorialActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "TutorialActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/TutorialActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7e19da07ea52f862L    # 2.7051075334943463E299

    const-string v2, "com/kvannli/simonkvannli/dailybudget/TutorialActivity"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/TutorialActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/TutorialActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 11
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/TutorialActivity;->setContentView(I)V

    .line 12
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.class public Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "AboutActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field tvAbout:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f0
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7b83a1b6358996a9L    # 9.341647944941536E286

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/AboutActivity"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    const v1, 0x7f0b001b

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initViews()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 23
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/AboutActivity;->tvAbout:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 24
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

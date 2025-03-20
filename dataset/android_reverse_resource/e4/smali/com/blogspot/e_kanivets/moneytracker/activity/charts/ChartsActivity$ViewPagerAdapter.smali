.class Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ChartsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x78ad5165e41800d6L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;

    .line 99
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 104
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 119
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->mFragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

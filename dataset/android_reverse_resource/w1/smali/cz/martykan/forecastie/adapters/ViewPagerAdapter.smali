.class public Lcz/martykan/forecastie/adapters/ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ViewPagerAdapter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final fragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1a49b0217496a8f4L    # -9.258394784754116E181

    const-string v2, "cz/martykan/forecastie/adapters/ViewPagerAdapter"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->fragmentList:Ljava/util/List;

    aput-boolean v2, v0, v2

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->fragmentTitleList:Ljava/util/List;

    .line 16
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 30
    iget-object v1, p0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    iget-object v0, p0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    iget-object v0, p0, Lcz/martykan/forecastie/adapters/ViewPagerAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

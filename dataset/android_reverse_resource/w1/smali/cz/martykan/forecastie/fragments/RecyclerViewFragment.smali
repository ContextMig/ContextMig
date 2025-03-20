.class public Lcz/martykan/forecastie/fragments/RecyclerViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecyclerViewFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2863b3de2a450983L    # 4.00032599810998E-114

    const-string v2, "cz/martykan/forecastie/fragments/RecyclerViewFragment"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    aput-boolean v6, v2, v6

    .line 26
    const v0, 0x7f04002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/4 v0, 0x2

    aput-boolean v6, v2, v0

    .line 27
    const v0, 0x7f0e009b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x3

    aput-boolean v6, v2, v1

    .line 28
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    .line 29
    invoke-virtual {p0}, Lcz/martykan/forecastie/fragments/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcz/martykan/forecastie/activities/MainActivity;

    const/4 v5, 0x5

    aput-boolean v6, v2, v5

    .line 30
    const-string v5, "day"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/activities/MainActivity;->getAdapter(I)Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 31
    const/4 v0, 0x6

    aput-boolean v6, v2, v0

    return-object v4
.end method

.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;
.source "DeleteListsCache.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/support/v7/app/AppCompatActivity;

.field private deleteFab:Landroid/support/design/widget/FloatingActionButton;

.field private deleteListsAdapter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x32c44d53dbfe53bcL    # -1.1394271278172392E64

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->$jacocoInit()[Z

    move-result-object v1

    .line 25
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;-><init>()V

    .line 26
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->activity:Landroid/support/v7/app/AppCompatActivity;

    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    .line 28
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;-><init>(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;)V

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->deleteListsAdapter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;

    aput-boolean v3, v1, v3

    .line 30
    const v0, 0x7f100086

    invoke-virtual {p1, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 31
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 32
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->deleteListsAdapter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 34
    const v0, 0x7f100090

    invoke-virtual {p1, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->deleteFab:Landroid/support/design/widget/FloatingActionButton;

    .line 35
    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/support/v7/app/AppCompatActivity;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->activity:Landroid/support/v7/app/AppCompatActivity;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDeleteFab()Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->deleteFab:Landroid/support/design/widget/FloatingActionButton;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDeleteListsAdapter()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->deleteListsAdapter:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;
.super Ljava/lang/Object;
.source "SortProductsOnClickListener.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private listId:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4a324c00ffab8b83L    # -1.5877884709772164E-49

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->activity:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->listId:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->listId:Ljava/lang/String;

    invoke-static {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->newInstance(Landroid/app/Activity;Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 27
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/SortProductsOnClickListener;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SortDialog"

    invoke-virtual {v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return v4
.end method

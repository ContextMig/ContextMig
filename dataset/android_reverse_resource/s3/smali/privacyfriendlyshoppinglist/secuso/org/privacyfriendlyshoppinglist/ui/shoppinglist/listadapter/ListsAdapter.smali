.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractAdapter;
.source "ListsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractAdapter",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x75705769acae27a9L    # -8.236157805475526E-258

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const v1, 0x7f040054

    invoke-direct {p0, p1, p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractAdapter;-><init>(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;I)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 27
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->getListItemLayout()I

    move-result v1

    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->setLayoutId(I)V

    .line 28
    aput-boolean v2, v0, v2

    return-void
.end method

.method private getListItemLayout()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 33
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;

    check-cast v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_checkbox_position"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const v0, 0x7f040054

    .local v0, "listItemLayout":I
    const/4 v1, 0x2

    aput-boolean v4, v2, v1

    .line 41
    .end local v0    # "listItemLayout":I
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v2, v1

    return v0

    .line 39
    :cond_0
    const v0, 0x7f040055

    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createNewViewHolder(Landroid/view/View;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->createNewViewHolder(Landroid/view/View;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsItemViewHolder;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected createNewViewHolder(Landroid/view/View;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsItemViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsItemViewHolder;

    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsAdapter;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    invoke-direct {v2, p1, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/listadapter/ListsItemViewHolder;-><init>(Landroid/view/View;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;)V

    const/4 v0, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    return-object v2
.end method

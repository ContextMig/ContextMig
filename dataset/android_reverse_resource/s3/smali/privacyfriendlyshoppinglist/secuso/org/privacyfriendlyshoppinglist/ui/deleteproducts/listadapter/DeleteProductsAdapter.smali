.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractAdapter;
.source "DeleteProductsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractAdapter",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3c339b812237b49fL    # 1.0629214074293807E-18

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ">;",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    const v1, 0x7f040024

    invoke-direct {p0, p1, p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractAdapter;-><init>(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;I)V

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic createNewViewHolder(Landroid/view/View;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/ui/AbstractViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->createNewViewHolder(Landroid/view/View;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected createNewViewHolder(Landroid/view/View;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 29
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;

    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/PFACache;

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    invoke-direct {v2, p1, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsItemViewHolder;-><init>(Landroid/view/View;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;)V

    aput-boolean v3, v1, v3

    return-object v2
.end method

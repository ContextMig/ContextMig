.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DeleteProductsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

.field private item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

.field private listId:Ljava/lang/String;

.field private productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

.field private shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x20afab45a7cf4333L    # 3.02333988306778E-151

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity"

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->lambda$onCreate$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x21

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->lambda$onCreate$1()V

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$2(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->lambda$updateListView$2(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->lambda$updateListView$5(Ljava/util/List;)V

    const/16 v1, 0x24

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$4([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->lambda$null$3([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$5(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->lambda$null$4([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Ljava/util/List;)V

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$null$3([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    aput-object p1, p0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$null$4([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    aget-object v1, p1, v3

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    .line 70
    aget-object v2, p1, v3

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSortAscending()Z

    move-result v2

    const/16 v3, 0x17

    aput-boolean v4, v0, v3

    .line 71
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-interface {v3, p2, v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->sortProducts(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    .line 73
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;->getDeleteProductsAdapter()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->setList(Ljava/util/List;)V

    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    .line 74
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;->getDeleteProductsAdapter()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listadapter/DeleteProductsAdapter;->notifyDataSetChanged()V

    .line 75
    const/16 v1, 0x1a

    aput-boolean v4, v0, v1

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    const/16 v1, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->listId:Ljava/lang/String;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->item:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    .line 47
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;->getDeleteFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listeners/DeleteProductOnClickListener;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    invoke-direct {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/listeners/DeleteProductOnClickListener;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    .line 48
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->updateListView()V

    .line 49
    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    return-void
.end method

.method private static synthetic lambda$updateListView$2(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$updateListView$5(Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    new-array v1, v5, [Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    const/16 v2, 0x11

    aput-boolean v5, v0, v2

    .line 65
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->listId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->getById(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity$$Lambda$5;->lambdaFactory$([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0x12

    aput-boolean v5, v0, v4

    .line 66
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity$$Lambda$6;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Ljava/util/List;)Lrx/functions/Action0;

    move-result-object v1

    const/16 v3, 0x13

    aput-boolean v5, v0, v3

    .line 67
    invoke-virtual {v2, v1}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v5, v0, v2

    .line 77
    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 78
    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 35
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 37
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 38
    const-class v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-virtual {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 39
    const-class v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-virtual {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 41
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "list.id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->listId:Ljava/lang/String;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 42
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->listId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->getById(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;)Lrx/functions/Action1;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v4, v1, v3

    .line 43
    invoke-virtual {v0, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;)Lrx/functions/Action0;

    move-result-object v2

    const/16 v3, 0x8

    aput-boolean v4, v1, v3

    .line 44
    invoke-virtual {v0, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    .line 50
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 52
    invoke-virtual {p0, v5, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->overridePendingTransition(II)V

    .line 53
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    return-void
.end method

.method public updateListView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xc

    aput-boolean v5, v0, v2

    .line 59
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsCache;->getListId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->getAllProducts(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity$$Lambda$3;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0xd

    aput-boolean v5, v0, v4

    .line 60
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity$$Lambda$4;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deleteproducts/DeleteProductsActivity;Ljava/util/List;)Lrx/functions/Action0;

    move-result-object v1

    const/16 v3, 0xe

    aput-boolean v5, v0, v3

    .line 61
    invoke-virtual {v2, v1}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v5, v0, v2

    .line 79
    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 80
    const/16 v1, 0x10

    aput-boolean v5, v0, v1

    return-void
.end method

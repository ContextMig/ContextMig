.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;
.super Ljava/lang/Object;
.source "SortProductsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;

.field final synthetic val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6747c54ec8a77299L    # 3.309709459049308E189

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1"

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->lambda$onClick$0(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2, p3, p4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->lambda$onClick$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)V

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$2(ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->lambda$onClick$2(ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$onClick$0(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$onClick$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    const-string v1, "sort.by.name"

    invoke-interface {p0, p1, v1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->sortProducts(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 115
    invoke-interface {p0, p1, p3, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->sortProducts(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 116
    invoke-virtual {p4, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;->setProductsAndUpdateView(Ljava/util/List;)V

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 117
    invoke-virtual {p4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;->reorderProductViewBySelection()V

    .line 118
    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$onClick$2(ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    invoke-virtual {p3, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setSortAscending(Z)V

    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 126
    invoke-virtual {p3, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setSortCriteria(Ljava/lang/String;)V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 127
    invoke-interface {p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->saveOrUpdate(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 128
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->$jacocoInit()[Z

    move-result-object v5

    .line 81
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/listeners/CancelSearchOnClick;->performClick()V

    aput-boolean v10, v5, v10

    .line 83
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;

    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;

    const/4 v4, 0x2

    aput-boolean v10, v5, v4

    .line 84
    new-instance v6, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v6, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    aput-boolean v10, v5, v4

    .line 85
    const-class v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-virtual {v6, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    const/4 v7, 0x4

    aput-boolean v10, v5, v7

    .line 86
    const-class v7, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-virtual {v6, v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    .line 88
    .local v2, "shoppingListService":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;
    const-string v1, "sort.by.name"

    const/4 v6, 0x5

    aput-boolean v10, v5, v6

    .line 89
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getQuantity()Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    const-string v1, "sort.by.quantity"

    .local v1, "criteria":Ljava/lang/String;
    const/4 v6, 0x6

    aput-boolean v10, v5, v6

    .line 105
    .end local v1    # "criteria":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getAscending()Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 106
    .local v0, "ascending":Z
    const/16 v6, 0xb

    aput-boolean v10, v5, v6

    .line 108
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0xc

    aput-boolean v10, v5, v7

    .line 110
    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;

    invoke-static {v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->getAllProducts(Ljava/lang/String;)Lrx/Observable;

    move-result-object v7

    invoke-static {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$1;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v8

    const/16 v9, 0xd

    aput-boolean v10, v5, v9

    .line 111
    invoke-virtual {v7, v8}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v7

    invoke-static {v4, v6, v0, v1, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;Ljava/util/List;ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/ProductsActivity;)Lrx/functions/Action0;

    move-result-object v3

    const/16 v4, 0xe

    aput-boolean v10, v5, v4

    .line 112
    invoke-virtual {v7, v3}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v3

    const/16 v4, 0xf

    aput-boolean v10, v5, v4

    .line 119
    invoke-virtual {v3}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v3, 0x10

    aput-boolean v10, v5, v3

    .line 122
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;

    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->getById(Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1$$Lambda$3;->lambdaFactory$(ZLjava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;)Lrx/functions/Action1;

    move-result-object v4

    const/16 v6, 0x11

    aput-boolean v10, v5, v6

    .line 123
    invoke-virtual {v3, v4}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v3

    const/16 v4, 0x12

    aput-boolean v10, v5, v4

    .line 129
    invoke-virtual {v3}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 131
    const/16 v3, 0x13

    aput-boolean v10, v5, v3

    return-void

    .line 93
    .end local v0    # "ascending":Z
    :cond_0
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getStore()Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    const-string v1, "sort.by.store"

    .restart local v1    # "criteria":Ljava/lang/String;
    const/4 v6, 0x7

    aput-boolean v10, v5, v6

    goto :goto_0

    .line 97
    .end local v1    # "criteria":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getPrice()Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 99
    const-string v1, "sort.by.price"

    .restart local v1    # "criteria":Ljava/lang/String;
    const/16 v6, 0x8

    aput-boolean v10, v5, v6

    goto/16 :goto_0

    .line 101
    .end local v1    # "criteria":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;->val$cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getCategory()Landroid/widget/RadioButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0x9

    aput-boolean v10, v5, v6

    goto/16 :goto_0

    .line 103
    :cond_3
    const-string v1, "sort.by.category"

    .restart local v1    # "criteria":Ljava/lang/String;
    const/16 v6, 0xa

    aput-boolean v10, v5, v6

    goto/16 :goto_0
.end method

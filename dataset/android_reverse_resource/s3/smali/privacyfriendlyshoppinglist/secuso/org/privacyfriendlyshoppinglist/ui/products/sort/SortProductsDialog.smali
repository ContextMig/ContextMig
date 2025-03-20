.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;
.super Landroid/app/DialogFragment;
.source "SortProductsDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private listId:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x364d13709c013c68L    # 3.978912686829127E-47

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog"

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;)Landroid/app/Activity;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->activity:Landroid/app/Activity;

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->listId:Ljava/lang/String;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$0([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->lambda$setupPreviosOptions$0([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v1, 0x30

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$1([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->lambda$setupPreviosOptions$1([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;)V

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$setupPreviosOptions$0([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    aput-object p1, p0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$setupPreviosOptions$1([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v3

    .line 143
    aget-object v4, p0, v2

    const/16 v0, 0x18

    aput-boolean v1, v3, v0

    .line 144
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getAscending()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSortAscending()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/16 v0, 0x19

    aput-boolean v1, v3, v0

    .line 145
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getDescending()Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSortAscending()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1a

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/16 v0, 0x1c

    aput-boolean v1, v3, v0

    .line 146
    invoke-virtual {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x1d

    aput-boolean v1, v3, v0

    .line 147
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    const/16 v2, 0x1e

    aput-boolean v1, v3, v2

    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 162
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getName()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/16 v0, 0x2b

    aput-boolean v1, v3, v0

    .line 164
    :goto_2
    const/16 v0, 0x2c

    aput-boolean v1, v3, v0

    return-void

    .line 145
    :cond_0
    const/16 v0, 0x1b

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 147
    :sswitch_0
    const-string v5, "sort.by.quantity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v2, 0x1f

    aput-boolean v1, v3, v2

    move v2, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    aput-boolean v1, v3, v0

    goto :goto_1

    :sswitch_1
    const-string v2, "sort.by.store"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x21

    aput-boolean v1, v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x22

    aput-boolean v1, v3, v0

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v2, "sort.by.price"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x23

    aput-boolean v1, v3, v2

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    const/16 v0, 0x24

    aput-boolean v1, v3, v0

    goto :goto_1

    :sswitch_3
    const-string v2, "sort.by.category"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x25

    aput-boolean v1, v3, v2

    move v2, v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    const/16 v0, 0x26

    aput-boolean v1, v3, v0

    goto :goto_1

    .line 150
    :pswitch_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getQuantity()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 151
    const/16 v0, 0x27

    aput-boolean v1, v3, v0

    goto :goto_2

    .line 153
    :pswitch_1
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getStore()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 154
    const/16 v0, 0x28

    aput-boolean v1, v3, v0

    goto :goto_2

    .line 156
    :pswitch_2
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getPrice()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    const/16 v0, 0x29

    aput-boolean v1, v3, v0

    goto :goto_2

    .line 159
    :pswitch_3
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;->getCategory()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 160
    const/16 v0, 0x2a

    aput-boolean v1, v3, v0

    goto/16 :goto_2

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x22af6bf2 -> :sswitch_0
        0x38313b42 -> :sswitch_2
        0x385c82da -> :sswitch_1
        0x7249c465 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;-><init>()V

    aput-boolean v3, v0, v3

    .line 38
    invoke-virtual {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->setActivity(Landroid/app/Activity;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 39
    invoke-virtual {v1, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->setListId(Ljava/lang/String;)V

    .line 40
    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private setupPreviosOptions(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->listId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->getById(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    invoke-static {p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$$Lambda$1;->lambdaFactory$([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Lrx/functions/Action1;

    move-result-object v2

    const/16 v3, 0x14

    aput-boolean v4, v0, v3

    .line 140
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p3, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$$Lambda$2;->lambdaFactory$([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;)Lrx/functions/Action0;

    move-result-object v2

    const/16 v3, 0x15

    aput-boolean v4, v0, v3

    .line 141
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    .line 165
    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 166
    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 62
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x7

    aput-boolean v8, v1, v2

    .line 63
    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-virtual {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    const/16 v2, 0x8

    aput-boolean v8, v1, v2

    .line 65
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/16 v3, 0x9

    aput-boolean v8, v1, v3

    .line 66
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0087

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/16 v4, 0xa

    aput-boolean v8, v1, v4

    .line 67
    const v4, 0x7f040058

    invoke-virtual {v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0xb

    aput-boolean v8, v1, v4

    .line 69
    new-instance v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;

    invoke-direct {v4, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;-><init>(Landroid/view/View;)V

    const/16 v5, 0xc

    aput-boolean v8, v1, v5

    .line 70
    new-array v5, v8, [Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    const/4 v6, 0x0

    new-instance v7, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    invoke-direct {v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;-><init>()V

    aput-object v7, v5, v6

    const/16 v6, 0xd

    aput-boolean v8, v1, v6

    .line 71
    invoke-direct {p0, v0, v4, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->setupPreviosOptions(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V

    const/16 v0, 0xe

    aput-boolean v8, v1, v0

    .line 73
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0xf

    aput-boolean v8, v1, v0

    .line 74
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0900bf

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x10

    aput-boolean v8, v1, v0

    .line 75
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x11

    aput-boolean v8, v1, v0

    .line 76
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09007d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;

    invoke-direct {v2, p0, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialogCache;)V

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    aput-boolean v8, v1, v0

    .line 134
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v2, 0x13

    aput-boolean v8, v1, v2

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->activity:Landroid/app/Activity;

    .line 46
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/sort/SortProductsDialog;->listId:Ljava/lang/String;

    .line 51
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;
.super Ljava/lang/Object;
.source "DeleteListsOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

.field private productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

.field private shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x305f0c3dfe5afeccL    # -3.833844198600828E75

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    .line 37
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    aput-boolean v3, v1, v3

    .line 38
    const-class v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-virtual {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 39
    const-class v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-virtual {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    .line 40
    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->lambda$deleteLists$0()Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->lambda$deleteListsSync$1(Ljava/lang/String;)V

    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private deleteLists()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 50
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;)Lrx/functions/Func0;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 51
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v4, v1, v3

    .line 52
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 53
    .local v0, "observable":Lrx/Observable;
    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method private deleteListsSync()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->getDeleteListsAdapter()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsAdapter;->getList()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 60
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->shoppingListService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;

    invoke-interface {v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/ShoppingListService;->deleteSelected(Ljava/util/List;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;)Lrx/functions/Action1;

    move-result-object v2

    const/16 v3, 0x9

    aput-boolean v4, v0, v3

    .line 61
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 72
    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 75
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    .line 76
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0xd

    aput-boolean v4, v0, v3

    .line 77
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v3, 0xe

    aput-boolean v4, v0, v3

    .line 78
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    const/4 v1, 0x0

    const/16 v2, 0xf

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteLists$0()Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->deleteListsSync()Ljava/lang/Void;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteListsSync$1(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-interface {v1, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->deleteAllFromList(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v1, 0x10

    aput-boolean v5, v0, v1

    .line 67
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;-><init>()V

    const/16 v2, 0x11

    aput-boolean v5, v0, v2

    .line 68
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    const-class v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderSchedulingService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x12

    aput-boolean v5, v0, v3

    .line 69
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0x13

    aput-boolean v5, v0, v1

    .line 70
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/NotificationUtils;->removeNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 71
    const/16 v1, 0x14

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/DeleteListsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    const v2, 0x7f090033

    const v3, 0x7f090036

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listeners/DeleteListsOnClickListener;->deleteLists()Lrx/Observable;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/MessageUtils;->showAlertDialog(Landroid/content/Context;IILrx/Observable;)V

    .line 46
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.class public final Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ShoppingListModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideShoppingListDaoProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67603ebb97c3d820L    # -4.454450970879897E-190

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.shoppingList.persistence.ShoppingListDao"

    const-string v2, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.dagger.context.config.shoppingList.ShoppingListModule"

    const-string v3, "provideShoppingListDao"

    invoke-direct {p0, v1, v4, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;

    aput-boolean v4, v0, v5

    .line 62
    invoke-virtual {p0, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->setLibrary(Z)V

    .line 63
    aput-boolean v4, v0, v4

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->get()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;->module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;->provideShoppingListDao()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

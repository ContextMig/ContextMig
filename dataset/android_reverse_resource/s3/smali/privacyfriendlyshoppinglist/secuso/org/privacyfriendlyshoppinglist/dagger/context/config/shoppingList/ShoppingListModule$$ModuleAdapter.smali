.class public final Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "ShoppingListModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListServiceProvidesAdapter;,
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListConverterProvidesAdapter;,
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2d2405da7ba9c709L    # 3.071691122164509E-91

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.shoppingList.persistence.ShoppingListDao"

    aput-object v2, v1, v4

    const-string v2, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.shoppingList.business.ShoppingListService"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.shoppingList.business.impl.converter.ShoppingListConverter"

    aput-object v3, v1, v2

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 25
    new-array v1, v4, [Ljava/lang/Class;

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 27
    new-array v1, v4, [Ljava/lang/Class;

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v8

    .line 30
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;

    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    move-object v0, p0

    move v7, v4

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 31
    aput-boolean v6, v8, v4

    return-void
.end method


# virtual methods
.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    check-cast p2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;

    invoke-virtual {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getBindings(Ldagger/internal/BindingsGroup;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.shoppingList.persistence.ShoppingListDao"

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;

    invoke-direct {v2, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListDaoProvidesAdapter;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;)V

    invoke-virtual {p1, v1, v2}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 45
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.shoppingList.business.impl.converter.ShoppingListConverter"

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListConverterProvidesAdapter;

    invoke-direct {v2, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListConverterProvidesAdapter;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;)V

    invoke-virtual {p1, v1, v2}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 46
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.shoppingList.business.ShoppingListService"

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListServiceProvidesAdapter;

    invoke-direct {v2, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter$ProvideShoppingListServiceProvidesAdapter;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;)V

    invoke-virtual {p1, v1, v2}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 47
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method

.method public bridge synthetic newModule()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->newModule()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public newModule()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.class public final Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "AppContextModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule;",
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

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6715a3455fd96dfdL    # 3.76591011495974E188

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 19
    new-array v1, v3, [Ljava/lang/Class;

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 21
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule;

    aput-object v2, v1, v3

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/shoppingList/ShoppingListModule;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;

    aput-object v3, v1, v2

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    aput-boolean v4, v0, v5

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v8

    .line 24
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule;

    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    move-object v0, p0

    move v7, v4

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 25
    aput-boolean v6, v8, v4

    return-void
.end method


# virtual methods
.method public bridge synthetic newModule()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->newModule()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public newModule()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule$$ModuleAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/AppContextModule;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method

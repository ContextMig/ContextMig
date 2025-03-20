.class public final Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;
.super Ljava/lang/Object;
.source "ControllerModule_ProvidesCategoryControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final categoryRepoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private final module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

.field private final preferenceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3bf3ab04c90dbf30L    # 6.663791754489612E-20

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$jacocoInit()[Z

    move-result-object v2

    .line 11
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$assertionsDisabled:Z

    const/16 v0, 0x10

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 19
    :goto_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    .line 20
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 21
    :goto_1
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->categoryRepoProvider:Ljavax/inject/Provider;

    .line 22
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 23
    :goto_2
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->preferenceControllerProvider:Ljavax/inject/Provider;

    .line 24
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    aput-boolean v3, v0, v3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 20
    :cond_2
    if-eqz p2, :cond_3

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    throw v1

    .line 22
    :cond_4
    if-eqz p3, :cond_5

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    throw v1
.end method

.method public static create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;

    invoke-direct {v1, p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;-><init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$jacocoInit()[Z

    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->categoryRepoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->preferenceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v4, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->providesCategoryController(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    move-result-object v0

    .line 29
    .local v0, "provided":Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;
    if-nez v0, :cond_0

    .line 30
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-boolean v5, v3, v2

    throw v1

    .line 32
    :cond_0
    const/16 v1, 0xb

    aput-boolean v5, v3, v1

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->get()Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

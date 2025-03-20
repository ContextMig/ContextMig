.class public final Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;
.super Ljava/lang/Object;
.source "ControllerModule_ProvidesRecordControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final accountControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

.field private final recordRepoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x78ad6e830a7f021bL    # 1.9902207102019461E273

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$jacocoInit()[Z

    move-result-object v2

    .line 12
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$assertionsDisabled:Z

    const/16 v0, 0x13

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x12

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    .line 22
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 23
    :goto_1
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->recordRepoProvider:Ljavax/inject/Provider;

    .line 24
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 25
    :goto_2
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->categoryControllerProvider:Ljavax/inject/Provider;

    .line 26
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 27
    :goto_3
    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->accountControllerProvider:Ljavax/inject/Provider;

    .line 28
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void

    .line 20
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

    .line 22
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

    .line 24
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

    .line 26
    :cond_6
    if-eqz p4, :cond_7

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    throw v1
.end method

.method public static create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;-><init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$jacocoInit()[Z

    move-result-object v4

    .line 32
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->recordRepoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->categoryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->accountControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v5, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->providesRecordController(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;)Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    move-result-object v0

    .line 33
    .local v0, "provided":Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
    if-nez v0, :cond_0

    .line 34
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-boolean v6, v4, v2

    throw v1

    .line 36
    :cond_0
    const/16 v1, 0xe

    aput-boolean v6, v4, v1

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->get()Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

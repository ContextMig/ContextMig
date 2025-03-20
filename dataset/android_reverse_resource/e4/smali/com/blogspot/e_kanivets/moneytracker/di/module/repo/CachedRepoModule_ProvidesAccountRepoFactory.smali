.class public final Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;
.super Ljava/lang/Object;
.source "CachedRepoModule_ProvidesAccountRepoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final dbHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x68015a0836f647eaL    # 9.89575567678545E192

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$jacocoInit()[Z

    move-result-object v2

    .line 10
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$assertionsDisabled:Z

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 17
    :goto_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    .line 18
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 19
    :goto_1
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->dbHelperProvider:Ljavax/inject/Provider;

    .line 20
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 16
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

    .line 18
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
.end method

.method public static create(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;-><init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)V

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$jacocoInit()[Z

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->dbHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;

    invoke-virtual {v3, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;->providesAccountRepo(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    move-result-object v0

    .line 25
    .local v0, "provided":Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;, "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;>;"
    if-nez v0, :cond_0

    .line 26
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-boolean v4, v2, v3

    throw v1

    .line 28
    :cond_0
    const/16 v1, 0x8

    aput-boolean v4, v2, v1

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->get()Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.class public Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;
.super Ljava/lang/Object;
.source "RepoModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x63cc5924e4bc8efbL    # -7.945558120953253E-173

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->context:Landroid/content/Context;

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public providesAccountRepo(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesCategoryRepo(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesDbHelper()Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;-><init>(Landroid/content/Context;)V

    aput-boolean v3, v0, v3

    return-object v1
.end method

.method public providesExchangeRateRepo(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesRecordRepo(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesTransferRepo(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/RepoModule;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

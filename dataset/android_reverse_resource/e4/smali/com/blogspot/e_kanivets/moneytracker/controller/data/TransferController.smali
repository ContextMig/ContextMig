.class public Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;
.super Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;
.source "TransferController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "TransferController"


# instance fields
.field private accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d9aa9d8583899e1L    # -4.078104360315868E-297

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/data/TransferController"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;)V
    .locals 3
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V

    .line 26
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    .line 27
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public create(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
    .locals 4
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v2, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    .line 34
    .local v0, "createdTransfer":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    aput-boolean v3, v1, v3

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->transferDone(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;)Z

    .line 37
    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->create(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

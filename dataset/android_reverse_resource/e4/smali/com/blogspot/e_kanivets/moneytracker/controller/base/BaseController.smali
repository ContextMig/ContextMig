.class public abstract Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field protected repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x39c29d7e9c93f605L    # 1.8356017410125483E-30

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/base/BaseController"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    .line 22
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public delete(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->delete(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public read(J)Ljava/lang/Object;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->read(J)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readAll()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->readAll()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->update(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

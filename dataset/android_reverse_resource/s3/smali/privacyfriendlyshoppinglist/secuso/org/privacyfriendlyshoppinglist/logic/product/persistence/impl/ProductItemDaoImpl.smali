.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractDao;
.source "ProductItemDaoImpl.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractDao",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;",
        ">;",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x76705638ced37af6L    # 3.21516557726292E262

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractDao;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public deleteById(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    invoke-virtual {p0, p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->deleteById(Ljava/lang/Long;Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getAllEntities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->getAllEntities(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getById(Ljava/lang/Long;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 25
    const-class v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    invoke-virtual {p0, p1, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->getById(Ljava/lang/Long;Ljava/lang/Class;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractEntity;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public save(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;)Ljava/lang/Long;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/impl/ProductItemDaoImpl;->saveOrUpdate(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractEntity;)Ljava/lang/Long;

    move-result-object v1

    aput-boolean v2, v0, v2

    return-object v1
.end method

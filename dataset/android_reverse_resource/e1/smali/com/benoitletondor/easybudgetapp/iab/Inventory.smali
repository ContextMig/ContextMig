.class public Lcom/benoitletondor/easybudgetapp/iab/Inventory;
.super Ljava/lang/Object;
.source "Inventory.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/benoitletondor/easybudgetapp/iab/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field mSkuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x230b0f2ac84e9b38L    # 7.100807263408248E-140

    const-string v2, "com/benoitletondor/easybudgetapp/iab/Inventory"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->mSkuMap:Ljava/util/Map;

    aput-boolean v2, v0, v2

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    .line 31
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    .line 73
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;

    const/4 v4, 0x6

    aput-boolean v5, v1, v4

    .line 74
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    .line 75
    :goto_1
    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    goto :goto_1

    .line 76
    :cond_1
    const/16 v0, 0xa

    aput-boolean v5, v1, v0

    return-object v2
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/iab/Purchase;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->$jacocoInit()[Z

    move-result-object v1

    .line 40
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

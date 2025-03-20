.class public Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;
.super Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;
.source "CategoryController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "CategoryController"


# instance fields
.field private filteredCategories:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x566ceb846e50400fL    # 2.1224945874912632E108

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/data/CategoryController"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V
    .locals 3
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V

    .line 34
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    .line 35
    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readFilteredCategories()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->filteredCategories:Ljava/util/Set;

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public disableCategory(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->filteredCategories:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->filteredCategories:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writeFilteredCategories(Ljava/util/Set;)V

    .line 68
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public enableCategory(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->filteredCategories:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->filteredCategories:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writeFilteredCategories(Ljava/util/Set;)V

    .line 76
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public readFiltered()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->$jacocoInit()[Z

    move-result-object v2

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;>;"
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->readAll()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x6

    aput-boolean v6, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 56
    .local v0, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->filteredCategories:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    .line 57
    :goto_1
    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 59
    .end local v0    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    :cond_1
    const/16 v3, 0xa

    aput-boolean v6, v2, v3

    return-object v1
.end method

.method public readOrCreate(Ljava/lang/String;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->$jacocoInit()[Z

    move-result-object v4

    .line 39
    if-nez p1, :cond_0

    aput-boolean v6, v4, v6

    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x3

    aput-boolean v6, v4, v5

    .line 48
    .local v0, "args":[Ljava/lang/String;
    .local v1, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;>;"
    .local v2, "condition":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 39
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;>;"
    .end local v2    # "condition":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    aput-boolean v6, v4, v3

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->enableCategory(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "name=?"

    .line 44
    .restart local v2    # "condition":Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    aput-object p1, v0, v5

    .line 45
    .restart local v0    # "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v3, v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 47
    .restart local v1    # "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    const/4 v5, 0x4

    aput-boolean v6, v4, v5

    goto :goto_1

    .line 48
    :cond_2
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    new-instance v5, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    invoke-direct {v5, p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    const/4 v5, 0x5

    aput-boolean v6, v4, v5

    goto :goto_1
.end method

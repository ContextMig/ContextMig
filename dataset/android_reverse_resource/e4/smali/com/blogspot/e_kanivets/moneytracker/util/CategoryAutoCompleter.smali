.class public Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;
.super Ljava/lang/Object;
.source "CategoryAutoCompleter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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

.field private recordTitleCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x49e2e04952de9d70L    # 8.621087055618652E47

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V
    .locals 6
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->$jacocoInit()[Z

    move-result-object v1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    .line 33
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->categoryList:Ljava/util/List;

    .line 36
    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readRecordTitleCategoryPairs()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->recordTitleCategoryMap:Ljava/util/Map;

    .line 38
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->readFiltered()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    aput-boolean v5, v1, v3

    .local v0, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 39
    .restart local v0    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->categoryList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    aput-boolean v5, v1, v5

    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    return-void
.end method


# virtual methods
.method public addRecordTitleCategoryPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 65
    :goto_0
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 69
    :goto_1
    return-void

    .line 64
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->recordTitleCategoryMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->recordTitleCategoryMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writeRecordTitleCategoryPairs(Ljava/util/Map;)V

    .line 69
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method public completeByPart(Ljava/lang/String;)Ljava/util/List;
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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->$jacocoInit()[Z

    move-result-object v2

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->categoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x3

    aput-boolean v5, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    .line 48
    :goto_1
    const/4 v4, 0x6

    aput-boolean v5, v2, v4

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    aput-boolean v5, v2, v4

    goto :goto_1

    .line 50
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x7

    aput-boolean v5, v2, v3

    return-object v1
.end method

.method public completeByRecordTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->recordTitleCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public removeFromAutoComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->categoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    invoke-virtual {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->disableCategory(Ljava/lang/String;)V

    .line 56
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.class public Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;
.super Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;
.source "CategoryRepo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "CategoryRepo"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6a435f0dc4351335L    # 7.591820554895904E203

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V

    .line 28
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Landroid/content/ContentValues;
    .locals 4
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;)Landroid/content/ContentValues;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;)Landroid/content/ContentValues;
    .locals 5
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->$jacocoInit()[Z

    move-result-object v1

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string/jumbo v2, "name"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method protected getListFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->$jacocoInit()[Z

    move-result-object v3

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;>;"
    if-nez p1, :cond_0

    const/4 v4, 0x4

    aput-boolean v8, v3, v4

    .line 67
    :goto_0
    return-object v1

    .line 53
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x5

    aput-boolean v8, v3, v4

    .line 67
    :goto_1
    const/16 v4, 0x9

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 55
    .local v2, "idColIndex":I
    const-string/jumbo v4, "name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    aput-boolean v8, v3, v5

    .line 59
    :goto_2
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 60
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v6, v7, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;-><init>(JLjava/lang/String;)V

    .line 63
    .local v0, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    aput-boolean v8, v3, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    aput-boolean v8, v3, v4

    goto :goto_1
.end method

.method protected getTable()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/CategoryRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const-string/jumbo v1, "categories"

    aput-boolean v2, v0, v2

    return-object v1
.end method

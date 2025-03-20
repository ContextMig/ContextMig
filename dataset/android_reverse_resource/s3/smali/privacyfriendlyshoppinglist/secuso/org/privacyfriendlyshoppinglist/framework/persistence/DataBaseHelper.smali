.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DataBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ON_CREATE:Ljava/lang/String; = "onCreate"

.field private static final ON_UPGRADE:Ljava/lang/String; = "onUpgrade"

.field private static final ORMLITE_CONFIG_TXT:Ljava/lang/String; = "ormlite_config.txt"

.field private static final START:Ljava/lang/String; = "start"

.field private static entityClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x514fda3e10a060a1L    # -8.312013708915023E-84

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper"

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V
    .locals 7

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->$jacocoInit()[Z

    move-result-object v6

    .line 34
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->getDbName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->getDbVersion()I

    move-result v4

    const/high16 v5, 0x7f080000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method

.method private setupClasses()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->entityClasses:Ljava/util/List;

    aput-boolean v3, v0, v3

    .line 41
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->entityClasses:Ljava/util/List;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/entity/ProductItemEntity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 42
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->entityClasses:Ljava/util/List;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 43
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->entityClasses:Ljava/util/List;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 51
    :try_start_0
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->setupClasses()V

    const/4 v0, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onCreate"

    const-string v3, "start"

    invoke-static {v0, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/logger/PFALogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 53
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->entityClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 55
    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 56
    const/16 v0, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreate"

    invoke-static {v2, v3, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/logger/PFALogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xc

    aput-boolean v5, v1, v0

    .line 62
    :goto_1
    const/16 v0, 0xd

    aput-boolean v5, v1, v0

    return-void

    .line 61
    :cond_0
    const/16 v0, 0xa

    aput-boolean v5, v1, v0

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 69
    :try_start_0
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->setupClasses()V

    const/16 v0, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 70
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->entityClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/16 v3, 0x10

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 72
    const/4 v3, 0x1

    invoke-static {p2, v0, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 73
    const/16 v0, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    const/16 v2, 0x13

    aput-boolean v5, v1, v2

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onUpgrade"

    invoke-static {v2, v3, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/logger/PFALogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x14

    aput-boolean v5, v1, v0

    .line 80
    :goto_1
    const/16 v0, 0x15

    aput-boolean v5, v1, v0

    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    const/16 v0, 0x12

    aput-boolean v5, v1, v0

    goto :goto_1
.end method

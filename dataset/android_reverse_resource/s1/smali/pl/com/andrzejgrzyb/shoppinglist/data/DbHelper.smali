.class public Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "ShoppingList.db"

.field public static final DATABASE_VERSION:I = 0x3


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x46f6a4da2795bddfL    # 7.348383128320948E33

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/data/DbHelper"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    const-string v1, "ShoppingList.db"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const-string v1, "CREATE TABLE items (_id INTEGER PRIMARY KEY AUTOINCREMENT, idCloud INTEGER, name TEXT NOT NULL, quantity REAL NOT NULL, quantityUnit TEXT, listId INTEGER NOT NULL, listIdCloud INTEGER NOT NULL, position INTEGER NOT NULL, checked INTEGER NOT NULL, modificationDate INTEGER NOT NULL, modifiedByIdCloud TEXT NOT NULL,  FOREIGN KEY (listId) REFERENCES shoppingLists (_id) );"

    aput-boolean v2, v0, v2

    .line 47
    const-string v1, "CREATE TABLE items (_id INTEGER PRIMARY KEY AUTOINCREMENT, idCloud INTEGER, name TEXT NOT NULL, quantity REAL NOT NULL, quantityUnit TEXT, listId INTEGER NOT NULL, listIdCloud INTEGER NOT NULL, position INTEGER NOT NULL, checked INTEGER NOT NULL, modificationDate INTEGER NOT NULL, modifiedByIdCloud TEXT NOT NULL,  FOREIGN KEY (listId) REFERENCES shoppingLists (_id) );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v1, "CREATE TABLE shoppingLists (_id INTEGER PRIMARY KEY AUTOINCREMENT, idCloud INTEGER NOT NULL, name TEXT NOT NULL, description TEXT, ownerIdCloud TEXT NOT NULL, modificationDate INTEGER NOT NULL, modifiedByIdCloud TEXT NOT NULL, hashtag TEXT NOT NULL );"

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 69
    const-string v1, "CREATE TABLE shoppingLists (_id INTEGER PRIMARY KEY AUTOINCREMENT, idCloud INTEGER NOT NULL, name TEXT NOT NULL, description TEXT, ownerIdCloud TEXT NOT NULL, modificationDate INTEGER NOT NULL, modifiedByIdCloud TEXT NOT NULL, hashtag TEXT NOT NULL );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 98
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    const-string v1, "DROP TABLE IF EXISTS items"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 91
    const-string v1, "DROP TABLE IF EXISTS shoppingLists"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 94
    invoke-virtual {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

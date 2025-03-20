.class public Lbr/com/dao/ItemShoppingListDAO;
.super Ljava/lang/Object;
.source "ItemShoppingListDAO.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final FIELD_CHECKED:Ljava/lang/String; = "CHECKED"

.field public static final FIELD_DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final FIELD_IDSHOPPINGLIST:Ljava/lang/String; = "IDSHOPPINGLIST"

.field public static final FIELD_QUANTITY:Ljava/lang/String; = "QUANTITY"

.field public static final FIELD_UNITVALUE:Ljava/lang/String; = "UNITVALUE"

.field public static final TABLE_NAME:Ljava/lang/String; = "ITEMSHOPPINGLIST"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/dao/ItemShoppingListDAO;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xddad601ecf107b7L

    const-string v2, "br/com/dao/ItemShoppingListDAO"

    const/16 v3, 0x84

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/dao/ItemShoppingListDAO;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static checkAllItens(Landroid/content/Context;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 78
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v2, 0x1d

    aput-boolean v8, v1, v2

    .line 80
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x1e

    aput-boolean v8, v1, v3

    .line 81
    const-string v3, "CHECKED"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1f

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v1, v3

    .line 83
    const-string v3, "ITEMSHOPPINGLIST"

    const-string v4, "IDSHOPPINGLIST = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/16 v0, 0x22

    aput-boolean v8, v1, v0

    return-void

    .line 84
    :catch_0
    move-exception v0

    const/16 v2, 0x20

    aput-boolean v8, v1, v2

    .line 85
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x21

    aput-boolean v8, v1, v0

    throw v2
.end method

.method public static delete(Landroid/content/Context;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    :try_start_0
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 92
    const-string v2, "ITEMSHOPPINGLIST"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/16 v0, 0x26

    aput-boolean v7, v1, v0

    return-void

    .line 93
    :catch_0
    move-exception v0

    const/16 v2, 0x24

    aput-boolean v7, v1, v2

    .line 94
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x25

    aput-boolean v7, v1, v0

    throw v2
.end method

.method public static deleteAllLista(Landroid/content/Context;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v4

    .line 100
    :try_start_0
    new-instance v3, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v3, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "IDSHOPPINGLIST = ? "

    const/16 v3, 0x27

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 102
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 104
    .local v1, "whereArgs":[Ljava/lang/String;
    if-nez p2, :cond_0

    const/16 v3, 0x28

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 109
    :goto_0
    const-string v3, "ITEMSHOPPINGLIST"

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/16 v3, 0x2e

    aput-boolean v7, v4, v3

    return-void

    .line 104
    :cond_0
    const/16 v3, 0x29

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v4, v3

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "CHECKED"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = ? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "whereClause":Ljava/lang/String;
    const/16 v3, 0x2a

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 106
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .end local v1    # "whereArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .restart local v1    # "whereArgs":[Ljava/lang/String;
    const/16 v3, 0x2b

    const/4 v5, 0x1

    aput-boolean v5, v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "whereArgs":[Ljava/lang/String;
    .end local v2    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v3

    const/16 v5, 0x2c

    aput-boolean v7, v4, v5

    .line 111
    new-instance v5, Lbr/com/vansexception/VansException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v3, 0x2d

    aput-boolean v7, v4, v3

    throw v5
.end method

.method public static findLastInserted(Landroid/content/Context;Ljava/lang/String;)Lbr/com/bean/ItemShoppingList;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v9

    .line 136
    :try_start_0
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0x37

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 138
    const-string v1, "ITEMSHOPPINGLIST"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IDSHOPPINGLIST"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "DESCRIPTION"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UNITVALUE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "QUANTITY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "CHECKED"

    aput-object v4, v2, v3

    const-string v3, "DESCRIPTION = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x38

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 145
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/16 v0, 0x3f

    aput-boolean v10, v9, v0

    move-object v0, v8

    :goto_0
    return-object v0

    .line 140
    :cond_0
    const/16 v1, 0x3b

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v9, v1

    .line 142
    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ItemShoppingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/16 v1, 0x3c

    aput-boolean v10, v9, v1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    const/16 v1, 0x3d

    aput-boolean v10, v9, v1

    .line 148
    new-instance v1, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x3e

    aput-boolean v10, v9, v0

    throw v1
.end method

.method public static insert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lbr/com/bean/ItemShoppingList;)Lbr/com/bean/ItemShoppingList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 28
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    aput-boolean v4, v1, v4

    .line 29
    const-string v2, "IDSHOPPINGLIST"

    invoke-virtual {p2}, Lbr/com/bean/ItemShoppingList;->getIdShoppingList()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 30
    const-string v2, "DESCRIPTION"

    invoke-virtual {p2}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 31
    const-string v2, "UNITVALUE"

    invoke-virtual {p2}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 32
    const-string v2, "QUANTITY"

    invoke-virtual {p2}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 33
    const-string v2, "CHECKED"

    invoke-virtual {p2}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 36
    const-string v2, "ITEMSHOPPINGLIST"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 37
    invoke-static {p0, p1}, Lbr/com/dao/ItemShoppingListDAO;->selectLast(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbr/com/bean/ItemShoppingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    .line 39
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    throw v2
.end method

.method public static insert(Landroid/content/Context;Lbr/com/bean/ItemShoppingList;)Lbr/com/bean/ItemShoppingList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 44
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    .line 46
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0xc

    aput-boolean v5, v1, v3

    .line 47
    const-string v3, "IDSHOPPINGLIST"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getIdShoppingList()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0xd

    aput-boolean v5, v1, v3

    .line 48
    const-string v3, "DESCRIPTION"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xe

    aput-boolean v5, v1, v3

    .line 49
    const-string v3, "UNITVALUE"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 v3, 0xf

    aput-boolean v5, v1, v3

    .line 50
    const-string v3, "QUANTITY"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 v3, 0x10

    aput-boolean v5, v1, v3

    .line 51
    const-string v3, "CHECKED"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x11

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v1, v3

    .line 54
    const-string v3, "ITEMSHOPPINGLIST"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 55
    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->selectLast(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbr/com/bean/ItemShoppingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0x13

    aput-boolean v5, v1, v2

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    const/16 v2, 0x14

    aput-boolean v5, v1, v2

    .line 57
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x15

    aput-boolean v5, v1, v0

    throw v2
.end method

.method public static isAllItemsChecked(Landroid/content/Context;I)Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v11

    .line 180
    const/16 v0, 0x4e

    aput-boolean v9, v11, v0

    .line 181
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0x4f

    aput-boolean v9, v11, v1

    .line 182
    const-string v1, "ITEMSHOPPINGLIST"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "IDSHOPPINGLIST"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-string v4, "CHECKED"

    aput-object v4, v2, v3

    const-string v3, "IDSHOPPINGLIST = ?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x50

    aput-boolean v9, v11, v1

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x51

    aput-boolean v9, v11, v1

    move v8, v10

    .line 191
    .local v8, "is":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    const/16 v0, 0x5b

    aput-boolean v9, v11, v0

    return v8

    .line 185
    .end local v8    # "is":Z
    :cond_0
    const/4 v8, 0x1

    .restart local v8    # "is":Z
    const/16 v1, 0x52

    aput-boolean v9, v11, v1

    .line 187
    :goto_1
    if-nez v8, :cond_1

    const/16 v1, 0x53

    aput-boolean v9, v11, v1

    :goto_2
    const/16 v1, 0x56

    aput-boolean v9, v11, v1

    move v8, v10

    :goto_3
    const/16 v1, 0x57

    aput-boolean v9, v11, v1

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x58

    aput-boolean v9, v11, v1

    goto :goto_0

    .line 187
    :cond_1
    const-string v1, "CHECKED"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x54

    aput-boolean v9, v11, v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x55

    aput-boolean v9, v11, v1

    move v8, v9

    goto :goto_3

    .line 188
    :cond_3
    if-eqz v8, :cond_4

    const/16 v1, 0x59

    aput-boolean v9, v11, v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x5a

    aput-boolean v9, v11, v1

    goto :goto_0
.end method

.method private static numOfParameters(I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v3

    .line 264
    const-string v1, ""

    .line 265
    .local v1, "result":Ljava/lang/String;
    const/16 v4, 0x80

    aput-boolean v6, v3, v4

    move v0, v2

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v4, 0x81

    aput-boolean v6, v3, v4

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v4, 0x82

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x83

    aput-boolean v6, v3, v4

    return-object v2
.end method

.method public static returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ItemShoppingList;
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v7

    .line 196
    new-instance v0, Lbr/com/bean/ItemShoppingList;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "IDSHOPPINGLIST"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "DESCRIPTION"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNITVALUE"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const-string v5, "QUANTITY"

    const/16 v6, 0x5c

    aput-boolean v9, v7, v6

    .line 197
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x5d

    aput-boolean v9, v7, v6

    .line 196
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    const-string v6, "CHECKED"

    const/16 v8, 0x5e

    aput-boolean v9, v7, v8

    .line 197
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lbr/com/bean/ItemShoppingList;-><init>(IILjava/lang/String;FFZ)V

    .line 196
    const/16 v1, 0x5f

    aput-boolean v9, v7, v1

    return-object v0
.end method

.method public static select(Landroid/content/Context;I)Lbr/com/bean/ItemShoppingList;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v9

    .line 117
    :try_start_0
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0x2f

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 119
    const-string v1, "ITEMSHOPPINGLIST"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IDSHOPPINGLIST"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "DESCRIPTION"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UNITVALUE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "QUANTITY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "CHECKED"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/16 v0, 0x36

    aput-boolean v10, v9, v0

    move-object v0, v8

    :goto_0
    return-object v0

    .line 121
    :cond_0
    const/16 v1, 0x32

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v9, v1

    .line 123
    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ItemShoppingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/16 v1, 0x33

    aput-boolean v10, v9, v1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    const/16 v1, 0x34

    aput-boolean v10, v9, v1

    .line 129
    new-instance v1, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x35

    aput-boolean v10, v9, v0

    throw v1
.end method

.method public static selectAll(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v9

    .line 155
    :try_start_0
    const-string v7, ""

    const/16 v0, 0x40

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 157
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getItemListCheckedOrdenation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 161
    .local v7, "orderBy":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getItemListAlphabeticalOrdenation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x44

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 165
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    const-string v8, ""

    .line 168
    .local v8, "where":Ljava/lang/String;
    if-nez p1, :cond_2

    const/16 v0, 0x47

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 172
    :goto_2
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0x4a

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 173
    const-string v1, "ITEMSHOPPINGLIST"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IDSHOPPINGLIST"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "DESCRIPTION"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "UNITVALUE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "QUANTITY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "CHECKED"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDSHOPPINGLIST = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v1, 0x4b

    aput-boolean v10, v9, v1

    return-object v0

    .line 157
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "where":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x42

    const/4 v1, 0x1

    :try_start_1
    aput-boolean v1, v9, v0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECKED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getItemListCheckedOrdenation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "orderBy":Ljava/lang/String;
    const/16 v0, 0x43

    const/4 v1, 0x1

    aput-boolean v1, v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v0

    const/16 v1, 0x4c

    aput-boolean v10, v9, v1

    .line 175
    new-instance v1, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x4d

    aput-boolean v10, v9, v0

    throw v1

    .line 161
    :cond_1
    const/16 v0, 0x45

    const/4 v1, 0x1

    :try_start_2
    aput-boolean v1, v9, v0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DESCRIPTION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lbr/com/vansprefs/UserPreferences;->getItemListAlphabeticalOrdenation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x46

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    goto/16 :goto_1

    .line 168
    .restart local v8    # "where":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x48

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND DESCRIPTION LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x49

    const/4 v1, 0x1

    aput-boolean v1, v9, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public static selectAutoComplete(Landroid/content/Context;[Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v8

    .line 201
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x60

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v8, v1

    .line 204
    new-instance v1, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v1, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lbr/com/dao/DataBaseDAO;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 208
    .local v3, "selection":Ljava/lang/String;
    array-length v1, p1

    if-gtz v1, :cond_0

    const/16 v1, 0x61

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    .line 212
    :goto_0
    const-string v1, "ITEMSHOPPINGLIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "DESCRIPTION"

    aput-object v5, v2, v4

    const-string v5, "DESCRIPTION"

    const/4 v6, 0x0

    const-string v7, "DESCRIPTION asc"

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v4, 0x1

    aput-boolean v4, v8, v2

    .line 213
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x65

    const/4 v4, 0x1

    aput-boolean v4, v8, v2

    .line 214
    const-string v2, "DESCRIPTION"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x66

    const/4 v4, 0x1

    aput-boolean v4, v8, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v1

    const/16 v2, 0x67

    aput-boolean v10, v8, v2

    .line 219
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x68

    aput-boolean v10, v8, v1

    throw v2

    .line 208
    :cond_0
    const/16 v1, 0x62

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v8, v1

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DESCRIPTION not in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Lbr/com/dao/ItemShoppingListDAO;->numOfParameters(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x63

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/16 v2, 0x69

    aput-boolean v10, v8, v2

    return-object v1
.end method

.method private static selectLast(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbr/com/bean/ItemShoppingList;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v9

    .line 63
    :try_start_0
    const-string v1, "ITEMSHOPPINGLIST"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "IDSHOPPINGLIST"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "DESCRIPTION"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "UNITVALUE"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "QUANTITY"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "CHECKED"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id desc"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/16 v0, 0x1c

    aput-boolean v10, v9, v0

    move-object v0, v8

    :goto_0
    return-object v0

    .line 65
    :cond_0
    const/16 v1, 0x18

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v9, v1

    .line 66
    invoke-static {p0, v0}, Lbr/com/dao/ItemShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ItemShoppingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/16 v1, 0x19

    aput-boolean v10, v9, v1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    const/16 v1, 0x1a

    aput-boolean v10, v9, v1

    .line 71
    new-instance v1, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x1b

    aput-boolean v10, v9, v0

    throw v1
.end method

.method public static toString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v3

    .line 241
    const-string v0, ""

    .line 242
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x73

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v2

    .line 244
    const/4 v2, 0x0

    invoke-static {p0, v2, p1}, Lbr/com/dao/ItemShoppingListDAO;->selectAll(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    const/16 v4, 0x74

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 245
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x75

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 246
    invoke-static {p0, v2}, Lbr/com/dao/ItemShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ItemShoppingList;

    move-result-object v4

    const/16 v5, 0x76

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 247
    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v5

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    .local v1, "totalValue":F
    const/16 v5, 0x77

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Lbr/com/vansformat/CustomFloatFormat;->getSimpleFormatedValue(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v4

    float-to-double v6, v4

    invoke-static {p0, v6, v7}, Lbr/com/vansformat/CustomFloatFormat;->getMonetaryMaskedValue(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    const/16 v4, 0x78

    const/4 v5, 0x1

    aput-boolean v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v1    # "totalValue":F
    :catch_0
    move-exception v2

    const/16 v4, 0x7d

    aput-boolean v8, v3, v4

    .line 257
    new-instance v4, Lbr/com/vansexception/VansException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x7e

    aput-boolean v8, v3, v2

    throw v4

    .line 250
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x79

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x7a

    const/4 v4, 0x1

    aput-boolean v4, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :goto_1
    const/16 v2, 0x7f

    aput-boolean v8, v3, v2

    return-object v0

    .line 252
    :cond_1
    const/16 v2, 0x7b

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v3, v2

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f050052

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-double v4, v1

    invoke-static {p0, v4, v5}, Lbr/com/vansformat/CustomFloatFormat;->getMonetaryMaskedValue(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7c

    const/4 v4, 0x1

    aput-boolean v4, v3, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static update(Landroid/content/Context;Lbr/com/bean/ItemShoppingList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lbr/com/dao/ItemShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 226
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v2, 0x6a

    aput-boolean v8, v1, v2

    .line 228
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x6b

    aput-boolean v8, v1, v3

    .line 229
    const-string v3, "DESCRIPTION"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x6c

    aput-boolean v8, v1, v3

    .line 230
    const-string v3, "UNITVALUE"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getUnitValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 v3, 0x6d

    aput-boolean v8, v1, v3

    .line 231
    const-string v3, "QUANTITY"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getQuantity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 v3, 0x6e

    aput-boolean v8, v1, v3

    .line 232
    const-string v3, "CHECKED"

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x6f

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v1, v3

    .line 234
    const-string v3, "ITEMSHOPPINGLIST"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lbr/com/bean/ItemShoppingList;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const/16 v0, 0x72

    aput-boolean v8, v1, v0

    return-void

    .line 235
    :catch_0
    move-exception v0

    const/16 v2, 0x70

    aput-boolean v8, v1, v2

    .line 236
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x71

    aput-boolean v8, v1, v0

    throw v2
.end method

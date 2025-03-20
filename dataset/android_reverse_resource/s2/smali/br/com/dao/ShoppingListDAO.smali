.class public Lbr/com/dao/ShoppingListDAO;
.super Ljava/lang/Object;
.source "ShoppingListDAO.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final FIELD_DATELIST:Ljava/lang/String; = "DATELIST"

.field public static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final FIELD_NAME:Ljava/lang/String; = "NAME"

.field public static final TABLE_NAME:Ljava/lang/String; = "SHOPPINGLIST"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/dao/ShoppingListDAO;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x46cce8d3e9f68219L    # 1.1727079735728928E33

    const-string v2, "br/com/dao/ShoppingListDAO"

    const/16 v3, 0x3a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/dao/ShoppingListDAO;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
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

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 96
    :try_start_0
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v2, 0x27

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 97
    const-string v2, "SHOPPINGLIST"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v2, 0x28

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 98
    const-string v2, "ITEMSHOPPINGLIST"

    const-string v3, "IDSHOPPINGLIST = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x29

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 99
    invoke-static {p0, p1}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->cancelAlarme(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/16 v0, 0x2c

    aput-boolean v7, v1, v0

    return-void

    .line 101
    :catch_0
    move-exception v0

    const/16 v2, 0x2a

    aput-boolean v7, v1, v2

    .line 102
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x2b

    aput-boolean v7, v1, v0

    throw v2
.end method

.method public static deleteAll(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v2

    .line 80
    const/4 v0, 0x0

    const/16 v1, 0x1f

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 82
    invoke-static {p0}, Lbr/com/dao/ShoppingListDAO;->selectAll(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 84
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 85
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {p0, v1}, Lbr/com/dao/ShoppingListDAO;->delete(Landroid/content/Context;I)V

    const/16 v1, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    const/16 v3, 0x23

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v2, v3

    .line 88
    new-instance v3, Lbr/com/vansexception/VansException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x24

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    const/16 v3, 0x25

    aput-boolean v5, v2, v3

    throw v1

    .line 90
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 92
    const/16 v1, 0x26

    aput-boolean v5, v2, v1

    return-void
.end method

.method public static insert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lbr/com/bean/ShoppingList;)Lbr/com/bean/ShoppingList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    aput-boolean v6, v1, v6

    .line 22
    const-string v2, "NAME"

    invoke-virtual {p2}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 23
    const-string v2, "DATELIST"

    invoke-virtual {p2}, Lbr/com/bean/ShoppingList;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 25
    const-string v2, "SHOPPINGLIST"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 26
    invoke-static {p0, p1}, Lbr/com/dao/ShoppingListDAO;->selectLast(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbr/com/bean/ShoppingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    return-object v0

    .line 27
    :catch_0
    move-exception v0

    const/4 v2, 0x6

    aput-boolean v6, v1, v2

    .line 28
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x7

    aput-boolean v6, v1, v0

    throw v2
.end method

.method public static insert(Landroid/content/Context;Lbr/com/bean/ShoppingList;)Lbr/com/bean/ShoppingList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v6, v1, v2

    .line 34
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x9

    aput-boolean v6, v1, v3

    .line 35
    const-string v3, "NAME"

    invoke-virtual {p1}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    aput-boolean v6, v1, v3

    .line 36
    const-string v3, "DATELIST"

    invoke-virtual {p1}, Lbr/com/bean/ShoppingList;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v3, 0xb

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v1, v3

    .line 38
    const-string v3, "SHOPPINGLIST"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 39
    invoke-static {p0, v0}, Lbr/com/dao/ShoppingListDAO;->selectLast(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbr/com/bean/ShoppingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    .line 41
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xf

    aput-boolean v6, v1, v0

    throw v2
.end method

.method public static returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ShoppingList;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    new-instance v1, Lbr/com/bean/ShoppingList;

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "NAME"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    const-string v5, "DATELIST"

    const/16 v6, 0x31

    aput-boolean v8, v0, v6

    .line 142
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x32

    aput-boolean v8, v0, v6

    .line 141
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, p0, v2, v3, v4}, Lbr/com/bean/ShoppingList;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Date;)V

    const/16 v2, 0x33

    aput-boolean v8, v0, v2

    return-object v1
.end method

.method public static select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v9

    .line 63
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0x17

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v9, v1

    .line 65
    const-string v1, "SHOPPINGLIST"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "DATELIST"

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

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/16 v0, 0x1e

    aput-boolean v10, v9, v0

    move-object v0, v8

    :goto_0
    return-object v0

    .line 66
    :cond_0
    const/16 v1, 0x1a

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v9, v1

    .line 67
    invoke-static {p0, v0}, Lbr/com/dao/ShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ShoppingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/16 v1, 0x1b

    aput-boolean v10, v9, v1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    const/16 v1, 0x1c

    aput-boolean v10, v9, v1

    .line 73
    new-instance v1, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x1d

    aput-boolean v10, v9, v0

    throw v1
.end method

.method public static selectAll(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v8

    .line 109
    :try_start_0
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0x2d

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    .line 110
    const-string v1, "SHOPPINGLIST"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "DATELIST"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v1, 0x2e

    aput-boolean v9, v8, v1

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    const/16 v1, 0x2f

    aput-boolean v9, v8, v1

    .line 112
    new-instance v1, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x30

    aput-boolean v9, v8, v0

    throw v1
.end method

.method private static selectLast(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbr/com/bean/ShoppingList;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v9

    .line 48
    :try_start_0
    const-string v1, "SHOPPINGLIST"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "NAME"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "DATELIST"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id desc"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/16 v0, 0x16

    aput-boolean v10, v9, v0

    move-object v0, v8

    :goto_0
    return-object v0

    .line 49
    :cond_0
    const/16 v1, 0x12

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v9, v1

    .line 50
    invoke-static {p0, v0}, Lbr/com/dao/ShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ShoppingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/16 v1, 0x13

    aput-boolean v10, v9, v1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    const/16 v1, 0x14

    aput-boolean v10, v9, v1

    .line 56
    new-instance v1, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x15

    aput-boolean v10, v9, v0

    throw v1
.end method

.method public static update(Landroid/content/Context;Lbr/com/bean/ShoppingList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lbr/com/dao/ShoppingListDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 146
    new-instance v0, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v0, p0}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v2, 0x34

    aput-boolean v8, v1, v2

    .line 147
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x35

    aput-boolean v8, v1, v3

    .line 148
    const-string v3, "NAME"

    invoke-virtual {p1}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x36

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v1, v3

    .line 151
    const-string v3, "SHOPPINGLIST"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/16 v0, 0x39

    aput-boolean v8, v1, v0

    return-void

    .line 152
    :catch_0
    move-exception v0

    const/16 v2, 0x37

    aput-boolean v8, v1, v2

    .line 153
    new-instance v2, Lbr/com/vansexception/VansException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lbr/com/vansexception/VansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x38

    aput-boolean v8, v1, v0

    throw v2
.end method

.class public Lbr/com/dao/DataBaseDAO;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseDAO.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "LISTADECOMPRAS"

.field public static final DATABASE_VERSION:I = 0xf


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/dao/DataBaseDAO;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x297d6c4c32fac976L    # -5.453598375581603E108

    const-string v2, "br/com/dao/DataBaseDAO"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/dao/DataBaseDAO;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/dao/DataBaseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    const-string v1, "LISTADECOMPRAS"

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    iput-object p1, p0, Lbr/com/dao/DataBaseDAO;->context:Landroid/content/Context;

    .line 16
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

    invoke-static {}, Lbr/com/dao/DataBaseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    const-string v1, "CREATE TABLE SHOPPINGLIST(_id INTEGER PRIMARY KEY AUTOINCREMENT,NAME TEXT,DATELIST INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    .line 21
    const-string v1, "CREATE TABLE ITEMSHOPPINGLIST(_id INTEGER PRIMARY KEY AUTOINCREMENT, IDSHOPPINGLIST INTEGER, DESCRIPTION TEXT, UNITVALUE FLOAT, QUANTITY FLOAT, CHECKED VARCHAR(1));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    const/16 v3, 0xf

    const/16 v0, 0xd

    const/4 v4, 0x1

    invoke-static {}, Lbr/com/dao/DataBaseDAO;->$jacocoInit()[Z

    move-result-object v1

    .line 27
    if-le p3, v0, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 31
    :goto_0
    if-eq p3, v3, :cond_1

    const/4 v0, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    .line 55
    :goto_2
    const/16 v0, 0x18

    aput-boolean v4, v1, v0

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0

    .line 28
    const-string v0, "ALTER TABLE ITEMSHOPPINGLIST ADD COLUMN QUANTITY FLOAT DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    const/16 v2, 0x14

    const/4 v3, 0x1

    :try_start_2
    aput-boolean v3, v1, v2

    .line 51
    iget-object v2, p0, Lbr/com/dao/DataBaseDAO;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    const/16 v0, 0x16

    aput-boolean v4, v1, v0

    goto :goto_2

    .line 31
    :cond_1
    const/4 v0, 0x7

    const/4 v2, 0x1

    :try_start_3
    aput-boolean v2, v1, v0

    .line 33
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v0, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 34
    const-string v0, "CREATE TABLE SHOPPINGLISTX(_id INTEGER PRIMARY KEY AUTOINCREMENT,NAME TEXT,DATELIST INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 35
    const-string v0, "INSERT INTO SHOPPINGLISTX(_id,NAME,DATELIST) SELECT ID,NAME,DATELIST FROM SHOPPINGLIST;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 36
    const-string v0, "DROP TABLE IF EXISTS SHOPPINGLIST;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 39
    const-string v0, "CREATE TABLE ITEMSHOPPINGLISTX(_id INTEGER PRIMARY KEY AUTOINCREMENT, IDSHOPPINGLIST INTEGER, DESCRIPTION TEXT, UNITVALUE FLOAT, QUANTITY FLOAT, CHECKED VARCHAR(1));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 40
    const-string v0, "INSERT INTO ITEMSHOPPINGLISTX(_id,IDSHOPPINGLIST,DESCRIPTION,UNITVALUE,QUANTITY,CHECKED) SELECT ID,IDSHOPPINGLIST,DESCRIPTION,UNITVALUE,QUANTITY,CHECKED FROM ITEMSHOPPINGLIST;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 41
    const-string v0, "DROP TABLE IF EXISTS ITEMSHOPPINGLIST;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 43
    invoke-virtual {p0, p1}, Lbr/com/dao/DataBaseDAO;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 44
    const-string v0, "INSERT INTO SHOPPINGLIST(_id,NAME,DATELIST) SELECT _id,NAME,DATELIST FROM SHOPPINGLISTX;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 45
    const-string v0, "INSERT INTO ITEMSHOPPINGLIST(_id,IDSHOPPINGLIST,DESCRIPTION,UNITVALUE,QUANTITY,CHECKED) SELECT _id,IDSHOPPINGLIST,DESCRIPTION,UNITVALUE,QUANTITY,CHECKED FROM ITEMSHOPPINGLISTX;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 46
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/16 v0, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 53
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    throw v0
.end method

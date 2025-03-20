.class public Lbr/com/vansxmlhandler/ShoppingListXmlExporter;
.super Ljava/lang/Object;
.source "ShoppingListXmlExporter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private idShoppingList:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5a0c1a2b9666029dL    # -7.34862828724582E-126

    const-string v2, "br/com/vansxmlhandler/ShoppingListXmlExporter"

    const/16 v3, 0x2a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 25
    new-instance v1, Lbr/com/vansxmlhandler/CustomXmlBuilder;

    invoke-direct {v1}, Lbr/com/vansxmlhandler/CustomXmlBuilder;-><init>()V

    iput-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    aput-boolean v3, v0, v3

    .line 26
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    const-string v2, "LISTADECOMPRAS"

    invoke-virtual {v1, v2}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->start(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 28
    new-instance v1, Lbr/com/dao/DataBaseDAO;

    invoke-direct {v1, p1}, Lbr/com/dao/DataBaseDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lbr/com/dao/DataBaseDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    iput-object p1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->context:Landroid/content/Context;

    .line 30
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method private buildXmlTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->$jacocoInit()[Z

    move-result-object v2

    .line 52
    :try_start_0
    iget-object v3, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    invoke-virtual {v3, p1}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->openTable(Ljava/lang/String;)V

    const/16 v3, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->idShoppingList:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 54
    iget-object v4, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0xe

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 55
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v1, 0xf

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 65
    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 67
    iget-object v1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    invoke-virtual {v1}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->closeTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/16 v1, 0x19

    aput-boolean v8, v2, v1

    .line 73
    :goto_1
    const/16 v1, 0x1c

    aput-boolean v8, v2, v1

    return-void

    .line 55
    .end local v0    # "i":I
    :cond_0
    const/16 v4, 0x10

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v2, v4

    .line 56
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/16 v5, 0x11

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 58
    .restart local v0    # "i":I
    :goto_2
    iget-object v5, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    invoke-virtual {v5}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->openRow()V

    .line 59
    const/16 v5, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_1

    const/16 v5, 0x13

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 60
    iget-object v5, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x14

    const/4 v6, 0x1

    aput-boolean v6, v2, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 69
    :catch_0
    move-exception v1

    const/16 v3, 0x1a

    aput-boolean v8, v2, v3

    .line 70
    iget-object v3, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error exporting table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1b

    aput-boolean v8, v2, v1

    goto :goto_1

    .line 62
    :cond_1
    :try_start_2
    iget-object v5, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    invoke-virtual {v5}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->closeRow()V

    const/16 v5, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 63
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x16

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    goto :goto_2

    :cond_2
    const/16 v1, 0x17

    const/4 v4, 0x1

    aput-boolean v4, v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->$jacocoInit()[Z

    move-result-object v1

    .line 77
    iget-object v0, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const/16 v2, 0x1d

    aput-boolean v6, v1, v2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".slx"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    const/16 v2, 0x1e

    aput-boolean v6, v1, v2

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/16 v2, 0x1f

    aput-boolean v6, v1, v2

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    aput-boolean v6, v1, v3

    .line 83
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/16 v4, 0x21

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v1, v4

    .line 85
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-nez v3, :cond_0

    const/16 v2, 0x22

    aput-boolean v6, v1, v2

    .line 91
    :goto_0
    const/16 v2, 0x29

    aput-boolean v6, v1, v2

    return-object v0

    .line 87
    :cond_0
    const/16 v2, 0x23

    aput-boolean v6, v1, v2

    .line 88
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    const/16 v2, 0x24

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    if-nez v3, :cond_1

    const/16 v2, 0x25

    aput-boolean v6, v1, v2

    .line 90
    :goto_1
    const/16 v2, 0x28

    aput-boolean v6, v1, v2

    throw v0

    .line 87
    :cond_1
    const/16 v2, 0x26

    aput-boolean v6, v1, v2

    .line 88
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    const/16 v2, 0x27

    aput-boolean v6, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public export(I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbr/com/vansexception/VansException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    iget-object v0, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/dao/ShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 36
    iput p1, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->idShoppingList:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 38
    const-string v2, "SHOPPINGLIST"

    const-string v3, "_id"

    invoke-direct {p0, v2, v3}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->buildXmlTable(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 39
    const-string v2, "ITEMSHOPPINGLIST"

    const-string v3, "IDSHOPPINGLIST"

    invoke-direct {p0, v2, v3}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->buildXmlTable(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 41
    iget-object v2, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->customXmlBuilder:Lbr/com/vansxmlhandler/CustomXmlBuilder;

    invoke-virtual {v2}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->end()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 43
    invoke-direct {p0, v2, v0}, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    .line 46
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    const/16 v2, 0xa

    aput-boolean v5, v1, v2

    .line 45
    iget-object v2, p0, Lbr/com/vansxmlhandler/ShoppingListXmlExporter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    const/4 v0, 0x0

    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

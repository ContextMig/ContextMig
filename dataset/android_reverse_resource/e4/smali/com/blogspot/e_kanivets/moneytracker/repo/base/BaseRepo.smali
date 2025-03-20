.class public abstract Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;
.super Ljava/lang/Object;
.source "BaseRepo.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field protected dbHelper:Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2e199abef193e42fL    # 1.2871144054074125E-86

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->dbHelper:Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;

    .line 29
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected abstract contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Landroid/content/ContentValues;
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public create(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
    .locals 10
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v4

    .line 43
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->dbHelper:Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 45
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->getTable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v1, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 47
    .local v2, "id":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 48
    const-string/jumbo v5, "Couldn\'t create record: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    aput-boolean v8, v4, v8

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v0

    .line 52
    .local v0, "createdInstance":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    const-string/jumbo v5, "Created record: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const/4 v5, 0x2

    aput-boolean v8, v4, v5

    goto :goto_0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->create(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v1

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public delete(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Z
    .locals 14
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v7

    .line 94
    if-nez p1, :cond_0

    const/16 v4, 0x9

    aput-boolean v5, v7, v4

    .line 103
    .local v0, "args":[Ljava/lang/String;
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "rowsAffected":J
    :goto_0
    return v6

    .line 96
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "rowsAffected":J
    :cond_0
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->dbHelper:Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 98
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 99
    .restart local v0    # "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->getTable()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "id=?"

    invoke-virtual {v1, v4, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 101
    .restart local v2    # "rowsAffected":J
    const-string/jumbo v8, "%s %s deleted"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p1, v9, v6

    cmp-long v4, v2, v12

    if-nez v4, :cond_1

    const-string/jumbo v4, " didn\'t "

    const/16 v10, 0xa

    aput-boolean v5, v7, v10

    :goto_1
    aput-object v4, v9, v5

    invoke-static {v8, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    cmp-long v4, v2, v12

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    aput-boolean v5, v7, v4

    move v4, v5

    :goto_2
    const/16 v6, 0xe

    aput-boolean v5, v7, v6

    move v6, v4

    goto :goto_0

    .line 101
    :cond_1
    const-string/jumbo v4, " "

    const/16 v10, 0xb

    aput-boolean v5, v7, v10

    goto :goto_1

    .line 103
    :cond_2
    const/16 v4, 0xd

    aput-boolean v5, v7, v4

    move v4, v6

    goto :goto_2
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->delete(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected abstract getListFromCursor(Landroid/database/Cursor;)Ljava/util/List;
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
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract getTable()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v2

    .line 60
    const-string/jumbo v1, "id=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    .line 63
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic read(J)Ljava/lang/Object;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readAll()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-virtual {p0, v1, v1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v10

    .line 109
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->dbHelper:Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->getTable()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->getListFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 115
    .local v9, "recordList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    return-object v9
.end method

.method public update(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
    .locals 11
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v5

    .line 69
    if-nez p1, :cond_0

    const/4 v6, 0x5

    aput-boolean v9, v5, v6

    .line 82
    .local v0, "args":[Ljava/lang/String;
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "rowsAffected":J
    :goto_0
    return-object v4

    .line 71
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "rowsAffected":J
    :cond_0
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->dbHelper:Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;

    invoke-virtual {v6}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 73
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v0, v9, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    .line 74
    .restart local v0    # "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->getTable()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Landroid/content/ContentValues;

    move-result-object v7

    const-string/jumbo v8, "id=?"

    invoke-virtual {v1, v6, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v2, v6

    .line 76
    .restart local v2    # "rowsAffected":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 77
    const-string/jumbo v6, "Couldn\'t update record: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const/4 v6, 0x6

    aput-boolean v9, v5, v6

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v4

    .line 81
    .local v4, "updatedInstance":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    const-string/jumbo v6, "Updated record: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const/4 v6, 0x7

    aput-boolean v9, v5, v6

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;->update(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

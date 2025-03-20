.class public final Lcom/batch/android/k/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/batch/android/k/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/batch/android/k/d;

.field private e:Z

.field private f:J

.field private g:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v2, p0, Lcom/batch/android/k/e;->e:Z

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/k/e;->f:J

    .line 66
    iput-boolean v2, p0, Lcom/batch/android/k/e;->g:Z

    .line 88
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/k/e;->b:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/batch/android/k/d;

    iget-object v1, p0, Lcom/batch/android/k/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/k/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/k/e;->d:Lcom/batch/android/k/d;

    .line 95
    iget-object v0, p0, Lcom/batch/android/k/e;->d:Lcom/batch/android/k/d;

    invoke-virtual {v0}, Lcom/batch/android/k/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/batch/android/k/e;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/batch/android/k/e;->a:Lcom/batch/android/k/e;

    .line 72
    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/batch/android/k/e;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/batch/android/k/e;->a:Lcom/batch/android/k/e;

    .line 77
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/batch/android/k/e;

    invoke-direct {v0, p0}, Lcom/batch/android/k/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/batch/android/k/e;->a:Lcom/batch/android/k/e;

    .line 81
    :cond_0
    monitor-exit v1

    .line 83
    :cond_1
    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/k/a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 315
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/k/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/k/e;->j()V

    .line 341
    :goto_0
    return-void

    .line 323
    :cond_1
    :try_start_0
    const-string v1, "name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_2

    const-string v0, "n."

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "type"

    invoke-virtual {p3}, Lcom/batch/android/k/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v0, "changeset"

    iget-wide v2, p0, Lcom/batch/android/k/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attributes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0

    .line 323
    :cond_2
    const-string v0, "c."
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 337
    :catch_1
    move-exception v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User data editor - Error while inserting custom attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1, v0}, Lcom/batch/android/k/e;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {p1, p2, p3}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 637
    new-instance v0, Lcom/batch/android/k/c;

    invoke-direct {v0, p2}, Lcom/batch/android/k/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 345
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/k/e;->j()V

    .line 361
    :goto_0
    return-void

    .line 353
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attributes"

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    const-string v0, "n."

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User data editor - Error while deleting custom attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1, v0}, Lcom/batch/android/k/e;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 353
    :cond_2
    :try_start_1
    const-string v0, "c."
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 369
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/k/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/k/e;->j()V

    .line 396
    :goto_0
    return-void

    .line 377
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 378
    const-string v1, "collection"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "changeset"

    iget-wide v2, p0, Lcom/batch/android/k/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    iget-object v1, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tags"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    .line 393
    const-string v1, "User data editor - Error while adding tag \'%s\' in collection \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1, v0}, Lcom/batch/android/k/e;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 400
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/k/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/k/e;->j()V

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tags"

    const-string v2, "collection=? AND value=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 415
    const-string v1, "User data editor - Error while removing tag \'%s\' in collection \'%s\'"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1, v0}, Lcom/batch/android/k/e;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 642
    new-instance v0, Lcom/batch/android/k/c;

    const-string v1, "Invalid database state"

    invoke-direct {v0, v1}, Lcom/batch/android/k/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/k/e;->c()V
    :try_end_0
    .catch Lcom/batch/android/k/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 131
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "BEGIN TRANSACTION;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    .line 137
    iput-wide p1, p0, Lcom/batch/android/k/e;->f:J

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "User - Error while starting the SQLite transaction"

    invoke-direct {p0, v2, v1, v0}, Lcom/batch/android/k/e;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/k/e;->j()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/k/e;->b(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 215
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 216
    sget-object v1, Lcom/batch/android/k/a;->d:Lcom/batch/android/k/a;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/k/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/k/a;Z)V

    .line 217
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 208
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    sget-object v1, Lcom/batch/android/k/a;->c:Lcom/batch/android/k/a;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/k/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/k/a;Z)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/batch/android/k/a;->b:Lcom/batch/android/k/a;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/k/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/k/a;Z)V

    .line 231
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 236
    const-string v1, "value"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    sget-object v1, Lcom/batch/android/k/a;->f:Lcom/batch/android/k/a;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/k/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/k/a;Z)V

    .line 238
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 222
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    sget-object v1, Lcom/batch/android/k/a;->e:Lcom/batch/android/k/a;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/k/e;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/k/a;Z)V

    .line 224
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 289
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/k/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tags"

    const-string v2, "collection=?"

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    iput-boolean v5, p0, Lcom/batch/android/k/e;->g:Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/batch/android/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public b()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-boolean v1, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "COMMIT TRANSACTION;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batch/android/k/e;->e:Z

    .line 164
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/batch/android/k/e;->f:J

    .line 165
    iget-boolean v0, p0, Lcom/batch/android/k/e;->g:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v1

    .line 169
    const/4 v2, 0x1

    const-string v3, "User - Error while committing the SQLite transaction"

    invoke-direct {p0, v2, v3, v1}, Lcom/batch/android/k/e;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/k/e;->j()V

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ROLLBACK TRANSACTION;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    .line 187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/k/e;->f:J

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    const/4 v1, 0x1

    const-string v2, "User - Error while rolling back the SQLite transaction"

    invoke-direct {p0, v1, v2, v0}, Lcom/batch/android/k/e;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/k/e;->j()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/k/c;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/batch/android/k/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attributes"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tags"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z

    goto :goto_0
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/k/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tags"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z

    goto :goto_0
.end method

.method public f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/batch/android/k/e;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/batch/android/k/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attributes"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/k/e;->g:Z

    goto :goto_0
.end method

.method public g()Ljava/util/Map;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 425
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tags"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "collection"

    aput-object v5, v2, v4

    const-string v4, "value"

    aput-object v4, v2, v6

    const-string v7, "collection"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 439
    if-nez v4, :cond_1

    .line 492
    if-eqz v4, :cond_0

    .line 494
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v9

    .line 498
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v3

    move-object v2, v3

    .line 447
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    .line 451
    :try_start_1
    const-string v0, "collection"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 452
    const-string v0, "value"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 454
    if-eqz v3, :cond_3

    if-nez v5, :cond_4

    .line 456
    :cond_3
    const/4 v0, 0x1

    const-string v6, "Consistency error while reading tags: collection or value null, skipping"

    invoke-static {v0, v6}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 459
    :cond_4
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 461
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 463
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :cond_5
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    move-object v2, v3

    .line 470
    :cond_6
    if-eqz v1, :cond_2

    .line 472
    :try_start_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 477
    :goto_2
    const/4 v3, 0x1

    :try_start_4
    const-string v5, "Error while reading tag"

    invoke-static {v3, v5, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 486
    :catch_1
    move-exception v0

    .line 488
    const/4 v1, 0x1

    :try_start_5
    const-string v2, "Unexpected error while reading attributes"

    invoke-static {v1, v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 492
    if-eqz v4, :cond_7

    .line 494
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    move-object v0, v9

    .line 498
    goto :goto_0

    .line 481
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 483
    :try_start_6
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 492
    :cond_9
    if-eqz v4, :cond_7

    .line 494
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 492
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_a

    .line 494
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 475
    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public h()Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/k/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 503
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 505
    iget-object v0, p0, Lcom/batch/android/k/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attributes"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v10

    const-string v4, "type"

    aput-object v4, v2, v9

    const/4 v4, 0x2

    const-string v5, "value"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_4

    .line 518
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    :try_start_1
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/batch/android/k/a;->a(I)Lcom/batch/android/k/a;

    move-result-object v2

    .line 524
    if-eqz v2, :cond_0

    .line 529
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 530
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 537
    sget-object v0, Lcom/batch/android/k/e$1;->a:[I

    invoke-virtual {v2}, Lcom/batch/android/k/a;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 540
    :pswitch_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    :goto_1
    if-eqz v0, :cond_0

    .line 566
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    new-instance v4, Lcom/batch/android/k/b;

    invoke-direct {v4, v3, v0, v2}, Lcom/batch/android/k/b;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/batch/android/k/a;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 572
    const/4 v2, 0x1

    :try_start_2
    const-string v3, "Error while reading attribute"

    invoke-static {v2, v3, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 577
    :catch_1
    move-exception v0

    .line 579
    const/4 v2, 0x1

    :try_start_3
    const-string v3, "Unexpected error while reading attributes"

    invoke-static {v2, v3, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 583
    if-eqz v1, :cond_1

    .line 585
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_1
    :goto_2
    return-object v11

    .line 543
    :pswitch_1
    :try_start_4
    new-instance v0, Ljava/util/Date;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 583
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 585
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 547
    :pswitch_2
    :try_start_5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 548
    if-eqz v0, :cond_3

    move v0, v9

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v10

    goto :goto_3

    .line 552
    :pswitch_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 555
    :pswitch_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 583
    :cond_4
    if-eqz v1, :cond_1

    .line 585
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    const-string v0, "Attributes: {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p0}, Lcom/batch/android/k/e;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/k/b;

    .line 602
    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Lcom/batch/android/k/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 605
    :cond_0
    const-string v0, "\n}\nTag collections: {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p0}, Lcom/batch/android/k/e;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 608
    const-string v1, "\n\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v1, ": ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 614
    const-string v4, "\n\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 618
    :cond_1
    const-string v0, "\n\t]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 620
    :cond_2
    const-string v0, "\n}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug User Data dump:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/batch/android/c/o;->d(ZLjava/lang/String;)V

    .line 626
    return-object v0
.end method

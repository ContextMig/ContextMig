.class Lcom/google/android/gms/internal/zzatg$zza;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzatg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzbrF:Lcom/google/android/gms/internal/zzatg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatg;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    instance-of v1, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v1, :cond_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatg;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Opening the local database failed, dropping and recreating it"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatg;->zznV()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatg;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v1

    const-string v2, "Failed to delete corrupted local db file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatg;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v1

    const-string v2, "Failed to open local database. Events will bypass local storage"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatg;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v5, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const-string v0, "PRAGMA journal_mode=memory"

    invoke-virtual {p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatg$zza;->zzbrF:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatg;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "messages"

    const-string v3, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)"

    const-string v4, "type,entry"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method

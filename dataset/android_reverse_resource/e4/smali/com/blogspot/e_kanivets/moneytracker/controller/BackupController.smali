.class public Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
.super Ljava/lang/Object;
.source "BackupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;,
        Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;,
        Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnBackupListener;,
        Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;,
        Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;,
        Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxBackupAsyncTask;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private filesDir:Ljava/lang/String;

.field private formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1629283dfbc5962L    # -7.88300183343161E301

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/BackupController"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    .line 33
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->filesDir:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->getAppDbFileName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getAppDbFileName()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->filesDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/databases/database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getRestoreFileName()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->getAppDbFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private readAppDb()Ljava/io/FileInputStream;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v4

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->getAppDbFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "dbFile":Ljava/io/File;
    const/4 v3, 0x0

    const/16 v5, 0xb

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v4, v5

    .line 103
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .local v2, "fis":Ljava/io/FileInputStream;
    const/16 v3, 0xc

    aput-boolean v7, v4, v3

    .line 108
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    const/16 v3, 0xe

    aput-boolean v7, v4, v3

    return-object v2

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 v5, 0xd

    aput-boolean v7, v4, v5

    move-object v2, v3

    goto :goto_0
.end method

.method private readAppDbFileLength()J
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v1

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->getAppDbFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const/16 v4, 0xf

    aput-boolean v5, v1, v4

    .line 115
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    const/16 v4, 0x10

    aput-boolean v5, v1, v4

    goto :goto_0
.end method


# virtual methods
.method public fetchBackups(Lcom/dropbox/core/v2/DbxClientV2;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;)V
    .locals 4
    .param p1    # Lcom/dropbox/core/v2/DbxClientV2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v1

    .line 93
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;-><init>(Lcom/dropbox/core/v2/DbxClientV2;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;)V

    .line 94
    .local v0, "asyncTask":Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method public makeBackup(Lcom/dropbox/core/v2/DbxClientV2;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnBackupListener;)V
    .locals 11
    .param p1    # Lcom/dropbox/core/v2/DbxClientV2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnBackupListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v7

    .line 38
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->readAppDb()Ljava/io/FileInputStream;

    move-result-object v3

    .line 39
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->readAppDbFileLength()J

    move-result-wide v4

    .line 40
    .local v4, "fileLength":J
    if-nez v3, :cond_0

    aput-boolean v10, v7, v10

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxBackupAsyncTask;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatDateAndTime(J)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxBackupAsyncTask;-><init>(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;Ljava/io/FileInputStream;JLcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnBackupListener;)V

    .line 45
    .local v0, "asyncTask":Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxBackupAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxBackupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    const/4 v1, 0x2

    aput-boolean v10, v7, v1

    goto :goto_0
.end method

.method public restoreBackup(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;)V
    .locals 10
    .param p1    # Lcom/dropbox/core/v2/DbxClientV2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->$jacocoInit()[Z

    move-result-object v6

    .line 50
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->getRestoreFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "file":Ljava/io/File;
    const/4 v7, 0x3

    const/4 v8, 0x1

    :try_start_0
    aput-boolean v8, v6, v7

    .line 53
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x4

    aput-boolean v9, v6, v7

    move-object v3, v4

    .line 58
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    if-nez v3, :cond_1

    .line 59
    if-nez p3, :cond_0

    const/4 v5, 0x6

    aput-boolean v9, v6, v5

    .line 89
    :goto_1
    const/16 v5, 0x9

    aput-boolean v9, v6, v5

    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v7, 0x5

    aput-boolean v9, v6, v7

    move-object v3, v5

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    invoke-interface {p3, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;->onRestoreFailure(Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-boolean v9, v6, v5

    goto :goto_1

    .line 62
    .local v3, "finalOutputStream":Ljava/io/FileOutputStream;
    :cond_1
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;

    new-instance v5, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;

    invoke-direct {v5, p0, v3, p3, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;Ljava/io/FileOutputStream;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;Ljava/io/File;)V

    invoke-direct {v0, p1, p2, v3, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;-><init>(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;Ljava/io/FileOutputStream;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;)V

    .line 87
    .local v0, "asyncTask":Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v5, 0x8

    aput-boolean v9, v6, v5

    goto :goto_1
.end method

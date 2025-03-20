.class Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;
.super Landroid/os/AsyncTask;
.source "BackupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropboxRestoreBackupAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private backupName:Ljava/lang/String;

.field private dbClient:Lcom/dropbox/core/v2/DbxClientV2;

.field private listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private outputStream:Ljava/io/FileOutputStream;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1a959c5c495b5859L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;Ljava/io/FileOutputStream;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;)V
    .locals 3
    .param p4    # Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 223
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 225
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->backupName:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->outputStream:Ljava/io/FileOutputStream;

    .line 227
    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    .line 228
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->$jacocoInit()[Z

    move-result-object v3

    .line 232
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v3, v4

    .line 234
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->backupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v4

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v4, v5}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/files/FileMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v1, "info":Lcom/dropbox/core/v2/files/FileMetadata;
    const/4 v4, 0x2

    aput-boolean v7, v3, v4

    .line 239
    .end local v1    # "info":Lcom/dropbox/core/v2/files/FileMetadata;
    :goto_0
    if-nez v1, :cond_0

    const/4 v4, 0x4

    aput-boolean v7, v3, v4

    .line 240
    :goto_1
    return-object v2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x3

    aput-boolean v7, v3, v4

    move-object v1, v2

    goto :goto_0

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "success"

    const/4 v4, 0x5

    aput-boolean v7, v3, v4

    goto :goto_1

    .line 235
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->onPostExecute(Ljava/lang/String;)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 245
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    if-nez v1, :cond_0

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string/jumbo v1, "success"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;->onRestoreSuccess()V

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 250
    :goto_1
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxRestoreBackupAsyncTask;->listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;

    invoke-interface {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;->onRestoreFailure(Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

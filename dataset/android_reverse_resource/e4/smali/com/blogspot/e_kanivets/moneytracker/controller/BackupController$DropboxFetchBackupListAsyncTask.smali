.class Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;
.super Landroid/os/AsyncTask;
.source "BackupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropboxFetchBackupListAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private dbClient:Lcom/dropbox/core/v2/DbxClientV2;

.field private listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6e53952cbb25a933L    # -1.535450540696637E-223

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/DbxClientV2;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;)V
    .locals 3
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 180
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 182
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;

    .line 183
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 173
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->$jacocoInit()[Z

    move-result-object v3

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/Metadata;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v3, v5

    .line 191
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v5}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    const/4 v5, 0x2

    aput-boolean v7, v3, v5

    .line 196
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x4

    aput-boolean v7, v3, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/files/Metadata;

    .line 197
    .local v1, "entry":Lcom/dropbox/core/v2/files/Metadata;
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v6, 0x5

    aput-boolean v7, v3, v6

    goto :goto_1

    .line 192
    .end local v1    # "entry":Lcom/dropbox/core/v2/files/Metadata;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lcom/dropbox/core/DbxException;
    invoke-virtual {v0}, Lcom/dropbox/core/DbxException;->printStackTrace()V

    const/4 v5, 0x3

    aput-boolean v7, v3, v5

    goto :goto_0

    .line 200
    .end local v0    # "e":Lcom/dropbox/core/DbxException;
    :cond_0
    const/4 v5, 0x6

    aput-boolean v7, v3, v5

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 173
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->onPostExecute(Ljava/util/List;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->$jacocoInit()[Z

    move-result-object v0

    .line 205
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;

    if-nez v1, :cond_0

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 209
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$DropboxFetchBackupListAsyncTask;->listener:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;

    invoke-interface {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;->onBackupsFetched(Ljava/util/List;)V

    .line 210
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

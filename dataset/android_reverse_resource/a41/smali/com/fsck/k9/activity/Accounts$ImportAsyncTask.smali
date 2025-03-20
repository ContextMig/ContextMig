.class Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;
.super Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/activity/misc/ExtendedAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

.field private mIncludeGlobals:Z

.field private mOverwrite:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "includeGlobals"    # Z
    .param p4, "overwrite"    # Z
    .param p5, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/activity/Accounts;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2029
    .local p3, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;-><init>(Landroid/app/Activity;)V

    .line 2030
    iput-boolean p2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mIncludeGlobals:Z

    .line 2031
    iput-object p3, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mAccountUuids:Ljava/util/List;

    .line 2032
    iput-boolean p4, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mOverwrite:Z

    .line 2033
    iput-object p5, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mUri:Landroid/net/Uri;

    .line 2034
    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;ZLandroid/net/Uri;Lcom/fsck/k9/activity/Accounts$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Landroid/net/Uri;
    .param p6, "x5"    # Lcom/fsck/k9/activity/Accounts$1;

    .prologue
    .line 2020
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;-><init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;ZLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 2046
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 2048
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mIncludeGlobals:Z

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mAccountUuids:Ljava/util/List;

    iget-boolean v5, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mOverwrite:Z

    invoke-static {v2, v1, v3, v4, v5}, Lcom/fsck/k9/preferences/SettingsImporter;->importSettings(Landroid/content/Context;Ljava/io/InputStream;ZLjava/util/List;Z)Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2052
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2067
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .end local v1    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v2

    .line 2051
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .line 2052
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2055
    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2057
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2058
    .local v0, "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    const-string v2, "Exception during import"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2059
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 2060
    .end local v0    # "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    :catch_1
    move-exception v0

    .line 2061
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Couldn\'t open import file"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2062
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 2063
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Unknown error"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2065
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 2053
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2020
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2072
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/fsck/k9/activity/Accounts;

    .line 2075
    .local v0, "activity":Lcom/fsck/k9/activity/Accounts;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 2077
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->removeProgressDialog()V

    .line 2079
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2080
    .local v1, "filename":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    iget-boolean v2, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;->globalSettings:Z

    .line 2081
    .local v2, "globalSettings":Z
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    iget-object v4, v4, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;->importedAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 2082
    .local v3, "imported":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_0

    if-lez v3, :cond_2

    .line 2083
    :cond_0
    if-nez v3, :cond_1

    .line 2084
    const v4, 0x7f070364

    const v5, 0x7f07035e

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v0, v4, v5, v6}, Lcom/fsck/k9/activity/Accounts;->access$2500(Lcom/fsck/k9/activity/Accounts;II[Ljava/lang/Object;)V

    .line 2090
    :goto_0
    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$1000(Lcom/fsck/k9/activity/Accounts;)V

    .line 2096
    :goto_1
    return-void

    .line 2087
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    invoke-static {v0, v4, v1}, Lcom/fsck/k9/activity/Accounts;->access$2600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;Ljava/lang/String;)V

    goto :goto_0

    .line 2093
    :cond_2
    const v4, 0x7f07035b

    const v5, 0x7f07035c

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v0, v4, v5, v6}, Lcom/fsck/k9/activity/Accounts;->access$2500(Lcom/fsck/k9/activity/Accounts;II[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2020
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected showProgressDialog()V
    .locals 4

    .prologue
    .line 2038
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f07035a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2039
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f070366

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2041
    return-void
.end method

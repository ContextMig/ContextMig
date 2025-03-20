.class Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;
.super Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExportAsyncTask"
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
.field private mAccountUuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileName:Ljava/lang/String;

.field private mIncludeGlobals:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "includeGlobals"    # Z
    .param p4, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/activity/Accounts;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1960
    .local p3, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;-><init>(Landroid/app/Activity;)V

    .line 1961
    iput-boolean p2, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mIncludeGlobals:Z

    .line 1962
    iput-object p4, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mUri:Landroid/net/Uri;

    .line 1963
    if-eqz p3, :cond_0

    .line 1964
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mAccountUuids:Ljava/util/Set;

    .line 1966
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;Landroid/net/Uri;Lcom/fsck/k9/activity/Accounts$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Landroid/net/Uri;
    .param p5, "x4"    # Lcom/fsck/k9/activity/Accounts$1;

    .prologue
    .line 1951
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;-><init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 1978
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 1979
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mIncludeGlobals:Z

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mAccountUuids:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/preferences/SettingsExporter;->exportToFile(Landroid/content/Context;ZLjava/util/Set;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mFileName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    return-object v1

    .line 1982
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mIncludeGlobals:Z

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mAccountUuids:Ljava/util/Set;

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v4}, Lcom/fsck/k9/preferences/SettingsExporter;->exportToUri(Landroid/content/Context;ZLjava/util/Set;Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1985
    :catch_0
    move-exception v0

    .line 1986
    .local v0, "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    const-string v1, "Exception during export"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1987
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1951
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const v5, 0x7f070354

    const/4 v4, 0x0

    .line 1994
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/fsck/k9/activity/Accounts;

    .line 1997
    .local v0, "activity":Lcom/fsck/k9/activity/Accounts;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1999
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->removeProgressDialog()V

    .line 2001
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2002
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2003
    const v1, 0x7f070352

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v5, v1, v2}, Lcom/fsck/k9/activity/Accounts;->access$2500(Lcom/fsck/k9/activity/Accounts;II[Ljava/lang/Object;)V

    .line 2014
    :goto_0
    return-void

    .line 2006
    :cond_0
    const v1, 0x7f070353

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Lcom/fsck/k9/activity/Accounts;->access$2500(Lcom/fsck/k9/activity/Accounts;II[Ljava/lang/Object;)V

    goto :goto_0

    .line 2011
    :cond_1
    const v1, 0x7f070350

    const v2, 0x7f070351

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/activity/Accounts;->access$2500(Lcom/fsck/k9/activity/Accounts;II[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1951
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected showProgressDialog()V
    .locals 4

    .prologue
    .line 1970
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f07034f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1971
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f070355

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1973
    return-void
.end method

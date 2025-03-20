.class Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;
.super Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListImportContentsAsyncTask"
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
.field private mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/activity/Accounts;Landroid/net/Uri;)V
    .locals 0
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2104
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;-><init>(Landroid/app/Activity;)V

    .line 2106
    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mUri:Landroid/net/Uri;

    .line 2107
    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/activity/Accounts;Landroid/net/Uri;Lcom/fsck/k9/activity/Accounts$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Lcom/fsck/k9/activity/Accounts$1;

    .prologue
    .line 2099
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;-><init>(Lcom/fsck/k9/activity/Accounts;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2119
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2120
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2122
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/fsck/k9/preferences/SettingsImporter;->getImportStreamContents(Ljava/io/InputStream;)Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2125
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2137
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-object v3

    .line 2124
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    .line 2125
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2128
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2130
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 2131
    .local v0, "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    const-string v3, "Exception during export"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 2133
    .end local v0    # "e":Lcom/fsck/k9/preferences/SettingsImportExportException;
    :catch_1
    move-exception v0

    .line 2134
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Couldn\'t read content from URI %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mUri:Landroid/net/Uri;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2135
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 2126
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2099
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/fsck/k9/activity/Accounts;

    .line 2145
    .local v0, "activity":Lcom/fsck/k9/activity/Accounts;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 2147
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->removeProgressDialog()V

    .line 2149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2150
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Lcom/fsck/k9/activity/Accounts;->access$2700(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;Landroid/net/Uri;)V

    .line 2157
    :goto_0
    return-void

    .line 2152
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 2154
    .local v1, "filename":Ljava/lang/String;
    const v2, 0x7f07035b

    const v3, 0x7f07035c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/fsck/k9/activity/Accounts;->access$2500(Lcom/fsck/k9/activity/Accounts;II[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2099
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected showProgressDialog()V
    .locals 4

    .prologue
    .line 2111
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f07035a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2112
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f070361

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2113
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2114
    return-void
.end method

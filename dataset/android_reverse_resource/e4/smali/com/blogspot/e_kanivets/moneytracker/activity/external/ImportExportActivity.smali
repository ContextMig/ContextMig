.class public Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "ImportExportActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final DEFAULT_EXPORT_FILE_NAME:Ljava/lang/String; = "money_tracker.csv"


# instance fields
.field etImportData:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090059
    .end annotation
.end field

.field exportController:Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field importController:Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x785bfade40a84d5dL    # -7.401487318152951E-272

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->showToast(Ljava/lang/String;)V

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private shareExportedRecords(Ljava/io/File;)V
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 144
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v3

    const-string/jumbo v4, "Share Records"

    invoke-virtual {v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 145
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, "fileUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v3, "Share exported records"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    const/16 v3, 0x11

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method


# virtual methods
.method public exportRecords()V
    .locals 15
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090032
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v8

    .line 112
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v7

    const-string/jumbo v9, "Export Records"

    invoke-virtual {v7, v9}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 113
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->exportController:Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;

    const-wide/16 v10, 0x0

    const-wide v12, 0x7fffffffffffffffL

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->getRecordsForExport(JJ)Ljava/util/List;

    move-result-object v6

    .line 115
    .local v6, "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v9, "export"

    invoke-direct {v1, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v1, "exportDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 117
    .local v2, "exportDirCreated":Z
    const-string/jumbo v7, "ExportDirCreated: %b"

    new-array v9, v14, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "money_tracker.csv"

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v3, "outFile":Ljava/io/File;
    const/4 v7, 0x0

    const/16 v9, 0x9

    const/4 v10, 0x1

    :try_start_0
    aput-boolean v10, v8, v9

    .line 125
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v4, "pw":Ljava/io/PrintWriter;
    const/16 v7, 0xa

    aput-boolean v14, v8, v7

    .line 130
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :goto_0
    if-nez v4, :cond_1

    const/16 v7, 0xc

    aput-boolean v14, v8, v7

    .line 141
    :goto_1
    const/16 v7, 0x10

    aput-boolean v14, v8, v7

    .end local v3    # "outFile":Ljava/io/File;
    :goto_2
    return-void

    .line 121
    :cond_0
    const/16 v7, 0x8

    aput-boolean v14, v8, v7

    goto :goto_2

    .line 126
    .restart local v3    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 v9, 0xb

    aput-boolean v14, v8, v9

    move-object v4, v7

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v9, 0xd

    aput-boolean v14, v8, v9

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    .local v5, "record":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 134
    const/16 v9, 0xe

    aput-boolean v14, v8, v9

    goto :goto_3

    .line 136
    .end local v5    # "record":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 137
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 139
    invoke-direct {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->shareExportedRecords(Ljava/io/File;)V

    const/16 v7, 0xf

    aput-boolean v14, v8, v7

    goto :goto_1
.end method

.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    const v1, 0x7f0b0024

    aput-boolean v2, v0, v2

    return v1
.end method

.method public importRecords()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090033
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v3

    const-string/jumbo v4, "Import Records"

    invoke-virtual {v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 84
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->etImportData:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;Ljava/lang/String;)V

    .line 107
    .local v1, "importTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 49
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    .line 50
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;)V

    .line 51
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 57
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v3, 0x5

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->showHelp()V

    .line 65
    const/4 v1, 0x4

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x7f090014
        :pswitch_0
    .end packed-switch
.end method

.method public showHelp()V
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v2

    const-string/jumbo v3, "Show Help"

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 74
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f0e004e

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e004f

    .line 76
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 79
    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

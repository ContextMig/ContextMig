.class public Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "BackupActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final APP_KEY:Ljava/lang/String; = "5lqugcckdy9y6lj"


# instance fields
.field backupController:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field btnBackupNow:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090031
    .end annotation
.end field

.field private dbClient:Lcom/dropbox/core/v2/DbxClientV2;

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x9fe0a3d97d0d255L    # -2.761420486960607E260

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->fetchBackups()V

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->showToast(I)V

    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->logout()V

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->restoreBackup(Ljava/lang/String;)V

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->showToast(I)V

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private fetchBackups()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    const v1, 0x7f0e004a

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->startProgress(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->backupController:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$4;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->fetchBackups(Lcom/dropbox/core/v2/DbxClientV2;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnFetchBackupListListener;)V

    .line 188
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private logout()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writeDropboxAccessToken(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "5lqugcckdy9y6lj"

    invoke-static {p0, v1}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->btnBackupNow:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private restoreBackup(Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    const v1, 0x7f0e006f

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->startProgress(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->backupController:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$3;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->restoreBackup(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnRestoreBackupListener;)V

    .line 173
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public backupNow()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090031
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Make Backup"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 90
    const v1, 0x7f0e0054

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->startProgress(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->backupController:Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;->makeBackup(Lcom/dropbox/core/v2/DbxClientV2;Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController$OnBackupListener;)V

    .line 114
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    const v1, 0x7f0b0020

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V

    .line 53
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readDropboxAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "accessToken":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v3, "5lqugcckdy9y6lj"

    invoke-static {p0, v3}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    .line 61
    :goto_0
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v3

    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    return v3

    .line 56
    :cond_0
    new-instance v1, Lcom/dropbox/core/DbxRequestConfig;

    const-string/jumbo v3, "open_money_tracker"

    invoke-direct {v1, v3}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "config":Lcom/dropbox/core/DbxRequestConfig;
    new-instance v3, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {v3, v1, v0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 58
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->fetchBackups()V

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method protected initViews()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 66
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 67
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->btnBackupNow:Landroid/view/View;

    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readDropboxAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x6

    aput-boolean v1, v2, v4

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 72
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onResume()V

    .line 74
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    aput-boolean v7, v2, v3

    .line 85
    .local v0, "config":Lcom/dropbox/core/DbxRequestConfig;
    :goto_0
    const/16 v3, 0xc

    aput-boolean v7, v2, v3

    return-void

    .line 74
    .end local v0    # "config":Lcom/dropbox/core/DbxRequestConfig;
    :cond_0
    const/16 v3, 0x9

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 76
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writeDropboxAccessToken(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->btnBackupNow:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig;

    const-string/jumbo v3, "open_money_tracker"

    invoke-direct {v0, v3}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v0    # "config":Lcom/dropbox/core/DbxRequestConfig;
    new-instance v3, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->dbClient:Lcom/dropbox/core/v2/DbxClientV2;

    .line 80
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->fetchBackups()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/16 v3, 0xa

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "Error authenticating: %s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0xb

    aput-boolean v7, v2, v3

    goto :goto_0
.end method

.method public restoreBackupClicked(I)V
    .locals 7
    .annotation build Lbutterknife/OnItemClick;
        value = {
            0x7f09007e
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 118
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v3

    const-string/jumbo v4, "Restore backup"

    invoke-virtual {v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 119
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "backupName":Ljava/lang/String;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v3, 0x7f0e0091

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 123
    const v3, 0x7f0e0090

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 124
    const v3, 0x104000a

    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 130
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 132
    const/16 v3, 0xe

    aput-boolean v6, v2, v3

    return-void
.end method

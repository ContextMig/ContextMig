.class public Lcom/fsck/k9/activity/UpgradeDatabases;
.super Lcom/fsck/k9/activity/K9Activity;
.source "UpgradeDatabases.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_UPGRADE_DATABASES:Ljava/lang/String; = "upgrade_databases"

.field private static final EXTRA_START_INTENT:Ljava/lang/String; = "start_intent"


# instance fields
.field private mBroadcastReceiver:Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mPreferences:Lcom/fsck/k9/Preferences;

.field private mStartIntent:Landroid/content/Intent;

.field private mUpgradeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/UpgradeDatabases;)Lcom/fsck/k9/Preferences;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/UpgradeDatabases;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mPreferences:Lcom/fsck/k9/Preferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/UpgradeDatabases;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/UpgradeDatabases;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mUpgradeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/UpgradeDatabases;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/UpgradeDatabases;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->launchOriginalActivity()V

    return-void
.end method

.method public static actionUpgradeDatabases(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startIntent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-static {}, Lcom/fsck/k9/K9;->areDatabasesUpToDate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    .line 83
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/UpgradeDatabases;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "upgrade_databases"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "start_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    const v1, 0x20008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private decodeExtras()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "start_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mStartIntent:Landroid/content/Intent;

    .line 139
    return-void
.end method

.method private initializeLayout()V
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/UpgradeDatabases;->setContentView(I)V

    .line 130
    const v0, 0x7f0c0106

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/UpgradeDatabases;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mUpgradeText:Landroid/widget/TextView;

    .line 131
    return-void
.end method

.method private launchOriginalActivity()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->finish()V

    .line 185
    iget-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/UpgradeDatabases;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 146
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 147
    new-instance v0, Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;-><init>(Lcom/fsck/k9/activity/UpgradeDatabases;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mBroadcastReceiver:Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "DatabaseUpgradeService.upgradeProgress"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mIntentFilter:Landroid/content/IntentFilter;

    .line 150
    iget-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "DatabaseUpgradeService.upgradeComplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->decodeExtras()V

    .line 112
    invoke-static {}, Lcom/fsck/k9/K9;->areDatabasesUpToDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->launchOriginalActivity()V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mPreferences:Lcom/fsck/k9/Preferences;

    .line 119
    invoke-direct {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->initializeLayout()V

    .line 121
    invoke-direct {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->setupBroadcastReceiver()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mBroadcastReceiver:Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onPause()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onResume()V

    .line 158
    invoke-static {}, Lcom/fsck/k9/K9;->areDatabasesUpToDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/fsck/k9/activity/UpgradeDatabases;->launchOriginalActivity()V

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mBroadcastReceiver:Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;

    iget-object v2, p0, Lcom/fsck/k9/activity/UpgradeDatabases;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 168
    invoke-static {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->startService(Landroid/content/Context;)V

    goto :goto_0
.end method

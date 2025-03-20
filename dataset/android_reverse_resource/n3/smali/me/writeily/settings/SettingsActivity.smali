.class public Lme/writeily/settings/SettingsActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final fsSelectFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field settingsFragment:Lme/writeily/settings/SettingsFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/settings/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7f27df88db019f70L

    const-string v2, "me/writeily/settings/SettingsActivity"

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/settings/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 24
    new-instance v1, Lme/writeily/settings/SettingsActivity$1;

    invoke-direct {v1, p0}, Lme/writeily/settings/SettingsActivity$1;-><init>(Lme/writeily/settings/SettingsActivity;)V

    iput-object v1, p0, Lme/writeily/settings/SettingsActivity;->fsSelectFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public onAboutClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1f

    aput-boolean v3, v0, v2

    .line 99
    const-string v2, "writeily.intent.settings.ABOUT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x20

    aput-boolean v3, v0, v2

    .line 100
    invoke-virtual {p0, v1}, Lme/writeily/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f0c0061

    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    aput-boolean v7, v2, v4

    .line 40
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const v5, 0x7f0600b4

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-boolean v7, v2, v5

    .line 41
    new-instance v5, Lme/writeily/settings/SettingsFragment;

    invoke-direct {v5}, Lme/writeily/settings/SettingsFragment;-><init>()V

    iput-object v5, p0, Lme/writeily/settings/SettingsActivity;->settingsFragment:Lme/writeily/settings/SettingsFragment;

    const/4 v5, 0x4

    aput-boolean v7, v2, v5

    .line 43
    const v5, 0x7f06007b

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    aput-boolean v7, v2, v3

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v3, 0x8

    aput-boolean v7, v2, v3

    .line 50
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lme/writeily/settings/SettingsActivity;->setContentView(I)V

    const/16 v3, 0x9

    aput-boolean v7, v2, v3

    .line 52
    const v3, 0x7f0c005f

    invoke-virtual {p0, v3}, Lme/writeily/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 53
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-nez v1, :cond_1

    const/16 v3, 0xa

    aput-boolean v7, v2, v3

    .line 59
    :goto_1
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "writeily.intent.settings.ABOUT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    .local v0, "showAbout":Z
    if-nez v0, :cond_2

    const/16 v3, 0xe

    aput-boolean v7, v2, v3

    .line 62
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lme/writeily/settings/SettingsActivity;->settingsFragment:Lme/writeily/settings/SettingsFragment;

    const/16 v5, 0xf

    aput-boolean v7, v2, v5

    .line 63
    invoke-virtual {v3, v8, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    const/16 v4, 0x10

    aput-boolean v7, v2, v4

    .line 64
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    const/16 v3, 0x11

    aput-boolean v7, v2, v3

    .line 71
    :goto_2
    const/16 v3, 0x16

    aput-boolean v7, v2, v3

    return-void

    .line 43
    .end local v0    # "showAbout":Z
    .end local v1    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_0
    const/4 v3, 0x6

    aput-boolean v7, v2, v3

    .line 44
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lme/writeily/settings/SettingsActivity;->setTheme(I)V

    const/4 v3, 0x7

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 53
    .restart local v1    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_1
    const/16 v3, 0xb

    aput-boolean v7, v2, v3

    .line 54
    invoke-virtual {p0, v1}, Lme/writeily/settings/SettingsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v3, 0xc

    aput-boolean v7, v2, v3

    .line 55
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v3, 0xd

    aput-boolean v7, v2, v3

    goto :goto_1

    .line 66
    .restart local v0    # "showAbout":Z
    :cond_2
    const v3, 0x7f06004e

    invoke-virtual {p0, v3}, Lme/writeily/settings/SettingsActivity;->setTitle(I)V

    const/16 v3, 0x12

    aput-boolean v7, v2, v3

    .line 67
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    new-instance v4, Lme/writeily/settings/AboutFragment;

    invoke-direct {v4}, Lme/writeily/settings/AboutFragment;-><init>()V

    const/16 v5, 0x13

    aput-boolean v7, v2, v5

    .line 68
    invoke-virtual {v3, v8, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    const/16 v4, 0x14

    aput-boolean v7, v2, v4

    .line 69
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    const/16 v3, 0x15

    aput-boolean v7, v2, v3

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 80
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x18

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 77
    :pswitch_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 78
    const/16 v1, 0x17

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    iget-object v1, p0, Lme/writeily/settings/SettingsActivity;->fsSelectFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lme/writeily/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    .line 115
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 116
    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x22

    aput-boolean v3, v0, v2

    .line 107
    const-string v2, "filesystem_select_folder_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-boolean v3, v0, v2

    .line 108
    iget-object v2, p0, Lme/writeily/settings/SettingsActivity;->fsSelectFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lme/writeily/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    .line 109
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 110
    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onThemeChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x19

    aput-boolean v3, v0, v2

    .line 88
    const/high16 v2, 0x14010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x1a

    aput-boolean v3, v0, v2

    .line 89
    invoke-virtual {p0, v4, v4}, Lme/writeily/settings/SettingsActivity;->overridePendingTransition(II)V

    const/16 v2, 0x1b

    aput-boolean v3, v0, v2

    .line 90
    invoke-virtual {p0}, Lme/writeily/settings/SettingsActivity;->finish()V

    const/16 v2, 0x1c

    aput-boolean v3, v0, v2

    .line 92
    invoke-virtual {p0, v4, v4}, Lme/writeily/settings/SettingsActivity;->overridePendingTransition(II)V

    const/16 v2, 0x1d

    aput-boolean v3, v0, v2

    .line 93
    invoke-virtual {p0, v1}, Lme/writeily/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    return-void
.end method

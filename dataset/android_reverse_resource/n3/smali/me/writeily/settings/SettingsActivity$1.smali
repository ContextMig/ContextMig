.class Lme/writeily/settings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/settings/SettingsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/settings/SettingsActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x369ff92a0cff83e9L    # -2.859259200329236E45

    const-string v2, "me/writeily/settings/SettingsActivity$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/settings/SettingsActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/settings/SettingsActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/settings/SettingsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iput-object p1, p0, Lme/writeily/settings/SettingsActivity$1;->this$0:Lme/writeily/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filesystem_select_folder_dialog_tag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v4, v0, v4

    .line 33
    :goto_0
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void

    .line 27
    :cond_0
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 28
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 29
    iget-object v2, p0, Lme/writeily/settings/SettingsActivity$1;->this$0:Lme/writeily/settings/SettingsActivity;

    const v3, 0x7f0600b1

    invoke-virtual {v2, v3}, Lme/writeily/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "filesystem_file_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 30
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 31
    iget-object v1, p0, Lme/writeily/settings/SettingsActivity$1;->this$0:Lme/writeily/settings/SettingsActivity;

    iget-object v1, v1, Lme/writeily/settings/SettingsActivity;->settingsFragment:Lme/writeily/settings/SettingsFragment;

    invoke-virtual {v1}, Lme/writeily/settings/SettingsFragment;->updateRootDirSummary()V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

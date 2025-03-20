.class Lme/writeily/settings/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/settings/SettingsFragment;->setUpStorageDirPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/settings/SettingsFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/settings/SettingsFragment$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5a93805d6fba962eL

    const-string v2, "me/writeily/settings/SettingsFragment$3"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/settings/SettingsFragment$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/settings/SettingsFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    iput-object p1, p0, Lme/writeily/settings/SettingsFragment$3;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    iget-object v1, p0, Lme/writeily/settings/SettingsFragment$3;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-virtual {v1}, Lme/writeily/settings/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    aput-boolean v5, v0, v5

    .line 92
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v5, v0, v3

    .line 93
    const-string v3, "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

    const-string v4, "FILESYSTEM_SELECT_FOLDER_ACCESS_TYPE"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-boolean v5, v0, v3

    .line 94
    new-instance v3, Lme/writeily/dialog/FilesystemDialog;

    invoke-direct {v3}, Lme/writeily/dialog/FilesystemDialog;-><init>()V

    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    .line 95
    invoke-virtual {v3, v2}, Lme/writeily/dialog/FilesystemDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    .line 96
    const-string v2, "filesystem_select_folder_dialog_tag"

    invoke-virtual {v3, v1, v2}, Lme/writeily/dialog/FilesystemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    return v5
.end method

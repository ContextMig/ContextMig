.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

.field final synthetic val$statisticsSetting:Landroid/preference/SwitchPreference;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c4a99bf4f26ef26L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;Landroid/preference/SwitchPreference;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->val$statisticsSetting:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->$jacocoInit()[Z

    move-result-object v0

    .line 259
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->val$statisticsSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v4, v0, v4

    .line 261
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09009b

    invoke-static {v1, v2, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/MessageUtils;->showToast(Landroid/content/Context;II)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 267
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return v4

    .line 265
    :cond_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$4;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09009a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/MessageUtils;->showToast(Landroid/content/Context;II)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5b8be9395e210a88L    # -4.422212018593244E-133

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;->$jacocoInit()[Z

    move-result-object v0

    .line 274
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

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

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;->$jacocoInit()[Z

    move-result-object v0

    .line 278
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090033

    const v3, 0x7f090039

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

    invoke-static {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;)Lrx/Observable;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/MessageUtils;->showAlertDialog(Landroid/content/Context;IILrx/Observable;)V

    .line 279
    const/4 v1, 0x0

    aput-boolean v5, v0, v5

    return v1
.end method

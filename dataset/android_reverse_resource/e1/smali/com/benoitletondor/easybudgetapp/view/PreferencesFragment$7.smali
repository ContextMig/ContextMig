.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

.field final synthetic val$updateNotifPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x23e3b6e93649f10dL    # -5.139749904727639E135

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$7"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->$jacocoInit()[Z

    move-result-object v0

    .line 301
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->val$updateNotifPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->$jacocoInit()[Z

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;->val$updateNotifPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setUserAllowUpdatePushes(Landroid/content/Context;Z)V

    .line 306
    aput-boolean v3, v0, v3

    return v3
.end method

.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/settings/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1b2586f8499ddfb2L    # -6.704662328126545E177

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$4"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->$jacocoInit()[Z

    move-result-object v0

    .line 164
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->$jacocoInit()[Z

    move-result-object v0

    .line 167
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v5, v0, v5

    .line 168
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 172
    :goto_0
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lchan/android/app/pocketnote/app/settings/ChangePasswordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;
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

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5ebb412be9d53701L    # 2.1780975130175444E148

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$7"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    new-instance v1, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 213
    new-instance v2, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;

    invoke-direct {v2, p0, v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->setOnChangeNameListener(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 228
    iget-object v2, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "username_dialog"

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method

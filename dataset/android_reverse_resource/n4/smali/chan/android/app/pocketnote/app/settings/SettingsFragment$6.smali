.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;
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

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x8c2498ff96dd02aL

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$6"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->$jacocoInit()[Z

    move-result-object v0

    .line 186
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

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

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->$jacocoInit()[Z

    move-result-object v0

    .line 189
    const-string v1, "Change photo"

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->newInstance(Ljava/lang/String;Ljava/util/List;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 190
    new-instance v2, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->setPickItemListener(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 202
    iget-object v2, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "photo_dialog"

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method

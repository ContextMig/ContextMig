.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x717afb48d3c5ce39L

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$6$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;->$jacocoInit()[Z

    move-result-object v0

    .line 190
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPick(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;->$jacocoInit()[Z

    move-result-object v1

    .line 193
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$200()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Take photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aput-boolean v3, v1, v3

    .line 194
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;

    iget-object v0, v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$300(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 200
    :goto_0
    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    return-void

    .line 196
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 197
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 198
    iget-object v2, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

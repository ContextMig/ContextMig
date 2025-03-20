.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;

.field final synthetic val$d:Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6c87f8b51e8d6adL    # -8.136859356514217E275

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$7$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->val$d:Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->$jacocoInit()[Z

    move-result-object v0

    .line 223
    const-string v1, "Anonymous"

    invoke-static {v1}, Lchan/android/app/pocketnote/app/AppPreferences;->saveUserName(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 224
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->val$d:Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->dismiss()V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 225
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$400(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onSave(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->$jacocoInit()[Z

    move-result-object v0

    .line 216
    invoke-static {p1}, Lchan/android/app/pocketnote/app/AppPreferences;->saveUserName(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 217
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->val$d:Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->dismiss()V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 218
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$400(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6e9ace7ec1ce0a71L    # 6.201530265688704E224

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$2"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    invoke-static {p3}, Lchan/android/app/pocketnote/app/AppPreferences;->saveDefaultSortBy(I)V

    .line 126
    if-ne p3, v3, :cond_0

    aput-boolean v3, v0, v3

    .line 127
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$000(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 131
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$000(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/Spinner;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 136
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

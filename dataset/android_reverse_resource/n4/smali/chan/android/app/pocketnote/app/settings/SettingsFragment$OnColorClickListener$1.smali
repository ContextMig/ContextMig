.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x469fb46dff1b450fL    # 1.6076245230917542E32

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 319
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPick(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 322
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;->this$1:Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->access$500(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    aput-boolean v2, v0, v2

    .line 323
    invoke-static {p1}, Lchan/android/app/pocketnote/app/AppPreferences;->saveDefaultColor(I)V

    .line 324
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

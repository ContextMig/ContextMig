.class Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnColorClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3c5e4b1552b132f3L    # -6.3795131226249792E17

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 313
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;Lchan/android/app/pocketnote/app/settings/SettingsFragment$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 313
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 317
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;->this$0:Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 318
    new-instance v2, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;

    invoke-direct {v2}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 319
    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener$1;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;)V

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->setOnPickColorListener(Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 326
    sget-object v3, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void
.end method

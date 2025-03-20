.class Lme/writeily/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/settings/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/settings/SettingsFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/settings/SettingsFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x39c9578bca672d9fL    # -1.7951535454633648E30

    const-string v2, "me/writeily/settings/SettingsFragment$2"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/settings/SettingsFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/settings/SettingsFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iput-object p1, p0, Lme/writeily/settings/SettingsFragment$2;->this$0:Lme/writeily/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment$2;->$jacocoInit()[Z

    move-result-object v2

    .line 72
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment$2;->this$0:Lme/writeily/settings/SettingsFragment;

    iget-object v0, v0, Lme/writeily/settings/SettingsFragment;->mCallback:Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    aput-boolean v1, v2, v1

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment$2;->this$0:Lme/writeily/settings/SettingsFragment;

    iget-object v0, v0, Lme/writeily/settings/SettingsFragment;->mCallback:Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;

    invoke-interface {v0}, Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;->onAboutClicked()V

    .line 77
    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

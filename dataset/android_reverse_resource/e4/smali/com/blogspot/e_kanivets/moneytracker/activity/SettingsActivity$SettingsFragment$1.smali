.class Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3b2a2f9339a796ffL    # -4.120578278280145E23

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    const-string/jumbo v1, "%s"

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 157
    aput-boolean v3, v0, v3

    return v3
.end method

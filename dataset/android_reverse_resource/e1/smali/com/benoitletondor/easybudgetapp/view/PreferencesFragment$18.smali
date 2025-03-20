.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->refreshPremiumPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5e8d5eefebcff368L    # 2.9340289098648688E147

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$18"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;->$jacocoInit()[Z

    move-result-object v0

    .line 573
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

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
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;->$jacocoInit()[Z

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$200(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    .line 578
    const/4 v1, 0x0

    aput-boolean v2, v0, v2

    return v1
.end method

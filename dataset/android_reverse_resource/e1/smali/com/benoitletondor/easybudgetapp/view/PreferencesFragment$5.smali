.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->onCreate(Landroid/os/Bundle;)V
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x717d904e5941317bL    # -8.847637475312794E-239

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$5"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->$jacocoInit()[Z

    move-result-object v0

    .line 192
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->$jacocoInit()[Z

    move-result-object v1

    .line 196
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    invoke-direct {v2}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;-><init>()V

    invoke-static {v0, v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$002(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    aput-boolean v4, v1, v4

    .line 197
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$000(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    move-result-object v2

    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "SelectCurrency"

    invoke-virtual {v2, v0, v3}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    return v0
.end method

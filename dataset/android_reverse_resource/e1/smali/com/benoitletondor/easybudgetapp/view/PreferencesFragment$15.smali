.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6a6efa716701a9f8L

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$15"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;->$jacocoInit()[Z

    move-result-object v0

    .line 510
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;->$jacocoInit()[Z

    move-result-object v0

    .line 514
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080083

    aput-boolean v5, v0, v5

    .line 515
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080082

    const/4 v3, 0x2

    aput-boolean v5, v0, v3

    .line 516
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080060

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;)V

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 517
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 525
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 527
    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    return v1
.end method

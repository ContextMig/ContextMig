.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x72efe70d7fb1e192L    # -9.209173160005635E-246

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$19"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->$jacocoInit()[Z

    move-result-object v0

    .line 584
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->$jacocoInit()[Z

    move-result-object v1

    .line 588
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040034

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-boolean v6, v1, v6

    .line 589
    const v0, 0x7f0f00ba

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v3, 0x2

    aput-boolean v6, v1, v3

    .line 591
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0800da

    const/4 v5, 0x3

    aput-boolean v6, v1, v5

    .line 592
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800d9

    const/4 v5, 0x4

    aput-boolean v6, v1, v5

    .line 593
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x5

    aput-boolean v6, v1, v4

    .line 594
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800d6

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;

    invoke-direct {v4, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;Landroid/widget/EditText;)V

    const/4 v5, 0x6

    aput-boolean v6, v1, v5

    .line 595
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08003d

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$1;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;)V

    const/4 v5, 0x7

    aput-boolean v6, v1, v5

    .line 638
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/16 v3, 0x8

    aput-boolean v6, v1, v3

    .line 647
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/16 v3, 0x9

    aput-boolean v6, v1, v3

    .line 650
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$3;

    invoke-direct {v3, p0, v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 662
    const/4 v0, 0x0

    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    return v0
.end method

.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;
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

.field final synthetic val$limitWarningPreference:Landroid/preference/Preference;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x47bdaa28926cd69cL    # -1.0776531612099967E-37

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$6"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->val$limitWarningPreference:Landroid/preference/Preference;

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->$jacocoInit()[Z

    move-result-object v1

    .line 213
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040035

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-boolean v6, v1, v6

    .line 214
    const v0, 0x7f0f00bb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v3, 0x2

    aput-boolean v6, v1, v3

    .line 215
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v4, "low_money_warning_amount"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    aput-boolean v6, v1, v3

    .line 216
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v3, 0x4

    aput-boolean v6, v1, v3

    .line 218
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x5

    aput-boolean v6, v1, v4

    .line 219
    const v4, 0x7f080034

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v4, 0x6

    aput-boolean v6, v1, v4

    .line 220
    const v4, 0x7f080033

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v4, 0x7

    aput-boolean v6, v1, v4

    .line 221
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x8

    aput-boolean v6, v1, v2

    .line 222
    const v2, 0x7f08003d

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$1;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;)V

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0x9

    aput-boolean v6, v1, v2

    .line 230
    const v2, 0x7f080060

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;

    invoke-direct {v4, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    .line 269
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v6, v1, v3

    .line 272
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;

    invoke-direct {v3, p0, v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 284
    const/4 v0, 0x0

    const/16 v2, 0xc

    aput-boolean v6, v1, v2

    return v0
.end method

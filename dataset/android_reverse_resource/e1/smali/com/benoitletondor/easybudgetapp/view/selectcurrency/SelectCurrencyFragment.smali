.class public Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SelectCurrencyFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CURRENCY_ISO_EXTRA:Ljava/lang/String; = "currency.iso.key"

.field public static final CURRENCY_SELECTED_INTENT:Ljava/lang/String; = "currency.selected"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x269524df60a5f455L    # 7.996309869699951E-123

    const-string v2, "com/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setupRecyclerView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 113
    const v0, 0x7f0f00cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 114
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 117
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;Landroid/support/v7/widget/RecyclerView;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    const/16 v3, 0xd

    aput-boolean v4, v1, v3

    .line 136
    invoke-virtual {v2, v0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 91
    invoke-direct {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->setupRecyclerView(Landroid/view/View;)V

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 94
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 96
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x7

    aput-boolean v4, v0, v3

    .line 98
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 99
    const v1, 0x7f0800b3

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 101
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    aput-boolean v3, v1, v3

    .line 82
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const v0, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 80
    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->setupRecyclerView(Landroid/view/View;)V

    .line 82
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

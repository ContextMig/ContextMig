.class public Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectCurrencyRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$SeparatorViewHolder;,
        Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TYPE_MAIN_CURRENCY:I = 0x0

.field private static final TYPE_SECONDARY_CURRENCY:I = 0x2

.field private static final TYPE_SEPARATOR:I = 0x1


# instance fields
.field private final mainCurrencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private final secondaryCurrencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x790b07bdac5ba0bL

    const-string v2, "com/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter"

    const/16 v3, 0x1d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Currency;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Currency;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->secondaryCurrencies:Ljava/util/List;

    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->secondaryCurrencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 126
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 128
    const/4 v0, 0x0

    const/16 v3, 0x14

    aput-boolean v1, v2, v3

    .line 136
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 132
    const/16 v0, 0x15

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x2

    const/16 v3, 0x16

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public getSelectedCurrencyPosition(Landroid/content/Context;)I
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 149
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v0

    const/16 v2, 0x17

    aput-boolean v3, v1, v2

    .line 151
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0x18

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x1a

    aput-boolean v3, v1, v2

    return v0

    :cond_0
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->secondaryCurrencies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x19

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    check-cast p1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->onBindViewHolder(Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;I)V

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBindViewHolder(Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 89
    iget-boolean v0, p1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->separator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    aput-boolean v5, v2, v0

    .line 115
    :goto_0
    const/16 v0, 0x12

    aput-boolean v5, v2, v0

    return-void

    .line 89
    :cond_0
    const/16 v0, 0x8

    aput-boolean v5, v2, v0

    .line 91
    iget v0, p1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    const/16 v1, 0x9

    aput-boolean v5, v2, v1

    :goto_1
    const/16 v1, 0xb

    aput-boolean v5, v2, v1

    .line 93
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0xc

    aput-boolean v5, v2, v3

    .line 95
    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->selectedIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/16 v4, 0xd

    aput-boolean v5, v2, v4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0xf

    aput-boolean v5, v2, v1

    .line 96
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->currencyTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getCurrencyDisplayName(Ljava/util/Currency;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    .line 97
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;Ljava/util/Currency;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x11

    aput-boolean v5, v2, v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->secondaryCurrencies:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->mainCurrencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    goto :goto_1

    .line 95
    :cond_2
    const/4 v1, 0x4

    const/16 v4, 0xe

    aput-boolean v5, v2, v4

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;

    move-result-object v1

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 74
    if-nez p2, :cond_0

    aput-boolean v3, v1, v3

    .line 76
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040051

    invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 77
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;

    invoke-direct {v0, v2, p2}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;I)V

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 82
    :goto_1
    return-object v0

    .line 74
    :cond_0
    if-ne p2, v0, :cond_1

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040052

    invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 82
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;

    invoke-direct {v0, v2, p2, v3}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;IZ)V

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    goto :goto_1
.end method

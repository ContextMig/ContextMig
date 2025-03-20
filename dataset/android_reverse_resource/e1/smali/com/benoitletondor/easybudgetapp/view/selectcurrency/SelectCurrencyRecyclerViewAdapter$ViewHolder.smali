.class public Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectCurrencyRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public currencyTitle:Landroid/widget/TextView;

.field public selectedIndicator:Landroid/widget/ImageView;

.field public separator:Z

.field public type:I

.field public view:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x862cf0ecf2f7d5bL

    const-string v2, "com/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;IZ)V

    .line 183
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 167
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 169
    iput-boolean p3, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->separator:Z

    .line 170
    iput p2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->type:I

    .line 172
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 178
    :goto_0
    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    return-void

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    aput-boolean v2, v1, v2

    .line 175
    const v0, 0x7f0f00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->currencyTitle:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 176
    const v0, 0x7f0f00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;->selectedIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    goto :goto_0
.end method

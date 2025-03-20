.class public Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExpensesRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public final expenseAmountTextView:Landroid/widget/TextView;

.field public final expenseTitleTextView:Landroid/widget/TextView;

.field public final positiveIndicator:Landroid/widget/ImageView;

.field public final recurringIndicator:Landroid/view/ViewGroup;

.field public final recurringIndicatorTextview:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x36a16bc6394b810L

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 317
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 319
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 320
    const v0, 0x7f0f00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->expenseTitleTextView:Landroid/widget/TextView;

    aput-boolean v2, v1, v2

    .line 321
    const v0, 0x7f0f00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->expenseAmountTextView:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 322
    const v0, 0x7f0f00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->recurringIndicator:Landroid/view/ViewGroup;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 323
    const v0, 0x7f0f00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->recurringIndicatorTextview:Landroid/widget/TextView;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 324
    const v0, 0x7f0f00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->positiveIndicator:Landroid/widget/ImageView;

    .line 325
    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    return-void
.end method

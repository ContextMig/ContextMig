.class Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;
.super Landroid/os/AsyncTask;
.source "SelectCurrencyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->setupRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/support/v4/util/Pair",
        "<",
        "Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x36aa12b09cbb219aL    # -1.9559531007724623E45

    const-string v2, "com/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/support/v4/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getMainAvailableCurrencies()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getOtherAvailableCurrencies()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;-><init>(Ljava/util/List;Ljava/util/List;)V

    aput-boolean v4, v0, v4

    .line 123
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->getSelectedCurrencyPosition(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->doInBackground([Ljava/lang/Void;)Landroid/support/v4/util/Pair;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Landroid/support/v4/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->$jacocoInit()[Z

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 131
    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v3, :cond_0

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 135
    :goto_0
    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    return-void

    .line 131
    :cond_0
    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 133
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    check-cast p1, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment$1;->onPostExecute(Landroid/support/v4/util/Pair;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

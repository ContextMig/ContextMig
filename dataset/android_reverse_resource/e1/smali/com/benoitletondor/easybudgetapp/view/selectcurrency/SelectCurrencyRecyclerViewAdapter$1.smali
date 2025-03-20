.class Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "SelectCurrencyRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->onBindViewHolder(Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;

.field final synthetic val$currency:Ljava/util/Currency;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f9747288360c6e0L    # -2.2900931504504252E79

    const-string v2, "com/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;Ljava/util/Currency;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->val$currency:Ljava/util/Currency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->val$currency:Ljava/util/Currency;

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->setUserCurrency(Landroid/content/Context;Ljava/util/Currency;)V

    aput-boolean v4, v0, v4

    .line 105
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "currency.selected"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 109
    const-string v2, "currency.iso.key"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyRecyclerViewAdapter$1;->val$currency:Ljava/util/Currency;

    invoke-virtual {v3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 112
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void
.end method

.class Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;
.super Ljava/lang/Object;
.source "ExpensesRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->onBindViewHolder(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2abd554cbe0d37bbL    # 8.185419998298209E-103

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;->$jacocoInit()[Z

    move-result-object v0

    .line 285
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;->$jacocoInit()[Z

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 290
    aput-boolean v2, v0, v2

    return v2
.end method

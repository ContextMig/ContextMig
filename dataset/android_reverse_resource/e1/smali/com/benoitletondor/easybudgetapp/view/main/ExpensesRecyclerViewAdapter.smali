.class public Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExpensesRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private date:Ljava/util/Date;

.field private expenses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x26111da6d2b26ddeL

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter"

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 51
    const-class v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$assertionsDisabled:Z

    const/16 v0, 0x31

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x30

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/benoitletondor/easybudgetapp/model/db/DB;Ljava/util/Date;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/benoitletondor/easybudgetapp/model/db/DB;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->activity:Landroid/app/Activity;

    .line 69
    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->date:Ljava/util/Date;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 70
    invoke-virtual {p2, p3}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getExpensesForDay(Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->expenses:Ljava/util/List;

    .line 71
    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->activity:Landroid/app/Activity;

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public addExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->expenses:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 131
    invoke-virtual {p0, p2, v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 132
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->date:Ljava/util/Date;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->expenses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    check-cast p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->onBindViewHolder(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;I)V

    const/16 v1, 0x2c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBindViewHolder(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 146
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->expenses:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/16 v1, 0x12

    aput-boolean v6, v2, v1

    .line 148
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->expenseTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x13

    aput-boolean v6, v2, v1

    .line 149
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->expenseAmountTextView:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAmount()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v3, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedCurrencyString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x14

    aput-boolean v6, v2, v1

    .line 150
    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->expenseAmountTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0013

    const/16 v5, 0x15

    aput-boolean v6, v2, v5

    :goto_0
    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x17

    aput-boolean v6, v2, v1

    .line 151
    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->recurringIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRecurring()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/16 v4, 0x18

    aput-boolean v6, v2, v4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v1, 0x1a

    aput-boolean v6, v2, v1

    .line 152
    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->positiveIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020096

    const/16 v4, 0x1b

    aput-boolean v6, v2, v4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x1d

    aput-boolean v6, v2, v1

    .line 154
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRecurring()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x1e

    aput-boolean v6, v2, v1

    .line 174
    :goto_3
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;Lcom/benoitletondor/easybudgetapp/model/Expense;Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;)V

    const/16 v0, 0x28

    aput-boolean v6, v2, v0

    .line 282
    iget-object v0, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x29

    aput-boolean v6, v2, v0

    .line 284
    iget-object v0, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;

    invoke-direct {v3, p0, v1}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 293
    const/16 v0, 0x2a

    aput-boolean v6, v2, v0

    return-void

    .line 150
    :cond_0
    const v1, 0x7f0e0016

    const/16 v5, 0x16

    aput-boolean v6, v2, v5

    goto :goto_0

    .line 151
    :cond_1
    const/16 v1, 0x8

    const/16 v4, 0x19

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 152
    :cond_2
    const v1, 0x7f020097

    const/16 v4, 0x1c

    aput-boolean v6, v2, v4

    goto :goto_2

    .line 154
    :cond_3
    const/16 v1, 0x1f

    aput-boolean v6, v2, v1

    .line 156
    sget-boolean v1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$assertionsDisabled:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    aput-boolean v6, v2, v1

    .line 157
    :goto_4
    sget-object v1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$3;->$SwitchMap$com$benoitletondor$easybudgetapp$model$RecurringExpenseType:[I

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getType()Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x23

    aput-boolean v6, v2, v1

    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v1

    if-eqz v1, :cond_5

    const/16 v1, 0x21

    aput-boolean v6, v2, v1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const/16 v1, 0x22

    aput-boolean v6, v2, v1

    throw v0

    .line 160
    :pswitch_0
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->recurringIndicatorTextview:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const/16 v1, 0x24

    aput-boolean v6, v2, v1

    goto/16 :goto_3

    .line 163
    :pswitch_1
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->recurringIndicatorTextview:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/16 v1, 0x25

    aput-boolean v6, v2, v1

    goto/16 :goto_3

    .line 166
    :pswitch_2
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->recurringIndicatorTextview:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080055

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/16 v1, 0x26

    aput-boolean v6, v2, v1

    goto/16 :goto_3

    .line 169
    :pswitch_3
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->recurringIndicatorTextview:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x27

    aput-boolean v6, v2, v1

    goto/16 :goto_3

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;

    move-result-object v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040053

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x10

    aput-boolean v4, v0, v2

    .line 140
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    return-object v2
.end method

.method public removeExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 104
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->expenses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    .local v0, "expenseIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/benoitletondor/easybudgetapp/model/Expense;>;"
    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-boolean v5, v3, v2

    .line 106
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    aput-boolean v5, v3, v2

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/16 v4, 0x8

    aput-boolean v5, v3, v4

    .line 109
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    aput-boolean v5, v3, v2

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/16 v2, 0xa

    aput-boolean v5, v3, v2

    .line 112
    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 113
    const/16 v2, 0xb

    aput-boolean v5, v3, v2

    .line 119
    :goto_1
    return v1

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 117
    .local v1, "position":I
    const/16 v2, 0xc

    aput-boolean v5, v3, v2

    goto :goto_0

    .line 119
    .end local v1    # "position":I
    :cond_1
    const/4 v1, -0x1

    const/16 v2, 0xd

    aput-boolean v5, v3, v2

    goto :goto_1
.end method

.method public setDate(Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DB;)V
    .locals 3
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/benoitletondor/easybudgetapp/model/db/DB;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->date:Ljava/util/Date;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 92
    invoke-virtual {p2, p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getExpensesForDay(Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->expenses:Ljava/util/List;

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 93
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 94
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

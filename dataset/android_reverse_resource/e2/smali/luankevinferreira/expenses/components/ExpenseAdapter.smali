.class public Lluankevinferreira/expenses/components/ExpenseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpenseAdapter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private expenses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lluankevinferreira/expenses/domain/Expense;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Ljava/text/DecimalFormat;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/components/ExpenseAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x44f35be5389024e6L    # 1.4627221439256378E24

    const-string v2, "luankevinferreira/expenses/components/ExpenseAdapter"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/components/ExpenseAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lluankevinferreira/expenses/domain/Expense;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/components/ExpenseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p2, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->expenses:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 31
    new-instance v1, Ljava/text/DecimalFormat;

    const v2, 0x7f08003c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->formatter:Ljava/text/DecimalFormat;

    aput-boolean v4, v0, v4

    .line 32
    new-instance v1, Ljava/util/Locale;

    const v2, 0x7f080046

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 33
    new-instance v2, Ljava/text/SimpleDateFormat;

    const v3, 0x7f08003b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 34
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/components/ExpenseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->expenses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/components/ExpenseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->expenses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/components/ExpenseAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 48
    iget-object v0, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->expenses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lluankevinferreira/expenses/components/ExpenseAdapter;->$jacocoInit()[Z

    move-result-object v5

    .line 53
    iget-object v0, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x7

    aput-boolean v10, v5, v1

    .line 55
    const v1, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const/16 v0, 0x8

    aput-boolean v10, v5, v0

    .line 57
    const v0, 0x7f0f0090

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x9

    aput-boolean v10, v5, v1

    .line 58
    const v1, 0x7f0f008e

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0xa

    aput-boolean v10, v5, v2

    .line 59
    const v2, 0x7f0f008f

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0xb

    aput-boolean v10, v5, v3

    .line 60
    const v3, 0x7f0f0091

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0xc

    aput-boolean v10, v5, v4

    .line 62
    iget-object v4, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->expenses:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lluankevinferreira/expenses/domain/Expense;

    const/16 v7, 0xd

    aput-boolean v10, v5, v7

    .line 64
    iget-object v7, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Lluankevinferreira/expenses/domain/Expense;->getValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xe

    aput-boolean v10, v5, v0

    .line 65
    invoke-virtual {v4}, Lluankevinferreira/expenses/domain/Expense;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xf

    aput-boolean v10, v5, v0

    .line 66
    invoke-virtual {v4}, Lluankevinferreira/expenses/domain/Expense;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    aput-boolean v10, v5, v0

    .line 67
    iget-object v0, p0, Lluankevinferreira/expenses/components/ExpenseAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Lluankevinferreira/expenses/domain/Expense;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/16 v0, 0x11

    aput-boolean v10, v5, v0

    return-object v6
.end method

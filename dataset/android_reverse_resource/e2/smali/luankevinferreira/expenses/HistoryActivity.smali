.class public Lluankevinferreira/expenses/HistoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private btnNext:Landroid/widget/ImageButton;

.field private btnPrev:Landroid/widget/ImageButton;

.field private calendar:Ljava/util/Calendar;

.field private clickButton:Landroid/view/animation/Animation;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private decimalFormat:Ljava/text/DecimalFormat;

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

.field private listView:Landroid/widget/ListView;

.field private txvMonth:Landroid/widget/TextView;

.field private txvTotalHistory:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/HistoryActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x78f0db23d1015452L

    const-string v2, "luankevinferreira/expenses/HistoryActivity"

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/HistoryActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private readExpensesMoth(Ljava/util/Date;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 92
    new-instance v4, Lluankevinferreira/expenses/dao/ExpenseDAO;

    invoke-virtual {p0}, Lluankevinferreira/expenses/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Lluankevinferreira/expenses/dao/ExpenseDAO;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x1c

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v3, v2

    .line 94
    const-string v2, "* ALL *"

    invoke-virtual {v4, p1, v2}, Lluankevinferreira/expenses/dao/ExpenseDAO;->select(Ljava/util/Date;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->expenses:Ljava/util/List;

    const/16 v2, 0x1d

    const/4 v5, 0x1

    aput-boolean v5, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v4}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 100
    const/16 v2, 0x1e

    aput-boolean v8, v3, v2

    .line 103
    :goto_0
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->expenses:Ljava/util/List;

    new-instance v4, Lluankevinferreira/expenses/HistoryActivity$1;

    invoke-direct {v4, p0}, Lluankevinferreira/expenses/HistoryActivity$1;-><init>(Lluankevinferreira/expenses/HistoryActivity;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    const-wide/16 v0, 0x0

    const/16 v2, 0x24

    aput-boolean v8, v3, v2

    .line 113
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->expenses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0x25

    aput-boolean v8, v3, v2

    .local v0, "total":D
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lluankevinferreira/expenses/domain/Expense;

    const/16 v5, 0x26

    aput-boolean v8, v3, v5

    .line 114
    invoke-virtual {v2}, Lluankevinferreira/expenses/domain/Expense;->getValue()D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 115
    const/16 v2, 0x27

    aput-boolean v8, v3, v2

    goto :goto_1

    .line 95
    .end local v0    # "total":D
    :catch_0
    move-exception v2

    const/16 v2, 0x1f

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v2

    .line 96
    invoke-virtual {p0}, Lluankevinferreira/expenses/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f080042

    invoke-virtual {p0, v5}, Lluankevinferreira/expenses/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const/16 v2, 0x20

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    .line 97
    invoke-virtual {p0}, Lluankevinferreira/expenses/HistoryActivity;->finish()V

    const/16 v2, 0x21

    const/4 v5, 0x1

    aput-boolean v5, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-virtual {v4}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 100
    const/16 v2, 0x22

    aput-boolean v8, v3, v2

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v2

    invoke-virtual {v4}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 100
    const/16 v4, 0x23

    aput-boolean v8, v3, v4

    throw v2

    .line 117
    .restart local v0    # "total":D
    :cond_0
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->txvTotalHistory:Landroid/widget/TextView;

    iget-object v4, p0, Lluankevinferreira/expenses/HistoryActivity;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x28

    aput-boolean v8, v3, v2

    .line 118
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->txvMonth:Landroid/widget/TextView;

    iget-object v4, p0, Lluankevinferreira/expenses/HistoryActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x29

    aput-boolean v8, v3, v2

    .line 120
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lluankevinferreira/expenses/components/ExpenseAdapter;

    invoke-virtual {p0}, Lluankevinferreira/expenses/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lluankevinferreira/expenses/HistoryActivity;->expenses:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Lluankevinferreira/expenses/components/ExpenseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v2, 0x2a

    aput-boolean v8, v3, v2

    .line 121
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    .line 122
    const/16 v2, 0x2b

    aput-boolean v8, v3, v2

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 84
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_EDIT_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    .line 89
    :goto_0
    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void

    .line 84
    :cond_0
    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 85
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    if-eq p2, v1, :cond_1

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 86
    iget-object v1, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lluankevinferreira/expenses/HistoryActivity;->readExpensesMoth(Ljava/util/Date;)V

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 127
    .local v0, "id":I
    const v2, 0x7f0f007b

    if-ne v0, v2, :cond_0

    const/16 v2, 0x2c

    aput-boolean v4, v1, v2

    .line 128
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->btnNext:Landroid/widget/ImageButton;

    iget-object v3, p0, Lluankevinferreira/expenses/HistoryActivity;->clickButton:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v2, 0x2d

    aput-boolean v4, v1, v2

    .line 129
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x2e

    aput-boolean v4, v1, v2

    .line 130
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v2}, Lluankevinferreira/expenses/HistoryActivity;->readExpensesMoth(Ljava/util/Date;)V

    const/16 v2, 0x2f

    aput-boolean v4, v1, v2

    .line 136
    :goto_0
    const/16 v2, 0x35

    aput-boolean v4, v1, v2

    return-void

    .line 131
    :cond_0
    const v2, 0x7f0f0079

    if-eq v0, v2, :cond_1

    const/16 v2, 0x30

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x31

    aput-boolean v4, v1, v2

    .line 132
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->btnPrev:Landroid/widget/ImageButton;

    iget-object v3, p0, Lluankevinferreira/expenses/HistoryActivity;->clickButton:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v2, 0x32

    aput-boolean v4, v1, v2

    .line 133
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x33

    aput-boolean v4, v1, v2

    .line 134
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v2}, Lluankevinferreira/expenses/HistoryActivity;->readExpensesMoth(Ljava/util/Date;)V

    const/16 v2, 0x34

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 51
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/HistoryActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 54
    new-instance v0, Ljava/util/Locale;

    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lluankevinferreira/expenses/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 55
    new-instance v2, Ljava/text/SimpleDateFormat;

    const v3, 0x7f08003a

    invoke-virtual {p0, v3}, Lluankevinferreira/expenses/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    const v2, 0x7f08003c

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 59
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->txvMonth:Landroid/widget/TextView;

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 60
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->txvMonth:Landroid/widget/TextView;

    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 62
    const v0, 0x7f0f007d

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->txvTotalHistory:Landroid/widget/TextView;

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 64
    const v0, 0x7f0f007c

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->listView:Landroid/widget/ListView;

    .line 65
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 68
    :goto_0
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->btnNext:Landroid/widget/ImageButton;

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 69
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->btnPrev:Landroid/widget/ImageButton;

    .line 70
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->btnNext:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 75
    :goto_1
    invoke-virtual {p0}, Lluankevinferreira/expenses/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f05000a

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->clickButton:Landroid/view/animation/Animation;

    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    .line 77
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lluankevinferreira/expenses/HistoryActivity;->readExpensesMoth(Ljava/util/Date;)V

    .line 78
    const/16 v0, 0x14

    aput-boolean v4, v1, v0

    return-void

    .line 65
    :cond_0
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 66
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->btnPrev:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    .line 71
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->btnNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    .line 72
    iget-object v0, p0, Lluankevinferreira/expenses/HistoryActivity;->btnPrev:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x12

    aput-boolean v4, v1, v0

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 140
    iget-object v2, p0, Lluankevinferreira/expenses/HistoryActivity;->expenses:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lluankevinferreira/expenses/domain/Expense;

    .line 141
    .local v0, "expense":Lluankevinferreira/expenses/domain/Expense;
    if-nez v0, :cond_0

    const/16 v2, 0x36

    aput-boolean v5, v1, v2

    .line 146
    :goto_0
    const/16 v2, 0x3b

    aput-boolean v5, v1, v2

    return-void

    .line 141
    :cond_0
    const/16 v2, 0x37

    aput-boolean v5, v1, v2

    .line 142
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lluankevinferreira/expenses/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lluankevinferreira/expenses/ExpenseActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x38

    aput-boolean v5, v1, v3

    .line 143
    sget-object v3, Lluankevinferreira/expenses/enumeration/ExtraType;->EXPENSE:Lluankevinferreira/expenses/enumeration/ExtraType;

    invoke-virtual {v3}, Lluankevinferreira/expenses/enumeration/ExtraType;->getExtraAttribute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v3, 0x39

    aput-boolean v5, v1, v3

    .line 144
    sget-object v3, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_EDIT_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lluankevinferreira/expenses/HistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v2, 0x3a

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

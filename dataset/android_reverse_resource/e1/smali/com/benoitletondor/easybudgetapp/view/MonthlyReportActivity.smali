.class public Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MonthlyReportActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final FROM_NOTIFICATION_EXTRA:Ljava/lang/String; = "fromNotif"


# instance fields
.field private dates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private monthTitleTv:Landroid/widget/TextView;

.field private nextMonthButton:Landroid/widget/Button;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private previousMonthButton:Landroid/widget/Button;

.field private selectedPosition:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1addafd2f6f033c3L

    const-string v2, "com/benoitletondor/easybudgetapp/view/MonthlyReportActivity"

    const/16 v3, 0x3b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->selectedPosition:I

    const/16 v2, 0x36

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;IZ)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->selectPagerItem(IZ)V

    const/16 v1, 0x37

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->dates:Ljava/util/List;

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$202(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->dates:Ljava/util/List;

    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$300(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->configureViewPager()V

    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private configureViewPager()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    .line 185
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    .line 188
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromNotif"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v4}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->selectPagerItem(IZ)V

    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    .line 196
    :goto_1
    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    .line 190
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v1, v4}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->selectPagerItem(IZ)V

    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method private selectPagerItem(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    .line 208
    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->onPageSelected(I)V

    .line 209
    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v5, v2, v5

    .line 82
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v5, v2, v0

    .line 84
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v0, 0x3

    aput-boolean v5, v2, v0

    .line 85
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x4

    aput-boolean v5, v2, v0

    .line 87
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    .line 88
    const v1, 0x7f0f0096

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    .line 89
    const v1, 0x7f0f0098

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->monthTitleTv:Landroid/widget/TextView;

    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    .line 90
    const v1, 0x7f0f0097

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->previousMonthButton:Landroid/widget/Button;

    const/16 v1, 0x8

    aput-boolean v5, v2, v1

    .line 91
    const v1, 0x7f0f0099

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->nextMonthButton:Landroid/widget/Button;

    const/16 v1, 0x9

    aput-boolean v5, v2, v1

    .line 92
    const v1, 0x7f0f009a

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    .line 94
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->previousMonthButton:Landroid/widget/Button;

    const-string v4, "<"

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb

    aput-boolean v5, v2, v1

    .line 95
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->nextMonthButton:Landroid/widget/Button;

    const-string v4, ">"

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc

    aput-boolean v5, v2, v1

    .line 97
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->previousMonthButton:Landroid/widget/Button;

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xd

    aput-boolean v5, v2, v1

    .line 109
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->nextMonthButton:Landroid/widget/Button;

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$2;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xe

    aput-boolean v5, v2, v1

    .line 121
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->previousMonthButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->removeButtonBorder(Landroid/widget/Button;)V

    const/16 v1, 0xf

    aput-boolean v5, v2, v1

    .line 122
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->nextMonthButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->removeButtonBorder(Landroid/widget/Button;)V

    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    .line 125
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;

    invoke-direct {v1, p0, v0, v3}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;Landroid/widget/ProgressBar;Landroid/view/View;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    const/16 v3, 0x11

    aput-boolean v5, v2, v3

    .line 148
    invoke-virtual {v1, v0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    const/16 v0, 0x12

    aput-boolean v5, v2, v0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 156
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const/16 v2, 0x13

    aput-boolean v1, v3, v2

    .line 158
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->finish()V

    .line 159
    const/16 v2, 0x14

    aput-boolean v1, v3, v2

    .line 162
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/16 v4, 0x15

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 242
    const/16 v1, 0x35

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    const/16 v1, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onPageSelected(I)V
    .locals 9

    .prologue
    const v5, 0x7f0e0055

    const v6, 0x106000b

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 222
    iput p1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->selectedPosition:I

    const/16 v1, 0x21

    aput-boolean v2, v7, v1

    .line 224
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->dates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    const/16 v4, 0x22

    aput-boolean v2, v7, v4

    .line 226
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->monthTitleTv:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->getMonthTitle(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x23

    aput-boolean v2, v7, v1

    .line 229
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    const/16 v1, 0x24

    aput-boolean v2, v7, v1

    move v0, v2

    .line 230
    .local v0, "last":Z
    :goto_0
    if-nez p1, :cond_1

    const/16 v1, 0x26

    aput-boolean v2, v7, v1

    move v1, v2

    :goto_1
    const/16 v4, 0x28

    aput-boolean v2, v7, v4

    .line 232
    iget-object v8, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->nextMonthButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    const/16 v4, 0x29

    aput-boolean v2, v7, v4

    move v4, v2

    :goto_2
    invoke-virtual {v8, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x2b

    aput-boolean v2, v7, v4

    .line 233
    iget-object v8, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->nextMonthButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    const/16 v4, 0x2c

    aput-boolean v2, v7, v4

    move v4, v5

    :goto_3
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v4, 0x2e

    aput-boolean v2, v7, v4

    .line 234
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->previousMonthButton:Landroid/widget/Button;

    if-nez v1, :cond_4

    const/16 v3, 0x2f

    aput-boolean v2, v7, v3

    move v3, v2

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v3, 0x31

    aput-boolean v2, v7, v3

    .line 235
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MonthlyReportActivity;->previousMonthButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    const/16 v1, 0x32

    aput-boolean v2, v7, v1

    :goto_5
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 236
    const/16 v1, 0x34

    aput-boolean v2, v7, v1

    return-void

    .line 229
    .end local v0    # "last":Z
    :cond_0
    const/16 v1, 0x25

    aput-boolean v2, v7, v1

    move v0, v3

    goto :goto_0

    .line 230
    .restart local v0    # "last":Z
    :cond_1
    const/16 v1, 0x27

    aput-boolean v2, v7, v1

    move v1, v3

    goto :goto_1

    .line 232
    :cond_2
    const/16 v4, 0x2a

    aput-boolean v2, v7, v4

    move v4, v3

    goto :goto_2

    .line 233
    :cond_3
    const/16 v4, 0x2d

    aput-boolean v2, v7, v4

    move v4, v6

    goto :goto_3

    .line 234
    :cond_4
    const/16 v8, 0x30

    aput-boolean v2, v7, v8

    goto :goto_4

    .line 235
    :cond_5
    const/16 v1, 0x33

    aput-boolean v2, v7, v1

    move v5, v6

    goto :goto_5
.end method

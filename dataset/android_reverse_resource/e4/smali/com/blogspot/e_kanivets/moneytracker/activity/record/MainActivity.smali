.class public Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;
.source "MainActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final REQUEST_ACTION_RECORD:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field private period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

.field periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation
.end field

.field spinner:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c2
    .end annotation
.end field

.field private summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

.field tvCurrency:Landroid/widget/TextView;

.field tvDefaultAccountSum:Landroid/widget/TextView;

.field tvDefaultAccountTitle:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x853627e672c2ad0L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/MainActivity"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$002(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method private fillDefaultAccount()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readDefaultAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v0

    .line 213
    .local v0, "defaultAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v0, :cond_0

    const/16 v2, 0x14

    aput-boolean v6, v1, v2

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->tvDefaultAccountTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->tvDefaultAccountSum:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getFullSum()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatAmount(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->tvCurrency:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/16 v2, 0x15

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private showAppRateDialog()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 196
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v2

    const-string/jumbo v3, "Show App Rate Dialog"

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 197
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;

    invoke-direct {v0, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "dialog":Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->show()V

    .line 200
    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method private startAddRecordActivity(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;I)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_record"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v2, "key_mode"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v2, "key_type"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method


# virtual methods
.method public addExpense()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09002f
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Add Expense"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 142
    const/4 v1, 0x0

    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    invoke-direct {p0, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->startAddRecordActivity(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;I)V

    .line 143
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void
.end method

.method public addIncome()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090030
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Add Income"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 148
    const/4 v1, 0x0

    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->startAddRecordActivity(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;I)V

    .line 149
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public editRecord(I)V
    .locals 5
    .annotation build Lbutterknife/OnItemClick;
        value = {
            0x7f09007e
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v2

    const-string/jumbo v3, "Edit Record"

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 133
    if-lez p1, :cond_0

    .line 134
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordList:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 135
    .local v0, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->startAddRecordActivity(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;I)V

    .line 136
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 137
    .end local v0    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :goto_0
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-void

    .line 136
    :cond_0
    const/4 v2, 0x0

    sget-object v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    invoke-direct {p0, v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->startAddRecordActivity(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;I)V

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    const v1, 0x7f0b0025

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->initData()Z

    .line 87
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    .line 89
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->addLaunchCount()V

    .line 90
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    invoke-direct {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    .line 92
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->initData()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 97
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->initViews()V

    .line 99
    const v1, 0x7f0e0085

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->setTitle(I)V

    .line 101
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0900f9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->tvDefaultAccountTitle:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0900f8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->tvDefaultAccountSum:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0900f5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->tvCurrency:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->checkRateDialog()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    invoke-virtual {v1, v4}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->create(Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "summaryView":Landroid/view/View;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 111
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->spinner:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriodSelectedListener(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;)V

    .line 126
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->spinner:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->readLastUsedPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 127
    const/4 v1, 0x5

    aput-boolean v4, v2, v1

    return-void

    .line 105
    .end local v0    # "summaryView":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->showAppRateDialog()V

    const/4 v1, 0x4

    aput-boolean v4, v2, v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 177
    :goto_0
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void

    .line 163
    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->update()V

    .line 166
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    .line 170
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->update()V

    .line 171
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 221
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->onPause()V

    .line 223
    const-string/jumbo v0, "jacoco"

    .line 226
    .local v0, "TAG":Ljava/lang/String;
    const-string/jumbo v6, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "coverage.exec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "coverageFilePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x16

    const/4 v8, 0x1

    :try_start_0
    aput-boolean v8, v5, v7

    .line 230
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 231
    const-string/jumbo v7, "com.vladium.emma.rt.RT"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 232
    .local v4, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "dumpCoverageData"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 233
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 232
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 235
    .local v2, "dumpCoverageMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v6, "generateCoverageReport: ok"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/16 v6, 0x18

    aput-boolean v11, v5, v6

    return-void

    .line 237
    .end local v2    # "dumpCoverageMethod":Ljava/lang/reflect/Method;
    .end local v4    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Is emma jar on classpath?"

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v7, 0x17

    aput-boolean v11, v5, v7

    throw v6
.end method

.method public showReport()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 152
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v2

    const-string/jumbo v3, "Show Report"

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_period"

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method protected update()V
    .locals 7

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 181
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    invoke-virtual {v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->getRecordsForPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordList:Ljava/util/List;

    .line 182
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordList:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 184
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordList:Ljava/util/List;

    invoke-direct {v5, p0, v6}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readDefaultCurrency()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "currency":Ljava/lang/String;
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v2, v4}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V

    .line 189
    .local v2, "reportMaker":Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordList:Ljava/util/List;

    invoke-virtual {v2, v0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->getRecordReport(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/Period;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;

    move-result-object v1

    .line 190
    .local v1, "report":Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordList:Ljava/util/List;

    invoke-virtual {v2, v0, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->currencyNeeded(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v1, v0, v5}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->update(Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;Ljava/lang/String;Ljava/util/List;)V

    .line 192
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->fillDefaultAccount()V

    .line 193
    const/16 v4, 0x11

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    return-void
.end method

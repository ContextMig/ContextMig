.class public Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "AccountsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final REQUEST_ADD_ACCOUNT:I = 0x1

.field private static final REQUEST_EDIT_ACCOUNT:I = 0x3

.field private static final REQUEST_TRANSFER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AccountsActivity"


# instance fields
.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field private summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2e4a3363fa769029L    # -4.234873592423338E85

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readAll()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->update()V

    .line 128
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public addAccount()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09002d
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v2

    const-string/jumbo v3, "Add Account"

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    return-void
.end method

.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    const v1, 0x7f0b001c

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 45
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    .line 46
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;)V

    .line 47
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;

    invoke-direct {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;

    .line 48
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 55
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->summaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->create()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->update()V

    .line 59
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public makeTransfer()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Add Transfer"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onAccountClick(I)V
    .locals 5
    .annotation build Lbutterknife/OnItemClick;
        value = {
            0x7f09007e
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "key_account"

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readAll()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    const/4 v1, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    if-eq p2, v1, :cond_0

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 123
    :goto_0
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-void

    .line 104
    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->update()V

    .line 107
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->update()V

    .line 111
    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->setResult(I)V

    .line 112
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->update()V

    .line 116
    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->setResult(I)V

    .line 117
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v3, 0x6

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->makeTransfer()V

    .line 72
    const/4 v1, 0x5

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x7f09001d
        :pswitch_0
    .end packed-switch
.end method

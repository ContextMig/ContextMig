.class public Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "TransferActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "TransferActivity"


# instance fields
.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation
.end field

.field contentView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090040
    .end annotation
.end field

.field etFromAmount:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090057
    .end annotation
.end field

.field etToAmount:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005e
    .end annotation
.end field

.field spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c0
    .end annotation
.end field

.field spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c3
    .end annotation
.end field

.field transferController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private transferValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3c545d47df6f618cL    # 4.415820561161385E-18

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private doTransfer()Z
    .locals 15

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v13

    .line 117
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->transferValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;->validate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->accountList:Ljava/util/List;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 119
    .local v0, "fromAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->accountList:Ljava/util/List;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 120
    .local v12, "toAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->etFromAmount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 121
    .local v8, "fromAmount":D
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->etToAmount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 123
    .local v10, "toAmount":D
    iget-object v14, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->transferController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;

    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v6

    invoke-direct/range {v1 .. v11}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;-><init>(JJJDD)V

    .line 123
    invoke-virtual {v14, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;->create(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v13, v2

    :goto_0
    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v13, v2

    .line 126
    :goto_1
    return v1

    .line 123
    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v13, v2

    goto :goto_0

    .line 126
    .end local v0    # "fromAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v8    # "fromAmount":D
    .end local v10    # "toAmount":D
    .end local v12    # "toAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v13, v2

    goto :goto_1
.end method

.method private tryTransfer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Transfer"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 108
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->doTransfer()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 113
    :goto_0
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Transfer"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 110
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->finish()V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    const v1, 0x7f0b0028

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 58
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    .line 59
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;)V

    .line 60
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readActiveAccounts()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->accountList:Ljava/util/List;

    .line 61
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method protected initViews()V
    .locals 8

    .prologue
    const v7, 0x7f0b005d

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 66
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->accountList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x3

    aput-boolean v5, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 70
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    goto :goto_0

    .line 73
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->contentView:Landroid/view/View;

    invoke-direct {v3, p0, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->transferValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    .line 81
    :goto_1
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-direct {v4, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-direct {v4, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    const/4 v3, 0x7

    aput-boolean v5, v2, v3

    return-void

    .line 76
    :cond_1
    const v3, 0x7f0e005a

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    .line 78
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    const/4 v3, 0x6

    aput-boolean v5, v2, v3

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0xa

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 98
    :pswitch_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;->tryTransfer()V

    .line 99
    const/16 v1, 0x9

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x7f090013
        :pswitch_0
    .end packed-switch
.end method

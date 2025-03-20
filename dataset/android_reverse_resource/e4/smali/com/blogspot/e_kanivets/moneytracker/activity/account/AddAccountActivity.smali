.class public Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "AddAccountActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "AddAccountActivity"


# instance fields
.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private accountValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
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

.field currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field etInitSum:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005a
    .end annotation
.end field

.field etTitle:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field spinner:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bd
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x189ec93af462d82dL    # 4.318538558669272E-190

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addAccount()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v12

    .line 96
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->accountValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    invoke-interface {v2}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;->validate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->etInitSum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 99
    .local v5, "initSum":D
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 100
    .local v7, "currency":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 101
    .local v8, "goal":D
    const/4 v11, 0x0

    .line 103
    .local v11, "color":I
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    const-wide/16 v2, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;-><init>(JLjava/lang/String;DLjava/lang/String;DZI)V

    .line 104
    .local v1, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v2, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    aput-boolean v0, v12, v2

    move v10, v0

    :goto_0
    const/16 v2, 0xc

    aput-boolean v0, v12, v2

    .line 106
    :goto_1
    return v10

    .line 104
    :cond_0
    const/16 v2, 0xb

    aput-boolean v0, v12, v2

    goto :goto_0

    .line 106
    .end local v1    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "initSum":D
    .end local v7    # "currency":Ljava/lang/String;
    .end local v8    # "goal":D
    .end local v11    # "color":I
    :cond_1
    const/16 v2, 0xd

    aput-boolean v0, v12, v2

    goto :goto_1
.end method

.method private tryAddAccount()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Account"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 87
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->addAccount()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 92
    :goto_0
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Account"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 89
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->setResult(I)V

    .line 90
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->finish()V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    const v1, 0x7f0b001d

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 52
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    .line 53
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;)V

    .line 54
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method protected initViews()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 61
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->contentView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->accountValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    .line 62
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0b005d

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    .line 64
    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readAll()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 65
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v3, 0x6

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 77
    :pswitch_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;->tryAddAccount()V

    .line 78
    const/4 v1, 0x5

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f090013
        :pswitch_0
    .end packed-switch
.end method

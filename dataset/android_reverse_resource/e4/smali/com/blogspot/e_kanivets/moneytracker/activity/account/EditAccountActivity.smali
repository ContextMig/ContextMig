.class public Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "EditAccountActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final KEY_ACCOUNT:Ljava/lang/String; = "key_account"


# instance fields
.field private account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field etGoal:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090058
    .end annotation
.end field

.field etTitle:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field tilTitle:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e1
    .end annotation
.end field

.field viewColor:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090107
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x34364d77f2c4acfaL    # 3.553011000329234E-57

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity"

    const/16 v3, 0x1b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private archive()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readDefaultAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const v1, 0x7f0e0033

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->showToast(I)V

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 115
    :goto_0
    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->archive(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Z

    .line 112
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->finish()V

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private delete()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0043

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 126
    const v2, 0x7f0e0042

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 127
    const v2, 0x104000a

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 137
    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method private restore()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->restore(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Z

    .line 119
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->finish()V

    .line 121
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method done()V
    .locals 14
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090063
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v13

    .line 92
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f0e004b

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/16 v2, 0xf

    aput-boolean v12, v13, v2

    .line 105
    :goto_0
    const/16 v2, 0x14

    aput-boolean v12, v13, v2

    return-void

    .line 97
    :cond_0
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v2

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurSum()J

    move-result-wide v6

    long-to-double v5, v6

    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 98
    invoke-virtual {v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v8}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getGoal()D

    move-result-wide v8

    iget-object v10, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v10}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->isArchived()Z

    move-result v10

    iget-object v11, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v11}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getColor()I

    move-result v11

    invoke-direct/range {v1 .. v11}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;-><init>(JLjava/lang/String;DLjava/lang/String;DZI)V

    .line 99
    .local v1, "newAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v2, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->update(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    aput-boolean v12, v13, v2

    move v0, v12

    .line 100
    .local v0, "updated":Z
    :goto_1
    if-nez v0, :cond_2

    const/16 v2, 0x12

    aput-boolean v12, v13, v2

    goto :goto_0

    .line 99
    .end local v0    # "updated":Z
    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x11

    aput-boolean v12, v13, v2

    goto :goto_1

    .line 101
    .restart local v0    # "updated":Z
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->finish()V

    const/16 v2, 0x13

    aput-boolean v12, v13, v2

    goto :goto_0
.end method

.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    const v1, 0x7f0b0022

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)V

    .line 47
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_account"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 48
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    :goto_1
    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method protected initViews()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 55
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->etTitle:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->etGoal:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getGoal()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->viewColor:Landroid/view/View;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->isArchived()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 67
    :goto_0
    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    return v3

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0xe

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 74
    :sswitch_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->archive()V

    .line 75
    const/16 v1, 0xb

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 78
    :sswitch_1
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->restore()V

    .line 79
    const/16 v1, 0xc

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 82
    :sswitch_2
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;->delete()V

    .line 83
    const/16 v1, 0xd

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x7f090007 -> :sswitch_0
        0x7f090011 -> :sswitch_2
        0x7f09001b -> :sswitch_1
    .end sparse-switch
.end method

.class public Lcom/fsck/k9/activity/setup/AccountSetupNames;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mDescription:Landroid/widget/EditText;

.field private mDoneButton:Landroid/widget/Button;

.field private mName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupNames;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupNames;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method public static actionSetNames(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method private validateFields()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-static {v1, v0}, Lcom/fsck/k9/helper/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->onNext()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f0c010a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 41
    const v2, 0x7f0c0036

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 42
    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 43
    const v2, 0x7f0c010a

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupNames$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupNames;)V

    .line 57
    .local v1, "validationTextWatcher":Landroid/text/TextWatcher;
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v4, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;

    .line 70
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    :cond_1
    return-void
.end method

.method protected onNext()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupNames;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 89
    invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->listAccounts(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->finish()V

    .line 91
    return-void
.end method

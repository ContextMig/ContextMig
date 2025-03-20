.class public Lcom/fsck/k9/activity/setup/AccountSetupComposition;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupComposition.java"


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mAccountAlwaysBcc:Landroid/widget/EditText;

.field private mAccountEmail:Landroid/widget/EditText;

.field private mAccountName:Landroid/widget/EditText;

.field private mAccountSignature:Landroid/widget/EditText;

.field private mAccountSignatureAfterLocation:Landroid/widget/RadioButton;

.field private mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

.field private mAccountSignatureLayout:Landroid/widget/LinearLayout;

.field private mAccountSignatureUse:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignature:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureAfterLocation:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static actionEditCompositionSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setEmail(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountAlwaysBcc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setAlwaysBcc(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureUse:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setSignatureUse(Z)V

    .line 107
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureUse:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignature:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setSignature(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 110
    .local v0, "isSignatureBeforeQuotedText":Z
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Account;->setSignatureBeforeQuotedText(Z)V

    .line 113
    .end local v0    # "isSignatureBeforeQuotedText":Z
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 131
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->finish()V

    .line 132
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->saveSettings()V

    .line 119
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onBackPressed()V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    .line 47
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->setContentView(I)V

    .line 53
    if-eqz p1, :cond_0

    const-string v3, "account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, "account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    .line 58
    :cond_0
    const v3, 0x7f0c0014

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountName:Landroid/widget/EditText;

    .line 59
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v3, 0x7f0c000b

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountEmail:Landroid/widget/EditText;

    .line 62
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountEmail:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v3, 0x7f0c0015

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountAlwaysBcc:Landroid/widget/EditText;

    .line 65
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountAlwaysBcc:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getAlwaysBcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v3, 0x7f0c0017

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureLayout:Landroid/widget/LinearLayout;

    .line 69
    const v3, 0x7f0c0016

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureUse:Landroid/widget/CheckBox;

    .line 70
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getSignatureUse()Z

    move-result v2

    .line 71
    .local v2, "useSignature":Z
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureUse:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureUse:Landroid/widget/CheckBox;

    new-instance v4, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    const v3, 0x7f0c0018

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignature:Landroid/widget/EditText;

    .line 88
    const v3, 0x7f0c001a

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

    .line 89
    const v3, 0x7f0c001b

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureAfterLocation:Landroid/widget/RadioButton;

    .line 91
    if-eqz v2, :cond_2

    .line 92
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignature:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v1

    .line 95
    .local v1, "isSignatureBeforeQuotedText":Z
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureAfterLocation:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    .end local v1    # "isSignatureBeforeQuotedText":Z
    :goto_1
    return-void

    .line 96
    .restart local v1    # "isSignatureBeforeQuotedText":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 98
    .end local v1    # "isSignatureBeforeQuotedText":Z
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "account"

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    return-void
.end method

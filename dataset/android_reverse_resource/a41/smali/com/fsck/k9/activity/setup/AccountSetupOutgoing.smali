.class public Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"

.field private static final STATE_AUTH_TYPE_POSITION:Ljava/lang/String; = "authTypePosition"

.field private static final STATE_SECURITY_TYPE_POSITION:Ljava/lang/String; = "stateSecurityTypePosition"


# instance fields
.field clientCertificateChangedListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

.field private mAccount:Lcom/fsck/k9/Account;

.field private mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

.field private mAuthTypeView:Landroid/widget/Spinner;

.field private mClientCertificateLabelView:Landroid/widget/TextView;

.field private mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

.field private mCurrentAuthTypeViewPosition:I

.field private mCurrentPortViewSetting:Ljava/lang/String;

.field private mCurrentSecurityTypeViewPosition:I

.field private mMakeDefault:Z

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordLabelView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mRequireLoginSettingsView:Landroid/view/ViewGroup;

.field private mRequireLoginView:Landroid/widget/CheckBox;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mUsernameView:Landroid/widget/EditText;

.field validationTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    .line 511
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$3;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$3;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    .line 523
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$4;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$4;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->clientCertificateChangedListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    iget v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentSecurityTypeViewPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Lcom/fsck/k9/view/ClientCertificateSpinner;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Lcom/fsck/k9/mail/AuthType;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    iget v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Lcom/fsck/k9/activity/setup/AuthTypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updateViewFromAuthType()V

    return-void
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V

    return-void
.end method

.method public static actionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->intentActionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public static actionOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method private failure(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "use"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 500
    const-string v2, "Failure"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    const v2, 0x7f0700ba

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "toastText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 504
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 505
    return-void
.end method

.method private getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;
    .locals 2

    .prologue
    .line 531
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;

    .line 532
    .local v0, "holder":Lcom/fsck/k9/activity/setup/AuthTypeHolder;
    iget-object v1, v0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->authType:Lcom/fsck/k9/mail/AuthType;

    return-object v1
.end method

.method private getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 2

    .prologue
    .line 536
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;

    .line 537
    .local v0, "holder":Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;
    iget-object v1, v0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    return-object v1
.end method

.method private initializeViewListeners()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 271
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 297
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->clientCertificateChangedListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setOnClientCertificateChangedListener(Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;)V

    .line 299
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 301
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    return-void
.end method

.method public static intentActionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method private updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V
    .locals 2
    .param p1, "securityType"    # Lcom/fsck/k9/mail/ConnectionSecurity;

    .prologue
    .line 443
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    sget-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->useInsecureText(Z)V

    .line 444
    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v0

    .line 433
    .local v0, "securityType":Lcom/fsck/k9/mail/ConnectionSecurity;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V

    .line 437
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 438
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    sget-object v2, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-static {v0, v2}, Lcom/fsck/k9/account/AccountCreator;->getDefaultPort(Lcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/ServerSettings$Type;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 440
    return-void
.end method

.method private updateViewFromAuthType()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 341
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    .line 342
    .local v0, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v3, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    .line 344
    .local v1, "isAuthTypeExternal":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 347
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 348
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setVisibility(I)V

    .line 359
    :goto_1
    return-void

    .end local v1    # "isAuthTypeExternal":Z
    :cond_0
    move v1, v2

    .line 342
    goto :goto_0

    .line 354
    .restart local v1    # "isAuthTypeExternal":Z
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 355
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setVisibility(I)V

    goto :goto_1
.end method

.method private validateFields()V
    .locals 14

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    .line 368
    .local v0, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v10, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v10, v0, :cond_1

    const/4 v7, 0x1

    .line 370
    .local v7, "isAuthTypeExternal":Z
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v1

    .line 371
    .local v1, "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v10, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-eq v1, v10, :cond_2

    const/4 v2, 0x1

    .line 373
    .local v2, "hasConnectionSecurity":Z
    :goto_1
    if-eqz v7, :cond_5

    if-nez v2, :cond_5

    .line 376
    const v10, 0x7f070116

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0700d5

    .line 377
    invoke-virtual {p0, v13}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    .line 378
    invoke-virtual {v13}, Lcom/fsck/k9/mail/AuthType;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const v13, 0x7f0700e5

    .line 379
    invoke-virtual {p0, v13}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 380
    invoke-virtual {v13}, Lcom/fsck/k9/mail/ConnectionSecurity;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 376
    invoke-virtual {p0, v10, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "toastText":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 384
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v8

    .line 385
    .local v8, "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 386
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    iget v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 387
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 388
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updateViewFromAuthType()V

    .line 390
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v8

    .line 391
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 392
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    iget v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentSecurityTypeViewPosition:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 393
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 394
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V

    .line 396
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 397
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentPortViewSetting:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 400
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    .line 401
    sget-object v10, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v10, v0, :cond_3

    const/4 v7, 0x1

    .line 403
    :goto_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v1

    .line 404
    sget-object v10, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-eq v1, v10, :cond_4

    const/4 v2, 0x1

    .line 411
    .end local v8    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    .end local v9    # "toastText":Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v10}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    .line 412
    .local v3, "hasValidCertificateAlias":Z
    :goto_4
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v6

    .line 414
    .local v6, "hasValidUserName":Z
    if-eqz v6, :cond_7

    if-nez v7, :cond_7

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    .line 416
    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x1

    .line 418
    .local v5, "hasValidPasswordSettings":Z
    :goto_5
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    .line 423
    .local v4, "hasValidExternalAuthSettings":Z
    :goto_6
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    .line 424
    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->domainFieldValid(Landroid/widget/EditText;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    .line 425
    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 426
    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_0

    if-nez v5, :cond_0

    if-eqz v4, :cond_9

    :cond_0
    const/4 v10, 0x1

    .line 424
    :goto_7
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0xff

    :goto_8
    invoke-static {v11, v10}, Lcom/fsck/k9/helper/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V

    .line 429
    return-void

    .line 368
    .end local v1    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .end local v2    # "hasConnectionSecurity":Z
    .end local v3    # "hasValidCertificateAlias":Z
    .end local v4    # "hasValidExternalAuthSettings":Z
    .end local v5    # "hasValidPasswordSettings":Z
    .end local v6    # "hasValidUserName":Z
    .end local v7    # "isAuthTypeExternal":Z
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 371
    .restart local v1    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .restart local v7    # "isAuthTypeExternal":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 401
    .restart local v2    # "hasConnectionSecurity":Z
    .restart local v8    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    .restart local v9    # "toastText":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 404
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 406
    .end local v8    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    .end local v9    # "toastText":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    iput v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I

    .line 407
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    iput v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentSecurityTypeViewPosition:I

    .line 408
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentPortViewSetting:Ljava/lang/String;

    goto :goto_3

    .line 411
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 416
    .restart local v3    # "hasValidCertificateAlias":Z
    .restart local v6    # "hasValidUserName":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 418
    .restart local v5    # "hasValidPasswordSettings":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 426
    .restart local v4    # "hasValidExternalAuthSettings":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 428
    :cond_a
    const/16 v10, 0x80

    goto :goto_8
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 448
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 449
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 451
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->finish()V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    iget-boolean v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z

    invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->actionOptions(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V

    .line 454
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->finish()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 495
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 496
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V

    .line 497
    return-void

    .line 495
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 489
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->onNext()V

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x7f0c000d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    .line 98
    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "webdav"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    sget-object v4, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-static {p0, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    const v3, 0x7f0c0020

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    .line 109
    const v3, 0x7f0c000c

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    .line 110
    const v3, 0x7f0c000f

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/view/ClientCertificateSpinner;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    .line 111
    const v3, 0x7f0c0024

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateLabelView:Landroid/widget/TextView;

    .line 112
    const v3, 0x7f0c0023

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordLabelView:Landroid/widget/TextView;

    .line 113
    const v3, 0x7f0c001d

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    .line 114
    const v3, 0x7f0c001f

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    .line 115
    const v3, 0x7f0c003c

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 116
    const v3, 0x7f0c003d

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    .line 117
    const v3, 0x7f0c001e

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 118
    const v3, 0x7f0c0022

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    .line 119
    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    .line 121
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {p0}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;->get(Landroid/content/Context;)Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 125
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->get(Landroid/content/Context;)Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    .line 126
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const-string v4, "0123456789"

    invoke-static {v4}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    .line 136
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "makeDefault"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z

    .line 142
    if-eqz p1, :cond_1

    const-string v3, "account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    const-string v3, "account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    .line 148
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/TransportUris;->decodeTransportUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v2

    .line 150
    .local v2, "settings":Lcom/fsck/k9/mail/ServerSettings;
    iget-object v3, v2, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V

    .line 152
    if-nez p1, :cond_6

    .line 154
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    iget-object v4, v2, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->getAuthPosition(Lcom/fsck/k9/mail/AuthType;)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I

    .line 158
    :goto_1
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAuthTypeView:Landroid/widget/Spinner;

    iget v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 159
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updateViewFromAuthType()V

    .line 162
    if-nez p1, :cond_7

    .line 163
    iget-object v3, v2, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/ConnectionSecurity;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentSecurityTypeViewPosition:I

    .line 176
    :goto_2
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    iget v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentSecurityTypeViewPosition:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 178
    iget-object v3, v2, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    iget-object v4, v2, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    :cond_2
    iget-object v3, v2, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 185
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, v2, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_3
    iget-object v3, v2, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 189
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    iget-object v4, v2, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setAlias(Ljava/lang/String;)V

    .line 192
    :cond_4
    iget-object v3, v2, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 193
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    iget-object v4, v2, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_5
    iget v3, v2, Lcom/fsck/k9/mail/ServerSettings;->port:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 197
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/fsck/k9/mail/ServerSettings;->port:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_3
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentPortViewSetting:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .end local v2    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :goto_4
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 156
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .restart local v2    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :cond_6
    :try_start_2
    const-string v3, "authTypePosition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 202
    .end local v2    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :catch_1
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->failure(Ljava/lang/Exception;)V

    goto :goto_4

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :cond_7
    :try_start_3
    const-string v3, "stateSecurityTypePosition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentSecurityTypeViewPosition:I

    goto/16 :goto_2

    .line 199
    :cond_8
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method protected onNext()V
    .locals 11

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v4

    .line 462
    .local v4, "securityType":Lcom/fsck/k9/mail/ConnectionSecurity;
    const/4 v6, 0x0

    .line 463
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 464
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x0

    .line 465
    .local v8, "clientCertificateAlias":Ljava/lang/String;
    const/4 v5, 0x0

    .line 466
    .local v5, "authType":Lcom/fsck/k9/mail/AuthType;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 469
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v5

    .line 470
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v1, v5, :cond_1

    .line 471
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v8

    .line 477
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "newHost":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 479
    .local v3, "newPort":I
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings;

    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .local v0, "server":Lcom/fsck/k9/mail/ServerSettings;
    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->createTransportUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v9

    .line 481
    .local v9, "uri":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    sget-object v10, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-virtual {v1, v2, v3, v10}, Lcom/fsck/k9/Account;->deleteCertificate(Ljava/lang/String;ILcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 482
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v9}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    sget-object v10, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-static {p0, v1, v10}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 484
    return-void

    .line 473
    .end local v0    # "server":Lcom/fsck/k9/mail/ServerSettings;
    .end local v2    # "newHost":Ljava/lang/String;
    .end local v3    # "newPort":I
    .end local v9    # "uri":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 333
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->initializeViewListeners()V

    .line 334
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V

    .line 335
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 317
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    const-string v0, "account"

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "stateSecurityTypePosition"

    iget v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentSecurityTypeViewPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "authTypePosition"

    iget v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->mCurrentAuthTypeViewPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    return-void
.end method

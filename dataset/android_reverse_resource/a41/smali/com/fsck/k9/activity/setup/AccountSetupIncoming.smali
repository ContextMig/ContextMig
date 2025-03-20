.class public Lcom/fsck/k9/activity/setup/AccountSetupIncoming;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private mCompressionMobile:Landroid/widget/CheckBox;

.field private mCompressionOther:Landroid/widget/CheckBox;

.field private mCompressionWifi:Landroid/widget/CheckBox;

.field private mConnectionSecurityChoices:[Lcom/fsck/k9/mail/ConnectionSecurity;

.field private mCurrentAuthTypeViewPosition:I

.field private mCurrentPortViewSetting:Ljava/lang/String;

.field private mCurrentSecurityTypeViewPosition:I

.field private mImapAutoDetectNamespaceView:Landroid/widget/CheckBox;

.field private mImapPathPrefixView:Landroid/widget/EditText;

.field private mMakeDefault:Z

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordLabelView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mStoreType:Lcom/fsck/k9/mail/ServerSettings$Type;

.field private mSubscribedFoldersOnly:Landroid/widget/CheckBox;

.field private mUsernameView:Landroid/widget/EditText;

.field private mWebdavAuthPathView:Landroid/widget/EditText;

.field private mWebdavMailboxPathView:Landroid/widget/EditText;

.field private mWebdavPathPrefixView:Landroid/widget/EditText;

.field validationTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    .line 85
    invoke-static {}, Lcom/fsck/k9/mail/ConnectionSecurity;->values()[Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mConnectionSecurityChoices:[Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 627
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$4;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$4;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    .line 641
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$5;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$5;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->clientCertificateChangedListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    iget v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentSecurityTypeViewPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validateFields()V

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    iget v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentAuthTypeViewPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updateViewFromAuthType()V

    return-void
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)Lcom/fsck/k9/mail/AuthType;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)Lcom/fsck/k9/view/ClientCertificateSpinner;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method public static actionEditIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->intentActionEditIncomingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method private failure(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "use"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 615
    const-string v2, "Failure"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    const v2, 0x7f0700ba

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "toastText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 619
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 620
    return-void
.end method

.method private getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;

    .line 650
    .local v0, "holder":Lcom/fsck/k9/activity/setup/AuthTypeHolder;
    iget-object v1, v0, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->authType:Lcom/fsck/k9/mail/AuthType;

    return-object v1
.end method

.method private getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 2

    .prologue
    .line 654
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;

    .line 655
    .local v0, "holder":Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;
    iget-object v1, v0, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    return-object v1
.end method

.method private initializeViewListeners()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 337
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 363
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->clientCertificateChangedListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setOnClientCertificateChangedListener(Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;)V

    .line 364
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 365
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 366
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 367
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    return-void
.end method

.method public static intentActionEditIncomingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method private updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V
    .locals 2
    .param p1, "securityType"    # Lcom/fsck/k9/mail/ConnectionSecurity;

    .prologue
    .line 495
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    sget-object v0, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->useInsecureText(Z)V

    .line 496
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v0

    .line 485
    .local v0, "securityType":Lcom/fsck/k9/mail/ConnectionSecurity;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V

    .line 489
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 490
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mStoreType:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-static {v0, v2}, Lcom/fsck/k9/account/AccountCreator;->getDefaultPort(Lcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/ServerSettings$Type;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 492
    return-void
.end method

.method private updateViewFromAuthType()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 395
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    .line 396
    .local v0, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v3, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    .line 398
    .local v1, "isAuthTypeExternal":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 401
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 402
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setVisibility(I)V

    .line 413
    :goto_1
    return-void

    .end local v1    # "isAuthTypeExternal":Z
    :cond_0
    move v1, v2

    .line 396
    goto :goto_0

    .line 408
    .restart local v1    # "isAuthTypeExternal":Z
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 409
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setVisibility(I)V

    goto :goto_1
.end method

.method private validateFields()V
    .locals 14

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    .line 422
    .local v0, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v10, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v10, v0, :cond_1

    const/4 v7, 0x1

    .line 424
    .local v7, "isAuthTypeExternal":Z
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v1

    .line 425
    .local v1, "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v10, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-eq v1, v10, :cond_2

    const/4 v2, 0x1

    .line 427
    .local v2, "hasConnectionSecurity":Z
    :goto_1
    if-eqz v7, :cond_5

    if-nez v2, :cond_5

    .line 430
    const v10, 0x7f0700df

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0700d5

    .line 431
    invoke-virtual {p0, v13}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    .line 432
    invoke-virtual {v13}, Lcom/fsck/k9/mail/AuthType;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const v13, 0x7f0700e5

    .line 433
    invoke-virtual {p0, v13}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 434
    invoke-virtual {v13}, Lcom/fsck/k9/mail/ConnectionSecurity;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 430
    invoke-virtual {p0, v10, v11}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "toastText":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 438
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v8

    .line 439
    .local v8, "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 440
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    iget v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentAuthTypeViewPosition:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 441
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 442
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updateViewFromAuthType()V

    .line 444
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v8

    .line 445
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 446
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    iget v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentSecurityTypeViewPosition:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 447
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 448
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V

    .line 450
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 451
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentPortViewSetting:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 454
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    .line 455
    sget-object v10, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v10, v0, :cond_3

    const/4 v7, 0x1

    .line 457
    :goto_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v1

    .line 458
    sget-object v10, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-eq v1, v10, :cond_4

    const/4 v2, 0x1

    .line 465
    .end local v8    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    .end local v9    # "toastText":Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v10}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    .line 466
    .local v3, "hasValidCertificateAlias":Z
    :goto_4
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v6

    .line 468
    .local v6, "hasValidUserName":Z
    if-eqz v6, :cond_7

    if-nez v7, :cond_7

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    .line 470
    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x1

    .line 472
    .local v5, "hasValidPasswordSettings":Z
    :goto_5
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    .line 477
    .local v4, "hasValidExternalAuthSettings":Z
    :goto_6
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->domainFieldValid(Landroid/widget/EditText;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    .line 478
    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-nez v5, :cond_0

    if-eqz v4, :cond_9

    :cond_0
    const/4 v10, 0x1

    .line 477
    :goto_7
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 480
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0xff

    :goto_8
    invoke-static {v11, v10}, Lcom/fsck/k9/helper/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V

    .line 481
    return-void

    .line 422
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

    .line 425
    .restart local v1    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .restart local v7    # "isAuthTypeExternal":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 455
    .restart local v2    # "hasConnectionSecurity":Z
    .restart local v8    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    .restart local v9    # "toastText":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 458
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 460
    .end local v8    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    .end local v9    # "toastText":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    iput v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentAuthTypeViewPosition:I

    .line 461
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    iput v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentSecurityTypeViewPosition:I

    .line 462
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentPortViewSetting:Ljava/lang/String;

    goto :goto_3

    .line 465
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 470
    .restart local v3    # "hasValidCertificateAlias":Z
    .restart local v6    # "hasValidUserName":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 472
    .restart local v5    # "hasValidPasswordSettings":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 478
    .restart local v4    # "hasValidExternalAuthSettings":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 480
    :cond_a
    const/16 v10, 0x80

    goto :goto_8
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 500
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 501
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    const/4 v11, 0x0

    .line 504
    .local v11, "isPushCapable":Z
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v13

    .line 505
    .local v13, "store":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v13}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 509
    .end local v13    # "store":Lcom/fsck/k9/mail/Store;
    :goto_0
    if-eqz v11, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq v2, v3, :cond_0

    .line 510
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/fsck/k9/service/MailService;->actionRestartPushers(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 513
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->finish()V

    .line 548
    .end local v11    # "isPushCapable":Z
    :cond_1
    :goto_1
    return-void

    .line 506
    .restart local v11    # "isPushCapable":Z
    :catch_0
    move-exception v10

    .line 507
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "Could not get remote store"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v10, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 520
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "isPushCapable":Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, "username":Ljava/lang/String;
    const/4 v8, 0x0

    .line 523
    .local v8, "password":Ljava/lang/String;
    const/4 v9, 0x0

    .line 524
    .local v9, "clientCertificateAlias":Ljava/lang/String;
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v6

    .line 525
    .local v6, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v2, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v2, v6, :cond_3

    .line 526
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v2}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v9

    .line 531
    :goto_2
    new-instance v12, Ljava/net/URI;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 532
    .local v12, "oldUri":Ljava/net/URI;
    new-instance v1, Lcom/fsck/k9/mail/ServerSettings;

    sget-object v2, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v4

    sget-object v5, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-direct/range {v1 .. v9}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v1, "transportServer":Lcom/fsck/k9/mail/ServerSettings;
    invoke-static {v1}, Lcom/fsck/k9/mail/TransportUris;->createTransportUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v14

    .line 535
    .local v14, "transportUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v14}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 544
    .end local v1    # "transportServer":Lcom/fsck/k9/mail/ServerSettings;
    .end local v6    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "clientCertificateAlias":Ljava/lang/String;
    .end local v12    # "oldUri":Ljava/net/URI;
    .end local v14    # "transportUri":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-boolean v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mMakeDefault:Z

    invoke-static {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->actionOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V

    .line 545
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->finish()V

    goto :goto_1

    .line 528
    .restart local v6    # "authType":Lcom/fsck/k9/mail/AuthType;
    .restart local v7    # "username":Ljava/lang/String;
    .restart local v8    # "password":Ljava/lang/String;
    .restart local v9    # "clientCertificateAlias":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    goto :goto_2

    .line 536
    .end local v6    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "clientCertificateAlias":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 604
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 612
    :goto_0
    return-void

    .line 606
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->onNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->failure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c000d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0c0022

    const/4 v11, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v9, 0x7f030005

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->setContentView(I)V

    .line 110
    const v9, 0x7f0c0020

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    .line 111
    const v9, 0x7f0c000c

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    .line 112
    const v9, 0x7f0c000f

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/view/ClientCertificateSpinner;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    .line 113
    const v9, 0x7f0c0024

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateLabelView:Landroid/widget/TextView;

    .line 114
    const v9, 0x7f0c0023

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordLabelView:Landroid/widget/TextView;

    .line 115
    const v9, 0x7f0c001c

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 116
    .local v6, "serverLabelView":Landroid/widget/TextView;
    const v9, 0x7f0c001d

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    .line 117
    const v9, 0x7f0c001f

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    .line 118
    const v9, 0x7f0c001e

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 119
    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    .line 120
    const v9, 0x7f0c0026

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapAutoDetectNamespaceView:Landroid/widget/CheckBox;

    .line 121
    const v9, 0x7f0c0027

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 122
    const v9, 0x7f0c002e

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavPathPrefixView:Landroid/widget/EditText;

    .line 123
    const v9, 0x7f0c0030

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavAuthPathView:Landroid/widget/EditText;

    .line 124
    const v9, 0x7f0c002c

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavMailboxPathView:Landroid/widget/EditText;

    .line 125
    const v9, 0x7f0c000d

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    .line 126
    const v9, 0x7f0c0033

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionMobile:Landroid/widget/CheckBox;

    .line 127
    const v9, 0x7f0c0034

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionWifi:Landroid/widget/CheckBox;

    .line 128
    const v9, 0x7f0c0035

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionOther:Landroid/widget/CheckBox;

    .line 129
    const v9, 0x7f0c0029

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSubscribedFoldersOnly:Landroid/widget/CheckBox;

    .line 131
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapAutoDetectNamespaceView:Landroid/widget/CheckBox;

    new-instance v10, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$1;

    invoke-direct {v10, p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->get(Landroid/content/Context;)Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    .line 146
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 151
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    const-string v10, "0123456789"

    invoke-static {v10}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "account"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    .line 155
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "makeDefault"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mMakeDefault:Z

    .line 161
    if-eqz p1, :cond_0

    const-string v9, "account"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 162
    const-string v9, "account"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    .line 166
    :cond_0
    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 169
    .local v3, "editSettings":Z
    :try_start_0
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/mail/store/RemoteStore;->decodeStoreUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v7

    .line 171
    .local v7, "settings":Lcom/fsck/k9/mail/ServerSettings;
    if-nez p1, :cond_7

    .line 173
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeAdapter:Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    invoke-virtual {v9, v10}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->getAuthPosition(Lcom/fsck/k9/mail/AuthType;)I

    move-result v9

    iput v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentAuthTypeViewPosition:I

    .line 177
    :goto_0
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAuthTypeView:Landroid/widget/Spinner;

    iget v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentAuthTypeViewPosition:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 178
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updateViewFromAuthType()V

    .line 180
    iget-object v9, v7, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 181
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
    iget-object v9, v7, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 185
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_2
    iget-object v9, v7, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 189
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setAlias(Ljava/lang/String;)V

    .line 192
    :cond_3
    iget-object v9, v7, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mStoreType:Lcom/fsck/k9/mail/ServerSettings$Type;

    .line 193
    sget-object v9, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v9, v10, :cond_8

    .line 194
    const v9, 0x7f0700e3

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 195
    const v9, 0x7f0c0025

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v9, 0x7f0c002a

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const v9, 0x7f0c002b

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 198
    const v9, 0x7f0c002d

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const v9, 0x7f0c002f

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 200
    const v9, 0x7f0c0032

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const v9, 0x7f0c0031

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSubscribedFoldersOnly:Landroid/widget/CheckBox;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 252
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 253
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-static {v10}, Lcom/fsck/k9/account/AccountCreator;->getDefaultDeletePolicy(Lcom/fsck/k9/mail/ServerSettings$Type;)Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/fsck/k9/Account;->setDeletePolicy(Lcom/fsck/k9/Account$DeletePolicy;)V

    .line 257
    :cond_5
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mConnectionSecurityChoices:[Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 258
    invoke-static {p0, v9}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;->get(Landroid/content/Context;[Lcom/fsck/k9/mail/ConnectionSecurity;)Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;

    move-result-object v5

    .line 259
    .local v5, "securityTypesAdapter":Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v9, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 262
    if-nez p1, :cond_e

    .line 263
    iget-object v9, v7, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v5, v9}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;->getConnectionSecurityPosition(Lcom/fsck/k9/mail/ConnectionSecurity;)I

    move-result v9

    iput v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentSecurityTypeViewPosition:I

    .line 276
    :goto_2
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    iget v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentSecurityTypeViewPosition:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 278
    iget-object v9, v7, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-direct {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updateAuthPlainTextFromSecurityType(Lcom/fsck/k9/mail/ConnectionSecurity;)V

    .line 280
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionMobile:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/mail/NetworkType;->MOBILE:Lcom/fsck/k9/mail/NetworkType;

    invoke-virtual {v10, v11}, Lcom/fsck/k9/Account;->useCompression(Lcom/fsck/k9/mail/NetworkType;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionWifi:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/mail/NetworkType;->WIFI:Lcom/fsck/k9/mail/NetworkType;

    invoke-virtual {v10, v11}, Lcom/fsck/k9/Account;->useCompression(Lcom/fsck/k9/mail/NetworkType;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 282
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionOther:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/mail/NetworkType;->OTHER:Lcom/fsck/k9/mail/NetworkType;

    invoke-virtual {v10, v11}, Lcom/fsck/k9/Account;->useCompression(Lcom/fsck/k9/mail/NetworkType;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    iget-object v9, v7, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 285
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_6
    iget v9, v7, Lcom/fsck/k9/mail/ServerSettings;->port:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_f

    .line 289
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v7, Lcom/fsck/k9/mail/ServerSettings;->port:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_3
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentPortViewSetting:Ljava/lang/String;

    .line 295
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSubscribedFoldersOnly:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v10}, Lcom/fsck/k9/Account;->subscribedFoldersOnly()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    .end local v5    # "securityTypesAdapter":Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;
    .end local v7    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :goto_4
    return-void

    .line 175
    .restart local v7    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :cond_7
    const-string v9, "authTypePosition"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentAuthTypeViewPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 296
    .end local v7    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->failure(Ljava/lang/Exception;)V

    goto :goto_4

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :cond_8
    :try_start_1
    sget-object v9, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v9, v10, :cond_a

    .line 204
    const v9, 0x7f0700de

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 206
    move-object v0, v7

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;

    move-object v4, v0

    .line 208
    .local v4, "imapSettings":Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapAutoDetectNamespaceView:Landroid/widget/CheckBox;

    iget-boolean v10, v4, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->autoDetectNamespace:Z

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    iget-object v9, v4, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->pathPrefix:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 210
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    iget-object v10, v4, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_9
    const v9, 0x7f0c002a

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const v9, 0x7f0c002b

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v9, 0x7f0c002d

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v9, 0x7f0c002f

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 218
    if-nez v3, :cond_4

    .line 219
    const v9, 0x7f0c0028

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 221
    .end local v4    # "imapSettings":Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    :cond_a
    sget-object v9, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v10, v7, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v9, v10, :cond_d

    .line 222
    const v9, 0x7f0700f2

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 223
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/fsck/k9/mail/ConnectionSecurity;

    const/4 v10, 0x0

    sget-object v11, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    aput-object v11, v9, v10

    iput-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mConnectionSecurityChoices:[Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 228
    const v9, 0x7f0c0025

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v9, 0x7f0c0021

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 230
    const v9, 0x7f0c0022

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const v9, 0x7f0c0032

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const v9, 0x7f0c0031

    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSubscribedFoldersOnly:Landroid/widget/CheckBox;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 235
    move-object v0, v7

    check-cast v0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;

    move-object v8, v0

    .line 237
    .local v8, "webDavSettings":Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    iget-object v9, v8, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->path:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 238
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavPathPrefixView:Landroid/widget/EditText;

    iget-object v10, v8, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_b
    iget-object v9, v8, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->authPath:Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 242
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavAuthPathView:Landroid/widget/EditText;

    iget-object v10, v8, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->authPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_c
    iget-object v9, v8, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->mailboxPath:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 246
    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavMailboxPathView:Landroid/widget/EditText;

    iget-object v10, v8, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->mailboxPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 249
    .end local v8    # "webDavSettings":Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    :cond_d
    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown account type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 274
    .restart local v5    # "securityTypesAdapter":Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;
    :cond_e
    const-string v9, "stateSecurityTypePosition"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentSecurityTypeViewPosition:I

    goto/16 :goto_2

    .line 291
    :cond_f
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updatePortFromSecurityType()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected onNext()V
    .locals 13

    .prologue
    .line 552
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v4

    .line 554
    .local v4, "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 556
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x0

    .line 558
    .local v8, "clientCertificateAlias":Ljava/lang/String;
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->getSelectedAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v5

    .line 559
    .local v5, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v5, v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v8

    .line 564
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "host":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 567
    .local v3, "port":I
    const/4 v9, 0x0

    .line 568
    .local v9, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mStoreType:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v1, v11, :cond_2

    .line 569
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 570
    .restart local v9    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "autoDetectNamespace"

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapAutoDetectNamespaceView:Landroid/widget/CheckBox;

    .line 571
    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 570
    invoke-interface {v9, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v1, "pathPrefix"

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 573
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 572
    invoke-interface {v9, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-virtual {v1, v2, v3, v11}, Lcom/fsck/k9/Account;->deleteCertificate(Ljava/lang/String;ILcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 585
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mStoreType:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 588
    .local v0, "settings":Lcom/fsck/k9/mail/ServerSettings;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/RemoteStore;->createStoreUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/mail/NetworkType;->MOBILE:Lcom/fsck/k9/mail/NetworkType;

    iget-object v12, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionMobile:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    invoke-virtual {v1, v11, v12}, Lcom/fsck/k9/Account;->setCompression(Lcom/fsck/k9/mail/NetworkType;Z)V

    .line 591
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/mail/NetworkType;->WIFI:Lcom/fsck/k9/mail/NetworkType;

    iget-object v12, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionWifi:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    invoke-virtual {v1, v11, v12}, Lcom/fsck/k9/Account;->setCompression(Lcom/fsck/k9/mail/NetworkType;Z)V

    .line 592
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/mail/NetworkType;->OTHER:Lcom/fsck/k9/mail/NetworkType;

    iget-object v12, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCompressionOther:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    invoke-virtual {v1, v11, v12}, Lcom/fsck/k9/Account;->setCompression(Lcom/fsck/k9/mail/NetworkType;Z)V

    .line 593
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mSubscribedFoldersOnly:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-virtual {v1, v11}, Lcom/fsck/k9/Account;->setSubscribedFoldersOnly(Z)V

    .line 595
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    sget-object v11, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-static {p0, v1, v11}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 600
    .end local v0    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .end local v5    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v6    # "username":Ljava/lang/String;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "clientCertificateAlias":Ljava/lang/String;
    .end local v9    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 562
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .restart local v5    # "authType":Lcom/fsck/k9/mail/AuthType;
    .restart local v6    # "username":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    .restart local v8    # "clientCertificateAlias":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 574
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v9    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mStoreType:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v1, v11, :cond_0

    .line 575
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 576
    .restart local v9    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "path"

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavPathPrefixView:Landroid/widget/EditText;

    .line 577
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 576
    invoke-interface {v9, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "authPath"

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavAuthPathView:Landroid/widget/EditText;

    .line 579
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 578
    invoke-interface {v9, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v1, "mailboxPath"

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mWebdavMailboxPathView:Landroid/widget/EditText;

    .line 581
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 580
    invoke-interface {v9, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 596
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .end local v5    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v6    # "username":Ljava/lang/String;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "clientCertificateAlias":Ljava/lang/String;
    .end local v9    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 597
    .local v10, "e":Ljava/lang/Exception;
    invoke-direct {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->failure(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 387
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->initializeViewListeners()V

    .line 388
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validateFields()V

    .line 389
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 373
    const-string v0, "account"

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "stateSecurityTypePosition"

    iget v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentSecurityTypeViewPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string v0, "authTypePosition"

    iget v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->mCurrentAuthTypeViewPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    return-void
.end method

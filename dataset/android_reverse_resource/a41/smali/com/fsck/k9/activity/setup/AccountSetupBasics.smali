.class public Lcom/fsck/k9/activity/setup/AccountSetupBasics;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
    }
.end annotation


# static fields
.field private static final DIALOG_NOTE:I = 0x1

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.AccountSetupBasics.account"

.field private static final STATE_KEY_CHECKED_INCOMING:Ljava/lang/String; = "com.fsck.k9.AccountSetupBasics.checkedIncoming"

.field private static final STATE_KEY_PROVIDER:Ljava/lang/String; = "com.fsck.k9.AccountSetupBasics.provider"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mCheckedIncoming:Z

.field private mClientCertificateCheckBox:Landroid/widget/CheckBox;

.field private mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

.field private mEmailValidator:Lcom/fsck/k9/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mManualSetupButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordView:Landroid/widget/EditText;

.field private mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

.field private mShowPasswordCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    .line 72
    new-instance v0, Lcom/fsck/k9/EmailAddressValidator;

    invoke-direct {v0}, Lcom/fsck/k9/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/fsck/k9/EmailAddressValidator;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mCheckedIncoming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupBasics;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupBasics;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->showPassword(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method public static actionNewAccount(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method private findProviderForDomain(Ljava/lang/String;)Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 472
    .local v2, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 473
    .local v1, "provider":Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, "xmlEventType":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 474
    if-ne v3, v6, :cond_2

    const-string v4, "provider"

    .line 475
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "domain"

    .line 476
    invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 477
    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    .end local v1    # "provider":Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
    invoke-direct {v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;-><init>()V

    .line 478
    .restart local v1    # "provider":Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
    const-string v4, "id"

    invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->id:Ljava/lang/String;

    .line 479
    const-string v4, "label"

    invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->label:Ljava/lang/String;

    .line 480
    const-string v4, "domain"

    invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->domain:Ljava/lang/String;

    .line 481
    const-string v4, "note"

    invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v1    # "provider":Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
    .end local v2    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v3    # "xmlEventType":I
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error while trying to load provider settings."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 482
    .restart local v1    # "provider":Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;
    .restart local v2    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "xmlEventType":I
    :cond_2
    if-ne v3, v6, :cond_3

    :try_start_1
    const-string v4, "incoming"

    .line 483
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 485
    new-instance v4, Ljava/net/URI;

    const-string v5, "uri"

    invoke-direct {p0, v2, v5}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUriTemplate:Ljava/net/URI;

    .line 486
    const-string v4, "username"

    invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_3
    if-ne v3, v6, :cond_4

    const-string v4, "outgoing"

    .line 488
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 490
    new-instance v4, Ljava/net/URI;

    const-string v5, "uri"

    invoke-direct {p0, v2, v5}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUriTemplate:Ljava/net/URI;

    .line 491
    const-string v4, "username"

    invoke-direct {p0, v2, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 492
    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v4, "provider"

    .line 493
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method private finishAutoSetup()V
    .locals 24

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 278
    .local v19, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->splitEmail(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, "emailParts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v22, v13, v4

    .line 280
    .local v22, "user":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v11, v13, v4

    .line 282
    .local v11, "domain":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 283
    .local v23, "userEnc":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 285
    .local v20, "passwordEnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iget-object v0, v4, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 286
    .local v16, "incomingUsername":Ljava/lang/String;
    const-string v4, "\\$email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 287
    const-string v4, "\\$user"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 288
    const-string v4, "\\$domain"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iget-object v15, v4, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->incomingUriTemplate:Ljava/net/URI;

    .line 291
    .local v15, "incomingUriTemplate":Ljava/net/URI;
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v2, "incomingUri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iget-object v0, v4, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 296
    .local v18, "outgoingUsername":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iget-object v0, v4, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->outgoingUriTemplate:Ljava/net/URI;

    move-object/from16 v17, v0

    .line 300
    .local v17, "outgoingUriTemplate":Ljava/net/URI;
    if-eqz v18, :cond_1

    .line 301
    const-string v4, "\\$email"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 302
    const-string v4, "\\$user"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 303
    const-string v4, "\\$domain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 304
    new-instance v3, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v3, "outgoingUri":Ljava/net/URI;
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    if-nez v4, :cond_0

    .line 316
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->newAccount()Lcom/fsck/k9/Account;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    .line 318
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4, v12}, Lcom/fsck/k9/Account;->setEmail(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->setupFolderNames(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/store/RemoteStore;->decodeStoreUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v14

    .line 326
    .local v14, "incomingSettings":Lcom/fsck/k9/mail/ServerSettings;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    iget-object v5, v14, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-static {v5}, Lcom/fsck/k9/account/AccountCreator;->getDefaultDeletePolicy(Lcom/fsck/k9/mail/ServerSettings$Type;)Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Account;->setDeletePolicy(Lcom/fsck/k9/Account$DeletePolicy;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    sget-object v5, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 337
    .end local v2    # "incomingUri":Ljava/net/URI;
    .end local v3    # "outgoingUri":Ljava/net/URI;
    .end local v14    # "incomingSettings":Lcom/fsck/k9/mail/ServerSettings;
    .end local v15    # "incomingUriTemplate":Ljava/net/URI;
    .end local v16    # "incomingUsername":Ljava/lang/String;
    .end local v17    # "outgoingUriTemplate":Ljava/net/URI;
    .end local v18    # "outgoingUsername":Ljava/lang/String;
    .end local v20    # "passwordEnc":Ljava/lang/String;
    .end local v23    # "userEnc":Ljava/lang/String;
    :goto_1
    return-void

    .line 309
    .restart local v2    # "incomingUri":Ljava/net/URI;
    .restart local v15    # "incomingUriTemplate":Ljava/net/URI;
    .restart local v16    # "incomingUsername":Ljava/lang/String;
    .restart local v17    # "outgoingUriTemplate":Ljava/net/URI;
    .restart local v18    # "outgoingUsername":Ljava/lang/String;
    .restart local v20    # "passwordEnc":Ljava/lang/String;
    .restart local v23    # "userEnc":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 310
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "outgoingUri":Ljava/net/URI;
    goto :goto_0

    .line 330
    .end local v2    # "incomingUri":Ljava/net/URI;
    .end local v3    # "outgoingUri":Ljava/net/URI;
    .end local v15    # "incomingUriTemplate":Ljava/net/URI;
    .end local v16    # "incomingUsername":Ljava/lang/String;
    .end local v17    # "outgoingUriTemplate":Ljava/net/URI;
    .end local v18    # "outgoingUsername":Ljava/lang/String;
    .end local v20    # "passwordEnc":Ljava/lang/String;
    .end local v23    # "userEnc":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 335
    .local v21, "use":Ljava/net/URISyntaxException;
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onManualSetup()V

    goto :goto_1
.end method

.method private getDefaultAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 247
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_0
    return-object v1
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 233
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getDefaultAccountName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    :goto_0
    if-nez v1, :cond_0

    .line 239
    const-string v1, ""

    .line 241
    :cond_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not get default account name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getXmlAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 460
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 461
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 462
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initializeViewListeners()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setOnClientCertificateChangedListener(Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;)V

    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    return-void
.end method

.method private onManualSetup()V
    .locals 25

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 387
    .local v21, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->splitEmail(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 388
    .local v22, "emailParts":[Ljava/lang/String;
    move-object/from16 v8, v21

    .line 389
    .local v8, "user":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v20, v22, v3

    .line 391
    .local v20, "domain":Ljava/lang/String;
    const/4 v9, 0x0

    .line 392
    .local v9, "password":Ljava/lang/String;
    const/4 v10, 0x0

    .line 394
    .local v10, "clientCertificateAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    sget-object v7, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    .line 396
    .local v7, "authenticationType":Lcom/fsck/k9/mail/AuthType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v3}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v10

    .line 402
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    if-nez v3, :cond_0

    .line 403
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->newAccount()Lcom/fsck/k9/Account;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Account;->setEmail(Ljava/lang/String;)V

    .line 410
    new-instance v2, Lcom/fsck/k9/mail/ServerSettings;

    sget-object v3, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget-object v6, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-direct/range {v2 .. v10}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v2, "storeServer":Lcom/fsck/k9/mail/ServerSettings;
    new-instance v11, Lcom/fsck/k9/mail/ServerSettings;

    sget-object v12, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    sget-object v15, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v11, "transportServer":Lcom/fsck/k9/mail/ServerSettings;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/RemoteStore;->createStoreUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v23

    .line 415
    .local v23, "storeUri":Ljava/lang/String;
    invoke-static {v11}, Lcom/fsck/k9/mail/TransportUris;->createTransportUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v24

    .line 416
    .local v24, "transportUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->setupFolderNames(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finish()V

    .line 424
    return-void

    .line 398
    .end local v2    # "storeServer":Lcom/fsck/k9/mail/ServerSettings;
    .end local v7    # "authenticationType":Lcom/fsck/k9/mail/AuthType;
    .end local v11    # "transportServer":Lcom/fsck/k9/mail/ServerSettings;
    .end local v23    # "storeUri":Ljava/lang/String;
    .end local v24    # "transportUri":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 399
    .restart local v7    # "authenticationType":Lcom/fsck/k9/mail/AuthType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private onNext()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 340
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onManualSetup()V

    .line 365
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "email":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->splitEmail(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "emailParts":[Ljava/lang/String;
    aget-object v0, v2, v4

    .line 350
    .local v0, "domain":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findProviderForDomain(Ljava/lang/String;)Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    .line 351
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    if-nez v3, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onManualSetup()V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iget-object v3, v3, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 361
    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->showDialog(I)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_0
.end method

.method private setupFolderNames(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    const v1, 0x7f070388

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setDraftsFolderName(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    const v1, 0x7f070390

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setTrashFolderName(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    const v1, 0x7f07038c

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setSentFolderName(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    const v1, 0x7f070386

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setArchiveFolderName(Ljava/lang/String;)V

    .line 433
    const-string v0, ".yahoo.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    const-string v1, "Bulk Mail"

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setSpamFolderName(Ljava/lang/String;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    const v1, 0x7f07038e

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setSpamFolderName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showPassword(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 201
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 202
    .local v0, "cursorPosition":I
    if-eqz p1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 208
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private splitEmail(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 505
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 506
    .local v1, "retParts":[Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "emailParts":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v4

    :goto_0
    aput-object v2, v1, v4

    .line 508
    array-length v2, v0

    if-le v2, v3, :cond_1

    aget-object v2, v0, v3

    :goto_1
    aput-object v2, v1, v3

    .line 509
    return-object v1

    .line 507
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 508
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private updateViewVisibility(Z)V
    .locals 3
    .param p1, "usingCertificates"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 187
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setVisibility(I)V

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setVisibility(I)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 6

    .prologue
    .line 211
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 212
    .local v1, "clientCertificateChecked":Z
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v4}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "clientCertificateAlias":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "email":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 216
    invoke-static {v4}, Lcom/fsck/k9/helper/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/fsck/k9/EmailAddressValidator;

    .line 218
    invoke-virtual {v4, v2}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 220
    .local v3, "valid":Z
    :goto_0
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mManualSetupButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xff

    :goto_1
    invoke-static {v5, v4}, Lcom/fsck/k9/helper/Utility;->setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V

    .line 228
    return-void

    .line 218
    .end local v3    # "valid":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 227
    .restart local v3    # "valid":Z
    :cond_3
    const/16 v4, 0x80

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->validateFields()V

    .line 159
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 369
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 370
    iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mCheckedIncoming:Z

    if-nez v0, :cond_1

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mCheckedIncoming:Z

    .line 373
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    sget-object v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-static {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 378
    invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    .line 379
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->actionSetNames(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 380
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 177
    invoke-direct {p0, p2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->updateViewVisibility(Z)V

    .line 178
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->validateFields()V

    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->chooseCertificate()V

    .line 184
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 450
    :goto_0
    return-void

    .line 444
    :sswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_0

    .line 447
    :sswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onManualSetup()V

    goto :goto_0

    .line 442
    :sswitch_data_0
    .sparse-switch
        0x7f0c000d -> :sswitch_0
        0x7f0c010b -> :sswitch_1
    .end sparse-switch
.end method

.method public onClientCertificateChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->validateFields()V

    .line 170
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 85
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateCheckBox:Landroid/widget/CheckBox;

    .line 88
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/ClientCertificateSpinner;

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateSpinner:Lcom/fsck/k9/view/ClientCertificateSpinner;

    .line 89
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    .line 90
    const v0, 0x7f0c010b

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mManualSetupButton:Landroid/widget/Button;

    .line 91
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    .line 92
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mManualSetupButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 255
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iget-object v1, v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iget-object v2, v2, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;->note:Ljava/lang/String;

    .line 258
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0702eb

    .line 260
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/activity/setup/AccountSetupBasics$2;

    invoke-direct {v3, p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V

    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070153

    .line 267
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 272
    :cond_0
    return-object v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->initializeViewListeners()V

    .line 154
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->validateFields()V

    .line 155
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v1, "com.fsck.k9.AccountSetupBasics.account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "com.fsck.k9.AccountSetupBasics.account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    .line 131
    .end local v0    # "accountUuid":Ljava/lang/String;
    :cond_0
    const-string v1, "com.fsck.k9.AccountSetupBasics.provider"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const-string v1, "com.fsck.k9.AccountSetupBasics.provider"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    .line 135
    :cond_1
    const-string v1, "com.fsck.k9.AccountSetupBasics.checkedIncoming"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mCheckedIncoming:Z

    .line 137
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mClientCertificateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->updateViewVisibility(Z)V

    .line 139
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->showPassword(Z)V

    .line 140
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "com.fsck.k9.AccountSetupBasics.account"

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "com.fsck.k9.AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mProvider:Lcom/fsck/k9/activity/setup/AccountSetupBasics$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    :cond_1
    const-string v0, "com.fsck.k9.AccountSetupBasics.checkedIncoming"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->mCheckedIncoming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 165
    return-void
.end method

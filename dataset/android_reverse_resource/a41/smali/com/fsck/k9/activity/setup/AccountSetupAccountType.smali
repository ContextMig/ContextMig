.class public Lcom/fsck/k9/activity/setup/AccountSetupAccountType;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mMakeDefault:Z

.field private final serverNameSuggester:Lcom/fsck/k9/setup/ServerNameSuggester;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/fsck/k9/setup/ServerNameSuggester;

    invoke-direct {v0}, Lcom/fsck/k9/setup/ServerNameSuggester;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->serverNameSuggester:Lcom/fsck/k9/setup/ServerNameSuggester;

    return-void
.end method

.method public static actionSelectAccountType(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method private failure(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "use"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    const-string v2, "Failure"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const v2, 0x7f0700ba

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "toastText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 131
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    return-void
.end method

.method private setupDav()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    new-instance v9, Ljava/net/URI;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 87
    .local v9, "uriForDecode":Ljava/net/URI;
    const-string v2, ""

    .line 88
    .local v2, "userPass":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "userInfo":[Ljava/lang/String;
    array-length v1, v10

    if-le v1, v6, :cond_0

    .line 90
    aget-object v2, v10, v6

    .line 92
    :cond_0
    array-length v1, v10

    if-le v1, v7, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v10, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/helper/EmailHelper;->getDomainFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "domainPart":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->serverNameSuggester:Lcom/fsck/k9/setup/ServerNameSuggester;

    sget-object v4, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-virtual {v1, v4, v8}, Lcom/fsck/k9/setup/ServerNameSuggester;->suggestServerName(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "suggestedServerName":Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    const-string v1, "webdav+ssl+"

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "uri":Ljava/net/URI;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private setupStoreAndSmtpTransport(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;)V
    .locals 16
    .param p1, "serverType"    # Lcom/fsck/k9/mail/ServerSettings$Type;
    .param p2, "schemePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/helper/EmailHelper;->getDomainFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, "domainPart":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->serverNameSuggester:Lcom/fsck/k9/setup/ServerNameSuggester;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Lcom/fsck/k9/setup/ServerNameSuggester;->suggestServerName(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "suggestedStoreServerName":Ljava/lang/String;
    new-instance v14, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 66
    .local v14, "storeUriForDecode":Ljava/net/URI;
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v14}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v14}, Ljava/net/URI;->getPort()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v1, "storeUri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->serverNameSuggester:Lcom/fsck/k9/setup/ServerNameSuggester;

    sget-object v3, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-virtual {v2, v3, v13}, Lcom/fsck/k9/setup/ServerNameSuggester;->suggestServerName(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "suggestedTransportServerName":Ljava/lang/String;
    new-instance v15, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 72
    .local v15, "transportUriForDecode":Ljava/net/URI;
    new-instance v5, Ljava/net/URI;

    const-string v6, "smtp+tls+"

    invoke-virtual {v15}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v5, "transportUri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    iget-boolean v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mMakeDefault:Z

    invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V

    .line 123
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->finish()V

    .line 124
    return-void

    .line 106
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    const-string v2, "pop3+ssl+"

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->setupStoreAndSmtpTransport(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->failure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 110
    .end local v0    # "ex":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    const-string v2, "imap+ssl+"

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->setupStoreAndSmtpTransport(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->setupDav()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0008
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->setContentView(I)V

    .line 52
    const v1, 0x7f0c0009

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mAccount:Lcom/fsck/k9/Account;

    .line 58
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "makeDefault"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupAccountType;->mMakeDefault:Z

    .line 59
    return-void
.end method

.class public Lcom/dropbox/sync/android/DbxAuthActivity;
.super Landroid/app/Activity;
.source "DbxAuthActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final API_TYPE_SYNC:Ljava/lang/String; = "sync"

.field private static final EXTRA_REAL_INTENT:Ljava/lang/String; = "EXTRA_REAL_INTENET"


# instance fields
.field private mStarting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxAuthActivity;->mStarting:Z

    return-void
.end method

.method private static finishAuth(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 66
    if-nez p0, :cond_0

    .line 67
    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v5, "Result intent can\'t be null."

    invoke-direct {v4, v5}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_0
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "oauth2Tag":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v5, "oauth2:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    :cond_1
    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid result intent passed in. Missing \"oauth2:\" tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_2
    const-string v5, "ACCESS_SECRET"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "oauth2AccessToken":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 77
    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v5, "Invalid result intent passed in. Missing OAuth 2 access token."

    invoke-direct {v4, v5}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_3
    const-string v5, "UID"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "uid":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 82
    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v5, "Invalid result intent passed in. Missing uid."

    invoke-direct {v4, v5}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_4
    invoke-static {}, Lcom/dropbox/sync/android/DbxAccountManager;->hasInstance()Z

    move-result v5

    if-nez v5, :cond_6

    .line 94
    :cond_5
    :goto_0
    return v4

    .line 93
    :cond_6
    new-instance v2, Lcom/dropbox/sync/android/DbxToken$OAuth2;

    invoke-direct {v2, v0}, Lcom/dropbox/sync/android/DbxToken$OAuth2;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "tokenObj":Lcom/dropbox/sync/android/DbxToken$OAuth2;
    invoke-static {}, Lcom/dropbox/sync/android/DbxAccountManager;->getInstance()Lcom/dropbox/sync/android/DbxAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccountManager;->getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v2, v6}, Lcom/dropbox/sync/android/CoreAccountManager;->addLinkedAcct(Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/DbxAccountInfo;)Lcom/dropbox/sync/android/DbxAccount;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    goto :goto_0
.end method

.method static makeIntent(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/dropbox/sync/android/CoreConfig;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/sync/android/DbxAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_REAL_INTENET"

    iget-object v2, p1, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v2, v2, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/sync/android/CoreConfig;->hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    iget-object v3, v3, Lcom/dropbox/sync/android/CoreConfig$Hosts;->web:Ljava/lang/String;

    const-string v4, "sync"

    invoke-static {p0, v2, v3, v4}, Lcom/dropbox/client2/android/AuthActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "EXTRA_REAL_INTENET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 42
    .local v1, "realIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dropbox/sync/android/DbxAuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dropbox/sync/android/DbxAuthActivity;->mStarting:Z

    .line 46
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "realIntent":Landroid/content/Intent;
    :cond_0
    const v2, 0x1030010

    invoke-virtual {p0, v2}, Lcom/dropbox/sync/android/DbxAuthActivity;->setTheme(I)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxAuthActivity;->mStarting:Z

    if-nez v1, :cond_0

    .line 54
    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 55
    .local v0, "result":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxAuthActivity;->finishAuth(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/sync/android/DbxAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAuthActivity;->finish()V

    .line 62
    .end local v0    # "result":Landroid/content/Intent;
    :cond_0
    iput-boolean v2, p0, Lcom/dropbox/sync/android/DbxAuthActivity;->mStarting:Z

    .line 63
    return-void

    .line 58
    .restart local v0    # "result":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/dropbox/sync/android/DbxAuthActivity;->setResult(I)V

    goto :goto_0
.end method

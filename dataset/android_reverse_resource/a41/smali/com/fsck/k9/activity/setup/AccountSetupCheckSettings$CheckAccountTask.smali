.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final account:Lcom/fsck/k9/Account;

.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
    .param p2, "x1"    # Lcom/fsck/k9/Account;
    .param p3, "x2"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/Account;)V

    return-void
.end method

.method private cancelled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 454
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :goto_0
    return v0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIncoming()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 491
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v0

    .line 492
    .local v0, "store":Lcom/fsck/k9/mail/Store;
    instance-of v1, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    if-eqz v1, :cond_1

    .line 493
    new-array v1, v3, [Ljava/lang/Integer;

    const v2, 0x7f0700c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 497
    :goto_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Store;->checkSettings()V

    .line 499
    instance-of v1, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    if-eqz v1, :cond_0

    .line 500
    new-array v1, v3, [Ljava/lang/Integer;

    const v2, 0x7f0700c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2, v3, v5}, Lcom/fsck/k9/controller/MessagingController;->listFoldersSynchronous(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    .line 503
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    .line 504
    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V

    .line 505
    return-void

    .line 495
    :cond_1
    new-array v1, v3, [Ljava/lang/Integer;

    const v2, 0x7f0700c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private checkOutgoing()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v1

    instance-of v1, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    if-nez v1, :cond_0

    .line 479
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x7f0700c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 481
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/TransportProvider;->getInstance()Lcom/fsck/k9/mail/TransportProvider;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/TransportProvider;->getTransport(Landroid/content/Context;Lcom/fsck/k9/mail/store/StoreConfig;)Lcom/fsck/k9/mail/Transport;

    move-result-object v0

    .line 482
    .local v0, "transport":Lcom/fsck/k9/mail/Transport;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Transport;->close()V

    .line 484
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Transport;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Transport;->close()V

    .line 488
    return-void

    .line 486
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Transport;->close()V

    throw v1
.end method

.method private checkServerSettings(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V
    .locals 2
    .param p1, "direction"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 465
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$activity$setup$AccountSetupCheckSettings$CheckDirection:[I

    invoke-virtual {p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 467
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->checkIncoming()V

    goto :goto_0

    .line 471
    :pswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->checkOutgoing()V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearCertificateErrorNotifications(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V
    .locals 2
    .param p1, "direction"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    .line 450
    .local v0, "ctrl":Lcom/fsck/k9/controller/MessagingController;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/controller/MessagingController;->clearCertificateErrorNotifications(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 451
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    check-cast p1, [Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->doInBackground([Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 411
    aget-object v2, p1, v9

    .line 418
    .local v2, "direction":Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->cancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v10

    .line 422
    :cond_1
    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->clearCertificateErrorNotifications(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 424
    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->checkServerSettings(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 426
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->cancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 430
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 431
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_0
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "afe":Lcom/fsck/k9/mail/AuthenticationFailedException;
    const-string v5, "Error while testing settings"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const v7, 0x7f0700cc

    new-array v8, v8, [Ljava/lang/Object;

    .line 437
    invoke-virtual {v0}, Lcom/fsck/k9/mail/AuthenticationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_1
    aput-object v5, v8, v9

    .line 435
    invoke-static {v6, v7, v8}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {v0}, Lcom/fsck/k9/mail/AuthenticationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 438
    .end local v0    # "afe":Lcom/fsck/k9/mail/AuthenticationFailedException;
    :catch_1
    move-exception v1

    .line 439
    .local v1, "cve":Lcom/fsck/k9/mail/CertificateValidationException;
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-static {v5, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$700(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/mail/CertificateValidationException;)V

    goto :goto_0

    .line 440
    .end local v1    # "cve":Lcom/fsck/k9/mail/CertificateValidationException;
    :catch_2
    move-exception v3

    .line 441
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Error while testing settings"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v4, ""

    .line 443
    .local v4, "message":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const v6, 0x7f0700d3

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    .end local v4    # "message":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$900(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I)V

    .line 510
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 402
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

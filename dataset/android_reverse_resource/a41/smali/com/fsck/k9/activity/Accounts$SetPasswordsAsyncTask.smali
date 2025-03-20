.class Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;
.super Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPasswordsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/activity/misc/ExtendedAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mApplication:Landroid/app/Application;

.field private mIncomingPassword:Ljava/lang/String;

.field private mOutgoingPassword:Ljava/lang/String;

.field private mRemainingAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "incomingPassword"    # Ljava/lang/String;
    .param p4, "outgoingPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 968
    .local p5, "remainingAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;-><init>(Landroid/app/Activity;)V

    .line 969
    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    .line 970
    iput-object p3, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mIncomingPassword:Ljava/lang/String;

    .line 971
    iput-object p4, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mOutgoingPassword:Ljava/lang/String;

    .line 972
    iput-object p5, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mRemainingAccounts:Ljava/util/List;

    .line 973
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mApplication:Landroid/app/Application;

    .line 974
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 958
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v13, 0x0

    .line 988
    :try_start_0
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mIncomingPassword:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 990
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, "storeUri":Ljava/lang/String;
    invoke-static {v7}, Lcom/fsck/k9/mail/store/RemoteStore;->decodeStoreUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v1

    .line 992
    .local v1, "incoming":Lcom/fsck/k9/mail/ServerSettings;
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mIncomingPassword:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/ServerSettings;->newPassword(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v2

    .line 993
    .local v2, "newIncoming":Lcom/fsck/k9/mail/ServerSettings;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/RemoteStore;->createStoreUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v4

    .line 994
    .local v4, "newStoreUri":Ljava/lang/String;
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9, v4}, Lcom/fsck/k9/Account;->setStoreUri(Ljava/lang/String;)V

    .line 997
    .end local v1    # "incoming":Lcom/fsck/k9/mail/ServerSettings;
    .end local v2    # "newIncoming":Lcom/fsck/k9/mail/ServerSettings;
    .end local v4    # "newStoreUri":Ljava/lang/String;
    .end local v7    # "storeUri":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mOutgoingPassword:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 999
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v8

    .line 1000
    .local v8, "transportUri":Ljava/lang/String;
    invoke-static {v8}, Lcom/fsck/k9/mail/TransportUris;->decodeTransportUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v6

    .line 1001
    .local v6, "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mOutgoingPassword:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/ServerSettings;->newPassword(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v3

    .line 1002
    .local v3, "newOutgoing":Lcom/fsck/k9/mail/ServerSettings;
    invoke-static {v3}, Lcom/fsck/k9/mail/TransportUris;->createTransportUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v5

    .line 1003
    .local v5, "newTransportUri":Ljava/lang/String;
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9, v5}, Lcom/fsck/k9/Account;->setTransportUri(Ljava/lang/String;)V

    .line 1007
    .end local v3    # "newOutgoing":Lcom/fsck/k9/mail/ServerSettings;
    .end local v5    # "newTransportUri":Ljava/lang/String;
    .end local v6    # "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    .end local v8    # "transportUri":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/fsck/k9/Account;->setEnabled(Z)V

    .line 1010
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    iget-object v10, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 1013
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    .line 1016
    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mApplication:Landroid/app/Application;

    invoke-static {v9}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/fsck/k9/controller/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_0
    return-object v13

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Something went while setting account passwords"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 958
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/fsck/k9/activity/Accounts;

    .line 1028
    .local v0, "activity":Lcom/fsck/k9/activity/Accounts;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1030
    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$1000(Lcom/fsck/k9/activity/Accounts;)V

    .line 1031
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->removeProgressDialog()V

    .line 1033
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mRemainingAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mRemainingAccounts:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/Accounts;->access$1700(Lcom/fsck/k9/activity/Accounts;Ljava/util/List;)V

    .line 1036
    :cond_0
    return-void
.end method

.method protected showProgressDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 978
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mActivity:Landroid/app/Activity;

    const v5, 0x7f070358

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mOutgoingPassword:Ljava/lang/String;

    if-nez v4, :cond_0

    move v1, v3

    .line 980
    .local v1, "passwordCount":I
    :goto_0
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060008

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2, v0, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 983
    return-void

    .line 979
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "passwordCount":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

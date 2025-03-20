.class Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;
.super Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveAccountAsyncTask"
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

.field private mUp:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "up"    # Z

    .prologue
    .line 2165
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/ExtendedAsyncTask;-><init>(Landroid/app/Activity;)V

    .line 2166
    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    .line 2167
    iput-boolean p3, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mUp:Z

    .line 2168
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mUp:Z

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/Account;->move(Lcom/fsck/k9/Preferences;Z)V

    .line 2179
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2160
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/fsck/k9/activity/Accounts;

    .line 2187
    .local v0, "activity":Lcom/fsck/k9/activity/Accounts;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 2189
    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$1000(Lcom/fsck/k9/activity/Accounts;)V

    .line 2190
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->removeProgressDialog()V

    .line 2191
    return-void
.end method

.method protected showProgressDialog()V
    .locals 4

    .prologue
    .line 2172
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070286

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2173
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2174
    return-void
.end method

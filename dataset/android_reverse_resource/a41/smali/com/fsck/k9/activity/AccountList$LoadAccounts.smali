.class Lcom/fsck/k9/activity/AccountList$LoadAccounts;
.super Landroid/os/AsyncTask;
.source "AccountList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/AccountList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAccounts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/fsck/k9/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/AccountList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/AccountList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/AccountList;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/fsck/k9/activity/AccountList$LoadAccounts;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AccountList$LoadAccounts;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v1, p0, Lcom/fsck/k9/activity/AccountList$LoadAccounts;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AccountList$LoadAccounts;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    iget-object v0, p0, Lcom/fsck/k9/activity/AccountList$LoadAccounts;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/AccountList;->populateListView(Ljava/util/List;)V

    .line 181
    return-void
.end method

.class public abstract Lcom/fsck/k9/activity/AccountList;
.super Lcom/fsck/k9/activity/K9ListActivity;
.source "AccountList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/AccountList$LoadAccounts;,
        Lcom/fsck/k9/activity/AccountList$AccountsAdapter;
    }
.end annotation


# instance fields
.field private mFontSizes:Lcom/fsck/k9/FontSizes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9ListActivity;-><init>()V

    .line 34
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/AccountList;->mFontSizes:Lcom/fsck/k9/FontSizes;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/AccountList;)Lcom/fsck/k9/FontSizes;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/AccountList;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/activity/AccountList;->mFontSizes:Lcom/fsck/k9/FontSizes;

    return-object v0
.end method


# virtual methods
.method protected abstract displaySpecialAccounts()Z
.end method

.method protected abstract onAccountSelected(Lcom/fsck/k9/BaseAccount;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/AccountList;->setResult(I)V

    .line 42
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/AccountList;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/activity/AccountList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 45
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 47
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/BaseAccount;

    .line 61
    .local v0, "account":Lcom/fsck/k9/BaseAccount;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/AccountList;->onAccountSelected(Lcom/fsck/k9/BaseAccount;)V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/fsck/k9/activity/K9ListActivity;->onResume()V

    .line 55
    new-instance v0, Lcom/fsck/k9/activity/AccountList$LoadAccounts;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/AccountList$LoadAccounts;-><init>(Lcom/fsck/k9/activity/AccountList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/AccountList$LoadAccounts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public populateListView(Ljava/util/List;)V
    .locals 6
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
    .line 71
    .local p1, "realAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/BaseAccount;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/activity/AccountList;->displaySpecialAccounts()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->isHideSpecialAccounts()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    invoke-static {p0}, Lcom/fsck/k9/search/SearchAccount;->createUnifiedInboxAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v4

    .line 75
    .local v4, "unifiedInboxAccount":Lcom/fsck/k9/BaseAccount;
    invoke-static {p0}, Lcom/fsck/k9/search/SearchAccount;->createAllMessagesAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v2

    .line 77
    .local v2, "allMessagesAccount":Lcom/fsck/k9/BaseAccount;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v2    # "allMessagesAccount":Lcom/fsck/k9/BaseAccount;
    .end local v4    # "unifiedInboxAccount":Lcom/fsck/k9/BaseAccount;
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    new-instance v1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;-><init>(Lcom/fsck/k9/activity/AccountList;Ljava/util/List;)V

    .line 83
    .local v1, "adapter":Lcom/fsck/k9/activity/AccountList$AccountsAdapter;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/AccountList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 84
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 86
    return-void
.end method

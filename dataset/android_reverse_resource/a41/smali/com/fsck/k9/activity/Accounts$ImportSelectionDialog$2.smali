.class Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->show(Lcom/fsck/k9/activity/Accounts;Landroid/util/SparseBooleanArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

.field final synthetic val$activity:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 1690
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 1691
    .local v9, "listView":Landroid/widget/ListView;
    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 1693
    .local v10, "pos":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->access$2000(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    move-result-object v1

    iget-boolean v1, v1, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;->globalSettings:Z

    if-eqz v1, :cond_1

    invoke-virtual {v10, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 1694
    .local v2, "includeGlobals":Z
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1695
    .local v3, "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->access$2000(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    move-result-object v1

    iget-boolean v1, v1, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;->globalSettings:Z

    if-eqz v1, :cond_2

    const/4 v11, 0x1

    .line 1696
    .local v11, "start":I
    :goto_1
    move v8, v11

    .local v8, "i":I
    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v7

    .local v7, "end":I
    :goto_2
    if-ge v8, v7, :cond_3

    .line 1697
    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->access$2000(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    move-result-object v1

    iget-object v1, v1, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;->accounts:Ljava/util/List;

    sub-int v5, v8, v11

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    iget-object v1, v1, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->uuid:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v2    # "includeGlobals":Z
    .end local v3    # "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "end":I
    .end local v8    # "i":I
    .end local v11    # "start":I
    :cond_1
    move v2, v12

    .line 1693
    goto :goto_0

    .restart local v2    # "includeGlobals":Z
    .restart local v3    # "accountUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move v11, v12

    .line 1695
    goto :goto_1

    .line 1707
    .restart local v7    # "end":I
    .restart local v8    # "i":I
    .restart local v11    # "start":I
    :cond_3
    const/4 v4, 0x0

    .line 1709
    .local v4, "overwrite":Z
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1710
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1, v6}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1712
    new-instance v0, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->val$activity:Lcom/fsck/k9/activity/Accounts;

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->this$0:Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    .line 1713
    invoke-static {v5}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->access$2100(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;-><init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;ZLandroid/net/Uri;Lcom/fsck/k9/activity/Accounts$1;)V

    .line 1714
    .local v0, "importAsyncTask":Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1, v0}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1715
    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1716
    return-void
.end method

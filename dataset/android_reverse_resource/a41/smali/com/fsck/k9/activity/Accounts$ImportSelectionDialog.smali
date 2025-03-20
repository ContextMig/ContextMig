.class Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Lcom/fsck/k9/activity/misc/NonConfigurationInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportSelectionDialog"
.end annotation


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

.field private mSelection:Landroid/util/SparseBooleanArray;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;Landroid/net/Uri;)V
    .locals 0
    .param p1, "importContents"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1621
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    .line 1622
    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mUri:Landroid/net/Uri;

    .line 1623
    return-void
.end method

.method static synthetic access$2000(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public restore(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1627
    check-cast p1, Lcom/fsck/k9/activity/Accounts;

    .end local p1    # "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mSelection:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->show(Lcom/fsck/k9/activity/Accounts;Landroid/util/SparseBooleanArray;)V

    .line 1628
    return-void
.end method

.method public retain()Z
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mSelection:Landroid/util/SparseBooleanArray;

    .line 1636
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 1638
    const/4 v0, 0x1

    .line 1640
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Lcom/fsck/k9/activity/Accounts;)V
    .locals 1
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->show(Lcom/fsck/k9/activity/Accounts;Landroid/util/SparseBooleanArray;)V

    .line 1645
    return-void
.end method

.method public show(Lcom/fsck/k9/activity/Accounts;Landroid/util/SparseBooleanArray;)V
    .locals 10
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "selection"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v9, 0x1

    .line 1648
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1650
    .local v3, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    iget-boolean v7, v7, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;->globalSettings:Z

    if-eqz v7, :cond_0

    .line 1651
    const v7, 0x7f07035d

    invoke-virtual {p1, v7}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_0
    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mImportContents:Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;

    iget-object v7, v7, Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;->accounts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    .line 1655
    .local v0, "account":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    iget-object v8, v0, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->name:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1658
    .end local v0    # "account":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1659
    .local v4, "count":I
    new-array v2, v4, [Z

    .line 1660
    .local v2, "checkedItems":[Z
    if-eqz p2, :cond_2

    .line 1661
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 1662
    invoke-virtual {p2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    aput-boolean v7, v2, v5

    .line 1661
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1665
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 1666
    aput-boolean v9, v2, v5

    .line 1665
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1674
    :cond_3
    new-instance v6, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$1;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$1;-><init>(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;)V

    .line 1681
    .local v6, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1682
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v7, v2, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1683
    const v7, 0x7f070362

    invoke-virtual {p1, v7}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1684
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1685
    const v7, 0x7f0702eb

    new-instance v8, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;

    invoke-direct {v8, p0, p1}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$2;-><init>(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;Lcom/fsck/k9/activity/Accounts;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1718
    const v7, 0x7f070153

    new-instance v8, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$3;

    invoke-direct {v8, p0, p1}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog$3;-><init>(Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;Lcom/fsck/k9/activity/Accounts;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1726
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 1727
    return-void
.end method

.class Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;
.super Lcom/fsck/k9/activity/Accounts$SimpleDialog;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountsImportedDialog"
.end annotation


# instance fields
.field private mFilename:Ljava/lang/String;

.field private mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;


# direct methods
.method constructor <init>(Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;Ljava/lang/String;)V
    .locals 3
    .param p1, "importResults"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1561
    const v0, 0x7f070364

    const v1, 0x7f070363

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/fsck/k9/activity/Accounts$SimpleDialog;-><init>(II[Ljava/lang/Object;)V

    .line 1562
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;->mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    .line 1563
    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;->mFilename:Ljava/lang/String;

    .line 1564
    return-void
.end method


# virtual methods
.method protected generateMessage(Lcom/fsck/k9/activity/Accounts;)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1570
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;->mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    iget-object v2, v2, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;->importedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1571
    .local v1, "imported":I
    invoke-virtual {p1}, Lcom/fsck/k9/activity/Accounts;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    new-array v4, v7, [Ljava/lang/Object;

    .line 1572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1571
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, "accounts":Ljava/lang/String;
    const v2, 0x7f070363

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;->mFilename:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p1, v2, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected okayAction(Lcom/fsck/k9/activity/Accounts;)V
    .locals 7
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1578
    invoke-virtual {p1}, Lcom/fsck/k9/activity/Accounts;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1579
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    .line 1580
    .local v4, "preferences":Lcom/fsck/k9/Preferences;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    .local v3, "disabledAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;->mImportResults:Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;

    iget-object v5, v5, Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;->importedAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;

    .line 1582
    .local v1, "accountPair":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    iget-object v6, v1, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;

    iget-object v6, v6, Lcom/fsck/k9/preferences/SettingsImporter$AccountDescription;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1583
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1584
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1587
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "accountPair":Lcom/fsck/k9/preferences/SettingsImporter$AccountDescriptionPair;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1588
    invoke-static {p1, v3}, Lcom/fsck/k9/activity/Accounts;->access$1700(Lcom/fsck/k9/activity/Accounts;Ljava/util/List;)V

    .line 1592
    :goto_1
    return-void

    .line 1590
    :cond_2
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    goto :goto_1
.end method

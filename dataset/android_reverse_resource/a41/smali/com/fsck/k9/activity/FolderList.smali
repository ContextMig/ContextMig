.class public Lcom/fsck/k9/activity/FolderList;
.super Lcom/fsck/k9/activity/K9ListActivity;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/FolderList$FolderClickListener;,
        Lcom/fsck/k9/activity/FolderList$FolderViewHolder;,
        Lcom/fsck/k9/activity/FolderList$FolderListAdapter;,
        Lcom/fsck/k9/activity/FolderList$FolderListHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_FROM_SHORTCUT:Ljava/lang/String; = "fromShortcut"

.field private static final REFRESH_REMOTE:Z = true


# instance fields
.field private context:Landroid/content/Context;

.field private mAccount:Lcom/fsck/k9/Account;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarProgressView:Landroid/view/View;

.field private mActionBarSubTitle:Landroid/widget/TextView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mActionBarUnread:Landroid/widget/TextView;

.field private mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

.field private mFontSizes:Lcom/fsck/k9/FontSizes;

.field private mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mRefreshMenuItem:Landroid/view/MenuItem;

.field private mUnreadMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9ListActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;-><init>(Lcom/fsck/k9/activity/FolderList;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    .line 93
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mFontSizes:Lcom/fsck/k9/FontSizes;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/FolderList;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget v0, p0, Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/FolderList;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mRefreshMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fsck/k9/activity/FolderList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/FolderList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/activity/FolderList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/FolderList;->onOpenFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/fsck/k9/activity/FolderList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/activity/FolderList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/FontSizes;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mFontSizes:Lcom/fsck/k9/FontSizes;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarUnread:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    return-object v0
.end method

.method public static actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 249
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/content/Intent;

    move-result-object v0

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method public static actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "fromShortcut"    # Z

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/FolderList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    if-eqz p2, :cond_0

    .line 242
    const-string v1, "fromShortcut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    :cond_0
    return-object v0
.end method

.method private checkMail(Lcom/fsck/k9/activity/FolderInfoHolder;)V
    .locals 7
    .param p1, "folder"    # Lcom/fsck/k9/activity/FolderInfoHolder;

    .prologue
    .line 210
    invoke-static {p0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;

    move-result-object v1

    .line 211
    .local v1, "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    const/4 v3, 0x1

    const-string v4, "FolderList checkMail"

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mail/power/TracingPowerManager;->newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v2

    .line 212
    .local v2, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->setReferenceCounted(Z)V

    .line 213
    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 214
    new-instance v0, Lcom/fsck/k9/activity/FolderList$1;

    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/FolderList$1;-><init>(Lcom/fsck/k9/activity/FolderList;Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)V

    .line 232
    .local v0, "listener":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v5, p1, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V

    .line 233
    iget-object v3, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/FolderList;->sendMail(Lcom/fsck/k9/Account;)V

    .line 234
    return-void
.end method

.method private configureFolderSearchView(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 589
    const v2, 0x7f0c0122

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 590
    .local v0, "folderMenuItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 591
    .local v1, "folderSearchView":Landroid/widget/SearchView;
    const v2, 0x7f0701d8

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 592
    new-instance v2, Lcom/fsck/k9/activity/FolderList$3;

    invoke-direct {v2, p0, v0}, Lcom/fsck/k9/activity/FolderList$3;-><init>(Lcom/fsck/k9/activity/FolderList;Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 608
    new-instance v2, Lcom/fsck/k9/activity/FolderList$4;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/FolderList$4;-><init>(Lcom/fsck/k9/activity/FolderList;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 616
    return-void
.end method

.method private getActionBarProgressView()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initializeActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 306
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 307
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 309
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, "customView":Landroid/view/View;
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarTitle:Landroid/widget/TextView;

    .line 311
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarSubTitle:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarUnread:Landroid/widget/TextView;

    .line 314
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 315
    return-void
.end method

.method private initializeActivityView()V
    .locals 2

    .prologue
    .line 345
    new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;-><init>(Lcom/fsck/k9/activity/FolderList;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    .line 346
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->restorePreviousData()V

    .line 348
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/FolderList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 349
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 350
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 469
    invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->listAccounts(Landroid/content/Context;)V

    .line 470
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->finish()V

    .line 471
    return-void
.end method

.method private onClearFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->clearFolder(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/ActivityListener;)V

    .line 481
    return-void
.end method

.method private onCompact(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    const v1, 0x7f070163

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->workingAccount(I)V

    .line 577
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->compact(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 578
    return-void
.end method

.method private onEditAccount()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 466
    return-void
.end method

.method private onEditPrefs()V
    .locals 0

    .prologue
    .line 462
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/Prefs;->actionPrefs(Landroid/content/Context;)V

    .line 463
    return-void
.end method

.method private onEmptyTrash(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    .line 476
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->emptyTrash(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 477
    return-void
.end method

.method private onOpenFolder(Ljava/lang/String;)V
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 569
    new-instance v0, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v0, p1}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, "search":Lcom/fsck/k9/search/LocalSearch;
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p1}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 572
    invoke-static {p0, v0, v2, v2}, Lcom/fsck/k9/activity/MessageList;->actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZ)V

    .line 573
    return-void
.end method

.method private onRefresh(Z)V
    .locals 3
    .param p1, "forceRemote"    # Z

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/fsck/k9/controller/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    .line 459
    return-void
.end method

.method private restorePreviousData()V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "previousData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "previousData":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$702(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 358
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$802(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 360
    :cond_0
    return-void
.end method

.method private sendMail(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 485
    return-void
.end method

.method private setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V
    .locals 3
    .param p1, "newMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Account;->setFolderDisplayMode(Lcom/fsck/k9/Account$FolderMode;)Z

    .line 446
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 447
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq v0, v1, :cond_0

    .line 448
    invoke-static {p0, v2}, Lcom/fsck/k9/service/MailService;->actionRestartPushers(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->onRefresh(Z)V

    .line 452
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 619
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 620
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 622
    .local v0, "folder":Lcom/fsck/k9/activity/FolderInfoHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 634
    :goto_0
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 624
    :pswitch_0
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/activity/FolderList;->onClearFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->checkMail(Lcom/fsck/k9/activity/FolderInfoHolder;)V

    goto :goto_0

    .line 630
    :pswitch_2
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/fsck/k9/activity/setup/FolderSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x7f0c011f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 255
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/fsck/k9/activity/UpgradeDatabases;->actionUpgradeDatabases(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->finish()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->getActionBarProgressView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBarProgressView:Landroid/view/View;

    .line 263
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mActionBar:Landroid/app/ActionBar;

    .line 264
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->initializeActionBar()V

    .line 265
    const v1, 0x7f03001a

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->setContentView(I)V

    .line 266
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    .line 267
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 268
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 269
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 270
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 271
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/fsck/k9/activity/FolderList$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/FolderList$2;-><init>(Lcom/fsck/k9/activity/FolderList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->registerForContextMenu(Landroid/view/View;)V

    .line 278
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mInflater:Landroid/view/LayoutInflater;

    .line 282
    iput-object p0, p0, Lcom/fsck/k9/activity/FolderList;->context:Landroid/content/Context;

    .line 284
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList;->onNewIntent(Landroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    new-instance v0, Lde/cketti/library/changelog/ChangeLog;

    invoke-direct {v0, p0}, Lde/cketti/library/changelog/ChangeLog;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, "cl":Lde/cketti/library/changelog/ChangeLog;
    invoke-virtual {v0}, Lde/cketti/library/changelog/ChangeLog;->isFirstRun()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lde/cketti/library/changelog/ChangeLog;->getLogDialog()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 638
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/K9ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 639
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 640
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d0003

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 642
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 644
    .local v0, "folder":Lcom/fsck/k9/activity/FolderInfoHolder;
    iget-object v2, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 645
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 581
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 582
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 583
    const v0, 0x7f0c0117

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mRefreshMenuItem:Landroid/view/MenuItem;

    .line 584
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/FolderList;->configureFolderSearchView(Landroid/view/Menu;)V

    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 405
    sparse-switch p1, :sswitch_data_0

    .line 441
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/K9ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 407
    :sswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onAccounts()V

    goto :goto_0

    .line 412
    :sswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onEditAccount()V

    goto :goto_0

    .line 417
    :sswitch_2
    const v2, 0x7f0701d9

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 418
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 423
    .end local v0    # "toast":Landroid/widget/Toast;
    :sswitch_3
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 427
    :sswitch_4
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 431
    :sswitch_5
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 435
    :sswitch_6
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 405
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x24 -> :sswitch_2
        0x2d -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/FolderList;->setIntent(Landroid/content/Intent;)V

    .line 321
    iput v2, p0, Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I

    .line 322
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    .line 325
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->finish()V

    .line 342
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v1, "fromShortcut"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-NONE-"

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    .line 336
    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/FolderList;->onOpenFolder(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->finish()V

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->initializeActivityView()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 488
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 556
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 490
    :sswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onAccounts()V

    goto :goto_0

    .line 495
    :sswitch_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->onSearchRequested()Z

    goto :goto_0

    .line 500
    :sswitch_2
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/compose/MessageActions;->actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 505
    :sswitch_3
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v5

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0

    .line 510
    :sswitch_4
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0

    .line 515
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/FolderList;->onRefresh(Z)V

    goto :goto_0

    .line 520
    :sswitch_6
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onEditAccount()V

    goto :goto_0

    .line 525
    :sswitch_7
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->onEditPrefs()V

    goto :goto_0

    .line 530
    :sswitch_8
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->onEmptyTrash(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 535
    :sswitch_9
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->onCompact(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 540
    :sswitch_a
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 544
    :sswitch_b
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 548
    :sswitch_c
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 552
    :sswitch_d
    sget-object v0, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/FolderList;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 488
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c010f -> :sswitch_8
        0x7f0c0110 -> :sswitch_6
        0x7f0c0116 -> :sswitch_1
        0x7f0c0117 -> :sswitch_3
        0x7f0c0118 -> :sswitch_2
        0x7f0c0123 -> :sswitch_d
        0x7f0c0124 -> :sswitch_a
        0x7f0c0125 -> :sswitch_b
        0x7f0c0126 -> :sswitch_c
        0x7f0c0127 -> :sswitch_4
        0x7f0c0128 -> :sswitch_9
        0x7f0c0129 -> :sswitch_5
        0x7f0c012b -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/fsck/k9/activity/K9ListActivity;->onPause()V

    .line 369
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 370
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fsck/k9/activity/ActivityListener;->onPause(Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 379
    invoke-super {p0}, Lcom/fsck/k9/activity/K9ListActivity;->onResume()V

    .line 381
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const-string v0, "account unavaliabale, not showing folder-list but account-list"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-static {p0}, Lcom/fsck/k9/activity/Accounts;->listAccounts(Landroid/content/Context;)V

    .line 384
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->finish()V

    .line 400
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    if-nez v0, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/fsck/k9/activity/FolderList;->initializeActivityView()V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V

    .line 392
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 394
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->getAccountStats(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 396
    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/FolderList;->onRefresh(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->cancelNotificationsForAccount(Lcom/fsck/k9/Account;)V

    .line 399
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fsck/k9/activity/ActivityListener;->onResume(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, "appData":Landroid/os/Bundle;
    const-string v1, "com.fsck.k9.search_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/fsck/k9/activity/FolderList;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 565
    const/4 v1, 0x1

    return v1
.end method

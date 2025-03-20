.class public Lcom/fsck/k9/activity/Accounts;
.super Lcom/fsck/k9/activity/K9ListActivity;
.source "Accounts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;,
        Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;,
        Lcom/fsck/k9/activity/Accounts$ImportAsyncTask;,
        Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;,
        Lcom/fsck/k9/activity/Accounts$AccountClickListener;,
        Lcom/fsck/k9/activity/Accounts$AccountsAdapter;,
        Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;,
        Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;,
        Lcom/fsck/k9/activity/Accounts$SimpleDialog;,
        Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;,
        Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;,
        Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;,
        Lcom/fsck/k9/activity/Accounts$AccountsHandler;
    }
.end annotation


# static fields
.field private static ACCOUNT_STATS:Ljava/lang/String; = null

.field public static final ACTION_IMPORT_SETTINGS:Ljava/lang/String; = "importSettings"

.field private static final ACTIVITY_REQUEST_PICK_SETTINGS_FILE:I = 0x1

.field private static final ACTIVITY_REQUEST_SAVE_SETTINGS_FILE:I = 0x2

.field private static final ANDROID_MARKET_URL:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=org.openintents.filemanager"

.field private static final DIALOG_CLEAR_ACCOUNT:I = 0x2

.field private static final DIALOG_NO_FILE_MANAGER:I = 0x4

.field private static final DIALOG_RECREATE_ACCOUNT:I = 0x3

.field private static final DIALOG_REMOVE_ACCOUNT:I = 0x1

.field public static final EXTRA_STARTUP:Ljava/lang/String; = "startup"

.field private static SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String; = null

.field private static final SPECIAL_ACCOUNTS_COUNT:I = 0x2

.field private static final STATE_EXPORT_ACCOUNTS:Ljava/lang/String; = "exportAccountUuids"

.field private static final STATE_EXPORT_GLOBAL_SETTINGS:Ljava/lang/String; = "exportGlobalSettings"

.field private static STATE_UNREAD_COUNT:Ljava/lang/String;

.field private static USED_LIBRARIES:[[Ljava/lang/String;


# instance fields
.field private accountStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/AccountStats;",
            ">;"
        }
    .end annotation
.end field

.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/BaseAccount;",
            ">;"
        }
    .end annotation
.end field

.field private exportAccountUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exportGlobalSettings:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarSubTitle:Landroid/widget/TextView;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mActionBarUnread:Landroid/widget/TextView;

.field private mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

.field private mAllMessagesAccount:Lcom/fsck/k9/search/SearchAccount;

.field private mFontSizes:Lcom/fsck/k9/FontSizes;

.field private mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

.field mListener:Lcom/fsck/k9/activity/ActivityListener;

.field private mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

.field private mRefreshMenuItem:Landroid/view/MenuItem;

.field private mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

.field private mUnifiedInboxAccount:Lcom/fsck/k9/search/SearchAccount;

.field private mUnreadMessageCount:I

.field private pendingWork:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/fsck/k9/BaseAccount;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    const-string v0, "accountStats"

    sput-object v0, Lcom/fsck/k9/activity/Accounts;->ACCOUNT_STATS:Ljava/lang/String;

    .line 334
    const-string v0, "unreadCount"

    sput-object v0, Lcom/fsck/k9/activity/Accounts;->STATE_UNREAD_COUNT:Ljava/lang/String;

    .line 335
    const-string v0, "selectedContextAccount"

    sput-object v0, Lcom/fsck/k9/activity/Accounts;->SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String;

    .line 1276
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Android Support Library"

    aput-object v2, v1, v4

    const-string v2, "https://developer.android.com/topic/libraries/support-library/index.html"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ckChangeLog"

    aput-object v2, v1, v4

    const-string v2, "https://github.com/cketti/ckChangeLog"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Commons IO"

    aput-object v2, v1, v4

    const-string v2, "http://commons.apache.org/io/"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Glide"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/bumptech/glide"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HoloColorPicker"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/LarsWerkman/HoloColorPicker"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jsoup"

    aput-object v3, v2, v4

    const-string v3, "https://jsoup.org/"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jutf7"

    aput-object v3, v2, v4

    const-string v3, "http://jutf7.sourceforge.net/"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JZlib"

    aput-object v3, v2, v4

    const-string v3, "http://www.jcraft.com/jzlib/"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Mime4j"

    aput-object v3, v2, v4

    const-string v3, "http://james.apache.org/mime4j/"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Moshi"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/square/moshi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Okio"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/square/okio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SafeContentResolver"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/cketti/SafeContentResolver"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ShowcaseView"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/amlcurran/ShowcaseView"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Timber"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/JakeWharton/timber"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TokenAutoComplete"

    aput-object v3, v2, v4

    const-string v3, "https://github.com/splitwise/TokenAutoComplete/"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/activity/Accounts;->USED_LIBRARIES:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9ListActivity;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->accountStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentMap;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I

    .line 128
    new-instance v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    .line 130
    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mAllMessagesAccount:Lcom/fsck/k9/search/SearchAccount;

    .line 131
    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mUnifiedInboxAccount:Lcom/fsck/k9/search/SearchAccount;

    .line 132
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mFontSizes:Lcom/fsck/k9/FontSizes;

    .line 253
    new-instance v0, Lcom/fsck/k9/activity/Accounts$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/Accounts$1;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    .line 500
    new-instance v0, Lcom/fsck/k9/activity/Accounts$2;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/Accounts$2;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->storageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mActionBarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/Accounts;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget v0, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->refresh()V

    return-void
.end method

.method static synthetic access$102(Lcom/fsck/k9/activity/Accounts;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I

    return p1
.end method

.method static synthetic access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p1, "x1"    # Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/fsck/k9/activity/Accounts;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/Accounts;->promptForServerPasswords(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/BaseAccount;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mActionBarUnread:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/FontSizes;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mFontSizes:Lcom/fsck/k9/FontSizes;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fsck/k9/activity/Accounts;II[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/activity/Accounts;->showSimpleDialog(II[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p1, "x1"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/Accounts;->showAccountsImportedDialog(Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;
    .param p1, "x1"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/Accounts;->showImportSelectionDialog(Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mActionBarSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->accountStats:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/Accounts;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mRefreshMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private accountLocation(Lcom/fsck/k9/BaseAccount;)Ljava/util/EnumSet;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/BaseAccount;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->MIDDLE:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 549
    .local v0, "accountLocation":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;>;"
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/BaseAccount;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->MIDDLE:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 552
    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->TOP:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/BaseAccount;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->MIDDLE:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 556
    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->BOTTOM:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_1
    return-object v0
.end method

.method private createSpecialAccounts()V
    .locals 1

    .prologue
    .line 464
    invoke-static {p0}, Lcom/fsck/k9/search/SearchAccount;->createUnifiedInboxAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mUnifiedInboxAccount:Lcom/fsck/k9/search/SearchAccount;

    .line 465
    invoke-static {p0}, Lcom/fsck/k9/search/SearchAccount;->createAllMessagesAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mAllMessagesAccount:Lcom/fsck/k9/search/SearchAccount;

    .line 466
    return-void
.end method

.method public static createUnreadSearch(Landroid/content/Context;Lcom/fsck/k9/BaseAccount;)Lcom/fsck/k9/search/LocalSearch;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;

    .prologue
    .line 360
    const v3, 0x7f07033a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f0703a7

    .line 361
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 360
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "searchTitle":Ljava/lang/String;
    instance-of v3, p1, Lcom/fsck/k9/search/SearchAccount;

    if-eqz v3, :cond_0

    .line 365
    check-cast p1, Lcom/fsck/k9/search/SearchAccount;

    .end local p1    # "account":Lcom/fsck/k9/BaseAccount;
    invoke-virtual {p1}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/search/LocalSearch;->clone()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v1

    .line 366
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {v1, v2}, Lcom/fsck/k9/search/LocalSearch;->setName(Ljava/lang/String;)V

    .line 376
    :goto_0
    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$SearchField;->READ:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v4, "1"

    sget-object v5, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1, v3, v4, v5}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 378
    return-object v1

    .line 368
    .end local v1    # "search":Lcom/fsck/k9/search/LocalSearch;
    .restart local p1    # "account":Lcom/fsck/k9/BaseAccount;
    :cond_0
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1, v2}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v1    # "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    move-object v0, p1

    .line 371
    check-cast v0, Lcom/fsck/k9/Account;

    .line 372
    .local v0, "realAccount":Lcom/fsck/k9/Account;
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->excludeSpecialFolders(Lcom/fsck/k9/search/LocalSearch;)V

    .line 373
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->limitToDisplayableFolders(Lcom/fsck/k9/search/LocalSearch;)V

    goto :goto_0
.end method

.method private getVersionNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1362
    const-string v1, "?"

    .line 1364
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1365
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 1366
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static importSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/Accounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "importSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method private initializeActionBar()V
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 450
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 452
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, "customView":Landroid/view/View;
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mActionBarTitle:Landroid/widget/TextView;

    .line 454
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mActionBarSubTitle:Landroid/widget/TextView;

    .line 455
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mActionBarUnread:Landroid/widget/TextView;

    .line 457
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 458
    return-void
.end method

.method public static listAccounts(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/Accounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x34008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    const-string v1, "startup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method private onAbout()V
    .locals 15

    .prologue
    const v14, 0x7f0703da

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 1295
    const v1, 0x7f070147

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1296
    .local v6, "appName":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1297
    .local v10, "year":I
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1298
    .local v0, "wv":Landroid/webkit/WebView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />"

    .line 1299
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<img src=\"file:///android_asset/icon.png\" alt=\""

    .line 1300
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"/>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<h1>"

    .line 1301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070005

    .line 1302
    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<a href=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0703db

    .line 1303
    invoke-virtual {p0, v12}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v2

    .line 1302
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1304
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</a>"

    .line 1305
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</h1><p>"

    .line 1306
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1307
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    .line 1308
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070199

    .line 1309
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->getVersionNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</p><p>"

    .line 1310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070142

    .line 1311
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    const v5, 0x7f070141

    .line 1312
    invoke-virtual {p0, v5}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1311
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</p><p>"

    .line 1313
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070148

    .line 1314
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<a href=\""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1315
    invoke-virtual {p0, v14}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "\">"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1316
    invoke-virtual {p0, v14}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "</a>"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1314
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</p><hr/><p>"

    .line 1318
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070143

    .line 1319
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</p><hr/><p>"

    .line 1320
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070146

    .line 1321
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</p><hr/><p>"

    .line 1322
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1324
    .local v7, "html":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<ul>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1325
    .local v9, "libs":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/fsck/k9/activity/Accounts;->USED_LIBRARIES:[[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v8, v3, v1

    .line 1326
    .local v8, "library":[Ljava/lang/String;
    const-string v5, "<li><a href=\""

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v11, v8, v13

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "\">"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v11, v8, v2

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "</a></li>"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    .end local v8    # "library":[Ljava/lang/String;
    :cond_0
    const-string v1, "</ul>"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const v1, 0x7f070145

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</p><hr/><p>"

    .line 1331
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070144

    .line 1332
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    const-string v5, "<div>TypePad \u7d75\u6587\u5b57\u30a2\u30a4\u30b3\u30f3\u753b\u50cf (<a href=\"http://typepad.jp/\">Six Apart Ltd</a>) / <a href=\"http://creativecommons.org/licenses/by/2.1/jp/\">CC BY 2.1</a></div>"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</p>"

    .line 1336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    const-string v1, "file:///android_res/drawable/"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1341
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1342
    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0702eb

    new-instance v3, Lcom/fsck/k9/activity/Accounts$8;

    invoke-direct {v3, p0}, Lcom/fsck/k9/activity/Accounts$8;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    .line 1343
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0703d3

    new-instance v3, Lcom/fsck/k9/activity/Accounts$7;

    invoke-direct {v3, p0}, Lcom/fsck/k9/activity/Accounts$7;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    .line 1348
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1353
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1354
    return-void
.end method

.method private onActivateAccount(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v0, "disabledAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->promptForServerPasswords(Ljava/util/List;)V

    .line 692
    return-void
.end method

.method private onAddNewAccount()V
    .locals 0

    .prologue
    .line 613
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/content/Context;)V

    .line 614
    return-void
.end method

.method private onCheckMail(Lcom/fsck/k9/Account;)V
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 627
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/controller/MessagingListener;)V

    .line 628
    if-nez p1, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 634
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_0
.end method

.method private onClear(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 1226
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/Accounts;->showDialog(I)V

    .line 1228
    return-void
.end method

.method private onClearCommands(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController;->clearAllPending(Lcom/fsck/k9/Account;)V

    .line 638
    return-void
.end method

.method private onCompose()V
    .locals 2

    .prologue
    .line 646
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 647
    .local v0, "defaultAccount":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_0

    .line 648
    invoke-static {p0, v0}, Lcom/fsck/k9/activity/compose/MessageActions;->actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onAddNewAccount()V

    goto :goto_0
.end method

.method private onDeleteAccount(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/Accounts;->showDialog(I)V

    .line 1042
    return-void
.end method

.method private onEditAccount(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 1045
    invoke-static {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSettings;->actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 1046
    return-void
.end method

.method private onEditPrefs()V
    .locals 0

    .prologue
    .line 617
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/Prefs;->actionPrefs(Landroid/content/Context;)V

    .line 618
    return-void
.end method

.method private onEmptyTrash(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/controller/MessagingController;->emptyTrash(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 642
    return-void
.end method

.method private onImport()V
    .locals 5

    .prologue
    .line 1422
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1423
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    const-string v3, "*/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1427
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1429
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1430
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/Accounts;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1435
    :goto_0
    return-void

    .line 1433
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/Accounts;->showDialog(I)V

    goto :goto_0
.end method

.method private onImport(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1456
    new-instance v0, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;-><init>(Lcom/fsck/k9/activity/Accounts;Landroid/net/Uri;Lcom/fsck/k9/activity/Accounts$1;)V

    .line 1457
    .local v0, "asyncTask":Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1458
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$ListImportContentsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1459
    return-void
.end method

.method private onMove(Lcom/fsck/k9/Account;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "up"    # Z

    .prologue
    .line 1233
    new-instance v0, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;-><init>(Landroid/app/Activity;Lcom/fsck/k9/Account;Z)V

    .line 1234
    .local v0, "asyncTask":Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1235
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$MoveAccountAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1236
    return-void
.end method

.method private onOpenAccount(Lcom/fsck/k9/BaseAccount;)Z
    .locals 9
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 661
    instance-of v7, p1, Lcom/fsck/k9/search/SearchAccount;

    if-eqz v7, :cond_0

    move-object v2, p1

    .line 662
    check-cast v2, Lcom/fsck/k9/search/SearchAccount;

    .line 663
    .local v2, "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    invoke-virtual {v2}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v7

    invoke-static {p0, v7, v5, v5}, Lcom/fsck/k9/activity/MessageList;->actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZ)V

    .end local v2    # "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    :goto_0
    move v5, v6

    .line 685
    :goto_1
    return v5

    :cond_0
    move-object v0, p1

    .line 665
    check-cast v0, Lcom/fsck/k9/Account;

    .line 666
    .local v0, "realAccount":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 667
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->onActivateAccount(Lcom/fsck/k9/Account;)V

    goto :goto_1

    .line 669
    :cond_1
    invoke-virtual {v0, p0}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 670
    const v7, 0x7f070127

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-virtual {p0, v7, v6}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "toastText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 672
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 674
    const-string v6, "refusing to open account that is not available"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 677
    .end local v3    # "toast":Landroid/widget/Toast;
    .end local v4    # "toastText":Ljava/lang/String;
    :cond_2
    const-string v7, "-NONE-"

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 678
    invoke-static {p0, v0}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 680
    :cond_3
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 681
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 683
    invoke-static {p0, v1, v5, v6}, Lcom/fsck/k9/activity/MessageList;->actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZ)V

    goto :goto_0
.end method

.method private onRecreate(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 1230
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/Accounts;->showDialog(I)V

    .line 1231
    return-void
.end method

.method private promptForServerPasswords(Ljava/util/List;)V
    .locals 3
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
    .line 703
    .local p1, "disabledAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 704
    .local v0, "account":Lcom/fsck/k9/Account;
    new-instance v1, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-direct {v1, v0, p1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;-><init>(Lcom/fsck/k9/Account;Ljava/util/List;)V

    .line 705
    .local v1, "dialog":Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 706
    invoke-virtual {v1, p0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->show(Lcom/fsck/k9/activity/Accounts;)V

    .line 707
    return-void
.end method

.method private refresh()V
    .locals 8

    .prologue
    .line 564
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 565
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 574
    invoke-static {}, Lcom/fsck/k9/K9;->isHideSpecialAccounts()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 575
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mUnifiedInboxAccount:Lcom/fsck/k9/search/SearchAccount;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mAllMessagesAccount:Lcom/fsck/k9/search/SearchAccount;

    if-nez v5, :cond_1

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->createSpecialAccounts()V

    .line 579
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .local v2, "newAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/BaseAccount;>;"
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mUnifiedInboxAccount:Lcom/fsck/k9/search/SearchAccount;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mAllMessagesAccount:Lcom/fsck/k9/search/SearchAccount;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    new-instance v5, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    invoke-direct {v5, p0, v2}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;-><init>(Lcom/fsck/k9/activity/Accounts;Ljava/util/List;)V

    iput-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    .line 590
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 592
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(I)V

    .line 594
    :cond_2
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 595
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    invoke-virtual {v5}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V

    .line 597
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    .line 599
    .local v1, "controller":Lcom/fsck/k9/controller/MessagingController;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/BaseAccount;

    .line 600
    .local v0, "account":Lcom/fsck/k9/BaseAccount;
    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentMap;

    const-string v7, "true"

    invoke-interface {v6, v0, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    instance-of v6, v0, Lcom/fsck/k9/Account;

    if-eqz v6, :cond_5

    move-object v3, v0

    .line 603
    check-cast v3, Lcom/fsck/k9/Account;

    .line 604
    .local v3, "realAccount":Lcom/fsck/k9/Account;
    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v1, p0, v3, v6}, Lcom/fsck/k9/controller/MessagingController;->getAccountStats(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_1

    .line 584
    .end local v0    # "account":Lcom/fsck/k9/BaseAccount;
    .end local v1    # "controller":Lcom/fsck/k9/controller/MessagingController;
    .end local v2    # "newAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/BaseAccount;>;"
    .end local v3    # "realAccount":Lcom/fsck/k9/Account;
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->accounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v2    # "newAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/BaseAccount;>;"
    goto :goto_0

    .line 605
    .restart local v0    # "account":Lcom/fsck/k9/BaseAccount;
    .restart local v1    # "controller":Lcom/fsck/k9/controller/MessagingController;
    :cond_5
    invoke-static {}, Lcom/fsck/k9/K9;->countSearchMessages()Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v0, Lcom/fsck/k9/search/SearchAccount;

    if-eqz v6, :cond_3

    move-object v4, v0

    .line 606
    check-cast v4, Lcom/fsck/k9/search/SearchAccount;

    .line 607
    .local v4, "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v1, v4, v6}, Lcom/fsck/k9/controller/MessagingController;->getSearchAccountStats(Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)V

    goto :goto_1

    .line 610
    .end local v0    # "account":Lcom/fsck/k9/BaseAccount;
    .end local v4    # "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    :cond_6
    return-void
.end method

.method private restoreAccountStats(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 470
    if-eqz p1, :cond_1

    .line 471
    sget-object v1, Lcom/fsck/k9/activity/Accounts;->ACCOUNT_STATS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 472
    .local v0, "oldStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/AccountStats;>;"
    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->accountStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 475
    :cond_0
    sget-object v1, Lcom/fsck/k9/activity/Accounts;->STATE_UNREAD_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I

    .line 477
    .end local v0    # "oldStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/AccountStats;>;"
    :cond_1
    return-void
.end method

.method private setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V
    .locals 0
    .param p1, "inst"    # Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts;->mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    .line 1740
    return-void
.end method

.method private showAccountsImportedDialog(Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;Ljava/lang/String;)V
    .locals 1
    .param p1, "importResults"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1548
    new-instance v0, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;

    invoke-direct {v0, p1, p2}, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$ImportResults;Ljava/lang/String;)V

    .line 1549
    .local v0, "dialog":Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;
    invoke-virtual {v0, p0}, Lcom/fsck/k9/activity/Accounts$AccountsImportedDialog;->show(Lcom/fsck/k9/activity/Accounts;)V

    .line 1550
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1551
    return-void
.end method

.method private showImportSelectionDialog(Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;Landroid/net/Uri;)V
    .locals 1
    .param p1, "importContents"    # Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1605
    new-instance v0, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;

    invoke-direct {v0, p1, p2}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;-><init>(Lcom/fsck/k9/preferences/SettingsImporter$ImportContents;Landroid/net/Uri;)V

    .line 1606
    .local v0, "dialog":Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;
    invoke-virtual {v0, p0}, Lcom/fsck/k9/activity/Accounts$ImportSelectionDialog;->show(Lcom/fsck/k9/activity/Accounts;)V

    .line 1607
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1608
    return-void
.end method

.method private varargs showSimpleDialog(II[Ljava/lang/Object;)V
    .locals 1
    .param p1, "headerRes"    # I
    .param p2, "messageRes"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1463
    new-instance v0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/fsck/k9/activity/Accounts$SimpleDialog;-><init>(II[Ljava/lang/Object;)V

    .line 1464
    .local v0, "dialog":Lcom/fsck/k9/activity/Accounts$SimpleDialog;
    invoke-virtual {v0, p0}, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->show(Lcom/fsck/k9/activity/Accounts;)V

    .line 1465
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1466
    return-void
.end method

.method private startExport(ZLjava/util/ArrayList;Landroid/net/Uri;)V
    .locals 6
    .param p1, "exportGlobalSettings"    # Z
    .param p3, "documentsUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1943
    .local p2, "exportAccountUuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;-><init>(Lcom/fsck/k9/activity/Accounts;ZLjava/util/List;Landroid/net/Uri;Lcom/fsck/k9/activity/Accounts$1;)V

    .line 1944
    .local v0, "asyncTask":Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->setNonConfigurationInstance(Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1945
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$ExportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1946
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1439
    const-string v0, "onActivityResult requestCode = %d, resultCode = %s, data = %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1440
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    if-eqz p3, :cond_0

    .line 1445
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1447
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->onImport(Landroid/net/Uri;)V

    goto :goto_0

    .line 1450
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/fsck/k9/activity/Accounts;->onExport(Landroid/content/Intent;)V

    goto :goto_0

    .line 1445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1179
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1182
    .local v0, "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/BaseAccount;

    iput-object v2, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1185
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    instance-of v2, v2, Lcom/fsck/k9/Account;

    if-eqz v2, :cond_1

    .line 1186
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    check-cast v1, Lcom/fsck/k9/Account;

    .line 1187
    .local v1, "realAccount":Lcom/fsck/k9/Account;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1220
    .end local v1    # "realAccount":Lcom/fsck/k9/Account;
    :cond_1
    :goto_0
    :pswitch_0
    return v5

    .line 1189
    .restart local v1    # "realAccount":Lcom/fsck/k9/Account;
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onDeleteAccount(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1192
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onEditAccount(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1195
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onActivateAccount(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1198
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onClearCommands(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1201
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onEmptyTrash(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1204
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onClear(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1207
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/Accounts;->onRecreate(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1210
    :pswitch_8
    invoke-virtual {p0, v4, v1}, Lcom/fsck/k9/activity/Accounts;->onExport(ZLcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1213
    :pswitch_9
    invoke-direct {p0, v1, v5}, Lcom/fsck/k9/activity/Accounts;->onMove(Lcom/fsck/k9/Account;Z)V

    goto :goto_0

    .line 1216
    :pswitch_a
    invoke-direct {p0, v1, v4}, Lcom/fsck/k9/activity/Accounts;->onMove(Lcom/fsck/k9/Account;Z)V

    goto :goto_0

    .line 1187
    :pswitch_data_0
    .packed-switch 0x7f0c010d
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 383
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 385
    invoke-static {}, Lcom/fsck/k9/K9;->isHideSpecialAccounts()Z

    move-result v6

    if-nez v6, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->createSpecialAccounts()V

    .line 389
    :cond_0
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 394
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "importSettings"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 395
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onImport()V

    .line 402
    :cond_1
    invoke-static {p0, v3}, Lcom/fsck/k9/activity/UpgradeDatabases;->actionUpgradeDatabases(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 403
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->finish()V

    .line 446
    :cond_2
    :goto_0
    return-void

    .line 396
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 397
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/WelcomeMessage;->showWelcomeMessage(Landroid/content/Context;)V

    .line 398
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->finish()V

    goto :goto_0

    .line 407
    :cond_4
    const-string v6, "startup"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 408
    .local v5, "startup":Z
    if-eqz v5, :cond_5

    invoke-static {}, Lcom/fsck/k9/K9;->startIntegratedInbox()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/fsck/k9/K9;->isHideSpecialAccounts()Z

    move-result v6

    if-nez v6, :cond_5

    .line 409
    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mUnifiedInboxAccount:Lcom/fsck/k9/search/SearchAccount;

    invoke-direct {p0, v6}, Lcom/fsck/k9/activity/Accounts;->onOpenAccount(Lcom/fsck/k9/BaseAccount;)Z

    .line 410
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->finish()V

    goto :goto_0

    .line 412
    :cond_5
    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/BaseAccount;

    invoke-direct {p0, v6}, Lcom/fsck/k9/activity/Accounts;->onOpenAccount(Lcom/fsck/k9/BaseAccount;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 413
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->finish()V

    goto :goto_0

    .line 417
    :cond_6
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/fsck/k9/activity/Accounts;->requestWindowFeature(I)Z

    .line 418
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mActionBar:Landroid/app/ActionBar;

    .line 419
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->initializeActionBar()V

    .line 420
    const v6, 0x7f030009

    invoke-virtual {p0, v6}, Lcom/fsck/k9/activity/Accounts;->setContentView(I)V

    .line 421
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 422
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 423
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 424
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 425
    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/Accounts;->registerForContextMenu(Landroid/view/View;)V

    .line 428
    if-eqz p1, :cond_7

    sget-object v6, Lcom/fsck/k9/activity/Accounts;->SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 429
    const-string v6, "selectedContextAccount"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 433
    .end local v0    # "accountUuid":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/Accounts;->restoreAccountStats(Landroid/os/Bundle;)V

    .line 434
    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    invoke-static {v6}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->access$400(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V

    .line 437
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    iput-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    .line 438
    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    if-eqz v6, :cond_8

    .line 439
    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts;->mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    invoke-interface {v6, p0}, Lcom/fsck/k9/activity/misc/NonConfigurationInstance;->restore(Landroid/app/Activity;)V

    .line 442
    :cond_8
    new-instance v2, Lde/cketti/library/changelog/ChangeLog;

    invoke-direct {v2, p0}, Lde/cketti/library/changelog/ChangeLog;-><init>(Landroid/content/Context;)V

    .line 443
    .local v2, "cl":Lde/cketti/library/changelog/ChangeLog;
    invoke-virtual {v2}, Lde/cketti/library/changelog/ChangeLog;->isFirstRun()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 444
    invoke-virtual {v2}, Lde/cketti/library/changelog/ChangeLog;->getLogDialog()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v10, 0x7f0c010e

    const v9, 0x7f0c010d

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1386
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/K9ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1387
    const v5, 0x7f070129

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    move-object v3, p3

    .line 1389
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1390
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/BaseAccount;

    .line 1392
    .local v0, "account":Lcom/fsck/k9/BaseAccount;
    instance-of v5, v0, Lcom/fsck/k9/Account;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1393
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f0d0002

    invoke-virtual {v5, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1398
    :goto_0
    instance-of v5, v0, Lcom/fsck/k9/search/SearchAccount;

    if-eqz v5, :cond_1

    .line 1399
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1400
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1401
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1399
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1395
    .end local v2    # "i":I
    .end local v4    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const/high16 v6, 0x7f0d0000

    invoke-virtual {v5, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1405
    :cond_1
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->accountLocation(Lcom/fsck/k9/BaseAccount;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1406
    .local v1, "accountLocation":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;>;"
    sget-object v5, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->TOP:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1407
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1412
    :goto_2
    sget-object v5, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->BOTTOM:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1413
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1419
    .end local v1    # "accountLocation":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;>;"
    :cond_2
    :goto_3
    return-void

    .line 1410
    .restart local v1    # "accountLocation":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;>;"
    :cond_3
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1416
    :cond_4
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f0702eb

    const v5, 0x7f070153

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1052
    packed-switch p1, :pswitch_data_0

    .line 1150
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 1054
    :pswitch_0
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    if-eqz v1, :cond_0

    .line 1058
    const v2, 0x7f070009

    const v0, 0x7f070008

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1061
    invoke-interface {v3}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1060
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/fsck/k9/activity/Accounts$3;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/Accounts$3;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    move-object v0, p0

    move v1, p1

    .line 1058
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/activity/ConfirmationDialog;->create(Landroid/app/Activity;IILjava/lang/String;IILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1086
    :pswitch_1
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    if-eqz v1, :cond_0

    .line 1090
    const v2, 0x7f070007

    const v0, 0x7f070006

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1093
    invoke-interface {v3}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1092
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/fsck/k9/activity/Accounts$4;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/Accounts$4;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    move-object v0, p0

    move v1, p1

    .line 1090
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/activity/ConfirmationDialog;->create(Landroid/app/Activity;IILjava/lang/String;IILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1110
    :pswitch_2
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    if-eqz v1, :cond_0

    .line 1114
    const v2, 0x7f07000d

    const v0, 0x7f07000c

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1117
    invoke-interface {v3}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1116
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/fsck/k9/activity/Accounts$5;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/Accounts$5;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    move-object v0, p0

    move v1, p1

    .line 1114
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/activity/ConfirmationDialog;->create(Landroid/app/Activity;IILjava/lang/String;IILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1134
    :pswitch_3
    const v2, 0x7f070272

    const v0, 0x7f070271

    .line 1136
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0702ec

    const v5, 0x7f070161

    new-instance v6, Lcom/fsck/k9/activity/Accounts$6;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/Accounts$6;-><init>(Lcom/fsck/k9/activity/Accounts;)V

    move-object v0, p0

    move v1, p1

    .line 1134
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/activity/ConfirmationDialog;->create(Landroid/app/Activity;IILjava/lang/String;IILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1052
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1378
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1379
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1380
    const v0, 0x7f0c0117

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mRefreshMenuItem:Landroid/view/MenuItem;

    .line 1381
    const/4 v0, 0x1

    return v0
.end method

.method public onExport(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1938
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1939
    .local v0, "documentsUri":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/fsck/k9/activity/Accounts;->exportGlobalSettings:Z

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts;->exportAccountUuids:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v0}, Lcom/fsck/k9/activity/Accounts;->startExport(ZLjava/util/ArrayList;Landroid/net/Uri;)V

    .line 1940
    return-void
.end method

.method public onExport(ZLcom/fsck/k9/Account;)V
    .locals 4
    .param p1, "includeGlobals"    # Z
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 1916
    const/4 v0, 0x0

    .line 1917
    .local v0, "accountUuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 1918
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "accountUuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1919
    .restart local v0    # "accountUuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 1923
    iput-boolean p1, p0, Lcom/fsck/k9/activity/Accounts;->exportGlobalSettings:Z

    .line 1924
    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->exportAccountUuids:Ljava/util/ArrayList;

    .line 1926
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1927
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    const-string v2, "android.intent.extra.TITLE"

    invoke-static {}, Lcom/fsck/k9/preferences/SettingsExporter;->generateDatedExportFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1929
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1931
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/Accounts;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1935
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1933
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/fsck/k9/activity/Accounts;->startExport(ZLjava/util/ArrayList;Landroid/net/Uri;)V

    goto :goto_0
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
    .line 1239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/BaseAccount;

    .line 1240
    .local v0, "account":Lcom/fsck/k9/BaseAccount;
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts;->onOpenAccount(Lcom/fsck/k9/BaseAccount;)Z

    .line 1241
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1271
    :pswitch_0
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1273
    :goto_0
    return v0

    .line 1247
    :pswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onAddNewAccount()V

    goto :goto_0

    .line 1250
    :pswitch_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onEditPrefs()V

    goto :goto_0

    .line 1253
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/Accounts;->onCheckMail(Lcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1256
    :pswitch_4
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onCompose()V

    goto :goto_0

    .line 1259
    :pswitch_5
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onAbout()V

    goto :goto_0

    .line 1262
    :pswitch_6
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->onSearchRequested()Z

    goto :goto_0

    .line 1265
    :pswitch_7
    invoke-virtual {p0, v0, v2}, Lcom/fsck/k9/activity/Accounts;->onExport(ZLcom/fsck/k9/Account;)V

    goto :goto_0

    .line 1268
    :pswitch_8
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->onImport()V

    goto :goto_0

    .line 1245
    :pswitch_data_0
    .packed-switch 0x7f0c010c
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Lcom/fsck/k9/activity/K9ListActivity;->onPause()V

    .line 526
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 527
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->storageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/StorageManager;->removeListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V

    .line 528
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/activity/ActivityListener;->onPause(Landroid/content/Context;)V

    .line 529
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "d"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1155
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    .line 1156
    .local v0, "alert":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 1174
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/K9ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1175
    return-void

    .line 1158
    :pswitch_0
    const v1, 0x7f070008

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1159
    invoke-interface {v3}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1158
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1163
    :pswitch_1
    const v1, 0x7f070006

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1164
    invoke-interface {v3}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1163
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1168
    :pswitch_2
    const v1, 0x7f07000c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    .line 1169
    invoke-interface {v3}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1168
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 494
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 496
    const-string v0, "exportGlobalSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/Accounts;->exportGlobalSettings:Z

    .line 497
    const-string v0, "exportAccountUuids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts;->exportAccountUuids:Ljava/util/ArrayList;

    .line 498
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 515
    invoke-super {p0}, Lcom/fsck/k9/activity/K9ListActivity;->onResume()V

    .line 517
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts;->refresh()V

    .line 518
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 519
    invoke-virtual {p0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->storageListener:Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/StorageManager;->addListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V

    .line 520
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/activity/ActivityListener;->onResume(Landroid/content/Context;)V

    .line 521
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "retain":Ljava/lang/Object;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    invoke-interface {v1}, Lcom/fsck/k9/activity/misc/NonConfigurationInstance;->retain()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mNonConfigurationInstance:Lcom/fsck/k9/activity/misc/NonConfigurationInstance;

    .line 540
    .end local v0    # "retain":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 481
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 482
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lcom/fsck/k9/activity/Accounts;->SELECTED_CONTEXT_ACCOUNT:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/BaseAccount;

    invoke-interface {v1}, Lcom/fsck/k9/BaseAccount;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    sget-object v0, Lcom/fsck/k9/activity/Accounts;->STATE_UNREAD_COUNT:Ljava/lang/String;

    iget v1, p0, Lcom/fsck/k9/activity/Accounts;->mUnreadMessageCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 486
    sget-object v0, Lcom/fsck/k9/activity/Accounts;->ACCOUNT_STATS:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->accountStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 488
    const-string v0, "exportGlobalSettings"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/Accounts;->exportGlobalSettings:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    const-string v0, "exportAccountUuids"

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts;->exportAccountUuids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 490
    return-void
.end method

.method public setProgress(Z)V
    .locals 1
    .param p1, "progress"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V

    .line 251
    return-void
.end method

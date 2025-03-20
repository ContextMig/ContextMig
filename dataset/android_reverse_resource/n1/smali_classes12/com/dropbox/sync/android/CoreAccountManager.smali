.class Lcom/dropbox/sync/android/CoreAccountManager;
.super Ljava/lang/Object;
.source "CoreAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;,
        Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;,
        Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;
    }
.end annotation


# static fields
.field private static final CACHE_DIR_PREFIX_SEPARATOR:C = '-'

.field private static final CACHE_SUBDIR_NAME:Ljava/lang/String; = "DropboxSyncCache"

.field private static final LEDGER_SUBDIR_NAME:Ljava/lang/String; = "Ledger_Logfiles"

.field private static final LOCAL_DATASTORE_NAME:Ljava/lang/String; = "local-datastores"

.field private static final LOG_SUBDIR_NAME:Ljava/lang/String; = "logs"

.field private static final PREFS_NAME:Ljava/lang/String; = "CoreAccountManager-preferences"

.field private static final RESERVED_CACHE_DIR_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_SUBDIR_NAME:Ljava/lang/String; = "Temp"


# instance fields
.field private final mAcctListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAcctStorage:Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;

.field private final mAppContext:Landroid/content/Context;

.field private final mAppKey:Ljava/lang/String;

.field private final mCacheDir:Ljava/io/File;

.field private final mConfig:Lcom/dropbox/sync/android/CoreConfig;

.field private final mLedger:Lcom/dropbox/ledger/android/Ledger;

.field private final mLinkedAccounts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalAccount:Lcom/dropbox/sync/android/DbxAccount;

.field private final mLocallyUnlinkedAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mNativeLib:Lcom/dropbox/sync/android/NativeLib;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Temp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Ledger_Logfiles"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "local-datastores"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreAccountManager;->RESERVED_CACHE_DIR_NAMES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;)V
    .locals 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p3, "acctStorage"    # Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 136
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAppContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    .line 138
    iget-object v1, p2, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v1, v1, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAppKey:Ljava/lang/String;

    .line 139
    const-string v1, "DropboxSyncCache"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "globalCacheRoot":Ljava/io/File;
    iget-object v1, p2, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v1, v1, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/CoreAccountManager;->prepCacheDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    .line 141
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    const-string v3, "Temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    const-string v4, "logs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/dropbox/sync/android/CoreAccountManager;->initNativeLib(Ljava/io/File;Ljava/io/File;)Lcom/dropbox/sync/android/NativeLib;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mNativeLib:Lcom/dropbox/sync/android/NativeLib;

    .line 142
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    .line 143
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocallyUnlinkedAccounts:Ljava/util/Set;

    .line 144
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAcctListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 145
    iput-object p3, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAcctStorage:Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;

    .line 147
    iget-object v1, p2, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-boolean v1, v1, Lcom/dropbox/sync/android/DbxConfig;->enableLedger:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->initLedger()Lcom/dropbox/ledger/android/Ledger;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    invoke-static {p1, p2, v1}, Lcom/dropbox/sync/android/CoreLogger;->globalInitialize(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)Z

    .line 155
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 158
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->setContext(Landroid/content/Context;)V

    .line 161
    new-instance v1, Lcom/dropbox/sync/android/CoreAccountManager$1;

    invoke-direct {v1, p0}, Lcom/dropbox/sync/android/CoreAccountManager$1;-><init>(Lcom/dropbox/sync/android/CoreAccountManager;)V

    invoke-static {v1}, Lcom/dropbox/client2/android/AuthActivity;->setSecurityProvider(Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;)V

    .line 168
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->loadAccounts()V

    .line 169
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->saveAccounts()V

    .line 170
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->scheduleLocallyUnlinkedAccounts()V

    .line 171
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private deleteCacheDirsForAccount(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 8
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreAccountManager;->getCacheDirPrefixForAccount(Lcom/dropbox/sync/android/DbxAccount;)Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, "prefix":Ljava/lang/String;
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->listCacheSubdirs()[Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "children":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 688
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 690
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/dropbox/sync/android/CoreFileUtil;->recursiveDelete(Ljava/io/File;)Z

    .line 685
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 693
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getCacheDirPrefixForAccount(Lcom/dropbox/sync/android/DbxAccount;)Ljava/lang/String;
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "userId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 340
    const-string v0, "local"

    .line 342
    .end local v0    # "userId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private initLedger()Lcom/dropbox/ledger/android/Ledger;
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 178
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v2, "Ledger already initialized!"

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    invoke-static {}, Lcom/dropbox/ledger/android/Ledger;->newBuilder()Lcom/dropbox/ledger/android/Ledger$Builder;

    move-result-object v11

    .line 183
    .local v11, "ledgerBuilder":Lcom/dropbox/ledger/android/Ledger$Builder;
    const-wide/32 v2, 0x15180

    invoke-virtual {v11, v2, v3}, Lcom/dropbox/ledger/android/Ledger$Builder;->setFlushInterval(J)Lcom/dropbox/ledger/android/Ledger$Builder;

    .line 184
    const-wide/32 v2, 0x100000

    invoke-virtual {v11, v2, v3}, Lcom/dropbox/ledger/android/Ledger$Builder;->setLogfileSize(J)Lcom/dropbox/ledger/android/Ledger$Builder;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Ledger_Logfiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "log_dir":Ljava/lang/String;
    invoke-virtual {v11, v12}, Lcom/dropbox/ledger/android/Ledger$Builder;->setLogfileDirectory(Ljava/lang/String;)Lcom/dropbox/ledger/android/Ledger$Builder;

    .line 189
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAppContext:Landroid/content/Context;

    const-string v2, "CoreAccountManager-preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 190
    .local v14, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 191
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "log_session_id"

    invoke-interface {v14, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v13, v1, 0x1

    .line 192
    .local v13, "session_id":I
    const-string v1, "log_UUID"

    invoke-interface {v14, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "uuid":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 194
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    const-string v1, "log_UUID"

    invoke-interface {v9, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    :cond_1
    const-string v1, "log_session_id"

    invoke-interface {v9, v1, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    new-instance v10, Lcom/dropbox/sync/android/NativeEnv$Config;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    invoke-direct {v10, v1, v2, v5}, Lcom/dropbox/sync/android/NativeEnv$Config;-><init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V

    .line 202
    .local v10, "envConfig":Lcom/dropbox/sync/android/NativeEnv$Config;
    new-instance v0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    iget-object v1, v1, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v1, v1, Lcom/dropbox/sync/android/DbxConfig;->appPlatform:Ljava/lang/String;

    iget-object v2, v10, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemModel:Ljava/lang/String;

    iget-object v3, v10, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemVersion:Ljava/lang/String;

    iget-object v4, v10, Lcom/dropbox/sync/android/NativeEnv$Config;->logAppVersion:Ljava/lang/String;

    iget-object v5, v10, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemManufacturer:Ljava/lang/String;

    iget-object v6, v10, Lcom/dropbox/sync/android/NativeEnv$Config;->logDeviceId:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v0, "urlCallback":Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;
    invoke-virtual {v11, v0}, Lcom/dropbox/ledger/android/Ledger$Builder;->setLedgerURLCallback(Lcom/dropbox/ledger/android/LedgerUrlCallback;)Lcom/dropbox/ledger/android/Ledger$Builder;

    .line 212
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    const-string v2, "LEDGER_INIT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ledger configured to upload to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->getUploadUrl(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v11}, Lcom/dropbox/ledger/android/Ledger$Builder;->build()Lcom/dropbox/ledger/android/Ledger;

    move-result-object v1

    return-object v1
.end method

.method private initNativeLib(Ljava/io/File;Ljava/io/File;)Lcom/dropbox/sync/android/NativeLib;
    .locals 6
    .param p1, "tempDir"    # Ljava/io/File;
    .param p2, "logDir"    # Ljava/io/File;

    .prologue
    .line 226
    invoke-static {p1}, Lcom/dropbox/sync/android/CoreFileUtil;->recursiveDelete(Ljava/io/File;)Z

    .line 227
    invoke-static {p1}, Lcom/dropbox/sync/android/CoreFileUtil;->prepCacheDirectory(Ljava/io/File;)V

    .line 228
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->getInstance()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v1

    .line 230
    .local v1, "nl":Lcom/dropbox/sync/android/NativeLib;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeLib;->setTempDir(Ljava/io/File;)V

    .line 231
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeLib;->setLogDir(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v5, "Failed to set temp dir."

    invoke-direct {v4, v5, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private listCacheSubdirs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 672
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 679
    :cond_0
    return-object v0

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 677
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to list cache directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAccounts()V
    .locals 12

    .prologue
    .line 757
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 758
    .local v6, "unclaimedNames":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->listCacheSubdirs()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 759
    sget-object v8, Lcom/dropbox/sync/android/CoreAccountManager;->RESERVED_CACHE_DIR_NAMES:Ljava/util/List;

    invoke-virtual {v6, v8}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 761
    monitor-enter p0

    .line 762
    :try_start_0
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 763
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocallyUnlinkedAccounts:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 764
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAcctStorage:Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;

    iget-object v9, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAppKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    invoke-interface {v8, v9, p0, v10}, Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;->getAccounts(Ljava/lang/String;Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAccount;

    .line 765
    .local v0, "acct":Lcom/dropbox/sync/android/DbxAccount;
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->isLinked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 766
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 767
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring duplicate account in persistent linked accounts set for uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->deinitialize()V

    goto :goto_0

    .line 783
    .end local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 772
    .restart local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, "userId":Ljava/lang/String;
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 776
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, "rangeStart":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, "rangeEnd":Ljava/lang/String;
    invoke-virtual {v6, v5, v4}, Ljava/util/TreeSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/SortedSet;->clear()V

    goto/16 :goto_0

    .line 780
    .end local v4    # "rangeEnd":Ljava/lang/String;
    .end local v5    # "rangeStart":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocallyUnlinkedAccounts:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 783
    .end local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    :try_start_2
    new-instance v8, Lcom/dropbox/sync/android/DbxAccount;

    iget-object v9, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    invoke-direct {v8, p0, v9}, Lcom/dropbox/sync/android/DbxAccount;-><init>(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;)V

    iput-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocalAccount:Lcom/dropbox/sync/android/DbxAccount;
    :try_end_2
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 791
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 792
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing unclaimed file/directory in cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/dropbox/sync/android/CoreFileUtil;->recursiveDelete(Ljava/io/File;)Z

    goto :goto_1

    .line 786
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 787
    .local v1, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v8, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v10, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v11, "Failed to set up local account."

    invoke-direct {v10, v11, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9, v10}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 795
    .end local v1    # "e":Lcom/dropbox/sync/android/DbxException;
    :cond_3
    return-void
.end method

.method private static notifyListeners(Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 3
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;",
            ">;",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ")V"
        }
    .end annotation

    .prologue
    .line 822
    .local p0, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    move-object v1, p0

    .line 823
    .local v1, "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    move-object v0, p1

    .line 824
    .local v0, "postAccount":Lcom/dropbox/sync/android/DbxAccount;
    new-instance v2, Lcom/dropbox/sync/android/CoreAccountManager$2;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/sync/android/CoreAccountManager$2;-><init>(Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxAccount;)V

    invoke-static {v2}, Lcom/dropbox/sync/android/CoreAndroidUtil;->postUserCallback(Ljava/lang/Runnable;)V

    .line 832
    return-void
.end method

.method private prepCacheDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "cacheRoot"    # Ljava/io/File;
    .param p2, "appSubdir"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-static {p1}, Lcom/dropbox/sync/android/CoreFileUtil;->prepCacheDirectory(Ljava/io/File;)V

    .line 650
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 651
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 652
    move-object v1, v3

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v1, v4

    .line 653
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 652
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 658
    :cond_0
    invoke-static {v2}, Lcom/dropbox/sync/android/CoreFileUtil;->recursiveDelete(Ljava/io/File;)Z

    goto :goto_1

    .line 661
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    iget-object v6, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v7, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to list cache dir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 664
    .local v0, "appCacheDir":Ljava/io/File;
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreFileUtil;->prepCacheDirectory(Ljava/io/File;)V

    .line 665
    new-instance v6, Ljava/io/File;

    const-string v7, "logs"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/dropbox/sync/android/CoreFileUtil;->prepCacheDirectory(Ljava/io/File;)V

    .line 666
    iget-object v6, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v7, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepared cache dir \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-object v0
.end method

.method private saveAccounts()V
    .locals 3

    .prologue
    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v0, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/DbxAccount;>;"
    monitor-enter p0

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 801
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocallyUnlinkedAccounts:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 802
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAcctStorage:Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAppKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;->setAccounts(Ljava/lang/String;Ljava/util/List;)V

    .line 804
    return-void

    .line 802
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private scheduleLocallyUnlinkedAccounts()V
    .locals 4

    .prologue
    .line 808
    monitor-enter p0

    .line 809
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocallyUnlinkedAccounts:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 810
    .local v1, "accts":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxAccount;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAccount;

    .line 812
    .local v0, "acct":Lcom/dropbox/sync/android/DbxAccount;
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->notifyServerOfLocalUnlink(Lcom/dropbox/sync/android/DbxAccount;)V

    goto :goto_0

    .line 810
    .end local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    .end local v1    # "accts":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxAccount;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 814
    .restart local v1    # "accts":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxAccount;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private snapshotListeners()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAcctListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addLinkedAcct(Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/DbxAccountInfo;)Lcom/dropbox/sync/android/DbxAccount;
    .locals 11
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userToken"    # Lcom/dropbox/sync/android/DbxToken;
    .param p3, "accountInfo"    # Lcom/dropbox/sync/android/DbxAccountInfo;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    invoke-static {v1, p2}, Lcom/dropbox/sync/android/DbxAccount;->isTokenCompatible(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/DbxToken;)Z

    move-result v1

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 451
    :try_start_0
    new-instance v0, Lcom/dropbox/sync/android/DbxAccount;

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/sync/android/DbxAccount;-><init>(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/DbxAccountInfo;Z)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .local v0, "newLinked":Lcom/dropbox/sync/android/DbxAccount;
    const/4 v9, 0x0

    .line 458
    .local v9, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    const/4 v10, 0x0

    .line 459
    .local v10, "unlinkNewAccount":Z
    monitor-enter p0

    .line 460
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dropbox/sync/android/DbxAccount;

    .line 461
    .local v8, "existingAccount":Lcom/dropbox/sync/android/DbxAccount;
    if-nez v8, :cond_2

    .line 462
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->saveAccounts()V

    .line 464
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->snapshotListeners()Ljava/util/Iterator;

    move-result-object v9

    .line 474
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    if-eqz v10, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->unlink()V

    .line 480
    const/4 v0, 0x0

    .line 482
    :cond_0
    if-eqz v9, :cond_1

    .line 483
    invoke-static {v9, v0}, Lcom/dropbox/sync/android/CoreAccountManager;->notifyListeners(Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxAccount;)V

    .line 485
    :cond_1
    return-object v0

    .line 452
    .end local v0    # "newLinked":Lcom/dropbox/sync/android/DbxAccount;
    .end local v8    # "existingAccount":Lcom/dropbox/sync/android/DbxAccount;
    .end local v9    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    .end local v10    # "unlinkNewAccount":Z
    :catch_0
    move-exception v7

    .line 453
    .local v7, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v4, "Failed to set up newly linked user account."

    invoke-direct {v3, v4, v7}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 465
    .end local v7    # "e":Lcom/dropbox/sync/android/DbxException;
    .restart local v0    # "newLinked":Lcom/dropbox/sync/android/DbxAccount;
    .restart local v8    # "existingAccount":Lcom/dropbox/sync/android/DbxAccount;
    .restart local v9    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    .restart local v10    # "unlinkNewAccount":Z
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate link for user ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with same token, ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x0

    goto :goto_0

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate link for user ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", unlinking new account."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v10, 0x1

    goto :goto_0

    .line 474
    .end local v8    # "existingAccount":Lcom/dropbox/sync/android/DbxAccount;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addListener(Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;)V
    .locals 1
    .param p1, "l"    # Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;

    .prologue
    .line 629
    if-eqz p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAcctListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_0
    return-void
.end method

.method getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method getCacheDirForAccount(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getCacheDirForClient(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "clientTag"    # Ljava/lang/String;

    .prologue
    .line 300
    if-nez p2, :cond_0

    .line 301
    move-object v0, p1

    .line 305
    .local v0, "dirName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 303
    .end local v0    # "dirName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "dirName":Ljava/lang/String;
    goto :goto_0
.end method

.method getCacheDirForLocalClient(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "clientTag"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "local"

    .line 331
    .local v0, "dirName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getConfig()Lcom/dropbox/sync/android/DbxConfig;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    iget-object v0, v0, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    return-object v0
.end method

.method getCoreConfig()Lcom/dropbox/sync/android/CoreConfig;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    return-object v0
.end method

.method public declared-synchronized getLastLinkedAccount()Lcom/dropbox/sync/android/DbxAccount;
    .locals 3

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 508
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxAccount;>;"
    const/4 v0, 0x0

    .line 509
    .local v0, "acct":Lcom/dropbox/sync/android/DbxAccount;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    check-cast v0, Lcom/dropbox/sync/android/DbxAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    goto :goto_0

    .line 512
    :cond_0
    monitor-exit p0

    return-object v0

    .line 507
    .end local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxAccount;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getLedger()Lcom/dropbox/ledger/android/Ledger;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    return-object v0
.end method

.method public declared-synchronized getLinkedAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalAccount()Lcom/dropbox/sync/android/DbxAccount;
    .locals 1

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocalAccount:Lcom/dropbox/sync/android/DbxAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNativeLib()Lcom/dropbox/sync/android/NativeLib;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mNativeLib:Lcom/dropbox/sync/android/NativeLib;

    return-object v0
.end method

.method public declared-synchronized hasLinkedAccounts()Z
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onNewAccountInfo(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 0
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->saveAccounts()V

    .line 614
    return-void
.end method

.method onServerNotifiedOfUnlink(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 597
    monitor-enter p0

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocallyUnlinkedAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 599
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->saveAccounts()V

    .line 600
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->deinitialize()V

    .line 604
    return-void

    .line 600
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onUnlink(Lcom/dropbox/sync/android/DbxAccount;Z)V
    .locals 4
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "isLocal"    # Z

    .prologue
    .line 553
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->isLinked()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 557
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreAccountManager;->deleteCacheDirsForAccount(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAccount;

    .line 565
    .local v0, "curAcct":Lcom/dropbox/sync/android/DbxAccount;
    if-ne v0, p1, :cond_0

    .line 566
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->snapshotListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 570
    :cond_0
    if-eqz p2, :cond_1

    .line 571
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLocallyUnlinkedAccounts:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_1
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->saveAccounts()V

    .line 574
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    if-eqz v1, :cond_2

    .line 578
    invoke-static {v1, p1}, Lcom/dropbox/sync/android/CoreAccountManager;->notifyListeners(Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxAccount;)V

    .line 582
    :cond_2
    if-eqz p2, :cond_4

    .line 583
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->notifyServerOfLocalUnlink(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 587
    :goto_1
    return-void

    .line 553
    .end local v0    # "curAcct":Lcom/dropbox/sync/android/DbxAccount;
    .end local v1    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 574
    .restart local v1    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 585
    .restart local v0    # "curAcct":Lcom/dropbox/sync/android/DbxAccount;
    :cond_4
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->deinitialize()V

    goto :goto_1
.end method

.method public removeListener(Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;)V
    .locals 1
    .param p1, "l"    # Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mAcctListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 643
    :cond_0
    return-void
.end method

.method public startLink(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    const-string v3, "Requesting link for a Dropbox new account."

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    iget-object v1, v1, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v1, v1, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/dropbox/client2/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    invoke-static {p1, v1}, Lcom/dropbox/sync/android/DbxAuthActivity;->makeIntent(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;)Landroid/content/Intent;

    move-result-object v0

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLink(Landroid/app/Fragment;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    const-string v3, "Requesting link for a Dropbox new account."

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v2, v2, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/dropbox/client2/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    invoke-static {v1, v2}, Lcom/dropbox/sync/android/DbxAuthActivity;->makeIntent(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;)Landroid/content/Intent;

    move-result-object v0

    .line 399
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLink(Landroid/support/v4/app/Fragment;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 412
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/CoreAccountManager;->TAG:Ljava/lang/String;

    const-string v3, "Requesting link for a Dropbox new account."

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v2, v2, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/dropbox/client2/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    invoke-static {v1, v2}, Lcom/dropbox/sync/android/DbxAuthActivity;->makeIntent(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;)Landroid/content/Intent;

    move-result-object v0

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public unlinkAll()V
    .locals 4

    .prologue
    .line 426
    monitor-enter p0

    .line 427
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 428
    .local v1, "accts":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxAccount;>;"
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreAccountManager;->mLinkedAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 429
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreAccountManager;->saveAccounts()V

    .line 430
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAccount;

    .line 432
    .local v0, "acct":Lcom/dropbox/sync/android/DbxAccount;
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->unlink()V

    goto :goto_0

    .line 430
    .end local v0    # "acct":Lcom/dropbox/sync/android/DbxAccount;
    .end local v1    # "accts":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxAccount;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 434
    .restart local v1    # "accts":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxAccount;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

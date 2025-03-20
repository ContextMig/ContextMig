.class public Lcom/dropbox/sync/android/DbxAccount;
.super Ljava/lang/Object;
.source "DbxAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException;,
        Lcom/dropbox/sync/android/DbxAccount$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final JSON_ACCT_INFO:Ljava/lang/String; = "accountInfo"

.field private static final JSON_IS_LINKED:Ljava/lang/String; = "isLinked"

.field private static final JSON_USER_ID:Ljava/lang/String; = "userId"

.field private static final JSON_USER_TOKEN:Ljava/lang/String; = "userToken"

.field private static final MIN_MILLIS_BETWEEN_ACCT_INFO_FETCHES:J = 0x3a98L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

.field private final mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

.field private final mApp:Lcom/dropbox/sync/android/NativeApp;

.field private mBatteryStateListener:Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;

.field private final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/CoreClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/dropbox/sync/android/CoreConfig;

.field private final mEnv:Lcom/dropbox/sync/android/NativeEnv;

.field private mInfoFetchScheduled:Z

.field private mIsLinked:Z

.field private mLastInfoFetchMillis:J

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

.field private mShouldUnlinkTokenOnServer:Z

.field private final mUserId:Ljava/lang/String;

.field private final mUserToken:Lcom/dropbox/sync/android/DbxToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/DbxAccount;->$assertionsDisabled:Z

    .line 24
    const-class v0, Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;)V
    .locals 4
    .param p1, "acctMgr"    # Lcom/dropbox/sync/android/CoreAccountManager;
    .param p2, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mClients:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLastInfoFetchMillis:J

    .line 44
    iput-boolean v3, p0, Lcom/dropbox/sync/android/DbxAccount;->mInfoFetchScheduled:Z

    .line 45
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .line 46
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mBatteryStateListener:Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;

    .line 80
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    .line 81
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAccount;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    .line 82
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserToken:Lcom/dropbox/sync/android/DbxToken;

    .line 84
    iput-boolean v3, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mShouldUnlinkTokenOnServer:Z

    .line 86
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    .line 87
    invoke-direct {p0, p2, p1}, Lcom/dropbox/sync/android/DbxAccount;->doInitializeEnv(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/CoreAccountManager;)Lcom/dropbox/sync/android/NativeEnv;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    .line 88
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 89
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/DbxAccountInfo;Z)V
    .locals 9
    .param p1, "acctMgr"    # Lcom/dropbox/sync/android/CoreAccountManager;
    .param p2, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "userToken"    # Lcom/dropbox/sync/android/DbxToken;
    .param p5, "info"    # Lcom/dropbox/sync/android/DbxAccountInfo;
    .param p6, "isLinked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mClients:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLastInfoFetchMillis:J

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mInfoFetchScheduled:Z

    .line 45
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .line 46
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mBatteryStateListener:Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;

    .line 106
    sget-boolean v0, Lcom/dropbox/sync/android/DbxAccount;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2, p4}, Lcom/dropbox/sync/android/DbxAccount;->isTokenCompatible(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/DbxToken;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    .line 108
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAccount;->mConfig:Lcom/dropbox/sync/android/CoreConfig;

    .line 109
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserToken:Lcom/dropbox/sync/android/DbxToken;

    .line 111
    iput-boolean p6, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mShouldUnlinkTokenOnServer:Z

    .line 113
    iput-object p5, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    .line 114
    invoke-direct {p0, p2, p1}, Lcom/dropbox/sync/android/DbxAccount;->doInitializeEnv(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/CoreAccountManager;)Lcom/dropbox/sync/android/NativeEnv;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    .line 115
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 116
    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreAccountManager;->getNativeLib()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v4

    invoke-virtual {p1, p3}, Lcom/dropbox/sync/android/CoreAccountManager;->getCacheDirForAccount(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/DbxAccount;->doInitialize(Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/NativeLib;Ljava/io/File;)Lcom/dropbox/sync/android/NativeApp;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    .line 118
    if-eqz p5, :cond_1

    .line 119
    invoke-virtual {p5}, Lcom/dropbox/sync/android/DbxAccountInfo;->getDbxAccountInfo2()Lcom/dropbox/sync/android/DbxAccountInfo2;

    move-result-object v6

    .line 120
    .local v6, "acctInfo2":Lcom/dropbox/sync/android/DbxAccountInfo2;
    if-eqz v6, :cond_1

    .line 122
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v0, v6}, Lcom/dropbox/sync/android/NativeApp;->accountUpdateInfo(Lcom/dropbox/sync/android/DbxAccountInfo2;)V

    .line 126
    .end local v6    # "acctInfo2":Lcom/dropbox/sync/android/DbxAccountInfo2;
    :cond_1
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropbox user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p3}, Lcom/dropbox/sync/android/CoreLogger;->setLatestLinkedUser(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p2, Lcom/dropbox/sync/android/CoreConfig;->prefetchAccountInfo:Z

    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->updateAccountInfo(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 141
    :cond_2
    :goto_0
    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Lcom/dropbox/sync/android/DbxAccount$1;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxAccount$1;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .line 148
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v8

    .line 149
    .local v8, "ns":Lcom/dropbox/sync/android/CoreNetworkStatus;
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    invoke-virtual {v8, v0}, Lcom/dropbox/sync/android/CoreNetworkStatus;->addListener(Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getStatus(Landroid/content/Context;)Lcom/dropbox/sync/android/DbxNetworkStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxAccount;->setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V

    .line 152
    new-instance v0, Lcom/dropbox/sync/android/DbxAccount$2;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxAccount$2;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mBatteryStateListener:Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;

    .line 161
    invoke-static {}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getInstance()Lcom/dropbox/sync/android/CoreBatteryStateManager;

    move-result-object v7

    .line 162
    .local v7, "bs":Lcom/dropbox/sync/android/CoreBatteryStateManager;
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mBatteryStateListener:Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;

    invoke-virtual {v7, v0}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->addListener(Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;)V

    .line 169
    invoke-virtual {v7}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->isSet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v7}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getState()Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxAccount;->setBatteryState(Lcom/dropbox/sync/android/CoreBatteryStateManager$State;)V

    .line 172
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    return-void

    .line 137
    .end local v7    # "bs":Lcom/dropbox/sync/android/CoreBatteryStateManager;
    .end local v8    # "ns":Lcom/dropbox/sync/android/CoreNetworkStatus;
    :cond_4
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlinked dropbox user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/DbxNetworkStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p1, "x1"    # Lcom/dropbox/sync/android/DbxNetworkStatus;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxAccount;->setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/CoreBatteryStateManager$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p1, "x1"    # Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxAccount;->setBatteryState(Lcom/dropbox/sync/android/CoreBatteryStateManager$State;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/sync/android/DbxAccount;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/CoreLogger;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    return-object v0
.end method

.method private declared-synchronized checkLinked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException$Unauthorized;
        }
    .end annotation

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-nez v0, :cond_1

    .line 687
    new-instance v1, Lcom/dropbox/sync/android/DbxException$Unauthorized;

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mShouldUnlinkTokenOnServer:Z

    if-eqz v0, :cond_0

    const-string v0, "Account unlinked."

    :goto_0
    invoke-direct {v1, v0}, Lcom/dropbox/sync/android/DbxException$Unauthorized;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 687
    :cond_0
    :try_start_1
    const-string v0, "Account unlinked from server."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private doInitialize(Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/NativeLib;Ljava/io/File;)Lcom/dropbox/sync/android/NativeApp;
    .locals 8
    .param p1, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "userToken"    # Lcom/dropbox/sync/android/DbxToken;
    .param p4, "nativeLib"    # Lcom/dropbox/sync/android/NativeLib;
    .param p5, "acctCacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 212
    sget-boolean v0, Lcom/dropbox/sync/android/DbxAccount;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1, p3}, Lcom/dropbox/sync/android/DbxAccount;->isTokenCompatible(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/DbxToken;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 213
    :cond_0
    new-instance v0, Lcom/dropbox/sync/android/NativeApp;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    new-instance v5, Lcom/dropbox/sync/android/DbxAccount$4;

    invoke-direct {v5, p0}, Lcom/dropbox/sync/android/DbxAccount$4;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    new-instance v6, Lcom/dropbox/sync/android/DbxAccount$5;

    invoke-direct {v6, p0}, Lcom/dropbox/sync/android/DbxAccount$5;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    move-object v1, p4

    move-object v3, p2

    move-object v4, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/sync/android/NativeApp;-><init>(Lcom/dropbox/sync/android/NativeLib;Lcom/dropbox/sync/android/NativeEnv;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/NativeApp$UnlinkListener;Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;Ljava/io/File;)V

    return-object v0
.end method

.method private doInitializeEnv(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/CoreAccountManager;)Lcom/dropbox/sync/android/NativeEnv;
    .locals 6
    .param p1, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p2, "acctMgr"    # Lcom/dropbox/sync/android/CoreAccountManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v5, Lcom/dropbox/sync/android/DbxAccount$3;

    invoke-direct {v5, p0, p2}, Lcom/dropbox/sync/android/DbxAccount$3;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/CoreAccountManager;)V

    .line 202
    .local v5, "refreshEnvCallbacks":Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;
    new-instance v0, Lcom/dropbox/sync/android/NativeEnv;

    invoke-virtual {p2}, Lcom/dropbox/sync/android/CoreAccountManager;->getNativeLib()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dropbox/sync/android/CoreAccountManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dropbox/sync/android/CoreAccountManager;->getLedger()Lcom/dropbox/ledger/android/Ledger;

    move-result-object v4

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/NativeEnv;-><init>(Lcom/dropbox/sync/android/NativeLib;Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;)V

    return-object v0
.end method

.method private fetchAccountInfo()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 559
    :try_start_0
    iget-object v7, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v7}, Lcom/dropbox/sync/android/NativeApp;->getAccountInfo()Lcom/dropbox/sync/android/DbxAccountInfo;

    move-result-object v2

    .line 560
    .local v2, "info":Lcom/dropbox/sync/android/DbxAccountInfo;
    if-eqz v2, :cond_4

    move v7, v5

    :goto_0
    invoke-static {v7}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown; {:try_start_0 .. :try_end_0} :catch_1

    .line 575
    const/4 v4, 0x0

    .line 576
    .local v4, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxAccount$Listener;>;"
    const/4 v3, 0x0

    .line 577
    .local v3, "infoChanged":Z
    monitor-enter p0

    .line 578
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/dropbox/sync/android/DbxAccount;->mLastInfoFetchMillis:J

    .line 579
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    invoke-virtual {v6, v2}, Lcom/dropbox/sync/android/DbxAccountInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 581
    :cond_0
    iput-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    .line 582
    const/4 v3, 0x1

    .line 585
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxAccount;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 587
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    if-eqz v4, :cond_2

    .line 592
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxAccount;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v6, p0}, Lcom/dropbox/sync/android/CoreAccountManager;->onNewAccountInfo(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 595
    invoke-direct {p0, v4}, Lcom/dropbox/sync/android/DbxAccount;->notifyListeners(Ljava/util/Iterator;)V

    .line 598
    :cond_2
    if-eqz v3, :cond_3

    .line 599
    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxAccountInfo;->getDbxAccountInfo2()Lcom/dropbox/sync/android/DbxAccountInfo2;

    move-result-object v0

    .line 600
    .local v0, "acctInfo2":Lcom/dropbox/sync/android/DbxAccountInfo2;
    if-eqz v0, :cond_3

    .line 602
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v6, v0}, Lcom/dropbox/sync/android/NativeApp;->accountUpdateInfo(Lcom/dropbox/sync/android/DbxAccountInfo2;)V

    .line 606
    .end local v0    # "acctInfo2":Lcom/dropbox/sync/android/DbxAccountInfo2;
    .end local v2    # "info":Lcom/dropbox/sync/android/DbxAccountInfo;
    .end local v3    # "infoChanged":Z
    .end local v4    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxAccount$Listener;>;"
    :cond_3
    :goto_1
    return v5

    .restart local v2    # "info":Lcom/dropbox/sync/android/DbxAccountInfo;
    :cond_4
    move v7, v6

    .line 560
    goto :goto_0

    .line 561
    .end local v2    # "info":Lcom/dropbox/sync/android/DbxAccountInfo;
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/NativeApp;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 563
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v7, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    const-string v8, "Failed to update account info."

    invoke-virtual {v5, v7, v8, v1}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v5, v6

    .line 568
    goto :goto_1

    .line 566
    :cond_5
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v7, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    const-string v8, "Failed to update account info due to shutdown."

    invoke-virtual {v5, v7, v8, v1}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 569
    .end local v1    # "e":Lcom/dropbox/sync/android/DbxException;
    :catch_1
    move-exception v1

    .line 570
    .local v1, "e":Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown;
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v7, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    const-string v8, "Failed to update account info due to shutdown."

    invoke-virtual {v5, v7, v8, v1}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 571
    goto :goto_1

    .line 587
    .end local v1    # "e":Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown;
    .restart local v2    # "info":Lcom/dropbox/sync/android/DbxAccountInfo;
    .restart local v3    # "infoChanged":Z
    .restart local v4    # "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxAccount$Listener;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method static fromJSON(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;Lorg/json/JSONObject;)Lcom/dropbox/sync/android/DbxAccount;
    .locals 11
    .param p0, "acctMgr"    # Lcom/dropbox/sync/android/CoreAccountManager;
    .param p1, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/dropbox/sync/android/DbxException;,
            Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException;
        }
    .end annotation

    .prologue
    .line 651
    :try_start_0
    const-string v0, "accountInfo"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 652
    .local v8, "jsonAcctInfo":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 654
    .local v5, "acctInfo":Lcom/dropbox/sync/android/DbxAccountInfo;
    if-eqz v8, :cond_0

    const-string v0, "userName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {v8}, Lcom/dropbox/sync/android/DbxAccountInfo;->fromJSON(Lorg/json/JSONObject;)Lcom/dropbox/sync/android/DbxAccountInfo;

    move-result-object v5

    .line 657
    :cond_0
    const-string v0, "userToken"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxToken;->parse(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxToken;

    move-result-object v10

    .line 658
    .local v10, "token":Lcom/dropbox/sync/android/DbxToken;
    invoke-static {p1, v10}, Lcom/dropbox/sync/android/DbxAccount;->isTokenCompatible(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/DbxToken;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    new-instance v0, Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException;

    const-string v1, "Can\'t use OAuth 1 token; no app secret is set"

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxAccount$ObsoleteDataException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxToken$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v5    # "acctInfo":Lcom/dropbox/sync/android/DbxAccountInfo;
    .end local v8    # "jsonAcctInfo":Lorg/json/JSONObject;
    .end local v10    # "token":Lcom/dropbox/sync/android/DbxToken;
    :catch_0
    move-exception v7

    .line 667
    .local v7, "e":Lcom/dropbox/sync/android/DbxToken$FormatException;
    new-instance v9, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad token format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/dropbox/sync/android/DbxToken$FormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 668
    .local v9, "newe":Lorg/json/JSONException;
    invoke-virtual {v9, v7}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 669
    throw v9

    .line 661
    .end local v7    # "e":Lcom/dropbox/sync/android/DbxToken$FormatException;
    .end local v9    # "newe":Lorg/json/JSONException;
    .restart local v5    # "acctInfo":Lcom/dropbox/sync/android/DbxAccountInfo;
    .restart local v8    # "jsonAcctInfo":Lorg/json/JSONObject;
    .restart local v10    # "token":Lcom/dropbox/sync/android/DbxToken;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/dropbox/sync/android/DbxAccount;

    const-string v1, "userId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "userToken"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxToken;->parse(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxToken;

    move-result-object v4

    const-string v1, "isLinked"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/sync/android/DbxAccount;-><init>(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/DbxAccountInfo;Z)V
    :try_end_1
    .catch Lcom/dropbox/sync/android/DbxToken$FormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method static isTokenCompatible(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/DbxToken;)Z
    .locals 1
    .param p0, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p1, "token"    # Lcom/dropbox/sync/android/DbxToken;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxConfig;->appSecret:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/dropbox/sync/android/DbxAccount;->isTokenCompatible(Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;)Z

    move-result v0

    return v0
.end method

.method static isTokenCompatible(Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;)Z
    .locals 2
    .param p0, "appSecret"    # Ljava/lang/String;
    .param p1, "token"    # Lcom/dropbox/sync/android/DbxToken;

    .prologue
    const/4 v0, 0x1

    .line 176
    instance-of v1, p1, Lcom/dropbox/sync/android/DbxToken$OAuth1;

    if-eqz v1, :cond_2

    .line 177
    if-eqz p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_2
    instance-of v1, p1, Lcom/dropbox/sync/android/DbxToken$OAuth2;

    if-nez v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->unimplemented(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    move-result-object v0

    throw v0
.end method

.method private notifyListeners(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dropbox/sync/android/DbxAccount$Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxAccount$Listener;>;"
    new-instance v0, Lcom/dropbox/sync/android/DbxAccount$6;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/DbxAccount$6;-><init>(Lcom/dropbox/sync/android/DbxAccount;Ljava/util/Iterator;)V

    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->postUserCallback(Ljava/lang/Runnable;)V

    .line 529
    return-void
.end method

.method private declared-synchronized setBatteryState(Lcom/dropbox/sync/android/CoreBatteryStateManager$State;)V
    .locals 5
    .param p1, "state"    # Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    .prologue
    .line 701
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    iget-object v2, p1, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->charging:Lcom/dropbox/sync/android/DbxChargingState;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeEnv;->setBatteryChargingState(Lcom/dropbox/sync/android/DbxChargingState;)V

    .line 702
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    iget-object v2, p1, Lcom/dropbox/sync/android/CoreBatteryStateManager$State;->level:Lcom/dropbox/sync/android/DbxBatteryLevel;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeEnv;->setBatteryLevel(Lcom/dropbox/sync/android/DbxBatteryLevel;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_0
    monitor-exit p0

    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get battery state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 701
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/dropbox/sync/android/DbxNetworkStatus;

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeEnv;->setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :goto_0
    monitor-exit p0

    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set network status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 693
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/dropbox/sync/android/DbxAccount$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxAccount$Listener;

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    monitor-exit p0

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method backgroundUpdateAccountInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, "wasFetched":Z
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/NativeApp;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxAccount;->fetchAccountInfo()Z

    move-result v1

    .line 544
    :cond_0
    monitor-enter p0

    .line 545
    if-nez v1, :cond_1

    :try_start_0
    iget-boolean v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/NativeApp;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 550
    .local v0, "shouldRetry":Z
    :goto_0
    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mInfoFetchScheduled:Z

    .line 551
    monitor-exit p0

    .line 552
    if-nez v0, :cond_2

    :goto_1
    return v2

    .end local v0    # "shouldRetry":Z
    :cond_1
    move v0, v3

    .line 545
    goto :goto_0

    .line 551
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "shouldRetry":Z
    :cond_2
    move v2, v3

    .line 552
    goto :goto_1
.end method

.method deinitialize()V
    .locals 3

    .prologue
    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    if-eqz v1, :cond_0

    .line 242
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/CoreNetworkStatus;->removeListener(Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;)V

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mNetworkStatusListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .line 245
    :cond_0
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 246
    .local v0, "wasUnlinked":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxAccount;->shutDownClients(Z)V

    .line 249
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v1, v0}, Lcom/dropbox/sync/android/NativeApp;->deinitialize(Z)V

    .line 250
    return-void

    .line 245
    .end local v0    # "wasUnlinked":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method doUnlink(Z)V
    .locals 5
    .param p1, "shouldUnlinkTokenOnServer"    # Z

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "listeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxAccount$Listener;>;"
    monitor-enter p0

    .line 463
    :try_start_0
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unlinked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    .line 466
    iput-boolean p1, p0, Lcom/dropbox/sync/android/DbxAccount;->mShouldUnlinkTokenOnServer:Z

    .line 468
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 471
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dropbox/sync/android/DbxAccount;->shutDownClients(Z)V

    .line 482
    if-eqz v0, :cond_1

    .line 483
    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxAccount;->notifyListeners(Ljava/util/Iterator;)V

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v1, p0, p1}, Lcom/dropbox/sync/android/CoreAccountManager;->onUnlink(Lcom/dropbox/sync/android/DbxAccount;Z)V

    .line 489
    return-void

    .line 471
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 710
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 714
    :goto_0
    return v1

    .line 711
    :cond_0
    instance-of v1, p1, Lcom/dropbox/sync/android/DbxAccount;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 712
    check-cast v0, Lcom/dropbox/sync/android/DbxAccount;

    .line 714
    .local v0, "other":Lcom/dropbox/sync/android/DbxAccount;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserToken:Lcom/dropbox/sync/android/DbxToken;

    iget-object v2, v0, Lcom/dropbox/sync/android/DbxAccount;->mUserToken:Lcom/dropbox/sync/android/DbxToken;

    invoke-static {v1, v2}, Lcom/dropbox/sync/android/CoreStringUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAccount;->deinitialize()V

    .line 261
    :cond_0
    return-void
.end method

.method public declared-synchronized getAccountInfo()Lcom/dropbox/sync/android/DbxAccountInfo;
    .locals 4

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mInfoFetchScheduled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mLastInfoFetchMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 337
    :cond_0
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->updateAccountInfo(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mInfoFetchScheduled:Z

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCacheDirForClient(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "clientTag"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/sync/android/CoreAccountManager;->getCacheDirForClient(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getCacheDirForLocalClient(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "clientTag"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/CoreAccountManager;->getCacheDirForLocalClient(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getClient(Lcom/dropbox/sync/android/CoreClient$Factory;)Lcom/dropbox/sync/android/CoreClient;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/dropbox/sync/android/CoreClient;",
            ">(",
            "Lcom/dropbox/sync/android/CoreClient$Factory",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException$Unauthorized;
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "factory":Lcom/dropbox/sync/android/CoreClient$Factory;, "Lcom/dropbox/sync/android/CoreClient$Factory<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxAccount;->checkLinked()V

    .line 380
    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreClient$Factory;->key()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mClients:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/CoreClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .local v1, "client":Lcom/dropbox/sync/android/CoreClient;, "TT;"
    if-nez v1, :cond_0

    .line 394
    :try_start_1
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreClient$Factory;->getCacheDirTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/dropbox/sync/android/DbxAccount;->getCacheDirForLocalClient(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 396
    .local v0, "cacheDir":Ljava/io/File;
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreFileUtil;->prepCacheDirectory(Ljava/io/File;)V

    .line 397
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    invoke-virtual {p1, p0, v4, v0}, Lcom/dropbox/sync/android/CoreClient$Factory;->createLocal(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;)Lcom/dropbox/sync/android/CoreClient;

    move-result-object v1

    .line 403
    :goto_0
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mClients:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 399
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreClient$Factory;->getCacheDirTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/dropbox/sync/android/DbxAccount;->getCacheDirForClient(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 400
    .restart local v0    # "cacheDir":Ljava/io/File;
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreFileUtil;->prepCacheDirectory(Ljava/io/File;)V

    .line 401
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {p1, p0, v4, v0}, Lcom/dropbox/sync/android/CoreClient$Factory;->create(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)Lcom/dropbox/sync/android/CoreClient;
    :try_end_2
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 404
    .end local v0    # "cacheDir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Lcom/dropbox/sync/android/DbxException;
    :try_start_3
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    new-instance v6, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client initialization failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5, v6}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    .end local v1    # "client":Lcom/dropbox/sync/android/CoreClient;, "TT;"
    .end local v2    # "e":Lcom/dropbox/sync/android/DbxException;
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method getCoreAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    return-object v0
.end method

.method getLogger()Lcom/dropbox/sync/android/CoreLogger;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    return-object v0
.end method

.method getNativeApp()Lcom/dropbox/sync/android/NativeApp;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mApp:Lcom/dropbox/sync/android/NativeApp;

    return-object v0
.end method

.method getToken()Lcom/dropbox/sync/android/DbxToken;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserToken:Lcom/dropbox/sync/android/DbxToken;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method hasClient(Lcom/dropbox/sync/android/CoreClient$Factory;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/dropbox/sync/android/CoreClient;",
            ">(",
            "Lcom/dropbox/sync/android/CoreClient$Factory",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "factory":Lcom/dropbox/sync/android/CoreClient$Factory;, "Lcom/dropbox/sync/android/CoreClient$Factory<TT;>;"
    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreClient$Factory;->key()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mClients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 719
    const/16 v0, 0x1f

    .line 720
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 721
    .local v1, "result":I
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserToken:Lcom/dropbox/sync/android/DbxToken;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 722
    return v1
.end method

.method public declared-synchronized isLinked()Z
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isLocal()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized onClientStopped(Lcom/dropbox/sync/android/CoreClient;)V
    .locals 2
    .param p1, "c"    # Lcom/dropbox/sync/android/CoreClient;

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreClient;->getFactory()Lcom/dropbox/sync/android/CoreClient$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreClient$Factory;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/dropbox/sync/android/DbxAccount$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxAccount$Listener;

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    monitor-exit p0

    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method shutDownClients(Z)V
    .locals 4
    .param p1, "unlinked"    # Z

    .prologue
    .line 427
    monitor-enter p0

    .line 428
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccount;->mClients:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    .local v1, "clientsToShutdown":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/CoreClient;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/CoreClient;

    .line 434
    .local v0, "c":Lcom/dropbox/sync/android/CoreClient;
    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/CoreClient;->shutDown(Z)V

    goto :goto_0

    .line 429
    .end local v0    # "c":Lcom/dropbox/sync/android/CoreClient;
    .end local v1    # "clientsToShutdown":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/CoreClient;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 436
    .restart local v1    # "clientsToShutdown":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/CoreClient;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 621
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "userId"

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    const-string v2, "userToken"

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserToken:Lcom/dropbox/sync/android/DbxToken;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxToken;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v2, "isLinked"

    iget-boolean v3, p0, Lcom/dropbox/sync/android/DbxAccount;->mIsLinked:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 624
    const-string v3, "accountInfo"

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    monitor-exit p0

    return-object v1

    .line 624
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mAccountInfo:Lcom/dropbox/sync/android/DbxAccountInfo;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxAccountInfo;->toJSON()Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 626
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccount;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/DbxAccount;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v5, "Bug in JSON generation."

    invoke-direct {v4, v5, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DbxAccount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v1, "Can\'t unlink a local account"

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxAccount;->doUnlink(Z)V

    .line 452
    return-void
.end method

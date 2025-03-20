.class public Lcom/dropbox/sync/android/DbxAccountManager;
.super Ljava/lang/Object;
.source "DbxAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxAccountManager$ConfigurationMismatchException;,
        Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;,
        Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;
    }
.end annotation


# static fields
.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "3.1.1"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "dropbox-credentials"

.field private static final TAG:Ljava/lang/String;

.field private static final sInitializeLock:Ljava/lang/Object;

.field private static sInstance:Lcom/dropbox/sync/android/DbxAccountManager;


# instance fields
.field private final mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;",
            "Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/dropbox/sync/android/DbxAccountManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxAccountManager;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/DbxAccountManager;->sInitializeLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/CoreAccountManager;)V
    .locals 5
    .param p1, "acctMgr"    # Lcom/dropbox/sync/android/CoreAccountManager;

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mListeners:Ljava/util/Map;

    .line 212
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 213
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    .line 215
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreAccountManager;->getCoreConfig()Lcom/dropbox/sync/android/CoreConfig;

    move-result-object v0

    .line 216
    .local v0, "cc":Lcom/dropbox/sync/android/CoreConfig;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxAccountManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropbox initialized for application: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v4, v4, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dropbox/sync/android/CoreConfig;->userAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dropbox/sync/android/DbxAccountManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static getInstance()Lcom/dropbox/sync/android/DbxAccountManager;
    .locals 3

    .prologue
    .line 230
    sget-object v1, Lcom/dropbox/sync/android/DbxAccountManager;->sInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    sget-object v0, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v2, "Dropbox isn\'t initialized."

    invoke-direct {v0, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 234
    :cond_0
    :try_start_1
    sget-object v0, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;Lcom/dropbox/sync/android/DbxConfig;)Lcom/dropbox/sync/android/DbxAccountManager;
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/dropbox/sync/android/DbxConfig;

    .prologue
    .line 154
    const-string v2, "dropbox-credentials"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 156
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;

    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAccountManager$SharedPreferencesAccountStorage;-><init>(Landroid/content/SharedPreferences;Lcom/dropbox/sync/android/CoreLogger;)V

    .line 160
    .local v0, "acctStorage":Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;
    sget-object v2, Lcom/dropbox/sync/android/CoreConfig$Hosts;->DEFAULT:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    const/4 v3, 0x1

    invoke-static {p0, p1, v2, v0, v3}, Lcom/dropbox/sync/android/DbxAccountManager;->getInstance(Landroid/content/Context;Lcom/dropbox/sync/android/DbxConfig;Lcom/dropbox/sync/android/CoreConfig$Hosts;Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;Z)Lcom/dropbox/sync/android/DbxAccountManager;

    move-result-object v2

    return-object v2
.end method

.method static getInstance(Landroid/content/Context;Lcom/dropbox/sync/android/DbxConfig;Lcom/dropbox/sync/android/CoreConfig$Hosts;Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;Z)Lcom/dropbox/sync/android/DbxAccountManager;
    .locals 9
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/dropbox/sync/android/DbxConfig;
    .param p2, "hosts"    # Lcom/dropbox/sync/android/CoreConfig$Hosts;
    .param p3, "acctStorage"    # Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;
    .param p4, "prefetchAccountInfo"    # Z

    .prologue
    .line 190
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "applicationContext shouldn\'t be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "config shouldn\'t be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    invoke-static {p0, p1}, Lcom/dropbox/sync/android/DbxAccountManager;->validateAppContext(Landroid/content/Context;Lcom/dropbox/sync/android/DbxConfig;)Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;

    move-result-object v8

    .line 194
    .local v8, "appStrings":Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;
    new-instance v0, Lcom/dropbox/sync/android/CoreConfig;

    invoke-static {v8}, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->access$000(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->access$100(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->access$200(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;->access$300(Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/sync/android/CoreConfig;-><init>(Lcom/dropbox/sync/android/DbxConfig;Lcom/dropbox/sync/android/CoreConfig$Hosts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    .local v0, "coreConfig":Lcom/dropbox/sync/android/CoreConfig;
    sget-object v2, Lcom/dropbox/sync/android/DbxAccountManager;->sInitializeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    sget-object v1, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    if-nez v1, :cond_3

    .line 200
    new-instance v1, Lcom/dropbox/sync/android/DbxAccountManager;

    new-instance v3, Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-direct {v3, p0, v0, p3}, Lcom/dropbox/sync/android/CoreAccountManager;-><init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/CoreAccountManager$AccountStorageProvider;)V

    invoke-direct {v1, v3}, Lcom/dropbox/sync/android/DbxAccountManager;-><init>(Lcom/dropbox/sync/android/CoreAccountManager;)V

    sput-object v1, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    .line 207
    :cond_2
    sget-object v1, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    monitor-exit v2

    return-object v1

    .line 202
    :cond_3
    sget-object v1, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    iget-object v1, v1, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreAccountManager;->getConfig()Lcom/dropbox/sync/android/DbxConfig;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/dropbox/sync/android/DbxConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    new-instance v1, Lcom/dropbox/sync/android/DbxAccountManager$ConfigurationMismatchException;

    const-string v3, "Dropbox.ensureInitialized called with different configuration."

    invoke-direct {v1, v3}, Lcom/dropbox/sync/android/DbxAccountManager$ConfigurationMismatchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountManager;
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App secret must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v0, Lcom/dropbox/sync/android/DbxConfig;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/sync/android/DbxConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/dropbox/sync/android/DbxAccountManager;->getInstance(Landroid/content/Context;Lcom/dropbox/sync/android/DbxConfig;)Lcom/dropbox/sync/android/DbxAccountManager;

    move-result-object v0

    return-object v0
.end method

.method static hasInstance()Z
    .locals 2

    .prologue
    .line 243
    sget-object v1, Lcom/dropbox/sync/android/DbxAccountManager;->sInitializeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    sget-object v0, Lcom/dropbox/sync/android/DbxAccountManager;->sInstance:Lcom/dropbox/sync/android/DbxAccountManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static validateAppContext(Landroid/content/Context;Lcom/dropbox/sync/android/DbxConfig;)Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;
    .locals 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/dropbox/sync/android/DbxConfig;

    .prologue
    .line 500
    invoke-static {p0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->validateIsApplicationContext(Landroid/content/Context;)V

    .line 505
    :try_start_0
    invoke-static {p0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 510
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-boolean v5, p1, Lcom/dropbox/sync/android/DbxConfig;->validateApplicationDAuthConfig:Z

    if-eqz v5, :cond_0

    .line 511
    invoke-static {v3}, Lcom/dropbox/sync/android/CoreAndroidUtil;->validateHaveAuthActivities(Landroid/content/pm/PackageInfo;)V

    .line 513
    :cond_0
    invoke-static {v3}, Lcom/dropbox/sync/android/CoreAndroidUtil;->validateHaveServices(Landroid/content/pm/PackageInfo;)V

    .line 514
    invoke-static {p0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->validatePermissions(Landroid/content/Context;)V

    .line 517
    iget-boolean v5, p1, Lcom/dropbox/sync/android/DbxConfig;->validateApplicationDAuthConfig:Z

    if-eqz v5, :cond_1

    .line 521
    iget-object v5, p1, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/dropbox/client2/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 524
    :cond_1
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxSession;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "userAgent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v3}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getPackageString(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Dropbox-Sync-Sdk-Android/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3.1.1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "appVersion":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "appName":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;

    invoke-static {p0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v0, v1, v6}, Lcom/dropbox/sync/android/DbxAccountManager$AppConfigStrings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 506
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;
    new-instance v5, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v6, "caught unexpected exception"

    invoke-direct {v5, v6, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 529
    .end local v2    # "e":Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;
    .restart local v1    # "appVersion":Ljava/lang/String;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;)V
    .locals 3
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;

    .prologue
    .line 446
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 447
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    move-object v0, p1

    .line 449
    .local v0, "dbxListener":Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;
    new-instance v1, Lcom/dropbox/sync/android/DbxAccountManager$1;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/sync/android/DbxAccountManager$1;-><init>(Lcom/dropbox/sync/android/DbxAccountManager;Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;)V

    .line 455
    .local v1, "mgrListener":Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v2, v1}, Lcom/dropbox/sync/android/CoreAccountManager;->addListener(Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;)V

    .line 456
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mListeners:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .end local v0    # "dbxListener":Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;
    .end local v1    # "mgrListener":Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 446
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    return-object v0
.end method

.method public getLinkedAccount()Lcom/dropbox/sync/android/DbxAccount;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAccountManager;->getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/CoreAccountManager;->getLastLinkedAccount()Lcom/dropbox/sync/android/DbxAccount;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedAccounts()Ljava/util/List;
    .locals 1
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
    .line 412
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAccountManager;->getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/CoreAccountManager;->getLinkedAccounts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasLinkedAccount()Z
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAccountManager;->getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/CoreAccountManager;->hasLinkedAccounts()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeListener(Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;)V
    .locals 2
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;

    .prologue
    .line 465
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;

    .line 467
    .local v0, "mgrListener":Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v1, v0}, Lcom/dropbox/sync/android/CoreAccountManager;->removeListener(Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;)V

    .line 469
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v0    # "mgrListener":Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startLink(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbackRequestCode"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/CoreAccountManager;->startLink(Landroid/app/Activity;I)V

    .line 309
    return-void
.end method

.method public startLink(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "callbackRequestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/CoreAccountManager;->startLink(Landroid/app/Fragment;I)V

    .line 336
    return-void
.end method

.method public startLinkFromSupportFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "callbackRequestCode"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager;->mAcctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/CoreAccountManager;->startLink(Landroid/support/v4/app/Fragment;I)V

    .line 362
    return-void
.end method

.method public unlink()V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAccountManager;->getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/CoreAccountManager;->unlinkAll()V

    .line 381
    return-void
.end method

.class Lcom/dropbox/sync/android/CoreNetworkStatus;
.super Ljava/lang/Object;
.source "CoreNetworkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInitLock:Ljava/lang/Object;

.field private static sInstance:Lcom/dropbox/sync/android/CoreNetworkStatus;


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private mStatus:Lcom/dropbox/sync/android/DbxNetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/dropbox/sync/android/CoreNetworkStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreNetworkStatus;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreNetworkStatus;->sInitLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mListeners:Ljava/util/Set;

    .line 34
    sget-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mStatus:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 62
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 63
    return-void
.end method

.method private getCurrentDeviceStatus(Landroid/content/Context;Landroid/net/NetworkInfo;)Lcom/dropbox/sync/android/DbxNetworkStatus;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 85
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    .line 87
    .local v0, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_6

    .line 88
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 90
    .local v3, "type":I
    if-ne v3, v4, :cond_1

    .line 91
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->WIFI:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 142
    .end local v3    # "type":I
    :goto_1
    return-object v4

    .end local v0    # "isConnected":Z
    :cond_0
    move v0, v1

    .line 85
    goto :goto_0

    .line 92
    .restart local v0    # "isConnected":Z
    .restart local v3    # "type":I
    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->ROAMING:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 99
    :cond_2
    if-eqz v3, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    :cond_3
    move v1, v4

    .line 103
    .local v1, "isMobileOnline":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 104
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 105
    .local v2, "subtype":I
    packed-switch v2, :pswitch_data_0

    .line 133
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v4

    sget-object v5, Lcom/dropbox/sync/android/CoreNetworkStatus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNetworkStatus saw unexpected network subtype of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 110
    :pswitch_0
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_EDGE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 117
    :pswitch_1
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_3G:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 123
    :pswitch_2
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_3G_PLUS:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 127
    :pswitch_3
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_4G:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 130
    :pswitch_4
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 138
    .end local v2    # "subtype":I
    :cond_5
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->OFFLINE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 142
    .end local v1    # "isMobileOnline":Z
    .end local v3    # "type":I
    :cond_6
    sget-object v4, Lcom/dropbox/sync/android/DbxNetworkStatus;->OFFLINE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;
    .locals 2

    .prologue
    .line 53
    sget-object v1, Lcom/dropbox/sync/android/CoreNetworkStatus;->sInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/dropbox/sync/android/CoreNetworkStatus;->sInstance:Lcom/dropbox/sync/android/CoreNetworkStatus;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/dropbox/sync/android/CoreNetworkStatus;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreNetworkStatus;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreNetworkStatus;->sInstance:Lcom/dropbox/sync/android/CoreNetworkStatus;

    .line 57
    :cond_0
    sget-object v0, Lcom/dropbox/sync/android/CoreNetworkStatus;->sInstance:Lcom/dropbox/sync/android/CoreNetworkStatus;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .prologue
    .line 185
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus(Landroid/content/Context;)Lcom/dropbox/sync/android/DbxNetworkStatus;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mStatus:Lcom/dropbox/sync/android/DbxNetworkStatus;

    sget-object v1, Lcom/dropbox/sync/android/DbxNetworkStatus;->ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    if-ne v0, v1, :cond_1

    .line 75
    if-nez p1, :cond_0

    .line 76
    sget-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v0

    .line 78
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/CoreNetworkStatus;->updateNetworkStatus(Landroid/content/Context;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mStatus:Lcom/dropbox/sync/android/DbxNetworkStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .prologue
    .line 196
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateNetworkStatus(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 154
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getCurrentDeviceStatus(Landroid/content/Context;Landroid/net/NetworkInfo;)Lcom/dropbox/sync/android/DbxNetworkStatus;

    move-result-object v5

    .line 156
    .local v5, "status":Lcom/dropbox/sync/android/DbxNetworkStatus;
    iget-object v6, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v7, Lcom/dropbox/sync/android/CoreNetworkStatus;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating network status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxNetworkStatus;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;>;"
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v6, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mStatus:Lcom/dropbox/sync/android/DbxNetworkStatus;

    if-eq v5, v6, :cond_0

    .line 161
    iput-object v5, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mStatus:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 162
    new-instance v4, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/dropbox/sync/android/CoreNetworkStatus;->mListeners:Ljava/util/Set;

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .end local v3    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;>;"
    .local v4, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;>;"
    move-object v3, v4

    .line 164
    .end local v4    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;>;"
    .restart local v3    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v3, :cond_1

    .line 167
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .line 168
    .local v2, "l":Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;
    invoke-interface {v2}, Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;->onNetworkStatusChange()V

    goto :goto_0

    .line 164
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 171
    :cond_1
    return-void
.end method

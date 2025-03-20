.class final Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DropboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectivityReceiver"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final AUTO_SYNC_INTERVAL_MILLIS:I = 0x3e8

.field private static final LAST_AUTO_SYNC_TIME:Ljava/lang/String; = "last_auto_sync_time"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x75aa7bdcb8fb4758L    # 6.362491193177251E258

    const-string v2, "com/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    aput-boolean v3, v0, v4

    .line 89
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    aput-boolean v3, v0, v3

    .line 90
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 91
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;-><init>()V

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private isSyncIntervalExceeded()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->$jacocoInit()[Z

    move-result-object v2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_auto_sync_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    const/16 v0, 0xf

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x11

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x10

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private updateLastSyncTime()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_auto_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->$jacocoInit()[Z

    move-result-object v1

    .line 95
    const-string v0, "connectivity"

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 97
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 99
    if-nez v0, :cond_0

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 105
    :goto_0
    const/16 v0, 0xd

    aput-boolean v3, v1, v0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 100
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->isSyncIntervalExceeded()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    .line 101
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getStorage()Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->sync()V

    const/16 v0, 0xb

    aput-boolean v3, v1, v0

    .line 102
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;->updateLastSyncTime()V

    const/16 v0, 0xc

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

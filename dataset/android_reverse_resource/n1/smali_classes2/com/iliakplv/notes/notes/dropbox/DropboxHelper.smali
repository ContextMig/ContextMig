.class public final Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;
.super Ljava/lang/Object;
.source "DropboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final APP_KEY:Ljava/lang/String; = "cyla6oz3c3vuje3"

.field private static final APP_SECRET:Ljava/lang/String; = "blt7jatmxpojwiz"

.field private static account:Lcom/dropbox/sync/android/DbxAccount;

.field private static accountManager:Lcom/dropbox/sync/android/DbxAccountManager;

.field private static connectivityReceiver:Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x43c4c41ee7bbc645L    # -1.4763528628745658E-18

    const-string v2, "com/iliakplv/notes/notes/dropbox/DropboxHelper"

    const/16 v3, 0x1d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->accountManager:Lcom/dropbox/sync/android/DbxAccountManager;

    .line 28
    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->account:Lcom/dropbox/sync/android/DbxAccount;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static disableSynchronization()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    sget-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->connectivityReceiver:Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    if-nez v1, :cond_0

    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    .line 74
    :goto_0
    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    return-void

    .line 70
    :cond_0
    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 71
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->connectivityReceiver:Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    const/4 v1, 0x0

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->connectivityReceiver:Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getAccount()Lcom/dropbox/sync/android/DbxAccount;
    .locals 5

    .prologue
    const-class v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->account:Lcom/dropbox/sync/android/DbxAccount;

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 55
    :goto_0
    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->account:Lcom/dropbox/sync/android/DbxAccount;

    const/16 v3, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 49
    :cond_0
    const/16 v2, 0x9

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v0, v2

    .line 50
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->initAccountManagerIfNeeded(Landroid/content/Context;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 51
    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->accountManager:Lcom/dropbox/sync/android/DbxAccountManager;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxAccountManager;->hasLinkedAccount()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 51
    :cond_1
    const/16 v2, 0xc

    const/4 v3, 0x1

    :try_start_2
    aput-boolean v3, v0, v2

    .line 52
    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->accountManager:Lcom/dropbox/sync/android/DbxAccountManager;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxAccountManager;->getLinkedAccount()Lcom/dropbox/sync/android/DbxAccount;

    move-result-object v2

    sput-object v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->account:Lcom/dropbox/sync/android/DbxAccount;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized hasLinkedAccount()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const-class v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 40
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->account:Lcom/dropbox/sync/android/DbxAccount;

    if-eqz v3, :cond_0

    .line 41
    const/4 v3, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    monitor-exit v1

    return v0

    .line 43
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->initAccountManagerIfNeeded(Landroid/content/Context;)V

    const/4 v0, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 44
    sget-object v0, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->accountManager:Lcom/dropbox/sync/android/DbxAccountManager;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccountManager;->hasLinkedAccount()Z

    move-result v0

    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initAccountManagerIfNeeded(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    sget-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->accountManager:Lcom/dropbox/sync/android/DbxAccountManager;

    if-eqz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 37
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 34
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 35
    const-string v1, "cyla6oz3c3vuje3"

    const-string v2, "blt7jatmxpojwiz"

    invoke-static {p0, v1, v2}, Lcom/dropbox/sync/android/DbxAccountManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountManager;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->accountManager:Lcom/dropbox/sync/android/DbxAccountManager;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public static initSynchronization()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    sget-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->connectivityReceiver:Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    .line 67
    :goto_0
    const/16 v1, 0x17

    aput-boolean v5, v0, v1

    return-void

    .line 59
    :cond_0
    const/16 v1, 0x10

    aput-boolean v5, v0, v1

    .line 60
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getCurrentStorageType()Lcom/iliakplv/notes/notes/storage/Storage$Type;

    move-result-object v1

    sget-object v2, Lcom/iliakplv/notes/notes/storage/Storage$Type;->Dropbox:Lcom/iliakplv/notes/notes/storage/Storage$Type;

    if-eq v1, v2, :cond_1

    const/16 v1, 0x11

    aput-boolean v5, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    aput-boolean v5, v0, v1

    .line 61
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->hasLinkedAccount()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x13

    aput-boolean v5, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    aput-boolean v5, v0, v1

    .line 63
    new-instance v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;-><init>(Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$1;)V

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->connectivityReceiver:Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    .line 64
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->connectivityReceiver:Lcom/iliakplv/notes/notes/dropbox/DropboxHelper$ConnectivityReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

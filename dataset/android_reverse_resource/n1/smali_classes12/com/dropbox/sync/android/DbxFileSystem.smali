.class public Lcom/dropbox/sync/android/DbxFileSystem;
.super Lcom/dropbox/sync/android/CoreClient;
.source "DbxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxFileSystem$5;,
        Lcom/dropbox/sync/android/DbxFileSystem$ChooserFactory;,
        Lcom/dropbox/sync/android/DbxFileSystem$Factory;,
        Lcom/dropbox/sync/android/DbxFileSystem$PathListener;,
        Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;,
        Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;,
        Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;,
        Lcom/dropbox/sync/android/DbxFileSystem$RevPref;,
        Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;
    }
.end annotation


# static fields
.field static final CHOOSER_FACTORY:Lcom/dropbox/sync/android/DbxFileSystem$ChooserFactory;

.field private static final FACTORY:Lcom/dropbox/sync/android/DbxFileSystem$Factory;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isOpen:Z

.field private final mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

.field private final mPathListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;",
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/dropbox/sync/android/DbxFileSystem$PathListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatusUpdateLock:Ljava/lang/Object;

.field private final mSyncStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-class v0, Lcom/dropbox/sync/android/DbxFileSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    .line 260
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$Factory;

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFileSystem$Factory;-><init>(Lcom/dropbox/sync/android/DbxFileSystem$1;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem;->FACTORY:Lcom/dropbox/sync/android/DbxFileSystem$Factory;

    .line 279
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$ChooserFactory;

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFileSystem$ChooserFactory;-><init>(Lcom/dropbox/sync/android/DbxFileSystem$1;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem;->CHOOSER_FACTORY:Lcom/dropbox/sync/android/DbxFileSystem$ChooserFactory;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Ljava/util/EnumSet;)V
    .locals 2
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p3, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/DbxAccount;",
            "Lcom/dropbox/sync/android/NativeApp;",
            "Ljava/io/File;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 317
    .local p4, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;>;"
    invoke-direct {p0, p1, p3}, Lcom/dropbox/sync/android/CoreClient;-><init>(Lcom/dropbox/sync/android/DbxAccount;Ljava/io/File;)V

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mStatusUpdateLock:Ljava/lang/Object;

    .line 288
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mSyncStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z

    .line 318
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getLogger()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 319
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getCoreAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreAccountManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    .line 320
    invoke-direct {p0, p1, p2, p4}, Lcom/dropbox/sync/android/DbxFileSystem;->doInitialize(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/util/EnumSet;)Lcom/dropbox/sync/android/NativeFileSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z

    .line 324
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxFileSystem;->syncStatusCallback(Lcom/dropbox/sync/android/NativeFileSystem;)V

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Ljava/util/EnumSet;Lcom/dropbox/sync/android/DbxFileSystem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "x1"    # Lcom/dropbox/sync/android/NativeApp;
    .param p3, "x2"    # Ljava/io/File;
    .param p4, "x3"    # Ljava/util/EnumSet;
    .param p5, "x4"    # Lcom/dropbox/sync/android/DbxFileSystem$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/sync/android/DbxFileSystem;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Ljava/util/EnumSet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dropbox/sync/android/DbxFileSystem;Lcom/dropbox/sync/android/NativeFileSystem;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxFileSystem;
    .param p1, "x1"    # Lcom/dropbox/sync/android/NativeFileSystem;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxFileSystem;->syncStatusCallback(Lcom/dropbox/sync/android/NativeFileSystem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dropbox/sync/android/DbxFileSystem;Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxFileSystem;
    .param p1, "x1"    # Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxFileSystem;->pathCallback(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;)V

    return-void
.end method

.method private doInitialize(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/util/EnumSet;)Lcom/dropbox/sync/android/NativeFileSystem;
    .locals 7
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/DbxAccount;",
            "Lcom/dropbox/sync/android/NativeApp;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;",
            ">;)",
            "Lcom/dropbox/sync/android/NativeFileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .local p3, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;>;"
    const/4 v6, 0x0

    .line 328
    new-instance v1, Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFileSystem;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, p2, v2, p3}, Lcom/dropbox/sync/android/NativeFileSystem;-><init>(Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Ljava/util/EnumSet;)V

    .line 329
    .local v1, "nativeFileSystem":Lcom/dropbox/sync/android/NativeFileSystem;
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created DbxFileSystem for uid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "completed":Z
    :try_start_0
    new-instance v2, Lcom/dropbox/sync/android/DbxFileSystem$1;

    invoke-direct {v2, p0, v1}, Lcom/dropbox/sync/android/DbxFileSystem$1;-><init>(Lcom/dropbox/sync/android/DbxFileSystem;Lcom/dropbox/sync/android/NativeFileSystem;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeFileSystem;->setSyncStatusListener(Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    const/4 v0, 0x1

    .line 340
    if-nez v0, :cond_0

    .line 341
    invoke-virtual {v1, v6}, Lcom/dropbox/sync/android/NativeFileSystem;->deinitialize(Z)V

    .line 344
    :cond_0
    return-object v1

    .line 340
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {v1, v6}, Lcom/dropbox/sync/android/NativeFileSystem;->deinitialize(Z)V

    :cond_1
    throw v2
.end method

.method public static forAccount(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/DbxFileSystem;
    .locals 1
    .param p0, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException$Unauthorized;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem;->FACTORY:Lcom/dropbox/sync/android/DbxFileSystem$Factory;

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxAccount;->getClient(Lcom/dropbox/sync/android/CoreClient$Factory;)Lcom/dropbox/sync/android/CoreClient;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileSystem;

    return-object v0
.end method

.method private fromNativePathListenerMode(I)Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;
    .locals 5
    .param p1, "nativeMode"    # I

    .prologue
    .line 1125
    packed-switch p1, :pswitch_data_0

    .line 1133
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled native path listener mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1127
    :pswitch_0
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_ONLY:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    .line 1131
    :goto_0
    return-object v0

    .line 1129
    :pswitch_1
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_CHILD:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    goto :goto_0

    .line 1131
    :pswitch_2
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_DESCENDANT:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    goto :goto_0

    .line 1125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private makeFileOpenFlags(Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;Lcom/dropbox/sync/android/DbxFileSystem$RevPref;)I
    .locals 5
    .param p1, "cp"    # Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;
    .param p2, "rp"    # Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    .prologue
    .line 1138
    const/4 v0, 0x0

    .line 1140
    .local v0, "flags":I
    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$CreatePref:[I

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1150
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v4, "Unknown CreatePref value."

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1144
    :pswitch_0
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_CREATE_EXCL:I

    or-int/2addr v0, v1

    .line 1153
    :goto_0
    :pswitch_1
    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$RevPref:[I

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1160
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v4, "Unknown CreatePref value."

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1147
    :pswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 1148
    goto :goto_0

    .line 1155
    :pswitch_3
    or-int/lit8 v0, v0, 0x4

    .line 1163
    :pswitch_4
    return v0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1153
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private makeThumbnailOpenFlags(Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;)I
    .locals 5
    .param p1, "sz"    # Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;
    .param p2, "fmt"    # Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;

    .prologue
    .line 1167
    const/4 v0, 0x0

    .line 1169
    .local v0, "flags":I
    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1186
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v4, "Unknown ThumbSize value."

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1171
    :pswitch_0
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_XS:I

    or-int/2addr v0, v1

    .line 1189
    :goto_0
    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbFormat:[I

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1197
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v4, "Unknown ThumbFormat value."

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1174
    :pswitch_1
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_S:I

    or-int/2addr v0, v1

    .line 1175
    goto :goto_0

    .line 1177
    :pswitch_2
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_M:I

    or-int/2addr v0, v1

    .line 1178
    goto :goto_0

    .line 1180
    :pswitch_3
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_L:I

    or-int/2addr v0, v1

    .line 1181
    goto :goto_0

    .line 1183
    :pswitch_4
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_XL:I

    or-int/2addr v0, v1

    .line 1184
    goto :goto_0

    .line 1191
    :pswitch_5
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_JPG:I

    or-int/2addr v0, v1

    .line 1200
    :goto_1
    return v0

    .line 1194
    :pswitch_6
    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_PNG:I

    or-int/2addr v0, v1

    .line 1195
    goto :goto_1

    .line 1169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1189
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private pathCallback(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;)V
    .locals 5
    .param p1, "key"    # Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    .prologue
    .line 1096
    monitor-enter p0

    .line 1099
    :try_start_0
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1100
    .local v0, "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    iget-object v2, p1, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->path:Lcom/dropbox/sync/android/DbxPath;

    .line 1101
    .local v2, "postPath":Lcom/dropbox/sync/android/DbxPath;
    iget v4, p1, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->nativeMode:I

    invoke-direct {p0, v4}, Lcom/dropbox/sync/android/DbxFileSystem;->fromNativePathListenerMode(I)Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    move-result-object v1

    .line 1102
    .local v1, "postMode":Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;
    new-instance v3, Lcom/dropbox/sync/android/DbxFileSystem$4;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/dropbox/sync/android/DbxFileSystem$4;-><init>(Lcom/dropbox/sync/android/DbxFileSystem;Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)V

    .line 1110
    .local v3, "postRunnable":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-static {v3}, Lcom/dropbox/sync/android/CoreAndroidUtil;->postUserCallback(Ljava/lang/Runnable;)V

    .line 1112
    return-void

    .line 1110
    .end local v0    # "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    .end local v1    # "postMode":Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;
    .end local v2    # "postPath":Lcom/dropbox/sync/android/DbxPath;
    .end local v3    # "postRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private syncStatusCallback(Lcom/dropbox/sync/android/NativeFileSystem;)V
    .locals 8
    .param p1, "nativeFileSystem"    # Lcom/dropbox/sync/android/NativeFileSystem;

    .prologue
    .line 1067
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mStatusUpdateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1069
    :try_start_0
    invoke-virtual {p1}, Lcom/dropbox/sync/android/NativeFileSystem;->getSyncStatus()Lcom/dropbox/sync/android/DbxSyncStatus;

    move-result-object v3

    .line 1070
    .local v3, "status":Lcom/dropbox/sync/android/DbxSyncStatus;
    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .line 1071
    .local v1, "newState":Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxSyncStatus;->anyInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1072
    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->FOREGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .line 1076
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    invoke-virtual {v4, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->setState(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    .end local v1    # "newState":Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    .end local v3    # "status":Lcom/dropbox/sync/android/DbxSyncStatus;
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mSyncStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1084
    .local v2, "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;>;"
    new-instance v4, Lcom/dropbox/sync/android/DbxFileSystem$3;

    invoke-direct {v4, p0, v2}, Lcom/dropbox/sync/android/DbxFileSystem$3;-><init>(Lcom/dropbox/sync/android/DbxFileSystem;Ljava/util/Iterator;)V

    invoke-static {v4}, Lcom/dropbox/sync/android/CoreAndroidUtil;->postUserCallback(Ljava/lang/Runnable;)V

    .line 1092
    return-void

    .line 1073
    .end local v2    # "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;>;"
    .restart local v1    # "newState":Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    .restart local v3    # "status":Lcom/dropbox/sync/android/DbxSyncStatus;
    :cond_1
    :try_start_2
    iget-boolean v4, v3, Lcom/dropbox/sync/android/DbxSyncStatus;->isSyncActive:Z

    if-eqz v4, :cond_0

    .line 1074
    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->BACKGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    :try_end_2
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1077
    .end local v1    # "newState":Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    .end local v3    # "status":Lcom/dropbox/sync/android/DbxSyncStatus;
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    :try_start_3
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v6, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    const-string v7, "Failed to get sync status in callback."

    invoke-virtual {v4, v6, v7, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1080
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private toNative(Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)I
    .locals 5
    .param p1, "mode"    # Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    .prologue
    .line 1115
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$PathListener$Mode:[I

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1120
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled PathListener.Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1116
    :pswitch_0
    const/4 v0, 0x0

    .line 1118
    :goto_0
    return v0

    .line 1117
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1118
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized addPathListener(Lcom/dropbox/sync/android/DbxFileSystem$PathListener;Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)V
    .locals 4
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxFileSystem$PathListener;
    .param p2, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p3, "mode"    # Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    .prologue
    .line 640
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener must be non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 641
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Path must be non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mode must be non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 661
    :goto_0
    monitor-exit p0

    return-void

    .line 647
    :cond_3
    :try_start_2
    new-instance v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    invoke-direct {p0, p3}, Lcom/dropbox/sync/android/DbxFileSystem;->toNative(Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)I

    move-result v2

    invoke-direct {v0, p2, v2}, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;-><init>(Lcom/dropbox/sync/android/DbxPath;I)V

    .line 648
    .local v0, "key":Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 649
    .local v1, "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    if-nez v1, :cond_4

    .line 650
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    new-instance v3, Lcom/dropbox/sync/android/DbxFileSystem$2;

    invoke-direct {v3, p0}, Lcom/dropbox/sync/android/DbxFileSystem$2;-><init>(Lcom/dropbox/sync/android/DbxFileSystem;)V

    invoke-virtual {v2, v0, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->setPathListener(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;Lcom/dropbox/sync/android/NativeFileSystem$PathListener;)V

    .line 657
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .end local v1    # "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 658
    .restart local v1    # "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_4
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized addSyncStatusListener(Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;

    .prologue
    .line 593
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 594
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mSyncStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public awaitFirstSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->awaitFirstSync()V

    .line 552
    return-void
.end method

.method public create(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFile;
    .locals 2
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 869
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->CREATE_NEW:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_CACHED:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    invoke-virtual {p0, p1, v0, v1}, Lcom/dropbox/sync/android/DbxFileSystem;->open(Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;Lcom/dropbox/sync/android/DbxFileSystem$RevPref;)Lcom/dropbox/sync/android/DbxFile;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(Lcom/dropbox/sync/android/DbxPath;)V
    .locals 4
    .param p1, "folderPath"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->createFolders(Lcom/dropbox/sync/android/DbxPath;)V

    .line 1003
    return-void
.end method

.method public delete(Lcom/dropbox/sync/android/DbxPath;)V
    .locals 4
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->recursiveDelete(Lcom/dropbox/sync/android/DbxPath;)V

    .line 1017
    return-void
.end method

.method public exists(Lcom/dropbox/sync/android/DbxPath;)Z
    .locals 2
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->getFileInfo(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v0

    .line 778
    .local v0, "info":Lcom/dropbox/sync/android/DbxFileInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fetchShareLink(Lcom/dropbox/sync/android/DbxPath;Z)Ljava/net/URL;
    .locals 4
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "shorten"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching share link: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->fetchShareLink(Lcom/dropbox/sync/android/DbxPath;Z)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFileSystem;->shutDown()V

    .line 442
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/dropbox/sync/android/DbxAccount;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    return-object v0
.end method

.method getFactory()Lcom/dropbox/sync/android/CoreClient$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/sync/android/CoreClient$Factory",
            "<+",
            "Lcom/dropbox/sync/android/CoreClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem;->FACTORY:Lcom/dropbox/sync/android/DbxFileSystem$Factory;

    return-object v0
.end method

.method public getFileCacheSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->getFileCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileInfo(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFileInfo;
    .locals 3
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->getFileInfo(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v0

    .line 760
    .local v0, "info":Lcom/dropbox/sync/android/DbxFileInfo;
    if-eqz v0, :cond_0

    .line 761
    return-object v0

    .line 763
    :cond_0
    new-instance v1, Lcom/dropbox/sync/android/DbxException$NotFound;

    const-string v2, "Cannot get file info; file does not exist."

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxException$NotFound;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxFileCacheSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->getMaxFileCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncStatus()Lcom/dropbox/sync/android/DbxSyncStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->getSyncStatus()Lcom/dropbox/sync/android/DbxSyncStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasSynced()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->hasSynced()Z

    move-result v0

    return v0
.end method

.method public isFile(Lcom/dropbox/sync/android/DbxPath;)Z
    .locals 2
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->getFileInfo(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v0

    .line 793
    .local v0, "info":Lcom/dropbox/sync/android/DbxFileInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFolder(Lcom/dropbox/sync/android/DbxPath;)Z
    .locals 2
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->getFileInfo(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v0

    .line 808
    .local v0, "info":Lcom/dropbox/sync/android/DbxFileInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShutDown()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listFolder(Lcom/dropbox/sync/android/DbxPath;)Ljava/util/List;
    .locals 4
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/DbxPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxFileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/NativeFileSystem;->awaitFirstSync()V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->listFolder(Lcom/dropbox/sync/android/DbxPath;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    const-string v3, "First sync failed.  Listing folder with cached contents."

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public move(Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxPath;)V
    .locals 4
    .param p1, "oldPath"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "newPath"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->recursiveMove(Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxPath;)V

    .line 1036
    return-void
.end method

.method public open(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFile;
    .locals 2
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 839
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->OPEN_EXISTING:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_CACHED:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    invoke-virtual {p0, p1, v0, v1}, Lcom/dropbox/sync/android/DbxFileSystem;->open(Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;Lcom/dropbox/sync/android/DbxFileSystem$RevPref;)Lcom/dropbox/sync/android/DbxFile;

    move-result-object v0

    return-object v0
.end method

.method open(Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;Lcom/dropbox/sync/android/DbxFileSystem$RevPref;)Lcom/dropbox/sync/android/DbxFile;
    .locals 3
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "cp"    # Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;
    .param p3, "rp"    # Lcom/dropbox/sync/android/DbxFileSystem$RevPref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 901
    new-instance v0, Lcom/dropbox/sync/android/DbxFile;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0, p2, p3}, Lcom/dropbox/sync/android/DbxFileSystem;->makeFileOpenFlags(Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;Lcom/dropbox/sync/android/DbxFileSystem$RevPref;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/dropbox/sync/android/DbxFile;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;Lcom/dropbox/sync/android/DbxPath;I)V

    return-object v0
.end method

.method public openThumbnail(Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;)Lcom/dropbox/sync/android/DbxFile;
    .locals 3
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "size"    # Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;
    .param p3, "format"    # Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 944
    new-instance v0, Lcom/dropbox/sync/android/DbxFile;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0, p2, p3}, Lcom/dropbox/sync/android/DbxFileSystem;->makeThumbnailOpenFlags(Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/dropbox/sync/android/DbxFile;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;Lcom/dropbox/sync/android/DbxPath;I)V

    return-object v0
.end method

.method public declared-synchronized removePathListener(Lcom/dropbox/sync/android/DbxFileSystem$PathListener;Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)V
    .locals 4
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxFileSystem$PathListener;
    .param p2, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p3, "mode"    # Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    .prologue
    .line 684
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener must be non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 685
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Path must be non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mode must be non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 700
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 691
    :cond_4
    :try_start_2
    new-instance v0, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    invoke-direct {p0, p3}, Lcom/dropbox/sync/android/DbxFileSystem;->toNative(Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)I

    move-result v2

    invoke-direct {v0, p2, v2}, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;-><init>(Lcom/dropbox/sync/android/DbxPath;I)V

    .line 692
    .local v0, "key":Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 693
    .local v1, "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    if-eqz v1, :cond_3

    .line 694
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 696
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->setPathListener(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;Lcom/dropbox/sync/android/NativeFileSystem$PathListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized removePathListenerForAll(Lcom/dropbox/sync/android/DbxFileSystem$PathListener;)V
    .locals 6
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxFileSystem$PathListener;

    .prologue
    .line 716
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Listener must be non-null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 718
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 720
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 721
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 722
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 723
    .local v2, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 725
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/dropbox/sync/android/NativeFileSystem;->setPathListener(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;Lcom/dropbox/sync/android/NativeFileSystem$PathListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 728
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;>;"
    .end local v2    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/dropbox/sync/android/DbxFileSystem$PathListener;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeSyncStatusListener(Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;

    .prologue
    .line 609
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 610
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mSyncStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    monitor-exit p0

    return-void
.end method

.method public setMaxFileCacheSize(J)V
    .locals 3
    .param p1, "maxBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 512
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 513
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative cache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->setMaxFileCacheSize(J)V

    .line 516
    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxFileSystem;->shutDown(Z)V

    .line 374
    return-void
.end method

.method shutDown(Z)V
    .locals 4
    .param p1, "unlinked"    # Z

    .prologue
    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z

    if-nez v0, :cond_0

    .line 409
    monitor-exit p0

    .line 432
    :goto_0
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->isOpen:Z

    .line 416
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing DbxFileSystem for uid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/NativeFileSystem;->deinitialize(Z)V

    .line 418
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/DbxAccount;->onClientStopped(Lcom/dropbox/sync/android/CoreClient;)V

    .line 419
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 422
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->setState(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;)V

    .line 428
    monitor-enter p0

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mSyncStatusListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 430
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 431
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 419
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public syncNowAndWait()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem;->TAG:Ljava/lang/String;

    const-string v2, "Forcing a sync and waiting."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->syncNowAndWait()V

    .line 564
    return-void
.end method

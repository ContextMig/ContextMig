.class Lcom/dropbox/sync/android/NativeFileSystem;
.super Lcom/dropbox/sync/android/NativeClientBase;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/NativeFileSystem$ChooserResultBuilder;,
        Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;,
        Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;,
        Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;,
        Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;,
        Lcom/dropbox/sync/android/NativeFileSystem$Config;,
        Lcom/dropbox/sync/android/NativeFileSystem$FileListener;,
        Lcom/dropbox/sync/android/NativeFileSystem$PathListener;,
        Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;,
        Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;,
        Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;
    }
.end annotation


# static fields
.field public static final FILE_OPEN_CREATE:I = 0x1

.field public static FILE_OPEN_CREATE_EXCL:I = 0x0

.field public static final FILE_OPEN_PREFER_LATEST:I = 0x4

.field public static FILE_OPEN_THUMB_FORMAT_MASK:I = 0x0

.field public static FILE_OPEN_THUMB_JPG:I = 0x0

.field public static FILE_OPEN_THUMB_L:I = 0x0

.field public static FILE_OPEN_THUMB_M:I = 0x0

.field public static FILE_OPEN_THUMB_PNG:I = 0x0

.field public static FILE_OPEN_THUMB_S:I = 0x0

.field public static FILE_OPEN_THUMB_SIZE_MASK:I = 0x0

.field public static FILE_OPEN_THUMB_XL:I = 0x0

.field public static FILE_OPEN_THUMB_XS:I = 0x0

.field public static final INVALID_FILE_HANDLE:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field public static final TEMP_FILE_EXT:Ljava/lang/String; = ".dbxtmp"


# instance fields
.field private final mFileListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/dropbox/sync/android/NativeFileSystem$FileListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;",
            "Lcom/dropbox/sync/android/NativeFileSystem$PathListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStatusListener:Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 21
    const-class v0, Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_CREATE_EXCL:I

    .line 62
    const/16 v0, 0x8

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_XS:I

    .line 67
    const/16 v0, 0x10

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_S:I

    .line 72
    const/16 v0, 0x18

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_M:I

    .line 77
    const/16 v0, 0x20

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_L:I

    .line 82
    const/16 v0, 0x28

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_XL:I

    .line 88
    const/16 v0, 0x38

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_SIZE_MASK:I

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_JPG:I

    .line 98
    sput v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_PNG:I

    .line 104
    sput v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_FORMAT_MASK:I

    .line 945
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 946
    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeClassInit()V

    .line 947
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Ljava/util/EnumSet;)V
    .locals 4
    .param p1, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p2, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 298
    .local p3, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;>;"
    new-instance v0, Lcom/dropbox/sync/android/NativeFileSystem$Config;

    invoke-direct {v0, p2, p3}, Lcom/dropbox/sync/android/NativeFileSystem$Config;-><init>(Ljava/io/File;Ljava/util/EnumSet;)V

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetRunFuncs()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/dropbox/sync/android/NativeClientBase;-><init>(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;J)V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mSyncStatusListener:Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mPathListeners:Ljava/util/Map;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mFileListeners:Ljava/util/Map;

    .line 299
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static checkFileHandle(J)V
    .locals 2
    .param p0, "fileHandle"    # J

    .prologue
    .line 848
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v1, "Invalid file handle."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_0
    return-void
.end method

.method private fileCallback(J)V
    .locals 5
    .param p1, "fileHandle"    # J

    .prologue
    .line 896
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 897
    :try_start_1
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mFileListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/NativeFileSystem$FileListener;

    .line 898
    .local v1, "l":Lcom/dropbox/sync/android/NativeFileSystem$FileListener;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    if-eqz v1, :cond_0

    .line 900
    :try_start_2
    invoke-interface {v1}, Lcom/dropbox/sync/android/NativeFileSystem$FileListener;->onFileChange()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 907
    .end local v1    # "l":Lcom/dropbox/sync/android/NativeFileSystem$FileListener;
    :cond_0
    :goto_0
    return-void

    .line 898
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 904
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isOpenThumbFlags(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 642
    sget v0, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_SIZE_MASK:I

    sget v1, Lcom/dropbox/sync/android/NativeFileSystem;->FILE_OPEN_THUMB_FORMAT_MASK:I

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAwaitFileReady(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeAwaitFirstSync(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCloseFile(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeCreateFolders(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeDeinit(JZ)V
.end method

.method private native nativeFetchShareLink(JJZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeFree(J)V
.end method

.method private native nativeGetFileCacheSize(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeGetFileInfoFromHandle(JJLcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;)Lcom/dropbox/sync/android/DbxFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeGetFileInfoFromPath(JJLcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;)Lcom/dropbox/sync/android/DbxFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeGetFileStatus(JJLcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;Z)Lcom/dropbox/sync/android/DbxFileStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeGetMaxFileCacheSize(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeGetRunFuncs()J
.end method

.method private native nativeGetSyncStatus(JLcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;)Lcom/dropbox/sync/android/DbxSyncStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeHasSynced(J)Z
.end method

.method private native nativeInit(JLcom/dropbox/sync/android/NativeFileSystem$Config;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeListFolder(JJLcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeOpenFile(JJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeReadFile(JJ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeReadFileRelease(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeRecursiveDelete(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeRecursiveMove(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeSetMaxFileCacheSize(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeSetOrClearFileCallback(JJZ)V
.end method

.method private native nativeSetOrClearPathCallback(JJIZ)V
.end method

.method private native nativeSetOrClearSyncStatusCallback(JZ)V
.end method

.method private native nativeSyncNowAndWait(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeUpdateFile(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeWriteFile(JJLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private pathCallback(JI)V
    .locals 7
    .param p1, "pathHandle"    # J
    .param p3, "nativeMode"    # I

    .prologue
    .line 875
    :try_start_0
    new-instance v3, Lcom/dropbox/sync/android/DbxPath;

    invoke-direct {v3, p1, p2}, Lcom/dropbox/sync/android/DbxPath;-><init>(J)V

    .line 876
    .local v3, "path":Lcom/dropbox/sync/android/DbxPath;
    new-instance v1, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    invoke-direct {v1, v3, p3}, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;-><init>(Lcom/dropbox/sync/android/DbxPath;I)V

    .line 878
    .local v1, "key":Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 879
    :try_start_1
    iget-object v4, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/sync/android/NativeFileSystem$PathListener;

    .line 880
    .local v2, "l":Lcom/dropbox/sync/android/NativeFileSystem$PathListener;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    if-eqz v2, :cond_0

    .line 882
    :try_start_2
    invoke-interface {v2, v1}, Lcom/dropbox/sync/android/NativeFileSystem$PathListener;->onPathChange(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 889
    .end local v1    # "key":Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    .end local v2    # "l":Lcom/dropbox/sync/android/NativeFileSystem$PathListener;
    .end local v3    # "path":Lcom/dropbox/sync/android/DbxPath;
    :cond_0
    :goto_0
    return-void

    .line 880
    .restart local v1    # "key":Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    .restart local v3    # "path":Lcom/dropbox/sync/android/DbxPath;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    .line 884
    .end local v1    # "key":Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    .end local v3    # "path":Lcom/dropbox/sync/android/DbxPath;
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 886
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/Error;
    iget-object v4, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private syncStatusCallback()V
    .locals 4

    .prologue
    .line 858
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 859
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mSyncStatusListener:Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;

    .line 860
    .local v1, "l":Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    if-eqz v1, :cond_0

    .line 862
    :try_start_2
    invoke-interface {v1}, Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;->onSyncStatusChange()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 869
    .end local v1    # "l":Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;
    :cond_0
    :goto_0
    return-void

    .line 860
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeFileSystem;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public awaitFileReady(J)V
    .locals 3
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 720
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeAwaitFileReady(JJ)V

    .line 721
    return-void
.end method

.method public awaitFirstSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeAwaitFirstSync(J)V

    .line 508
    return-void
.end method

.method public closeFileHandle(J)V
    .locals 3
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 671
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeCloseFile(JJ)V

    .line 672
    return-void
.end method

.method public closeReadFile(J)V
    .locals 3
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 752
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeReadFileRelease(JJ)V

    .line 753
    return-void
.end method

.method public createFolders(Lcom/dropbox/sync/android/DbxPath;)V
    .locals 4
    .param p1, "folderPath"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 782
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeCreateFolders(JJ)V

    .line 783
    return-void
.end method

.method public createTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "namePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const-string v0, ".dbxtmp"

    invoke-virtual {p0}, Lcom/dropbox/sync/android/NativeFileSystem;->getApp()Lcom/dropbox/sync/android/NativeApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/NativeApp;->getNativeLib()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/NativeLib;->getTempDir()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized doClearStateOnDeinit(Z)V
    .locals 1
    .param p1, "unlinked"    # Z

    .prologue
    .line 322
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mSyncStatusListener:Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;

    .line 323
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 324
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mFileListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doNativeDeinitialize(JZ)V
    .locals 1
    .param p1, "nativeClientHandle"    # J
    .param p3, "unlinked"    # Z

    .prologue
    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeDeinit(JZ)V

    .line 336
    return-void
.end method

.method protected doNativeFree(J)V
    .locals 1
    .param p1, "nativeClientHandle"    # J

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeFree(J)V

    .line 344
    return-void
.end method

.method protected doNativeInitialize(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;)J
    .locals 4
    .param p1, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p2, "config"    # Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p2

    check-cast v0, Lcom/dropbox/sync/android/NativeFileSystem$Config;

    .line 312
    .local v0, "fsConfig":Lcom/dropbox/sync/android/NativeFileSystem$Config;
    invoke-virtual {p1}, Lcom/dropbox/sync/android/NativeApp;->getNativeHandle()J

    move-result-wide v2

    iget-object v1, v0, Lcom/dropbox/sync/android/NativeFileSystem$Config;->flags:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;->flagsToInt(Ljava/util/EnumSet;)I

    move-result v1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeInit(JLcom/dropbox/sync/android/NativeFileSystem$Config;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public fetchShareLink(Lcom/dropbox/sync/android/DbxPath;Z)Ljava/net/URL;
    .locals 8
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "shorten"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 831
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeFetchShareLink(JJZ)Ljava/lang/String;

    move-result-object v7

    .line 833
    .local v7, "strUrl":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/dropbox/sync/android/DbxException$Response;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchShareLink: Server returned illegal URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/dropbox/sync/android/DbxException$Response;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileCacheSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetFileCacheSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileInfo(J)Lcom/dropbox/sync/android/DbxFileInfo;
    .locals 7
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 704
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    new-instance v6, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;

    invoke-direct {v6, p0}, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;)V

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetFileInfoFromHandle(JJLcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFileInfo(Lcom/dropbox/sync/android/DbxPath;)Lcom/dropbox/sync/android/DbxFileInfo;
    .locals 7
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 559
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v4

    new-instance v6, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;

    invoke-direct {v6, p0}, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetFileInfoFromPath(JJLcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFileStatus(J)Lcom/dropbox/sync/android/DbxFileStatus;
    .locals 9
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 574
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    new-instance v6, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;

    invoke-direct {v6, p0}, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetFileStatus(JJLcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;Z)Lcom/dropbox/sync/android/DbxFileStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFileCacheSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetMaxFileCacheSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewerFileStatus(J)Lcom/dropbox/sync/android/DbxFileStatus;
    .locals 9
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 589
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    new-instance v6, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;

    invoke-direct {v6, p0}, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;)V

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetFileStatus(JJLcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;Z)Lcom/dropbox/sync/android/DbxFileStatus;

    move-result-object v0

    return-object v0
.end method

.method public getReadFile(J)Ljava/io/File;
    .locals 5
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 737
    new-instance v0, Ljava/io/File;

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeReadFile(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSyncStatus()Lcom/dropbox/sync/android/DbxSyncStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    new-instance v2, Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;

    invoke-direct {v2, p0}, Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeGetSyncStatus(JLcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;)Lcom/dropbox/sync/android/DbxSyncStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasSynced()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeHasSynced(J)Z

    move-result v0

    return v0
.end method

.method public listFolder(Lcom/dropbox/sync/android/DbxPath;)Ljava/util/List;
    .locals 7
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
    .line 544
    new-instance v6, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;

    invoke-direct {v6, p0}, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;)V

    .line 545
    .local v6, "mb":Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeListFolder(JJLcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;)V

    .line 546
    iget-object v0, v6, Lcom/dropbox/sync/android/NativeFileSystem$MetadataBuilder;->mMetadata:Ljava/util/ArrayList;

    return-object v0
.end method

.method public openFileHandle(Lcom/dropbox/sync/android/DbxPath;I)J
    .locals 7
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 657
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeOpenFile(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public recursiveDelete(Lcom/dropbox/sync/android/DbxPath;)V
    .locals 4
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 794
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeRecursiveDelete(JJ)V

    .line 795
    return-void
.end method

.method public recursiveMove(Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxPath;)V
    .locals 8
    .param p1, "oldPath"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "newPath"    # Lcom/dropbox/sync/android/DbxPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 809
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeRecursiveMove(JJJ)V

    .line 810
    return-void
.end method

.method public declared-synchronized setFileListener(JLcom/dropbox/sync/android/NativeFileSystem$FileListener;)V
    .locals 7
    .param p1, "fileHandle"    # J
    .param p3, "l"    # Lcom/dropbox/sync/android/NativeFileSystem$FileListener;

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/NativeFileSystem;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 620
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, "doNative":Z
    if-nez p3, :cond_3

    .line 623
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mFileListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 624
    const/4 v0, 0x1

    .line 632
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 633
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    if-eqz p3, :cond_4

    const/4 v6, 0x1

    :goto_2
    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeSetOrClearFileCallback(JJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 617
    .end local v0    # "doNative":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 627
    .restart local v0    # "doNative":Z
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mFileListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    .line 628
    const/4 v0, 0x1

    goto :goto_1

    .line 633
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
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
    .line 471
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 472
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

    .line 474
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeSetMaxFileCacheSize(JJ)V

    .line 475
    return-void
.end method

.method public declared-synchronized setPathListener(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;Lcom/dropbox/sync/android/NativeFileSystem$PathListener;)V
    .locals 8
    .param p1, "key"    # Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;
    .param p2, "l"    # Lcom/dropbox/sync/android/NativeFileSystem$PathListener;

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/NativeFileSystem;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 409
    :cond_1
    const/4 v0, 0x0

    .line 410
    .local v0, "doNative":Z
    if-nez p2, :cond_3

    .line 411
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 412
    const/4 v0, 0x1

    .line 420
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 421
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    iget-object v1, p1, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->path:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxPath;->getNativeHandle()J

    move-result-wide v4

    iget v6, p1, Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;->nativeMode:I

    if-eqz p2, :cond_4

    const/4 v7, 0x1

    :goto_2
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeSetOrClearPathCallback(JJIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    .end local v0    # "doNative":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 415
    .restart local v0    # "doNative":Z
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mPathListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    .line 416
    const/4 v0, 0x1

    goto :goto_1

    .line 421
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public declared-synchronized setSyncStatusListener(Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;)V
    .locals 4
    .param p1, "l"    # Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/NativeFileSystem;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mSyncStatusListener:Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;

    .line 390
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeSetOrClearSyncStatusCallback(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_0
    monitor-exit p0

    return-void

    .line 390
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public syncNowAndWait()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeSyncNowAndWait(J)V

    .line 519
    return-void
.end method

.method public updateFileHandle(J)Z
    .locals 3
    .param p1, "fileHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 690
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeUpdateFile(JJ)Z

    move-result v0

    return v0
.end method

.method public writeFile(JLjava/io/File;Z)V
    .locals 9
    .param p1, "fileHandle"    # J
    .param p3, "inFile"    # Ljava/io/File;
    .param p4, "shouldStealFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->checkFileHandle(J)V

    .line 769
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeFileSystem;->mCliHandle:J

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-wide v4, p1

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/NativeFileSystem;->nativeWriteFile(JJLjava/lang/String;Z)V

    .line 770
    return-void
.end method

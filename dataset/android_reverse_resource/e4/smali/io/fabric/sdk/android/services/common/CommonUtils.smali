.class public Lio/fabric/sdk/android/services/common/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;
    }
.end annotation


# static fields
.field static final BYTES_IN_A_GIGABYTE:I = 0x40000000

.field static final BYTES_IN_A_KILOBYTE:I = 0x400

.field static final BYTES_IN_A_MEGABYTE:I = 0x100000

.field private static final CLS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.crashlytics.prefs"

.field static final CLS_TRACE_DEFAULT:Z = false

.field static final CLS_TRACE_PREFERENCE_NAME:Ljava/lang/String; = "com.crashlytics.Trace"

.field static final CRASHLYTICS_BUILD_ID:Ljava/lang/String; = "com.crashlytics.android.build_id"

.field public static final DEVICE_STATE_BETAOS:I = 0x8

.field public static final DEVICE_STATE_COMPROMISEDLIBRARIES:I = 0x20

.field public static final DEVICE_STATE_DEBUGGERATTACHED:I = 0x4

.field public static final DEVICE_STATE_ISSIMULATOR:I = 0x1

.field public static final DEVICE_STATE_JAILBROKEN:I = 0x2

.field public static final DEVICE_STATE_VENDORINTERNAL:I = 0x10

.field static final FABRIC_BUILD_ID:Ljava/lang/String; = "io.fabric.android.build_id"

.field public static final FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final GOOGLE_SDK:Ljava/lang/String; = "google_sdk"

.field private static final HEX_VALUES:[C

.field private static final LOG_PRIORITY_NAME_ASSERT:Ljava/lang/String; = "A"

.field private static final LOG_PRIORITY_NAME_DEBUG:Ljava/lang/String; = "D"

.field private static final LOG_PRIORITY_NAME_ERROR:Ljava/lang/String; = "E"

.field private static final LOG_PRIORITY_NAME_INFO:Ljava/lang/String; = "I"

.field private static final LOG_PRIORITY_NAME_UNKNOWN:Ljava/lang/String; = "?"

.field private static final LOG_PRIORITY_NAME_VERBOSE:Ljava/lang/String; = "V"

.field private static final LOG_PRIORITY_NAME_WARN:Ljava/lang/String; = "W"

.field public static final MD5_INSTANCE:Ljava/lang/String; = "MD5"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SHA1_INSTANCE:Ljava/lang/String; = "SHA-1"

.field private static final UNCALCULATED_TOTAL_RAM:J = -0x1L

.field private static clsTrace:Ljava/lang/Boolean;

.field private static totalRamInBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    .line 91
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->HEX_VALUES:[C

    .line 104
    const-wide/16 v0, -0x1

    sput-wide v0, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J

    .line 676
    new-instance v0, Lio/fabric/sdk/android/services/common/CommonUtils$1;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/CommonUtils$1;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 91
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static calculateFreeRamInBytes(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 387
    .local v0, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 388
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method public static calculateUsedDiskSpaceInBytes(Ljava/lang/String;)J
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 400
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 401
    .local v2, "blockSizeBytes":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v8, v5

    mul-long v6, v2, v8

    .line 402
    .local v6, "totalSpaceBytes":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v8, v5

    mul-long v0, v2, v8

    .line 403
    .local v0, "availableSpaceBytes":J
    sub-long v8, v6, v0

    return-wide v8
.end method

.method public static canTryConnection(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 929
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 932
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 933
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 937
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 933
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 876
    .local v0, "res":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 710
    if-eqz p0, :cond_0

    .line 712
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 861
    if-eqz p0, :cond_0

    .line 863
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 866
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4
    .param p0, "memInfo"    # Ljava/lang/String;
    .param p1, "notation"    # Ljava/lang/String;
    .param p2, "notationMultiplier"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "count":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 793
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 795
    :cond_0
    return-void
.end method

.method public static createCipher(ILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "mode"    # I
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 632
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "This method is deprecated"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sliceIds"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 348
    if-eqz p0, :cond_0

    array-length v8, p0

    if-nez v8, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v7

    .line 353
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v6, "sliceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 357
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 359
    const-string/jumbo v8, "-"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 369
    .restart local v3    # "id":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 372
    .end local v3    # "id":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "concatValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static dehexify(Ljava/lang/String;)[B
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 654
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 655
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 656
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 655
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 659
    :cond_0
    return-object v0
.end method

.method public static extractFieldFromSystemFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "fieldname"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, "toReturn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v8, 0x400

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 124
    const-string/jumbo v7, "\\s*:\\s*"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 125
    .local v4, "pattern":Ljava/util/regex/Pattern;
    const/4 v7, 0x2

    invoke-virtual {v4, v3, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "pieces":[Ljava/lang/String;
    array-length v7, v5

    if-le v7, v9, :cond_0

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    const/4 v7, 0x1

    aget-object v6, v5, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "pieces":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "Failed to close system file reader."

    invoke-static {v1, v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 138
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 132
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string/jumbo v8, "Fabric"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    const-string/jumbo v7, "Failed to close system file reader."

    invoke-static {v0, v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    const-string/jumbo v8, "Failed to close system file reader."

    invoke-static {v0, v8}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 132
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static finishAffinity(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resultCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 913
    if-nez p0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 916
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 917
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 919
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 920
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static finishAffinity(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resultCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 898
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 899
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->finishAffinity(Landroid/app/Activity;I)V

    .line 901
    :cond_0
    return-void
.end method

.method public static flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V
    .locals 3
    .param p0, "f"    # Ljava/io/Flushable;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 720
    if-eqz p0, :cond_0

    .line 722
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAppIconHashOrNull(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 821
    const/4 v1, 0x0

    .line 824
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppIconResourceId(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 825
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->sha1(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, "sha1":Ljava/lang/String;
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 830
    .end local v2    # "sha1":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "Failed to close icon input stream."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 833
    :goto_0
    return-object v2

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "Fabric"

    const-string/jumbo v6, "Could not calculate hash for app icon."

    invoke-interface {v4, v5, v6, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    const-string/jumbo v4, "Failed to close icon input stream."

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v2, v3

    .line 833
    goto :goto_0

    .line 830
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    const-string/jumbo v4, "Failed to close icon input stream."

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3
.end method

.method public static getAppIconResourceId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method public static getAppProcessInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const-string/jumbo v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 249
    .local v0, "actman":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 251
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .line 254
    .local v3, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v4, :cond_1

    .line 255
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 256
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    move-object v3, v2

    .line 262
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v3
.end method

.method public static getBatteryLevel(Landroid/content/Context;)Ljava/lang/Float;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 408
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, "ifilter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 411
    .local v0, "battery":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-object v4

    .line 415
    :cond_0
    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 416
    .local v2, "level":I
    const-string/jumbo v4, "scale"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 418
    .local v3, "scale":I
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_0
.end method

.method public static getBatteryVelocity(Landroid/content/Context;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "powerConnected"    # Z

    .prologue
    const-wide v4, 0x4058c00000000000L    # 99.0

    .line 609
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    .line 611
    .local v0, "batteryLevel":Ljava/lang/Float;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    const/4 v1, 0x1

    .line 623
    :goto_0
    return v1

    .line 615
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    .line 616
    const/4 v1, 0x3

    goto :goto_0

    .line 619
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 620
    const/4 v1, 0x2

    goto :goto_0

    .line 623
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 506
    if-eqz p0, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 509
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 510
    const-string/jumbo v2, "bool"

    invoke-static {p0, p1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 512
    .local v0, "id":I
    if-lez v0, :cond_1

    .line 513
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 524
    .end local v0    # "id":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 516
    .restart local v0    # "id":I
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "defaultValue":Z
    :cond_1
    const-string/jumbo v2, "string"

    invoke-static {p0, p1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 518
    if-lez v0, :cond_0

    .line 519
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public static getCpuArchitectureInt()I
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;->getValue()Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/CommonUtils$Architecture;->ordinal()I

    move-result v0

    return v0
.end method

.method public static getDeviceState(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "deviceState":I
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    or-int/lit8 v0, v0, 0x1

    .line 590
    :cond_0
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    or-int/lit8 v0, v0, 0x2

    .line 594
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->isDebuggerAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 595
    or-int/lit8 v0, v0, 0x4

    .line 598
    :cond_2
    return v0
.end method

.method public static getProximitySensorEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 427
    :cond_1
    const-string/jumbo v3, "sensor"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 429
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 430
    .local v0, "prox":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getResourcePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 778
    .local v0, "iconId":I
    if-lez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 529
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string/jumbo v0, "com.crashlytics.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 694
    const-string/jumbo v1, "string"

    invoke-static {p0, p1, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 696
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 697
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 700
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static declared-synchronized getTotalRamInBytes()J
    .locals 10

    .prologue
    .line 201
    const-class v5, Lio/fabric/sdk/android/services/common/CommonUtils;

    monitor-enter v5

    :try_start_0
    sget-wide v6, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 202
    const-wide/16 v0, 0x0

    .line 203
    .local v0, "bytes":J
    new-instance v4, Ljava/io/File;

    const-string/jumbo v6, "/proc/meminfo"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "MemTotal"

    invoke-static {v4, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->extractFieldFromSystemFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 209
    :try_start_1
    const-string/jumbo v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    const-string/jumbo v4, "KB"

    const/16 v6, 0x400

    invoke-static {v3, v4, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 228
    :cond_0
    :goto_0
    :try_start_2
    sput-wide v0, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J

    .line 230
    :cond_1
    sget-wide v6, Lio/fabric/sdk/android/services/common/CommonUtils;->totalRamInBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-wide v6

    .line 211
    :cond_2
    :try_start_3
    const-string/jumbo v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    const-string/jumbo v4, "MB"

    const/high16 v6, 0x100000

    invoke-static {v3, v4, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 215
    :cond_3
    const-string/jumbo v4, "GB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 218
    const-string/jumbo v4, "GB"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v4, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 220
    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 201
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static hash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "sha1Instance"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    const-string/jumbo v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 303
    .local v1, "digest":Ljava/security/MessageDigest;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 304
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 307
    .local v3, "length":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 308
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v0    # "buffer":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "length":I
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "Fabric"

    const-string/jumbo v6, "Could not calculate hash for app icon."

    invoke-interface {v4, v5, v6, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    const-string/jumbo v4, ""

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 311
    .restart local v0    # "buffer":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "length":I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->hexify([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method private static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hash([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 323
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 335
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->hexify([B)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not create hashing algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", returning empty string."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 637
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 639
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 640
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 641
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lio/fabric/sdk/android/services/common/CommonUtils;->HEX_VALUES:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 642
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lio/fabric/sdk/android/services/common/CommonUtils;->HEX_VALUES:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static hideKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 880
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 882
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 885
    :cond_0
    return-void
.end method

.method public static isAppDebuggable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isClsTrace(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    sget-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 478
    const-string/jumbo v0, "com.crashlytics.Trace"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    .line 482
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/common/CommonUtils;->clsTrace:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isDebuggerAttached()Z
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmulator(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "androidId":Ljava/lang/String;
    const-string/jumbo v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLoggingEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 731
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRooted(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 549
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v2

    .line 550
    .local v2, "isEmulator":Z
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 551
    .local v0, "buildTags":Ljava/lang/String;
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v4, "test-keys"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v3

    .line 556
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/system/app/Superuser.apk"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 565
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string/jumbo v4, "/system/xbin/su"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v1    # "file":Ljava/io/File;
    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 569
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static logControlled(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isClsTrace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    invoke-interface {v0, p1, v1, p3}, Lio/fabric/sdk/android/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    return-void
.end method

.method public static logControlled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isClsTrace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    return-void
.end method

.method public static logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 449
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isClsTrace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public static logOrThrowIllegalArgumentException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 964
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public static logOrThrowIllegalStateException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public static logPriorityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 798
    packed-switch p0, :pswitch_data_0

    .line 812
    const-string/jumbo v0, "?"

    :goto_0
    return-object v0

    .line 800
    :pswitch_0
    const-string/jumbo v0, "A"

    goto :goto_0

    .line 802
    :pswitch_1
    const-string/jumbo v0, "D"

    goto :goto_0

    .line 804
    :pswitch_2
    const-string/jumbo v0, "E"

    goto :goto_0

    .line 806
    :pswitch_3
    const-string/jumbo v0, "I"

    goto :goto_0

    .line 808
    :pswitch_4
    const-string/jumbo v0, "V"

    goto :goto_0

    .line 810
    :pswitch_5
    const-string/jumbo v0, "W"

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B

    .prologue
    .line 284
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 888
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 890
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 893
    :cond_0
    return-void
.end method

.method public static padWithZerosToMaxIntWidth(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 742
    if-gez p0, :cond_0

    .line 743
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value must be zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%1$10s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveBuildId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 846
    .local v0, "buildId":Ljava/lang/String;
    const-string/jumbo v2, "io.fabric.android.build_id"

    const-string/jumbo v3, "string"

    invoke-static {p0, v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 848
    .local v1, "id":I
    if-nez v1, :cond_0

    .line 849
    const-string/jumbo v2, "com.crashlytics.android.build_id"

    const-string/jumbo v3, "string"

    invoke-static {p0, v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 852
    :cond_0
    if-eqz v1, :cond_1

    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Build ID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_1
    return-object v0
.end method

.method public static sha1(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/io/InputStream;

    .prologue
    .line 296
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1([B)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B

    .prologue
    .line 292
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 270
    .local v0, "s":Ljava/util/Scanner;
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static stringsEqualIncludingNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 751
    if-ne p0, p1, :cond_0

    .line 753
    const/4 v0, 0x1

    .line 762
    :goto_0
    return v0

    .line 755
    :cond_0
    if-eqz p0, :cond_1

    .line 758
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 762
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

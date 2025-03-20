.class Lcom/dropbox/sync/android/DbxSession;
.super Ljava/lang/Object;
.source "DbxSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxSession$RetryPolicy;
    }
.end annotation


# static fields
.field private static final BACKOFFS:[J

.field private static final BACKOFF_429_MIN_INDEX:I = 0x3

.field private static final BACKOFF_UNIT:Ljava/util/concurrent/TimeUnit;

.field public static final DEFAULT_RETRY:Lcom/dropbox/sync/android/DbxSession$RetryPolicy;

.field public static final NO_RETRY:Lcom/dropbox/sync/android/DbxSession$RetryPolicy;

.field private static final OFFLINE_RETRY_TIME:I = 0xe10

.field private static final OFFLINE_RETRY_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/dropbox/sync/android/DbxSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxSession;->TAG:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/dropbox/sync/android/DbxSession$3;

    invoke-direct {v0}, Lcom/dropbox/sync/android/DbxSession$3;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/DbxSession;->NO_RETRY:Lcom/dropbox/sync/android/DbxSession$RetryPolicy;

    .line 204
    new-instance v0, Lcom/dropbox/sync/android/DbxSession$4;

    invoke-direct {v0}, Lcom/dropbox/sync/android/DbxSession$4;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/DbxSession;->DEFAULT_RETRY:Lcom/dropbox/sync/android/DbxSession$RetryPolicy;

    .line 627
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dropbox/sync/android/DbxSession;->BACKOFFS:[J

    .line 633
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/dropbox/sync/android/DbxSession;->BACKOFF_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 636
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/dropbox/sync/android/DbxSession;->OFFLINE_RETRY_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void

    .line 627
    :array_0
    .array-data 8
        0x64
        0xc8
        0x1f4
        0x3e8
        0x7d0
        0x1388
        0x2710
        0x4e20
        0xc350
        0x186a0
        0x493e0
        0xdbba0
    .end array-data
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "locale":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v2}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getPackageString(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DropboxSync/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "3.1.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (Android; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 64
    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;
    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v4, "caught unexpected exception"

    invoke-direct {v3, v4, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

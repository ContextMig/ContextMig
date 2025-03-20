.class Lcom/dropbox/sync/android/DbxNativeLibConfig;
.super Ljava/lang/Object;
.source "DbxNativeLibConfig.java"


# static fields
.field private static sCheckedShouldLoadLibrary:Z

.field private static sDisableNativeLibraryLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/dropbox/sync/android/DbxNativeLibConfig;->sCheckedShouldLoadLibrary:Z

    .line 12
    sput-boolean v0, Lcom/dropbox/sync/android/DbxNativeLibConfig;->sDisableNativeLibraryLoad:Z

    return-void
.end method

.method static declared-synchronized shouldLoadLibrary()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 24
    const-class v1, Lcom/dropbox/sync/android/DbxNativeLibConfig;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/dropbox/sync/android/DbxNativeLibConfig;->sCheckedShouldLoadLibrary:Z

    .line 25
    sget-boolean v2, Lcom/dropbox/sync/android/DbxNativeLibConfig;->sDisableNativeLibraryLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

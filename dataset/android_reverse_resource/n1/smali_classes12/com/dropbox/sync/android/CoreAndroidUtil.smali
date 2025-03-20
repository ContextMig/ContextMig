.class Lcom/dropbox/sync/android/CoreAndroidUtil;
.super Ljava/lang/Object;
.source "CoreAndroidUtil.java"


# static fields
.field public static final DEVICE_ID_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MANUFACTURER_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String;

.field private static sMainHandler:Landroid/os/Handler;

.field private static sMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/sync/android/CoreAndroidUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreAndroidUtil;->TAG:Ljava/lang/String;

    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreAndroidUtil;->sMainLooper:Landroid/os/Looper;

    .line 33
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/dropbox/sync/android/CoreAndroidUtil;->sMainLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dropbox/sync/android/CoreAndroidUtil;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitOnFatalError(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "canThrow"    # Z

    .prologue
    .line 156
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .local v0, "fatalEx":Lcom/dropbox/sync/android/DbxRuntimeException;
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->isUiThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    throw v0

    .line 164
    :cond_0
    sget-object v1, Lcom/dropbox/sync/android/CoreAndroidUtil;->sMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dropbox/sync/android/CoreAndroidUtil$1;

    invoke-direct {v2, v0}, Lcom/dropbox/sync/android/CoreAndroidUtil$1;-><init>(Lcom/dropbox/sync/android/DbxRuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    .end local v0    # "androidId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "androidId":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static getLargeMemoryClass(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 137
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 138
    .local v0, "am":Landroid/app/ActivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v1

    .line 141
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    goto :goto_0
.end method

.method static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 210
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 211
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    move v5, v3

    :goto_0
    invoke-static {v5}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 225
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v3}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 226
    return-object v1

    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    move v5, v4

    .line 211
    goto :goto_0

    .line 214
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;

    const-string v4, "Unable to get package info for app package."

    invoke-direct {v3, v4, v0}, Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 216
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "Package manager has died"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    new-instance v3, Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;

    const-string v4, "Unable to get package info for app package."

    invoke-direct {v3, v4, v0}, Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 222
    :cond_1
    throw v0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v3, v4

    .line 225
    goto :goto_1
.end method

.method static getPackageString(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenDensity(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 103
    .local v0, "config":Landroid/content/res/Configuration;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_0

    .line 104
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 105
    .local v2, "largerDimDp":I
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 106
    .local v3, "smallerDimDp":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "dpSize":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getSizeLabel(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    .end local v1    # "dpSize":Ljava/lang/String;
    .end local v2    # "largerDimDp":I
    .end local v3    # "smallerDimDp":I
    :goto_0
    return-object v4

    :cond_0
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getSizeLabel(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getSizeLabel(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 114
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "x-large"

    .line 125
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected screen layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_0
    const-string v0, "small"

    goto :goto_0

    .line 121
    :pswitch_1
    const-string v0, "normal"

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v0, "large"

    goto :goto_0

    .line 125
    :pswitch_3
    const-string v0, "undefined"

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSystemManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getSystemManufacturerHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemManufacturerHelper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static isUiThread()Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/dropbox/sync/android/CoreAndroidUtil;->sMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static postUserCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 179
    sget-object v0, Lcom/dropbox/sync/android/CoreAndroidUtil;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method static validateHaveAuthActivities(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 233
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 234
    .local v4, "requiredActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v5, Lcom/dropbox/sync/android/DbxAuthActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const-class v5, Lcom/dropbox/client2/android/AuthActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    .line 237
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v0, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 238
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 239
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "len$":I
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 244
    new-instance v5, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required Sync API Activity isn\'t included in application manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_2
    return-void
.end method

.method static validateHaveServices(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 253
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 254
    .local v4, "requiredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v5, Lcom/dropbox/sync/android/DbxSyncService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_1

    .line 256
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 257
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 258
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "arr$":[Landroid/content/pm/ServiceInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "len$":I
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 263
    new-instance v5, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required Sync API Service isn\'t included in application manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_2
    return-void
.end method

.method static validateIsApplicationContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The provided app context is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    .local v0, "testContext":Landroid/content/Context;
    if-eq v0, p0, :cond_1

    .line 199
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v2, "The provided context isn\'t an application context."

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_1
    return-void
.end method

.method static validatePermissions(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 276
    .local v3, "requiredPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "android.permission.INTERNET"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 279
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 280
    .local v4, "uid":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    .local v1, "perm":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    new-instance v5, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required Sync API permission \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' isn\'t granted.  Check your application manifest to ensure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " you\'ve included the necessary <uses-permission> entries."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v5

    .line 288
    .end local v1    # "perm":Ljava/lang/String;
    :cond_1
    return-void
.end method

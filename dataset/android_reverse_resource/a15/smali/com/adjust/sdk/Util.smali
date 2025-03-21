.class public Lcom/adjust/sdk/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

.field public static final SecondsDisplayFormat:Ljava/text/DecimalFormat;

.field public static final dateFormatter:Ljava/text/SimpleDateFormat;

.field private static final fieldReadErrorMessage:Ljava/lang/String; = "Unable to read \'%s\' field in migration device with message (%s)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x1

    .line 332
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 333
    .local v0, "bigInt":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "formatString":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static createUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Boolean;
    .param p1, "second"    # Ljava/lang/Boolean;

    .prologue
    .line 272
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalEnum(Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Enum;
    .param p1, "second"    # Ljava/lang/Enum;

    .prologue
    .line 260
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Integer;
    .param p1, "second"    # Ljava/lang/Integer;

    .prologue
    .line 268
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Long;
    .param p1, "second"    # Ljava/lang/Long;

    .prologue
    .line 264
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "second"    # Ljava/lang/Object;

    .prologue
    .line 242
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 243
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalsDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 6
    .param p0, "first"    # Ljava/lang/Double;
    .param p1, "second"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 250
    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 252
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 250
    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFireAdvertisingId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 428
    if-nez p0, :cond_0

    .line 437
    :goto_0
    return-object v0

    .line 433
    :cond_0
    :try_start_0
    const-string v1, "advertising_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFireTrackingEnabled(Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 443
    :try_start_0
    const-string v0, "limit_ad_tracking"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 447
    :goto_1
    return-object v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 447
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onDeviceIdRead"    # Lcom/adjust/sdk/OnDeviceIdsRead;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    .line 83
    .local v1, "logger":Lcom/adjust/sdk/ILogger;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 84
    const-string v2, "GoogleAdId being read in the background"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "GoogleAdId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleAdId read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-interface {p1, v0}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    .line 109
    .end local v0    # "GoogleAdId":Ljava/lang/String;
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v2, "GoogleAdId being read in the foreground"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v2, Lcom/adjust/sdk/Util$1;

    invoke-direct {v2, p1}, Lcom/adjust/sdk/Util$1;-><init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Context;

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Lcom/adjust/sdk/Util$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 420
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getLocaleFromLocaleList(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 421
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 424
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getLocaleFromField(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginKeys(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    if-eqz p1, :cond_0

    .line 347
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVmInstructionSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getVmInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J
    .locals 14
    .param p0, "retries"    # I
    .param p1, "backoffStrategy"    # Lcom/adjust/sdk/BackoffStrategy;

    .prologue
    .line 354
    iget v3, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    if-ge p0, v3, :cond_0

    .line 355
    const-wide/16 v10, 0x0

    .line 367
    :goto_0
    return-wide v10

    .line 358
    :cond_0
    iget v3, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    sub-int v2, p0, v3

    .line 360
    .local v2, "expon":I
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    int-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-long v10, v10

    iget-wide v12, p1, Lcom/adjust/sdk/BackoffStrategy;->milliSecondMultiplier:J

    mul-long v4, v10, v12

    .line 362
    .local v4, "exponentialTime":J
    iget-wide v10, p1, Lcom/adjust/sdk/BackoffStrategy;->maxWait:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 364
    .local v0, "ceilingTime":J
    iget-wide v10, p1, Lcom/adjust/sdk/BackoffStrategy;->minRange:D

    iget-wide v12, p1, Lcom/adjust/sdk/BackoffStrategy;->maxRange:D

    invoke-static {v10, v11, v12, v13}, Lcom/adjust/sdk/Util;->randomInRange(DD)D

    move-result-wide v6

    .line 366
    .local v6, "randomDouble":D
    long-to-double v10, v0

    mul-double v8, v10, v6

    .line 367
    .local v8, "waitingTime":D
    double-to-long v10, v8

    goto :goto_0
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 321
    .local v2, "hashString":Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 322
    .local v0, "bytes":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 323
    .local v3, "mesd":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 324
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 325
    .local v1, "hash":[B
    invoke-static {v1}, Lcom/adjust/sdk/Util;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 328
    .end local v0    # "bytes":[B
    .end local v1    # "hash":[B
    .end local v3    # "mesd":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 326
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static hashBoolean(Ljava/lang/Boolean;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 276
    if-nez p0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashEnum(Ljava/lang/Enum;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Enum;

    .prologue
    .line 297
    if-nez p0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashLong(Ljava/lang/Long;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Long;

    .prologue
    .line 283
    if-nez p0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashObject(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashString(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 290
    if-nez p0, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 379
    if-nez p0, :cond_0

    .line 380
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "%s parameter %s is missing"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :goto_0
    return v0

    .line 383
    :cond_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "%s parameter %s is empty"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 388
    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p2, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "target":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 412
    .end local p1    # "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 397
    .restart local p1    # "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 398
    goto :goto_0

    .line 400
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 401
    .local v2, "mergedParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    .line 402
    .local v1, "logger":Lcom/adjust/sdk/ILogger;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 403
    .local v4, "parameterSourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 404
    .local v3, "oldValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 405
    const-string v5, "Key %s with value %s from %s parameter was replaced by value %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v1, v5, v6}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "oldValue":Ljava/lang/String;
    .end local v4    # "parameterSourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object p1, v2

    .line 412
    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p0, :cond_1

    .line 65
    const/4 p0, 0x0

    .line 74
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "matcher":Ljava/util/regex/Matcher;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object p0

    .line 68
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const-string v2, "\\s"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 69
    .restart local v1    # "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static randomInRange(DD)D
    .locals 10
    .param p0, "minRange"    # D
    .param p2, "maxRange"    # D

    .prologue
    .line 371
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 372
    .local v0, "random":Ljava/util/Random;
    sub-double v2, p2, p0

    .line 373
    .local v2, "range":D
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double v4, v8, v2

    .line 374
    .local v4, "scaled":D
    add-double v6, v4, p0

    .line 375
    .local v6, "shifted":D
    return-wide v6
.end method

.method public static readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 219
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 217
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 228
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 226
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 237
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 235
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 128
    .local v1, "closable":Ljava/io/Closeable;
    const/4 v4, 0x0

    .line 130
    .local v4, "object":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 131
    .local v3, "inputStream":Ljava/io/FileInputStream;
    move-object v1, v3

    .line 133
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    .local v0, "bufferedStream":Ljava/io/BufferedInputStream;
    move-object v1, v0

    .line 136
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 137
    .local v5, "objectStream":Ljava/io/ObjectInputStream;
    move-object v1, v5

    .line 140
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 141
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Read %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "object":Ljava/lang/Object;, "TT;"
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :goto_0
    if-eqz v1, :cond_0

    .line 156
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 162
    :cond_0
    :goto_1
    return-object v4

    .line 142
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to find %s class (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 149
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "%s file not found"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/ClassCastException;
    :try_start_4
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to cast %s object (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 151
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to open %s file for reading (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v2

    .line 147
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to read %s object (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 158
    .end local v0    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v6

    const-string v7, "Failed to close %s file for reading (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInputStream$GetField;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 210
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p2

    .line 208
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fields"    # Ljava/io/ObjectInputStream$GetField;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "object":Ljava/lang/Object;, "TT;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, "closable":Ljava/io/Closeable;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 169
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    move-object v1, v4

    .line 171
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 172
    .local v0, "bufferedStream":Ljava/io/BufferedOutputStream;
    move-object v1, v0

    .line 174
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    .local v3, "objectStream":Ljava/io/ObjectOutputStream;
    move-object v1, v3

    .line 178
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Wrote %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v1, :cond_0

    .line 189
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 181
    .restart local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/io/NotSerializableException;
    :try_start_3
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Failed to serialize %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 184
    .end local v0    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "e":Ljava/io/NotSerializableException;
    .end local v3    # "objectStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Failed to open %s for writing (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p3, v7, v9

    aput-object v2, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v5

    const-string v6, "Failed to close %s file for writing (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p3, v7, v9

    aput-object v2, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

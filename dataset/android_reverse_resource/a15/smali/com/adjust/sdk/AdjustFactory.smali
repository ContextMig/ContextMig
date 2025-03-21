.class public Lcom/adjust/sdk/AdjustFactory;
.super Ljava/lang/Object;
.source "AdjustFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    }
.end annotation


# static fields
.field private static activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private static attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private static httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private static logger:Lcom/adjust/sdk/ILogger;

.field private static maxDelayStart:J

.field private static packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private static packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private static requestHandler:Lcom/adjust/sdk/IRequestHandler;

.field private static sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private static sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

.field private static sessionInterval:J

.field private static subsessionInterval:J

.field private static timerInterval:J

.field private static timerStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 12
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 13
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 14
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 15
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 16
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 17
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    .line 19
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    .line 20
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    .line 21
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    .line 22
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    .line 23
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 24
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 25
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->maxDelayStart:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getActivityHandler(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/IActivityHandler;
    .locals 1
    .param p0, "config"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    .line 105
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-nez v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    .line 109
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    goto :goto_0
.end method

.method public static getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)Lcom/adjust/sdk/IAttributionHandler;
    .locals 1
    .param p0, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p1, "attributionPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "startsSending"    # Z

    .prologue
    .line 115
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/AttributionHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)V

    .line 119
    :goto_0
    return-object v0

    .line 118
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0, p0, p1, p2}, Lcom/adjust/sdk/IAttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)V

    .line 119
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    goto :goto_0
.end method

.method public static getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0
.end method

.method public static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/adjust/sdk/Logger;

    invoke-direct {v0}, Lcom/adjust/sdk/Logger;-><init>()V

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 59
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method public static getMaxDelayStart()J
    .locals 4

    .prologue
    .line 140
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->maxDelayStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 141
    const-wide/16 v0, 0x2710

    .line 143
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->maxDelayStart:J

    goto :goto_0
.end method

.method public static getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;
    .locals 1
    .param p0, "activityHandler"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startsSending"    # Z

    .prologue
    .line 39
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/adjust/sdk/PackageHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/PackageHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p0, p1, p2}, Lcom/adjust/sdk/IPackageHandler;->init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 43
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    goto :goto_0
.end method

.method public static getPackageHandlerBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->LONG_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    goto :goto_0
.end method

.method public static getRequestHandler(Lcom/adjust/sdk/IPackageHandler;)Lcom/adjust/sdk/IRequestHandler;
    .locals 1
    .param p0, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    .line 47
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/adjust/sdk/RequestHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/RequestHandler;-><init>(Lcom/adjust/sdk/IPackageHandler;)V

    .line 51
    :goto_0
    return-object v0

    .line 50
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IRequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    .line 51
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    goto :goto_0
.end method

.method public static getSdkClickBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->SHORT_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    goto :goto_0
.end method

.method public static getSdkClickHandler(Lcom/adjust/sdk/IActivityHandler;Z)Lcom/adjust/sdk/ISdkClickHandler;
    .locals 1
    .param p0, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p1, "startsSending"    # Z

    .prologue
    .line 131
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/SdkClickHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Z)V

    .line 136
    :goto_0
    return-object v0

    .line 135
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0, p0, p1}, Lcom/adjust/sdk/ISdkClickHandler;->init(Lcom/adjust/sdk/IActivityHandler;Z)V

    .line 136
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    goto :goto_0
.end method

.method public static getSessionInterval()J
    .locals 4

    .prologue
    .line 77
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 78
    const-wide/32 v0, 0x1b7740

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    goto :goto_0
.end method

.method public static getSubsessionInterval()J
    .locals 4

    .prologue
    .line 84
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    const-wide/16 v0, 0x3e8

    .line 87
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    goto :goto_0
.end method

.method public static getTimerInterval()J
    .locals 4

    .prologue
    .line 63
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 64
    const-wide/32 v0, 0xea60

    .line 66
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    goto :goto_0
.end method

.method public static getTimerStart()J
    .locals 4

    .prologue
    .line 70
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    const-wide/32 v0, 0xea60

    .line 73
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    goto :goto_0
.end method

.method public static setActivityHandler(Lcom/adjust/sdk/IActivityHandler;)V
    .locals 0
    .param p0, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;

    .prologue
    .line 183
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 184
    return-void
.end method

.method public static setAttributionHandler(Lcom/adjust/sdk/IAttributionHandler;)V
    .locals 0
    .param p0, "attributionHandler"    # Lcom/adjust/sdk/IAttributionHandler;

    .prologue
    .line 187
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 188
    return-void
.end method

.method public static setHttpsURLConnection(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .param p0, "httpsURLConnection"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 191
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 192
    return-void
.end method

.method public static setLogger(Lcom/adjust/sdk/ILogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/adjust/sdk/ILogger;

    .prologue
    .line 155
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 156
    return-void
.end method

.method public static setPackageHandler(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 0
    .param p0, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    .line 147
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 148
    return-void
.end method

.method public static setPackageHandlerBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V
    .locals 0
    .param p0, "packageHandlerBackoffStrategy"    # Lcom/adjust/sdk/BackoffStrategy;

    .prologue
    .line 179
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 180
    return-void
.end method

.method public static setRequestHandler(Lcom/adjust/sdk/IRequestHandler;)V
    .locals 0
    .param p0, "requestHandler"    # Lcom/adjust/sdk/IRequestHandler;

    .prologue
    .line 151
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 152
    return-void
.end method

.method public static setSdkClickBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V
    .locals 0
    .param p0, "sdkClickBackoffStrategy"    # Lcom/adjust/sdk/BackoffStrategy;

    .prologue
    .line 175
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 176
    return-void
.end method

.method public static setSdkClickHandler(Lcom/adjust/sdk/ISdkClickHandler;)V
    .locals 0
    .param p0, "sdkClickHandler"    # Lcom/adjust/sdk/ISdkClickHandler;

    .prologue
    .line 195
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    .line 196
    return-void
.end method

.method public static setSessionInterval(J)V
    .locals 0
    .param p0, "sessionInterval"    # J

    .prologue
    .line 167
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    .line 168
    return-void
.end method

.method public static setSubsessionInterval(J)V
    .locals 0
    .param p0, "subsessionInterval"    # J

    .prologue
    .line 171
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    .line 172
    return-void
.end method

.method public static setTimerInterval(J)V
    .locals 0
    .param p0, "timerInterval"    # J

    .prologue
    .line 159
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    .line 160
    return-void
.end method

.method public static setTimerStart(J)V
    .locals 0
    .param p0, "timerStart"    # J

    .prologue
    .line 163
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    .line 164
    return-void
.end method

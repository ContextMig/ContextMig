.class public Lorg/mozilla/telemetry/config/TelemetryConfiguration;
.super Ljava/lang/Object;
.source "TelemetryConfiguration.java"


# static fields
.field private static final classLoadTimestampMillis:J


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private buildId:Ljava/lang/String;

.field private collectionEnabled:Z

.field private connectTimeout:I

.field private final context:Landroid/content/Context;

.field private dataDirectory:Ljava/io/File;

.field private initialBackoffForUpload:J

.field private maximumNumberOfEventsPerPing:I

.field private maximumNumberOfPingUploadsPerDay:I

.field private maximumNumberOfPingsPerType:I

.field private minimumEventsForUpload:I

.field private readTimeout:I

.field private serverEndpoint:Ljava/lang/String;

.field private settingsProvider:Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;

.field private telemetryPreferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updateChannel:Ljava/lang/String;

.field private uploadEnabled:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->classLoadTimestampMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->context:Landroid/content/Context;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->telemetryPreferences:Ljava/util/Set;

    .line 67
    invoke-static {p1}, Lorg/mozilla/telemetry/util/ContextUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setAppName(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 68
    invoke-static {p1}, Lorg/mozilla/telemetry/util/ContextUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setAppVersion(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 69
    invoke-static {p1}, Lorg/mozilla/telemetry/util/ContextUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setBuildId(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 70
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setUpdateChannel(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "telemetry"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setDataDirectory(Ljava/io/File;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 72
    const-string v0, "https://incoming.telemetry.mozilla.org"

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setServerEndpoint(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 73
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setInitialBackoffForUpload(J)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 74
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setConnectTimeout(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 75
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setReadTimeout(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 76
    const-string v0, "Telemetry/1.0 (Android)"

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setUserAgent(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 77
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setMinimumEventsForUpload(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 78
    invoke-virtual {p0, v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setCollectionEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 79
    invoke-virtual {p0, v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setUploadEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 80
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setMaximumNumberOfEventsPerPing(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 81
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setMaximumNumberOfPingsPerType(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 82
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setMaximumNumberOfPingUploadsPerDay(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 83
    new-instance v0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setSettingsProvider(Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 84
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->connectTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->dataDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getInitialBackoffForUpload()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->initialBackoffForUpload:J

    return-wide v0
.end method

.method public getMaximumNumberOfEventsPerPing()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->maximumNumberOfEventsPerPing:I

    return v0
.end method

.method public getMaximumNumberOfPingUploadsPerDay()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->maximumNumberOfPingUploadsPerDay:I

    return v0
.end method

.method public getMaximumNumberOfPingsPerType()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->maximumNumberOfPingsPerType:I

    return v0
.end method

.method public getMinimumEventsForUpload()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->minimumEventsForUpload:I

    return v0
.end method

.method public getPreferencesImportantForTelemetry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->telemetryPreferences:Ljava/util/Set;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->readTimeout:I

    return v0
.end method

.method public getServerEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->serverEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsProvider()Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->settingsProvider:Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->context:Landroid/content/Context;

    const-string v1, "telemetry_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->updateChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isCollectionEnabled()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->collectionEnabled:Z

    return v0
.end method

.method public isUploadEnabled()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->uploadEnabled:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->appName:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->appVersion:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public setBuildId(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "buildId"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->buildId:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public setCollectionEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "collectionEnabled"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->collectionEnabled:Z

    .line 265
    return-object p0
.end method

.method public setConnectTimeout(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 201
    iput p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->connectTimeout:I

    .line 202
    return-object p0
.end method

.method public setDataDirectory(Ljava/io/File;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 3
    .param p1, "dataDirectory"    # Ljava/io/File;

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telemetry data directory does not exist and can\'t be created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telemetry data directory is not writeable directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->dataDirectory:Ljava/io/File;

    .line 109
    return-object p0
.end method

.method public setInitialBackoffForUpload(J)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 1
    .param p1, "initialBackoffForUpload"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->initialBackoffForUpload:J

    .line 174
    return-object p0
.end method

.method public setMaximumNumberOfEventsPerPing(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "maximumNumberOfEventsPerPing"    # I

    .prologue
    .line 357
    iput p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->maximumNumberOfEventsPerPing:I

    .line 358
    return-object p0
.end method

.method public setMaximumNumberOfPingUploadsPerDay(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "maximumNumberOfPingUploadsPerDay"    # I

    .prologue
    .line 398
    iput p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->maximumNumberOfPingUploadsPerDay:I

    .line 399
    return-object p0
.end method

.method public setMaximumNumberOfPingsPerType(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "maximumNumberOfPingsPerType"    # I

    .prologue
    .line 374
    iput p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->maximumNumberOfPingsPerType:I

    .line 375
    return-object p0
.end method

.method public setMinimumEventsForUpload(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 2
    .param p1, "minimumEventsForUpload"    # I

    .prologue
    .line 244
    if-gtz p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minimumEventsForUpload needs to be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iput p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->minimumEventsForUpload:I

    .line 249
    return-object p0
.end method

.method public varargs setPreferencesImportantForTelemetry([Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 1
    .param p1, "preferences"    # [Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 150
    iput-object v0, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->telemetryPreferences:Ljava/util/Set;

    .line 152
    return-object p0
.end method

.method public setReadTimeout(I)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 212
    iput p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->readTimeout:I

    .line 213
    return-object p0
.end method

.method public setServerEndpoint(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->serverEndpoint:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setSettingsProvider(Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "settingsProvider"    # Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->settingsProvider:Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;

    .line 414
    return-object p0
.end method

.method public setUpdateChannel(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "updateChannel"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->updateChannel:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public setUploadEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "uploadEnabled"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->uploadEnabled:Z

    .line 274
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->userAgent:Ljava/lang/String;

    .line 228
    return-object p0
.end method

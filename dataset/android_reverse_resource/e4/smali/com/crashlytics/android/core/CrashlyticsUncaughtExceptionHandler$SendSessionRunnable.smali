.class final Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendSessionRunnable"
.end annotation


# instance fields
.field private final crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

.field private final fileToSend:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/io/File;)V
    .locals 0
    .param p1, "crashlyticsCore"    # Lcom/crashlytics/android/core/CrashlyticsCore;
    .param p2, "fileToSend"    # Ljava/io/File;

    .prologue
    .line 1312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 1314
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;->fileToSend:Ljava/io/File;

    .line 1315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1319
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "Attempting to send crash report at time of crash..."

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v1

    .line 1326
    .local v1, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getCreateReportSpiCall(Lio/fabric/sdk/android/services/settings/SettingsData;)Lcom/crashlytics/android/core/CreateReportSpiCall;

    move-result-object v0

    .line 1330
    .local v0, "call":Lcom/crashlytics/android/core/CreateReportSpiCall;
    if-eqz v0, :cond_0

    .line 1331
    new-instance v2, Lcom/crashlytics/android/core/ReportUploader;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/crashlytics/android/core/ReportUploader;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/CreateReportSpiCall;)V

    new-instance v3, Lcom/crashlytics/android/core/SessionReport;

    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;->fileToSend:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$1200()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/crashlytics/android/core/SessionReport;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/ReportUploader;->forceUpload(Lcom/crashlytics/android/core/Report;)Z

    goto :goto_0
.end method

.class Lcom/dropbox/sync/android/CoreConfig;
.super Ljava/lang/Object;
.source "CoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreConfig$Hosts;
    }
.end annotation


# instance fields
.field public final appName:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

.field public final locale:Ljava/util/Locale;

.field public final prefetchAccountInfo:Z

.field public final publicConfig:Lcom/dropbox/sync/android/DbxConfig;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxConfig;Lcom/dropbox/sync/android/CoreConfig$Hosts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "publicConfig"    # Lcom/dropbox/sync/android/DbxConfig;
    .param p2, "hosts"    # Lcom/dropbox/sync/android/CoreConfig$Hosts;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "prefetchAccountInfo"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "publicConfig shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    .line 72
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hosts shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreConfig;->hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreConfig;->locale:Ljava/util/Locale;

    .line 75
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreConfig;->locale:Ljava/util/Locale;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    iput-object p3, p0, Lcom/dropbox/sync/android/CoreConfig;->userAgent:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreConfig;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userAgent shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    iput-object p4, p0, Lcom/dropbox/sync/android/CoreConfig;->appName:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreConfig;->appName:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appName shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_4
    iput-object p5, p0, Lcom/dropbox/sync/android/CoreConfig;->appVersion:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreConfig;->appVersion:Ljava/lang/String;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appVersion shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    iput-object p6, p0, Lcom/dropbox/sync/android/CoreConfig;->deviceId:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreConfig;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "deviceId shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_6
    iput-boolean p7, p0, Lcom/dropbox/sync/android/CoreConfig;->prefetchAccountInfo:Z

    .line 85
    return-void
.end method

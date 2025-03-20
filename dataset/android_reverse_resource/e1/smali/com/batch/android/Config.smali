.class public final Lcom/batch/android/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/batch/android/LoggerDelegate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "apikey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/batch/android/Config;->b:Z

    .line 25
    iput-boolean v0, p0, Lcom/batch/android/Config;->c:Z

    .line 29
    iput-boolean v0, p0, Lcom/batch/android/Config;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/batch/android/Config;->e:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/Config;->f:Lcom/batch/android/LoggerDelegate;

    .line 48
    iput-object p1, p0, Lcom/batch/android/Config;->a:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public setCanUseAdvancedDeviceInformation(Z)Lcom/batch/android/Config;
    .locals 0
    .param p1, "canUse"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/batch/android/Config;->d:Z

    .line 101
    return-object p0
.end method

.method public setCanUseAdvertisingID(Z)Lcom/batch/android/Config;
    .locals 0
    .param p1, "canUse"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/batch/android/Config;->c:Z

    .line 78
    return-object p0
.end method

.method public setCanUseAndroidID(Z)Lcom/batch/android/Config;
    .locals 0
    .param p1, "canUse"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/batch/android/Config;->b:Z

    .line 64
    return-object p0
.end method

.method public setCanUseInstanceID(Z)Lcom/batch/android/Config;
    .locals 0
    .param p1, "canUse"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/batch/android/Config;->e:Z

    .line 129
    return-object p0
.end method

.method public setLoggerDelegate(Lcom/batch/android/LoggerDelegate;)Lcom/batch/android/Config;
    .locals 0
    .param p1, "delegate"    # Lcom/batch/android/LoggerDelegate;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/batch/android/Config;->f:Lcom/batch/android/LoggerDelegate;

    .line 115
    return-object p0
.end method

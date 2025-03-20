.class public Lcom/batch/android/BatchPushInstanceIDService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/batch/android/Batch;->onServiceCreate(Landroid/content/Context;Z)V

    .line 19
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/e;->p()V

    .line 20
    invoke-static {p0}, Lcom/batch/android/Batch;->onServiceDestroy(Landroid/content/Context;)V

    .line 21
    return-void
.end method

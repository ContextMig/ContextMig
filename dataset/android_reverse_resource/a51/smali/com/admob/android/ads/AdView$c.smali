.class final Lcom/admob/android/ads/AdView$c;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/AdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/AdView;)V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView$c;->a:Ljava/lang/ref/WeakReference;

    .line 486
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/admob/android/ads/AdView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    .line 491
    if-eqz v0, :cond_1

    .line 494
    invoke-static {v0}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 500
    :try_start_0
    invoke-static {v0}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/admob/android/ads/AdListener;->onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_1
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 504
    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception raised in your AdListener.onFailedToReceiveAd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 511
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/admob/android/ads/AdListener;->onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 513
    :catch_1
    move-exception v0

    .line 515
    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception raised in your AdListener.onFailedToReceiveRefreshedAd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

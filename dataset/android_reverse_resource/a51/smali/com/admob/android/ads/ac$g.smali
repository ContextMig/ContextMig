.class final Lcom/admob/android/ads/ac$g;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ac;)V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac$g;->a:Ljava/lang/ref/WeakReference;

    .line 365
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/admob/android/ads/ac$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/ac;

    .line 369
    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/admob/android/ads/ac;->b()V

    goto :goto_0
.end method

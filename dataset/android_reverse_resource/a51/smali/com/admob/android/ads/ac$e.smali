.class public final Lcom/admob/android/ads/ac$e;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
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

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ac;Lcom/admob/android/ads/o;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/admob/android/ads/ac;",
            "Lcom/admob/android/ads/o;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac$e;->a:Ljava/lang/ref/WeakReference;

    .line 584
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac$e;->b:Ljava/lang/ref/WeakReference;

    .line 585
    iput-object p3, p0, Lcom/admob/android/ads/ac$e;->c:Ljava/lang/ref/WeakReference;

    .line 586
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/admob/android/ads/ac$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/ac;

    .line 590
    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admob/android/ads/ac;->a(Lcom/admob/android/ads/ac;Z)V

    .line 596
    iget-object v1, p0, Lcom/admob/android/ads/ac$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admob/android/ads/o;

    .line 597
    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/admob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 604
    iget-boolean v4, v0, Lcom/admob/android/ads/ac;->j:Z

    if-nez v4, :cond_2

    .line 605
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/admob/android/ads/ac;->j:Z

    .line 606
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 607
    const-string v4, "event"

    const-string v5, "interaction"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_2
    iget-object v4, v0, Lcom/admob/android/ads/ac;->f:Lcom/admob/android/ads/d;

    iget-object v5, v1, Lcom/admob/android/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 612
    invoke-virtual {v0}, Lcom/admob/android/ads/ac;->e()Z

    move-result v2

    .line 613
    if-eqz v2, :cond_3

    .line 614
    invoke-virtual {v0}, Lcom/admob/android/ads/ac;->f()V

    .line 616
    :cond_3
    invoke-virtual {v0, v2}, Lcom/admob/android/ads/ac;->a(Z)V

    .line 618
    new-instance v2, Lcom/admob/android/ads/q;

    invoke-direct {v2}, Lcom/admob/android/ads/q;-><init>()V

    .line 620
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/admob/android/ads/o;->f:Ljava/lang/String;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/admob/android/ads/u;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/admob/android/ads/q;->b()V

    .line 629
    iget-object v1, p0, Lcom/admob/android/ads/ac$e;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/admob/android/ads/ac$e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 631
    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v2, v1, v0}, Lcom/admob/android/ads/q;->a(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    const-string v3, "AdMobSDK"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 624
    const-string v3, "AdMobSDK"

    const-string v4, "Could not create JSONObject from button click"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

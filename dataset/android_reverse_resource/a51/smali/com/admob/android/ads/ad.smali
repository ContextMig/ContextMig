.class public Lcom/admob/android/ads/ad;
.super Landroid/webkit/WebViewClient;
.source "AdMobWebViewClient.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/admob/android/ads/ag;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/view/AdMobWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/view/AdMobWebView;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/admob/android/ads/ad;-><init>(Lcom/admob/android/ads/view/AdMobWebView;Ljava/lang/ref/WeakReference;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/view/AdMobWebView;Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/admob/android/ads/view/AdMobWebView;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad;->d:Ljava/lang/ref/WeakReference;

    .line 45
    iput-object p2, p0, Lcom/admob/android/ads/ad;->a:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 48
    new-instance v1, Lcom/admob/android/ads/ag;

    iget-object v2, p0, Lcom/admob/android/ads/ad;->d:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0, v2}, Lcom/admob/android/ads/ag;-><init>(Landroid/app/Activity;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/admob/android/ads/ad;->b:Lcom/admob/android/ads/ag;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    .line 50
    iget-object v0, p0, Lcom/admob/android/ads/ad;->b:Lcom/admob/android/ads/ag;

    const-string v1, "JsProxy"

    invoke-virtual {p1, v0, v1}, Lcom/admob/android/ads/view/AdMobWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    if-eqz p0, :cond_1

    .line 192
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 193
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 197
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 198
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 199
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 200
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/view/AdMobWebView;

    .line 59
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/admob/android/ads/view/AdMobWebView;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    :cond_2
    const-string v0, "AdMobSDK"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected page loaded, urlThatFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    .line 80
    invoke-virtual {v0}, Lcom/admob/android/ads/view/AdMobWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    const-string v3, "sdkVersion"

    const-string v4, "20101109-ANDROID-3312276cc1406347"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    const-string v3, "ua"

    invoke-static {}, Lcom/admob/android/ads/f;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    const-string v3, "portrait"

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    const-string v3, "width"

    invoke-virtual {v0}, Lcom/admob/android/ads/view/AdMobWebView;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    const-string v3, "height"

    invoke-virtual {v0}, Lcom/admob/android/ads/view/AdMobWebView;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    const-string v3, "isu"

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_4
    const-string v1, "onEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "loaded"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/admob/android/ads/ad;->c:Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/view/AdMobWebView;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 94
    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading, url: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/view/AdMobWebView;

    .line 99
    if-nez v0, :cond_1

    move v0, v2

    .line 185
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/admob/android/ads/view/AdMobWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 110
    const-string v6, "admob"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 112
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 114
    const-string v6, "launch"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 115
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_a

    .line 117
    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_a

    .line 119
    const-string v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    if-eqz v0, :cond_a

    .line 121
    instance-of v4, v1, Landroid/app/Activity;

    if-nez v4, :cond_2

    .line 122
    iget-object v1, p0, Lcom/admob/android/ads/ad;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 124
    :cond_2
    if-eqz v1, :cond_3

    .line 125
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v0, v3

    .line 127
    goto :goto_0

    .line 132
    :cond_4
    const-string v1, "open"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_a

    .line 135
    invoke-static {v1}, Lcom/admob/android/ads/ad;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_a

    .line 137
    const-string v4, "vars"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    if-eqz v1, :cond_a

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript: JsProxy.setDataAndOpen("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/view/AdMobWebView;->loadUrl(Ljava/lang/String;)V

    move v0, v3

    .line 142
    goto/16 :goto_0

    .line 147
    :cond_5
    const-string v1, "closecanvas"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    if-ne p1, v0, :cond_a

    .line 150
    invoke-virtual {v0}, Lcom/admob/android/ads/view/AdMobWebView;->a()V

    move v0, v3

    .line 151
    goto/16 :goto_0

    .line 154
    :cond_6
    const-string v0, "log"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 155
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_a

    .line 157
    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_a

    .line 159
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    if-eqz v0, :cond_a

    .line 161
    const-string v1, "AdMobSDK"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    const-string v1, "AdMobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<AdMob:WebView>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v3

    .line 165
    goto/16 :goto_0

    .line 171
    :cond_8
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message from JS but didn\'t know how to handle: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    move v0, v3

    .line 176
    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "AdMobSDK"

    const-string v3, "Bad link URL in AdMob web view."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    move v0, v2

    .line 185
    goto/16 :goto_0
.end method

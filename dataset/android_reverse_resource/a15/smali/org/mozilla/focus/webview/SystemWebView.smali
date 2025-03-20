.class public Lorg/mozilla/focus/webview/SystemWebView;
.super Lorg/mozilla/focus/webview/NestedWebView;
.source "SystemWebView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lorg/mozilla/focus/web/IWebView;


# instance fields
.field private callback:Lorg/mozilla/focus/web/IWebView$Callback;

.field private final client:Lorg/mozilla/focus/webview/FocusWebViewClient;

.field private final linkHandler:Lorg/mozilla/focus/webview/LinkHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/webview/NestedWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/focus/webview/FocusWebViewClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    .line 61
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/SystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    invoke-direct {p0}, Lorg/mozilla/focus/webview/SystemWebView;->createWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/SystemWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    invoke-direct {p0}, Lorg/mozilla/focus/webview/SystemWebView;->createDownloadListener()Landroid/webkit/DownloadListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/SystemWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/SystemWebView;->setLongClickable(Z)V

    .line 71
    new-instance v0, Lorg/mozilla/focus/webview/LinkHandler;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/webview/LinkHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->linkHandler:Lorg/mozilla/focus/webview/LinkHandler;

    .line 72
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->linkHandler:Lorg/mozilla/focus/webview/LinkHandler;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/SystemWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/webview/SystemWebView;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    return-object v0
.end method

.method private createDownloadListener()Landroid/webkit/DownloadListener;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lorg/mozilla/focus/webview/SystemWebView$3;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/webview/SystemWebView$3;-><init>(Lorg/mozilla/focus/webview/SystemWebView;)V

    return-object v0
.end method

.method private createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lorg/mozilla/focus/webview/SystemWebView$2;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/webview/SystemWebView$2;-><init>(Lorg/mozilla/focus/webview/SystemWebView;)V

    return-object v0
.end method

.method public static deleteContentFromKnownLocations(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    sget-object v0, Lmozilla/components/support/utils/ThreadUtils;->INSTANCE:Lmozilla/components/support/utils/ThreadUtils;

    new-instance v1, Lorg/mozilla/focus/webview/SystemWebView$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/webview/SystemWebView$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmozilla/components/support/utils/ThreadUtils;->postToBackgroundThread(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    invoke-super {p0, p1}, Lorg/mozilla/focus/webview/NestedWebView;->autofill(Landroid/util/SparseArray;)V

    .line 266
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->autofillPerformedEvent()V

    .line 267
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->clearFormData()V

    .line 244
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->clearHistory()V

    .line 245
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->clearMatches()V

    .line 246
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->clearSslPreferences()V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/webview/SystemWebView;->clearCache(Z)V

    .line 250
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 252
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 254
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 256
    .local v0, "webViewDatabase":Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 257
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 259
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/focus/webview/SystemWebView;->deleteContentFromKnownLocations(Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lorg/mozilla/focus/webview/NestedWebView;->destroy()V

    .line 238
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/focus/webview/SystemWebView;->deleteContentFromKnownLocations(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method public getCallback()Lorg/mozilla/focus/web/IWebView$Callback;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    return-object v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseURL"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyURL"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p5}, Lorg/mozilla/focus/webview/SystemWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v1, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {v1, p0, p1}, Lorg/mozilla/focus/webview/FocusWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v0, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "X-Requested-With"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-super {p0, p1, v0}, Lorg/mozilla/focus/webview/NestedWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    .end local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {v1, p1}, Lorg/mozilla/focus/webview/FocusWebViewClient;->notifyCurrentURL(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lorg/mozilla/focus/webview/NestedWebView;->onAttachedToWindow()V

    .line 84
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 87
    sget-object v0, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;->INSTANCE:Lorg/mozilla/focus/webview/TelemetryAutofillCallback;

    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;->register(Landroid/content/Context;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/mozilla/focus/webview/NestedWebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 105
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 106
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lorg/mozilla/focus/webview/NestedWebView;->onDetachedFromWindow()V

    .line 95
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 98
    sget-object v0, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;->INSTANCE:Lorg/mozilla/focus/webview/TelemetryAutofillCallback;

    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/webview/TelemetryAutofillCallback;->unregister(Landroid/content/Context;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lorg/mozilla/focus/webview/NestedWebView;->onPause()V

    .line 117
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->pauseTimers()V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lorg/mozilla/focus/webview/NestedWebView;->onResume()V

    .line 123
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->resumeTimers()V

    .line 124
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lorg/mozilla/focus/web/WebViewProvider;->applyAppSettings(Landroid/content/Context;Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V

    .line 112
    return-void
.end method

.method public restoreWebViewState(Lorg/mozilla/focus/session/Session;)V
    .locals 4
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 128
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getWebViewState()Landroid/os/Bundle;

    move-result-object v2

    .line 130
    .local v2, "stateData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 131
    invoke-super {p0, v2}, Lorg/mozilla/focus/webview/NestedWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 134
    .local v0, "backForwardList":Landroid/webkit/WebBackForwardList;
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "desiredURL":Ljava/lang/String;
    iget-object v3, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {v3, v2}, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoreState(Landroid/os/Bundle;)V

    .line 137
    iget-object v3, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {v3, v1}, Lorg/mozilla/focus/webview/FocusWebViewClient;->notifyCurrentURL(Ljava/lang/String;)V

    .line 148
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->reload()V

    .line 156
    :goto_1
    return-void

    .line 131
    .end local v0    # "backForwardList":Landroid/webkit/WebBackForwardList;
    .end local v1    # "desiredURL":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    .restart local v0    # "backForwardList":Landroid/webkit/WebBackForwardList;
    .restart local v1    # "desiredURL":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/mozilla/focus/webview/SystemWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public saveWebViewState(Lorg/mozilla/focus/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "stateData":Landroid/os/Bundle;
    invoke-super {p0, v0}, Lorg/mozilla/focus/webview/NestedWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 166
    iget-object v1, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {v1, p0, v0}, Lorg/mozilla/focus/webview/FocusWebViewClient;->saveState(Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p1, v0}, Lorg/mozilla/focus/session/Session;->saveWebViewState(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public setBlockingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/webview/FocusWebViewClient;->setBlockingEnabled(Z)V

    .line 174
    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lorg/mozilla/focus/web/WebViewProvider;->applyAppSettings(Landroid/content/Context;Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V

    .line 180
    :goto_0
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0, p1}, Lorg/mozilla/focus/web/IWebView$Callback;->onBlockingStateChanged(Z)V

    .line 183
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/mozilla/focus/web/WebViewProvider;->disableBlocking(Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$Callback;

    .prologue
    .line 200
    iput-object p1, p0, Lorg/mozilla/focus/webview/SystemWebView;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    .line 201
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->client:Lorg/mozilla/focus/webview/FocusWebViewClient;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/webview/FocusWebViewClient;->setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V

    .line 202
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->linkHandler:Lorg/mozilla/focus/webview/LinkHandler;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/webview/LinkHandler;->setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V

    .line 203
    return-void
.end method

.method public setFindListener(Lorg/mozilla/focus/web/IFindListener;)V
    .locals 0
    .param p1, "findListener"    # Lorg/mozilla/focus/web/IFindListener;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/webview/SystemWebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 208
    return-void
.end method

.method public setRequestDesktop(Z)V
    .locals 2
    .param p1, "shouldRequestDesktop"    # Z

    .prologue
    .line 187
    if-eqz p1, :cond_1

    .line 188
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/focus/web/WebViewProvider;->requestDesktopSite(Landroid/webkit/WebSettings;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0, p1}, Lorg/mozilla/focus/web/IWebView$Callback;->onRequestDesktopStateChanged(Z)V

    .line 196
    :cond_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/focus/webview/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/focus/web/WebViewProvider;->requestMobileSite(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    goto :goto_0
.end method

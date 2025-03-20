.class Lorg/mozilla/focus/webview/FocusWebViewClient;
.super Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;
.source "FocusWebViewClient.java"


# instance fields
.field private errorReceived:Z

.field private restoredCertificate:Landroid/net/http/SslCertificate;

.field private restoredUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "(function() {function cleanupVisited() {var nSheets = document.styleSheets.length;for (s=0; s < nSheets; s++) {  var stylesheet = document.styleSheets[s];  var nRules = stylesheet.cssRules ? stylesheet.cssRules.length : 0;  for (i = nRules - 1; i >= 0; i--) {    var cssRule = stylesheet.cssRules[i];    if (cssRule.selectorText && cssRule.selectorText.includes(\':visited\')) {      var tokens = cssRule.selectorText.split(\',\');      var j = tokens.length;      while (j--) {        if (tokens[j].includes(\':visited\')) {          tokens.splice(j, 1);        }      }      if (tokens.length == 0) {        stylesheet.deleteRule(i);      } else {        cssRule.selectorText = tokens.join(\',\');      }    }  }}}var links = document.getElementsByTagName(\'link\');for (i = 0; i < links.length; i++) {  link = links[i];  if (link.rel == \'stylesheet\') {    link.addEventListener(\'load\', cleanupVisited, false);  }}})();"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 104
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 181
    .local v0, "certificate":Landroid/net/http/SslCertificate;
    iget-object v3, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoredUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    iget-object v3, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoredUrl:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 187
    iget-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoredCertificate:Landroid/net/http/SslCertificate;

    .line 196
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v3, :cond_2

    .line 198
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/focus/utils/UrlUtils;->isLocalizedContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const/4 v1, 0x1

    .line 200
    .local v1, "isSecure":Z
    :goto_1
    iget-object v3, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v3, v1}, Lorg/mozilla/focus/web/IWebView$Callback;->onPageFinished(Z)V

    .line 201
    iget-object v5, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {v5, v1, v4, v3}, Lorg/mozilla/focus/web/IWebView$Callback;->onSecurityChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "viewURL":Ljava/lang/String;
    invoke-static {v2}, Lorg/mozilla/focus/utils/UrlUtils;->isInternalErrorURL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 206
    iget-object v3, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v3, v2}, Lorg/mozilla/focus/web/IWebView$Callback;->onURLChanged(Ljava/lang/String;)V

    .line 209
    .end local v1    # "isSecure":Z
    .end local v2    # "viewURL":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 211
    const-string v3, "(function() {var nSheets = document.styleSheets.length;for (s=0; s < nSheets; s++) {  var stylesheet = document.styleSheets[s];  var nRules = stylesheet.cssRules ? stylesheet.cssRules.length : 0;  for (i = nRules - 1; i >= 0; i--) {    var cssRule = stylesheet.cssRules[i];    if (cssRule.selectorText && cssRule.selectorText.includes(\':visited\')) {      var tokens = cssRule.selectorText.split(\',\');      var j = tokens.length;      while (j--) {        if (tokens[j].includes(\':visited\')) {          tokens.splice(j, 1);        }      }      if (tokens.length == 0) {        stylesheet.deleteRule(i);      } else {        cssRule.selectorText = tokens.join(\',\');      }    }  }}})();"

    invoke-virtual {p1, v3, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 219
    return-void

    .line 191
    :cond_3
    iput-object v4, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoredUrl:Ljava/lang/String;

    .line 192
    iput-object v4, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoredCertificate:Landroid/net/http/SslCertificate;

    goto :goto_0

    .line 198
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "isSecure":Z
    :cond_5
    move-object v3, v4

    .line 201
    goto :goto_2
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->errorReceived:Z

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->errorReceived:Z

    .line 159
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 160
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0, p2}, Lorg/mozilla/focus/web/IWebView$Callback;->onPageStarted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->errorReceived:Z

    .line 290
    const-string v4, "error:"

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    const-string v4, "error:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 293
    .local v2, "errorCodePosition":I
    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "errorCodeString":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, "desiredErrorCode":I
    invoke-static {v0}, Lorg/mozilla/focus/webview/ErrorPage;->supportsErrorCode(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 302
    const/16 v0, -0xc

    .line 307
    :cond_0
    :goto_0
    invoke-static {p1, p4, v0}, Lorg/mozilla/focus/webview/ErrorPage;->loadErrorPage(Landroid/webkit/WebView;Ljava/lang/String;I)V

    .line 321
    .end local v0    # "desiredErrorCode":I
    .end local v2    # "errorCodePosition":I
    .end local v3    # "errorCodeString":Ljava/lang/String;
    :goto_1
    return-void

    .line 304
    .restart local v2    # "errorCodePosition":I
    .restart local v3    # "errorCodeString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v0, -0xc

    .restart local v0    # "desiredErrorCode":I
    goto :goto_0

    .line 314
    .end local v0    # "desiredErrorCode":I
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "errorCodePosition":I
    .end local v3    # "errorCodeString":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->currentPageURL:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    invoke-static {p2}, Lorg/mozilla/focus/webview/ErrorPage;->supportsErrorCode(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    iget-object v4, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->currentPageURL:Ljava/lang/String;

    invoke-static {p1, v4, p2}, Lorg/mozilla/focus/webview/ErrorPage;->loadErrorPage(Landroid/webkit/WebView;Ljava/lang/String;I)V

    goto :goto_1

    .line 320
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 261
    iget-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v0, :cond_0

    .line 262
    iget-object v5, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v5, v0, v4, v3}, Lorg/mozilla/focus/web/IWebView$Callback;->onSecurityChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->currentPageURL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    invoke-static {v1, p3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->sslErrorEvent(ZLandroid/net/http/SslError;)V

    .line 271
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0xb

    invoke-static {p1, v0, v1}, Lorg/mozilla/focus/webview/ErrorPage;->loadErrorPage(Landroid/webkit/WebView;Ljava/lang/String;I)V

    .line 275
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 262
    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1

    .line 273
    :cond_3
    invoke-static {v2, p3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->sslErrorEvent(ZLandroid/net/http/SslError;)V

    goto :goto_2
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    const-string v0, "client_last_certificate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "client_last_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoredUrl:Ljava/lang/String;

    .line 173
    const-string v0, "client_last_certificate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->restoredCertificate:Landroid/net/http/SslCertificate;

    .line 175
    :cond_0
    return-void
.end method

.method saveState(Landroid/webkit/WebView;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 164
    .local v0, "certificate":Landroid/net/http/SslCertificate;
    if-eqz v0, :cond_0

    .line 165
    const-string v1, "client_last_url"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "client_last_certificate"

    invoke-static {v0}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 117
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "requestURL":Ljava/lang/String;
    iget-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->currentPageURL:Ljava/lang/String;

    .line 125
    .local v0, "currentURL":Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/mozilla/focus/utils/UrlUtils;->urlsMatchExceptForTrailingSlash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Lorg/mozilla/focus/webview/FocusWebViewClient$1;

    invoke-direct {v2, p0, v0}, Lorg/mozilla/focus/webview/FocusWebViewClient$1;-><init>(Lorg/mozilla/focus/webview/FocusWebViewClient;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_0
    iget-object v2, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v3

    invoke-interface {v2, v3}, Lorg/mozilla/focus/web/IWebView$Callback;->onRequest(Z)V

    .line 141
    .end local v0    # "currentURL":Ljava/lang/String;
    .end local v1    # "requestURL":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    return-object v2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 224
    move-object v1, p1

    check-cast v1, Lorg/mozilla/focus/web/IWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lorg/mozilla/focus/browser/LocalizedContent;->handleInternalContent(Ljava/lang/String;Lorg/mozilla/focus/web/IWebView;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 254
    :goto_0
    return v1

    .line 231
    :cond_0
    const-string v1, "about:blank"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x0

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 248
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/focus/utils/UrlUtils;->isSupportedProtocol(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lorg/mozilla/focus/web/IWebView;

    invoke-static {v3, v1, p2}, Lorg/mozilla/focus/utils/IntentUtils;->handleExternalUri(Landroid/content/Context;Lorg/mozilla/focus/web/IWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 251
    goto :goto_0

    .line 254
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

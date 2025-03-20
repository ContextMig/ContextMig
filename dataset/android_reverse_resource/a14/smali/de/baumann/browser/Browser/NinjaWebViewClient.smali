.class public Lde/baumann/browser/Browser/NinjaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NinjaWebViewClient.java"


# instance fields
.field private final adBlock:Lde/baumann/browser/Browser/AdBlock;

.field private final context:Landroid/content/Context;

.field private final cookie:Lde/baumann/browser/Browser/Cookie;

.field private enable:Z

.field private final ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

.field private final sp:Landroid/content/SharedPreferences;

.field private white:Z


# direct methods
.method public constructor <init>(Lde/baumann/browser/View/NinjaWebView;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 65
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 66
    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->sp:Landroid/content/SharedPreferences;

    .line 68
    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getAdBlock()Lde/baumann/browser/Browser/AdBlock;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    .line 69
    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getCookieHosts()Lde/baumann/browser/Browser/Cookie;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->cookie:Lde/baumann/browser/Browser/Cookie;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->white:Z

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->enable:Z

    return-void
.end method

.method private handleUri(Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .locals 5

    const-string v0, "ContentValues"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 152
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 154
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_1
    const-string v0, "intent:"

    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    :try_start_0
    invoke-static {p2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    .line 163
    :try_start_1
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 165
    :catch_0
    :try_start_2
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    const v0, 0x7f0e00fd

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    :goto_0
    return v3

    :cond_2
    const-string v2, "browser_fallback_url"

    .line 170
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 172
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    .line 176
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    .line 185
    :catch_1
    :cond_4
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    invoke-virtual {p1, p2}, Lde/baumann/browser/Browser/AdBlock;->isWhite(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->white:Z

    return v3
.end method


# virtual methods
.method public enableAdBlock(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->enable:Z

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .param p2    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 242
    invoke-static {}, Lde/baumann/browser/Unit/IntentUnit;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 243
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b002b

    const/4 v2, 0x0

    .line 248
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f09004b

    .line 249
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0039

    .line 250
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090019

    .line 251
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 252
    new-instance v2, Lde/baumann/browser/Browser/NinjaWebViewClient$1;

    invoke-direct {v2, p0, p3, v0}, Lde/baumann/browser/Browser/NinjaWebViewClient$1;-><init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/os/Message;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09000f

    .line 259
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 260
    new-instance v1, Lde/baumann/browser/Browser/NinjaWebViewClient$2;

    invoke-direct {v1, p0, p2, v0}, Lde/baumann/browser/Browser/NinjaWebViewClient$2;-><init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/os/Message;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 268
    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 87
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lde/baumann/browser/View/NinjaWebView;->update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    const v2, 0x7f0e0022

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lde/baumann/browser/View/NinjaWebView;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->sp:Landroid/content/SharedPreferences;

    const-string v0, "saveHistory"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    new-instance p1, Lde/baumann/browser/Database/RecordAction;

    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p1, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 104
    invoke-virtual {p1, p2}, Lde/baumann/browser/Database/RecordAction;->checkHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p1, p2}, Lde/baumann/browser/Database/RecordAction;->deleteHistoryOld(Ljava/lang/String;)V

    .line 106
    new-instance p2, Lde/baumann/browser/Database/Record;

    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lde/baumann/browser/Database/Record;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Lde/baumann/browser/Database/RecordAction;->addHistory(Lde/baumann/browser/Database/Record;)V

    goto :goto_2

    .line 108
    :cond_3
    new-instance p2, Lde/baumann/browser/Database/Record;

    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lde/baumann/browser/Database/Record;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Lde/baumann/browser/Database/RecordAction;->addHistory(Lde/baumann/browser/Database/Record;)V

    .line 112
    :goto_2
    invoke-virtual {p1}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 115
    :cond_4
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->isForeground()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 116
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->invalidate()V

    goto :goto_3

    .line 118
    :cond_5
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->postInvalidate()V

    :goto_3
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 78
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object p3, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lde/baumann/browser/View/NinjaWebView;->update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    iget-object p3, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    const v0, 0x7f0e0022

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lde/baumann/browser/View/NinjaWebView;->update(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Landroid/webkit/HttpAuthHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 304
    invoke-static {}, Lde/baumann/browser/Unit/IntentUnit;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    instance-of p3, p1, Landroid/app/Activity;

    if-nez p3, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance p3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p3, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x7f0b0030

    const/4 v0, 0x0

    .line 310
    invoke-static {p1, p4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p4, 0x7f0900b6

    .line 312
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    const v0, 0x7f0900b7

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f09008e

    .line 314
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    const/16 v2, 0x8

    .line 315
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 317
    invoke-virtual {p3, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0e0041

    .line 318
    invoke-virtual {p3, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0e0026

    .line 319
    new-instance v1, Lde/baumann/browser/Browser/NinjaWebViewClient$5;

    invoke-direct {v1, p0, p4, v0, p2}, Lde/baumann/browser/Browser/NinjaWebViewClient$5;-><init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {p3, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0e0023

    .line 328
    new-instance p4, Lde/baumann/browser/Browser/NinjaWebViewClient$6;

    invoke-direct {p4, p0, p2}, Lde/baumann/browser/Browser/NinjaWebViewClient$6;-><init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {p3, p1, p4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {p3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p2    # Landroid/webkit/SslErrorHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 273
    invoke-static {}, Lde/baumann/browser/Unit/IntentUnit;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 274
    instance-of p3, p1, Landroid/app/Activity;

    if-nez p3, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    new-instance p3, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p3, p1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 279
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09004b

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e003a

    .line 281
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090019

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 283
    new-instance v1, Lde/baumann/browser/Browser/NinjaWebViewClient$3;

    invoke-direct {v1, p0, p2, p3}, Lde/baumann/browser/Browser/NinjaWebViewClient$3;-><init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000f

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 291
    new-instance v1, Lde/baumann/browser/Browser/NinjaWebViewClient$4;

    invoke-direct {v1, p0, p2, p3}, Lde/baumann/browser/Browser/NinjaWebViewClient$4;-><init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-virtual {p3, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 299
    invoke-virtual {p3}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 217
    iget-boolean v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->enable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->white:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/Browser/AdBlock;->isAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, "text/plain"

    const-string v0, "UTF-8"

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, ""

    .line 221
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, p2, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 225
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    const v2, 0x7f0e00da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->cookie:Lde/baumann/browser/Browser/Cookie;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/Browser/Cookie;->isWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 229
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 237
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 192
    iget-boolean v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->enable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->white:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    invoke-virtual {v0, p2}, Lde/baumann/browser/Browser/AdBlock;->isAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p2, "text/plain"

    const-string v0, "UTF-8"

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, ""

    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, p2, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 200
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->context:Landroid/content/Context;

    const v2, 0x7f0e00da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->cookie:Lde/baumann/browser/Browser/Cookie;

    invoke-virtual {v0, p2}, Lde/baumann/browser/Browser/Cookie;->isWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 212
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 132
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 133
    invoke-direct {p0, p1, p2}, Lde/baumann/browser/Browser/NinjaWebViewClient;->handleUri(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 125
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 126
    invoke-direct {p0, p1, p2}, Lde/baumann/browser/Browser/NinjaWebViewClient;->handleUri(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public updateWhite(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient;->white:Z

    return-void
.end method

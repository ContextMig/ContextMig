.class public Lorg/mozilla/focus/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public static activitiesFoundForIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 167
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static createOpenFileIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "uriFile"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 175
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "openFileIntent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static handleExternalUri(Landroid/content/Context;Lorg/mozilla/focus/web/IWebView;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "webView"    # Lorg/mozilla/focus/web/IWebView;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    :try_start_0
    invoke-static {p2, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 50
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 57
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 59
    .local v6, "matchingActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 60
    invoke-static {p0, p1, v5}, Lorg/mozilla/focus/utils/IntentUtils;->handleUnsupportedLink(Landroid/content/Context;Lorg/mozilla/focus/web/IWebView;Landroid/content/Intent;)Z

    move-result v8

    .line 87
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "matchingActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v8

    .line 43
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/net/URISyntaxException;
    move v8, v9

    .line 46
    goto :goto_0

    .line 61
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "matchingActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v8, :cond_2

    .line 64
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v8, :cond_1

    .line 65
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    :goto_1
    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 75
    .local v3, "externalAppTitle":Ljava/lang/CharSequence;
    const v9, 0x7f0f0074

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0f0071

    invoke-static {p0, v5, v9, v10, v3}, Lorg/mozilla/focus/utils/IntentUtils;->showConfirmationDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    .end local v3    # "externalAppTitle":Ljava/lang/CharSequence;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-virtual {v7, v5, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .restart local v4    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 83
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const v9, 0x7f0f0075

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "chooserTitle":Ljava/lang/String;
    invoke-static {v5, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "chooserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static handleUnsupportedLink(Landroid/content/Context;Lorg/mozilla/focus/web/IWebView;Landroid/content/Intent;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "webView"    # Lorg/mozilla/focus/web/IWebView;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 92
    const-string v8, "browser_fallback_url"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "fallbackUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p1, v0}, Lorg/mozilla/focus/web/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    :goto_0
    return v6

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "market://details?id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "marketUri":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v2, "marketIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 105
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 106
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 107
    .local v3, "marketTitle":Ljava/lang/CharSequence;
    const v7, 0x7f0f0073

    .line 108
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0f0072

    .line 107
    invoke-static {p0, v2, v7, v8, v3}, Lorg/mozilla/focus/utils/IntentUtils;->showConfirmationDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "marketIntent":Landroid/content/Intent;
    .end local v3    # "marketTitle":Ljava/lang/CharSequence;
    .end local v4    # "marketUri":Ljava/lang/String;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    move v6, v7

    .line 117
    goto :goto_0
.end method

.method private static showConfirmationDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "messageResource"    # I
    .param p4, "param"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1000ac

    invoke-direct {v0, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 126
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f0f0028

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "ourAppName":Ljava/lang/CharSequence;
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 132
    const v2, 0x7f0f0025

    new-instance v3, Lorg/mozilla/focus/utils/IntentUtils$1;

    invoke-direct {v3, p0, p1}, Lorg/mozilla/focus/utils/IntentUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 139
    const v2, 0x7f0f0024

    new-instance v3, Lorg/mozilla/focus/utils/IntentUtils$2;

    invoke-direct {v3}, Lorg/mozilla/focus/utils/IntentUtils$2;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 160
    return-void
.end method

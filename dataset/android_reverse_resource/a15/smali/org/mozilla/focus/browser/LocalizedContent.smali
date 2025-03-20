.class public Lorg/mozilla/focus/browser/LocalizedContent;
.super Ljava/lang/Object;
.source "LocalizedContent.java"


# direct methods
.method public static handleInternalContent(Ljava/lang/String;Lorg/mozilla/focus/web/IWebView;Landroid/content/Context;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "webView"    # Lorg/mozilla/focus/web/IWebView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 32
    const-string v1, "focus:about"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p1, p2}, Lorg/mozilla/focus/browser/LocalizedContent;->loadAbout(Lorg/mozilla/focus/web/IWebView;Landroid/content/Context;)V

    .line 40
    :goto_0
    return v0

    .line 35
    :cond_0
    const-string v1, "focus:rights"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {p1, p2}, Lorg/mozilla/focus/browser/LocalizedContent;->loadRights(Lorg/mozilla/focus/web/IWebView;Landroid/content/Context;)V

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadAbout(Lorg/mozilla/focus/web/IWebView;Landroid/content/Context;)V
    .locals 16
    .param p0, "webView"    # Lorg/mozilla/focus/web/IWebView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static/range {p1 .. p1}, Lorg/mozilla/focus/locale/Locales;->getLocalizedResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v13

    .line 49
    .local v13, "resources":Landroid/content/res/Resources;
    new-instance v14, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v14}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 50
    .local v14, "substitutionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "appName":Ljava/lang/String;
    invoke-static {}, Lorg/mozilla/focus/utils/SupportUtils;->getManifestoURL()Ljava/lang/String;

    move-result-object v11

    .line 53
    .local v11, "learnMoreURL":Ljava/lang/String;
    const-string v8, ""

    .line 55
    .local v8, "aboutVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isGeckoBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v10, " \ud83e\udd8e 62.0.20180615100304"

    .line 58
    .local v10, "engineIndicator":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 59
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v1, "%s (Build #%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 63
    .end local v10    # "engineIndicator":Ljava/lang/String;
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    const-string v1, "%about-version%"

    invoke-interface {v14, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const v1, 0x7f0f001d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    const/4 v4, 0x1

    aput-object v11, v2, v4

    invoke-virtual {v13, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "aboutContent":Ljava/lang/String;
    const-string v1, "%about-content%"

    invoke-interface {v14, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const v1, 0x7f0800bc

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lorg/mozilla/focus/utils/HtmlLoader;->loadPngAsDataURI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, "wordmark":Ljava/lang/String;
    const-string v1, "%wordmark%"

    invoke-interface {v14, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lorg/mozilla/focus/browser/LocalizedContent;->putLayoutDirectionIntoMap(Ljava/util/Map;Landroid/content/Context;)V

    .line 73
    const/high16 v1, 0x7f0e0000

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lorg/mozilla/focus/utils/HtmlLoader;->loadResourceFile(Landroid/content/Context;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "data":Ljava/lang/String;
    const-string v2, "focus:about"

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const-string v6, "focus:about"

    move-object/from16 v1, p0

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/focus/web/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 55
    .end local v3    # "data":Ljava/lang/String;
    .end local v7    # "aboutContent":Ljava/lang/String;
    .end local v15    # "wordmark":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v10, ""
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static loadRights(Lorg/mozilla/focus/web/IWebView;Landroid/content/Context;)V
    .locals 21
    .param p0, "webView"    # Lorg/mozilla/focus/web/IWebView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static/range {p1 .. p1}, Lorg/mozilla/focus/locale/Locales;->getLocalizedResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v17

    .line 84
    .local v17, "resources":Landroid/content/res/Resources;
    new-instance v18, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 86
    .local v18, "substitutionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "appName":Ljava/lang/String;
    const-string v16, "https://www.mozilla.org/en-US/MPL/"

    .line 88
    .local v16, "mplUrl":Ljava/lang/String;
    const-string v20, "https://www.mozilla.org/foundation/trademarks/policy/"

    .line 89
    .local v20, "trademarkPolicyUrl":Ljava/lang/String;
    const-string v14, "gpl.html"

    .line 90
    .local v14, "gplUrl":Ljava/lang/String;
    const-string v19, "https://wiki.mozilla.org/Security/Tracking_protection#Lists"

    .line 91
    .local v19, "trackingProtectionUrl":Ljava/lang/String;
    const-string v15, "licenses.html"

    .line 93
    .local v15, "licensesUrl":Ljava/lang/String;
    const v2, 0x7f0f011d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "content1":Ljava/lang/String;
    const-string v2, "%your-rights-content1%"

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const v2, 0x7f0f011e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    const/4 v5, 0x1

    const-string v6, "https://www.mozilla.org/en-US/MPL/"

    aput-object v6, v3, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "content2":Ljava/lang/String;
    const-string v2, "%your-rights-content2%"

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const v2, 0x7f0f011f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    const/4 v5, 0x1

    const-string v6, "https://www.mozilla.org/foundation/trademarks/policy/"

    aput-object v6, v3, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "content3":Ljava/lang/String;
    const-string v2, "%your-rights-content3%"

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const v2, 0x7f0f0120

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    const/4 v5, 0x1

    const-string v6, "licenses.html"

    aput-object v6, v3, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "content4":Ljava/lang/String;
    const-string v2, "%your-rights-content4%"

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const v2, 0x7f0f0121

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    const/4 v5, 0x1

    const-string v6, "gpl.html"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "https://wiki.mozilla.org/Security/Tracking_protection#Lists"

    aput-object v6, v3, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "content5":Ljava/lang/String;
    const-string v2, "%your-rights-content5%"

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mozilla/focus/browser/LocalizedContent;->putLayoutDirectionIntoMap(Ljava/util/Map;Landroid/content/Context;)V

    .line 110
    const v2, 0x7f0e0006

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lorg/mozilla/focus/utils/HtmlLoader;->loadResourceFile(Landroid/content/Context;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "data":Ljava/lang/String;
    const-string v3, "focus:rights"

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const-string v7, "focus:rights"

    move-object/from16 v2, p0

    invoke-interface/range {v2 .. v7}, Lorg/mozilla/focus/web/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private static putLayoutDirectionIntoMap(Ljava/util/Map;Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "substitutionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 118
    .local v1, "layoutDirection":I
    if-nez v1, :cond_0

    .line 119
    const-string v0, "ltr"

    .line 126
    .local v0, "direction":Ljava/lang/String;
    :goto_0
    const-string v2, "%dir%"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void

    .line 120
    .end local v0    # "direction":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 121
    const-string v0, "rtl"

    .restart local v0    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v0    # "direction":Ljava/lang/String;
    :cond_1
    const-string v0, "auto"

    .restart local v0    # "direction":Ljava/lang/String;
    goto :goto_0
.end method

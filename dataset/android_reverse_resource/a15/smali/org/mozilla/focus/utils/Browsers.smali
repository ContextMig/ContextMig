.class public Lorg/mozilla/focus/utils/Browsers;
.super Ljava/lang/Object;
.source "Browsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/utils/Browsers$KnownBrowser;
    }
.end annotation


# instance fields
.field private final browsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultBrowser:Landroid/content/pm/ActivityInfo;

.field private final firefoxBrandedBrowser:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1, v1, v2}, Lorg/mozilla/focus/utils/Browsers;->resolveBrowsers(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    .line 86
    .local v0, "browsers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    invoke-direct {p0, v1, v0, v2}, Lorg/mozilla/focus/utils/Browsers;->findKnownBrowsers(Landroid/content/pm/PackageManager;Ljava/util/Map;Landroid/net/Uri;)V

    .line 88
    iput-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    .line 89
    invoke-direct {p0, p1, v1, v2}, Lorg/mozilla/focus/utils/Browsers;->findDefault(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/net/Uri;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    .line 90
    invoke-direct {p0}, Lorg/mozilla/focus/utils/Browsers;->findFirefoxBrandedBrowser()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/focus/utils/Browsers;->firefoxBrandedBrowser:Landroid/content/pm/ActivityInfo;

    .line 91
    return-void
.end method

.method private findDefault(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/net/Uri;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 160
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method private findFirefoxBrandedBrowser()Landroid/content/pm/ActivityInfo;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 103
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_AURORA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_AURORA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_NIGHTLY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_NIGHTLY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 103
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findKnownBrowsers(Landroid/content/pm/PackageManager;Ljava/util/Map;Landroid/net/Uri;)V
    .locals 10
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "browsers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    const/4 v5, 0x0

    .line 124
    invoke-static {}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->values()[Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v0, v6, v4

    .line 125
    .local v0, "browser":Lorg/mozilla/focus/utils/Browsers$KnownBrowser;
    iget-object v8, v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 124
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_1
    :try_start_0
    iget-object v8, v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    iget-object v8, v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 144
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    .line 148
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_0

    .line 152
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 154
    .end local v0    # "browser":Lorg/mozilla/focus/utils/Browsers$KnownBrowser;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    return-void
.end method

.method private resolveBrowsers(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/net/Uri;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "browsers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ActivityInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDefaultBrowser()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getInstalledBrowsers()[Landroid/content/pm/ActivityInfo;
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 244
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ActivityInfo;

    return-object v1
.end method

.method public hasFirefoxBrandedBrowserInstalled()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->firefoxBrandedBrowser:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMultipleThirdPartyBrowsers(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-object v2, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 226
    :goto_0
    return v1

    .line 216
    :cond_0
    iget-object v2, p0, Lorg/mozilla/focus/utils/Browsers;->browsers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 217
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    if-eq v0, v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v4, v4, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 226
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasThirdPartyDefaultBrowser(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v1, v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->firefoxBrandedBrowser:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->firefoxBrandedBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultBrowser(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    iget-object v0, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirefoxDefaultBrowser()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v2, v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v2, v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_AURORA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v2, v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/focus/utils/Browsers;->defaultBrowser:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_NIGHTLY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v2, v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

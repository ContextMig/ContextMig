.class public Lorg/mozilla/focus/locale/Locales;
.super Ljava/lang/Object;
.source "Locales.java"


# direct methods
.method public static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "language":Ljava/lang/String;
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v0, "he"

    .line 72
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 64
    .restart local v0    # "language":Ljava/lang/String;
    :cond_1
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v0, "id"

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "ji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v0, "yi"

    goto :goto_0
.end method

.method public static getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 88
    invoke-static {p0}, Lorg/mozilla/focus/locale/Locales;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "country":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    .end local v1    # "language":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "language":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLocalizedResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    .local v2, "currentResources":Landroid/content/res/Resources;
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/mozilla/focus/locale/LocaleManager;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 139
    .local v1, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 141
    .local v3, "viewLocale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 152
    .end local v2    # "currentResources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v2

    .line 145
    .restart local v2    # "currentResources":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 149
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 150
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0
.end method

.method public static initializeLocale(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v0

    .line 37
    .local v0, "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 38
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 40
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/mozilla/focus/locale/LocaleManager;->getAndApplyPersistedLocale(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2
.end method

.method public static parseLocaleCode(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "localeCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 98
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "index":I
    if-ne v1, v4, :cond_0

    const/16 v3, 0x5f

    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 100
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "langCode":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v2    # "langCode":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

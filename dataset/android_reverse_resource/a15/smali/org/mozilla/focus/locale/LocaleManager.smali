.class public Lorg/mozilla/focus/locale/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static PREF_LOCALE:Ljava/lang/String;

.field private static final instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/mozilla/focus/locale/LocaleManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile currentLocale:Ljava/util/Locale;

.field private final inited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private volatile systemLocale:Ljava/util/Locale;

.field private systemLocaleDidChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lorg/mozilla/focus/locale/LocaleManager;->PREF_LOCALE:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/mozilla/focus/locale/LocaleManager;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/locale/LocaleManager;->systemLocale:Ljava/util/Locale;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/mozilla/focus/locale/LocaleManager;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/locale/LocaleManager;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/locale/LocaleManager;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/mozilla/focus/locale/LocaleManager;->systemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$002(Lorg/mozilla/focus/locale/LocaleManager;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/locale/LocaleManager;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/mozilla/focus/locale/LocaleManager;->systemLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$102(Lorg/mozilla/focus/locale/LocaleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/locale/LocaleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lorg/mozilla/focus/locale/LocaleManager;->systemLocaleDidChange:Z

    return p1
.end method

.method public static getInstance()Lorg/mozilla/focus/locale/LocaleManager;
    .locals 3

    .prologue
    .line 57
    sget-object v1, Lorg/mozilla/focus/locale/LocaleManager;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/locale/LocaleManager;

    .line 58
    .local v0, "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    if-eqz v0, :cond_1

    .line 66
    .end local v0    # "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    :cond_0
    :goto_0
    return-object v0

    .line 62
    .restart local v0    # "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    :cond_1
    new-instance v0, Lorg/mozilla/focus/locale/LocaleManager;

    .end local v0    # "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    invoke-direct {v0}, Lorg/mozilla/focus/locale/LocaleManager;-><init>()V

    .line 63
    .restart local v0    # "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    sget-object v1, Lorg/mozilla/focus/locale/LocaleManager;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    sget-object v1, Lorg/mozilla/focus/locale/LocaleManager;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/focus/locale/LocaleManager;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPackagedLocaleTags(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lorg/mozilla/focus/generated/LocaleList;->BUNDLED_LOCALES:Ljava/util/List;

    return-object v0
.end method

.method private getPersistedLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 258
    .local v1, "settings":Landroid/content/SharedPreferences;
    sget-object v2, Lorg/mozilla/focus/locale/LocaleManager;->PREF_LOCALE:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "locale":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 263
    .end local v0    # "locale":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    sget-object v0, Lorg/mozilla/focus/locale/LocaleManager;->PREF_LOCALE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/focus/locale/LocaleManager;->PREF_LOCALE:Ljava/lang/String;

    .line 250
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private persistLocale(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localeCode"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/locale/LocaleManager;->PREF_LOCALE:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    return-void
.end method

.method private updateLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localeCode"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 296
    .local v0, "defaultLocale":Ljava/util/Locale;
    const-string v2, "LOCALE"

    const-string v3, "Trying to check locale"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const-string v2, "LOCALE"

    const-string v3, "Early return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x0

    .line 304
    :goto_0
    return-object v2

    .line 302
    :cond_0
    invoke-static {p2}, Lorg/mozilla/focus/locale/Locales;->parseLocaleCode(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 304
    .local v1, "locale":Ljava/util/Locale;
    invoke-direct {p0, p1, v1}, Lorg/mozilla/focus/locale/LocaleManager;->updateLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 312
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 316
    :cond_0
    invoke-static {p2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 317
    iput-object p2, p0, Lorg/mozilla/focus/locale/LocaleManager;->currentLocale:Ljava/util/Locale;

    .line 320
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/locale/LocaleManager;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    .line 322
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public correctLocale(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 111
    .local v0, "current":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 112
    const-string v1, "GeckoLocales"

    const-string v2, "No selected locale. No correction needed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    iput-object v0, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 129
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public getAndApplyPersistedLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->initialize(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, "t1":J
    invoke-direct {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->getPersistedLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "localeCode":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 188
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/mozilla/focus/locale/LocaleManager;->updateLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "resultant":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 192
    iget-object v6, p0, Lorg/mozilla/focus/locale/LocaleManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p0, p1, v6}, Lorg/mozilla/focus/locale/LocaleManager;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    .line 195
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 196
    .local v4, "t2":J
    const-string v6, "GeckoLocales"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Locale read and update took: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleManager;->currentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleManager;->currentLocale:Ljava/util/Locale;

    .line 280
    :goto_0
    return-object v1

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->getPersistedLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "current":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 278
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {v0}, Lorg/mozilla/focus/locale/Locales;->parseLocaleCode(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/focus/locale/LocaleManager;->currentLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mozilla/focus/locale/LocaleManager;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lorg/mozilla/focus/locale/LocaleManager$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/locale/LocaleManager$1;-><init>(Lorg/mozilla/focus/locale/LocaleManager;)V

    iput-object v0, p0, Lorg/mozilla/focus/locale/LocaleManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 98
    iget-object v0, p0, Lorg/mozilla/focus/locale/LocaleManager;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public isMirroringSystemLocale(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->getPersistedLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSystemConfigurationChanged(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Configuration;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "currentActivityLocale"    # Ljava/util/Locale;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->isMirroringSystemLocale(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/focus/locale/LocaleManager;->correctLocale(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Configuration;)V

    .line 169
    :cond_0
    iget-object v0, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 170
    .local v0, "changed":Ljava/util/Locale;
    invoke-virtual {v0, p4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const/4 v0, 0x0

    .line 174
    .end local v0    # "changed":Ljava/util/Locale;
    :cond_1
    return-object v0
.end method

.method public resetToSystemLocale(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lorg/mozilla/focus/locale/LocaleManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/locale/LocaleManager;->PREF_LOCALE:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleManager;->systemLocale:Ljava/util/Locale;

    invoke-direct {p0, p1, v1}, Lorg/mozilla/focus/locale/LocaleManager;->updateLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setSelectedLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localeCode"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/locale/LocaleManager;->updateLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "resultant":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/locale/LocaleManager;->persistLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    return-object v0
.end method

.method public updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 234
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 238
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object p2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 240
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 243
    return-void
.end method

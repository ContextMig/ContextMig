.class public Lorg/mozilla/focus/session/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final INSTANCE:Lorg/mozilla/focus/session/SessionManager;


# instance fields
.field private currentSessionUUID:Ljava/lang/String;

.field private final customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/focus/architecture/NonNullMutableLiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/focus/architecture/NonNullMutableLiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/mozilla/focus/session/SessionManager;

    invoke-direct {v0}, Lorg/mozilla/focus/session/SessionManager;-><init>()V

    sput-object v0, Lorg/mozilla/focus/session/SessionManager;->INSTANCE:Lorg/mozilla/focus/session/SessionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 46
    new-instance v0, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    .line 48
    return-void
.end method

.method private addSession(Lorg/mozilla/focus/session/Session;)V
    .locals 3
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 267
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->isCustomTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v1, v0}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 280
    :goto_0
    return-void

    .line 273
    .end local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    .restart local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private createSession(Landroid/content/Context;Lorg/mozilla/focus/session/Source;Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lorg/mozilla/focus/session/Source;
    .param p3, "intent"    # Lmozilla/components/support/utils/SafeIntent;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p3}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->isCustomTabIntent(Lmozilla/components/support/utils/SafeIntent;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/mozilla/focus/session/Session;

    .line 252
    invoke-static {p1, p3}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->parseCustomTabIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)Lorg/mozilla/focus/customtabs/CustomTabConfig;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lorg/mozilla/focus/session/Session;-><init>(Ljava/lang/String;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V

    .line 254
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    :goto_0
    invoke-direct {p0, v0}, Lorg/mozilla/focus/session/SessionManager;->addSession(Lorg/mozilla/focus/session/Session;)V

    .line 255
    return-void

    .line 252
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    :cond_0
    new-instance v0, Lorg/mozilla/focus/session/Session;

    invoke-direct {v0, p2, p4}, Lorg/mozilla/focus/session/Session;-><init>(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSession(Landroid/content/Context;Lorg/mozilla/focus/session/Source;Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lorg/mozilla/focus/session/Source;
    .param p3, "intent"    # Lmozilla/components/support/utils/SafeIntent;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "blockingEnabled"    # Z
    .param p6, "requestDesktop"    # Z

    .prologue
    .line 258
    invoke-static {p3}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->isCustomTabIntent(Lmozilla/components/support/utils/SafeIntent;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/mozilla/focus/session/Session;

    .line 259
    invoke-static {p1, p3}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->parseCustomTabIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)Lorg/mozilla/focus/customtabs/CustomTabConfig;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lorg/mozilla/focus/session/Session;-><init>(Ljava/lang/String;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V

    .line 261
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    :goto_0
    invoke-virtual {v0, p5}, Lorg/mozilla/focus/session/Session;->setBlockingEnabled(Z)V

    .line 262
    invoke-virtual {v0, p6}, Lorg/mozilla/focus/session/Session;->setRequestDesktopSite(Z)V

    .line 263
    invoke-direct {p0, v0}, Lorg/mozilla/focus/session/SessionManager;->addSession(Lorg/mozilla/focus/session/Session;)V

    .line 264
    return-void

    .line 259
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    :cond_0
    new-instance v0, Lorg/mozilla/focus/session/Session;

    invoke-direct {v0, p2, p4}, Lorg/mozilla/focus/session/Session;-><init>(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSessionFromIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Lmozilla/components/support/utils/SafeIntent;

    .prologue
    .line 78
    invoke-virtual {p2}, Lmozilla/components/support/utils/SafeIntent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p2}, Lmozilla/components/support/utils/SafeIntent;->getDataString()Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "dataString":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    .end local v9    # "dataString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v9    # "dataString":Ljava/lang/String;
    :cond_1
    const-string v0, "add_to_homescreen"

    invoke-virtual {p2, v0}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const-string v0, "blocking_enabled"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lmozilla/components/support/utils/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 88
    .local v5, "blockingEnabled":Z
    const-string v0, "request_desktop"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lmozilla/components/support/utils/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 89
    .local v6, "requestDesktop":Z
    sget-object v2, Lorg/mozilla/focus/session/Source;->HOME_SCREEN:Lorg/mozilla/focus/session/Source;

    invoke-virtual {p2}, Lmozilla/components/support/utils/SafeIntent;->getDataString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/focus/session/SessionManager;->createSession(Landroid/content/Context;Lorg/mozilla/focus/session/Source;Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 91
    .end local v5    # "blockingEnabled":Z
    .end local v6    # "requestDesktop":Z
    :cond_2
    sget-object v0, Lorg/mozilla/focus/session/Source;->VIEW:Lorg/mozilla/focus/session/Source;

    invoke-virtual {p2}, Lmozilla/components/support/utils/SafeIntent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/mozilla/focus/session/SessionManager;->createSession(Landroid/content/Context;Lorg/mozilla/focus/session/Source;Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v9    # "dataString":Ljava/lang/String;
    :cond_3
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p2, v0}, Lmozilla/components/support/utils/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .restart local v9    # "dataString":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {v9}, Lorg/mozilla/focus/utils/UrlUtils;->isUrl(Ljava/lang/String;)Z

    move-result v10

    .line 101
    .local v10, "isURL":Z
    if-nez v10, :cond_5

    .line 102
    new-instance v0, Lmozilla/components/support/utils/WebURLFinder;

    invoke-direct {v0, v9}, Lmozilla/components/support/utils/WebURLFinder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmozilla/components/support/utils/WebURLFinder;->bestWebURL()Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "bestURL":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 104
    sget-object v0, Lorg/mozilla/focus/session/Source;->SHARE:Lorg/mozilla/focus/session/Source;

    invoke-virtual {p0, v0, v8}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_4
    sget-object v0, Lorg/mozilla/focus/session/Source;->SHARE:Lorg/mozilla/focus/session/Source;

    invoke-static {p1, v9}, Lorg/mozilla/focus/utils/UrlUtils;->createSearchUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v9}, Lorg/mozilla/focus/session/SessionManager;->createSearchSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v8    # "bestURL":Ljava/lang/String;
    :cond_5
    sget-object v0, Lorg/mozilla/focus/session/Source;->SHARE:Lorg/mozilla/focus/session/Source;

    invoke-virtual {p0, v0, v9}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lorg/mozilla/focus/session/SessionManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/mozilla/focus/session/SessionManager;->INSTANCE:Lorg/mozilla/focus/session/SessionManager;

    return-object v0
.end method


# virtual methods
.method public createSearchSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Lorg/mozilla/focus/session/Source;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "searchTerms"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Lorg/mozilla/focus/session/Session;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/focus/session/Session;-><init>(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 246
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0, p3}, Lorg/mozilla/focus/session/Session;->setSearchTerms(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v0}, Lorg/mozilla/focus/session/SessionManager;->addSession(Lorg/mozilla/focus/session/Session;)V

    .line 248
    return-void
.end method

.method public createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Lorg/mozilla/focus/session/Source;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Lorg/mozilla/focus/session/Session;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/focus/session/Session;-><init>(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 241
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    invoke-direct {p0, v0}, Lorg/mozilla/focus/session/SessionManager;->addSession(Lorg/mozilla/focus/session/Session;)V

    .line 242
    return-void
.end method

.method public getCurrentSession()Lorg/mozilla/focus/session/Session;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "There\'s no active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/session/SessionManager;->getSessionByUUID(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTabSessionByCustomTabId(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;
    .locals 4
    .param p1, "customTabId"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v2, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 136
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 137
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getCustomTabConfig()Lorg/mozilla/focus/customtabs/CustomTabConfig;

    move-result-object v3

    iget-object v3, v3, Lorg/mozilla/focus/customtabs/CustomTabConfig;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomTabSessionByCustomTabIdOrThrow(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;
    .locals 4
    .param p1, "customTabId"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/session/SessionManager;->getCustomTabSessionByCustomTabId(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;

    move-result-object v0

    .line 149
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There\'s no active custom tab session with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    return-object v0
.end method

.method public getCustomTabSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/focus/architecture/NonNullLiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    return-object v0
.end method

.method public getNumberOfSessions()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v0}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionOfCurrentSession()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 216
    iget-object v2, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    if-nez v2, :cond_1

    move v0, v3

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 221
    iget-object v2, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/focus/session/Session;

    .line 223
    .local v1, "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v1}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "session":Lorg/mozilla/focus/session/Session;
    :cond_2
    move v0, v3

    .line 228
    goto :goto_0
.end method

.method public getSessionByUUID(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v2, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 197
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 204
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    .local v1, "session":Lorg/mozilla/focus/session/Session;
    :goto_0
    return-object v1

    .line 202
    .end local v1    # "session":Lorg/mozilla/focus/session/Session;
    :cond_1
    iget-object v2, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 203
    .restart local v0    # "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 204
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    .restart local v1    # "session":Lorg/mozilla/focus/session/Session;
    goto :goto_0

    .line 208
    .end local v1    # "session":Lorg/mozilla/focus/session/Session;
    :cond_3
    new-instance v2, Ljava/lang/IllegalAccessError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There\'s no active session with UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/focus/architecture/NonNullLiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Lmozilla/components/support/utils/SafeIntent;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-virtual {p2}, Lmozilla/components/support/utils/SafeIntent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-nez p3, :cond_0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/session/SessionManager;->createSessionFromIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)V

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Lmozilla/components/support/utils/SafeIntent;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/session/SessionManager;->createSessionFromIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)V

    .line 75
    return-void
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v0}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionWithUUID(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 181
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 192
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    :goto_0
    return v1

    .line 186
    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 187
    .restart local v0    # "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 188
    goto :goto_0

    .line 192
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCurrentSession(Lorg/mozilla/focus/session/Session;)Z
    .locals 2
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 176
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveCustomTabToRegularSessions(Lorg/mozilla/focus/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 163
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->stripCustomTabConfiguration()V

    .line 167
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->clearSource()V

    .line 171
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/session/SessionManager;->removeCustomTabSession(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lorg/mozilla/focus/session/SessionManager;->addSession(Lorg/mozilla/focus/session/Session;)V

    .line 173
    return-void
.end method

.method public removeAllSessions()V
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public removeCurrentSession()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/session/SessionManager;->removeRegularSession(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public removeCustomTabSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v3}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 348
    iget-object v3, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v3}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 350
    .local v0, "currentSession":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 357
    .end local v0    # "currentSession":Lorg/mozilla/focus/session/Session;
    :cond_1
    iget-object v3, p0, Lorg/mozilla/focus/session/SessionManager;->customTabSessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v3, v2}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public removeRegularSession(Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v3, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    const/4 v2, -0x1

    .line 318
    .local v2, "removedFromPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v4}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 319
    iget-object v4, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v4}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 321
    .local v0, "currentSession":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    move v2, v1

    .line 318
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    .end local v0    # "currentSession":Lorg/mozilla/focus/session/Session;
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 342
    :goto_2
    return-void

    .line 333
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 334
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    .line 341
    :goto_3
    iget-object v4, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v4, v3}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 337
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 336
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 338
    .restart local v0    # "currentSession":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    goto :goto_3
.end method

.method public selectSession(Lorg/mozilla/focus/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 283
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->currentSessionUUID:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    iget-object v1, p0, Lorg/mozilla/focus/session/SessionManager;->sessions:Lorg/mozilla/focus/architecture/NonNullMutableLiveData;

    invoke-virtual {v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/architecture/NonNullMutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.class public Lorg/mozilla/focus/activity/MainActivity;
.super Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private final sessionManager:Lorg/mozilla/focus/session/SessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;-><init>()V

    .line 50
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/activity/MainActivity;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/activity/MainActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/mozilla/focus/activity/MainActivity;->showUrlInputScreen()V

    return-void
.end method

.method static synthetic access$100(Lorg/mozilla/focus/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/activity/MainActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/mozilla/focus/activity/MainActivity;->showFirstrun()V

    return-void
.end method

.method private processEraseAction(Lmozilla/components/support/utils/SafeIntent;)V
    .locals 4
    .param p1, "intent"    # Lmozilla/components/support/utils/SafeIntent;

    .prologue
    const/4 v3, 0x0

    .line 175
    const-string v2, "shortcut"

    invoke-virtual {p1, v2, v3}, Lmozilla/components/support/utils/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 176
    .local v1, "fromShortcut":Z
    const-string v2, "notification"

    invoke-virtual {p1, v2, v3}, Lmozilla/components/support/utils/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 178
    .local v0, "fromNotification":Z
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/session/SessionManager;->removeAllSessions()V

    .line 180
    if-eqz v1, :cond_1

    .line 181
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseShortcutEvent()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseAndOpenNotificationActionEvent()V

    goto :goto_0
.end method

.method private registerSessionObserver()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->isCustomTabMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/activity/MainActivity;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    .line 82
    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->getCustomTabSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v0

    .line 83
    :goto_0
    new-instance v1, Lorg/mozilla/focus/activity/MainActivity$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/activity/MainActivity$1;-><init>(Lorg/mozilla/focus/activity/MainActivity;)V

    .line 84
    invoke-virtual {v0, p0, v1}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 111
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/activity/MainActivity;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    .line 83
    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->getSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v0

    goto :goto_0
.end method

.method private showFirstrun()V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090049

    .line 222
    invoke-static {}, Lorg/mozilla/focus/fragment/FirstrunFragment;->create()Lorg/mozilla/focus/fragment/FirstrunFragment;

    move-result-object v2

    const-string v3, "firstrun"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 224
    return-void
.end method

.method private showUrlInputScreen()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 188
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 189
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v6, "browser"

    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 191
    .local v0, "browserFragment":Lorg/mozilla/focus/fragment/BrowserFragment;
    if-eqz v0, :cond_2

    move v2, v3

    .line 193
    .local v2, "isShowingBrowser":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 194
    const v6, 0x1020002

    invoke-virtual {p0, v6}, Lorg/mozilla/focus/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0f0076

    .line 196
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 194
    invoke-static {v6, v7, v8}, Lorg/mozilla/focus/utils/ViewUtils;->showBrandedSnackbar(Landroid/view/View;II)V

    .line 201
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 208
    .local v4, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 210
    .local v3, "shouldAnimate":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 211
    const v6, 0x7f010010

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 214
    :cond_1
    const v5, 0x7f090049

    .line 215
    invoke-static {}, Lorg/mozilla/focus/fragment/UrlInputFragment;->createWithoutSession()Lorg/mozilla/focus/fragment/UrlInputFragment;

    move-result-object v6

    const-string v7, "url_input"

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 216
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 217
    return-void

    .end local v2    # "isShowingBrowser":Z
    .end local v3    # "shouldAnimate":Z
    .end local v4    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    move v2, v5

    .line 191
    goto :goto_0

    .restart local v2    # "isShowingBrowser":Z
    .restart local v4    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    move v3, v5

    .line 208
    goto :goto_1
.end method


# virtual methods
.method public applyLocale()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected getCurrentSessionForActivity()Lorg/mozilla/focus/session/Session;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/mozilla/focus/activity/MainActivity;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->getCurrentSession()Lorg/mozilla/focus/session/Session;

    move-result-object v0

    return-object v0
.end method

.method protected isCustomTabMode()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 260
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v4, "tab_sheet"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    .line 261
    .local v2, "sessionsSheetFragment":Lorg/mozilla/focus/session/ui/SessionsSheetFragment;
    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v2}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    invoke-virtual {v2}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v4, "url_input"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lorg/mozilla/focus/fragment/UrlInputFragment;

    .line 269
    .local v3, "urlInputFragment":Lorg/mozilla/focus/fragment/UrlInputFragment;
    if-eqz v3, :cond_2

    .line 270
    invoke-virtual {v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    invoke-virtual {v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->onBackPressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    :cond_2
    const-string v4, "browser"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 278
    .local v0, "browserFragment":Lorg/mozilla/focus/fragment/BrowserFragment;
    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->onBackPressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    :cond_3
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget-object v1, Lorg/mozilla/focus/telemetry/SentryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/SentryWrapper;

    invoke-virtual {v1, p0}, Lorg/mozilla/focus/telemetry/SentryWrapper;->init(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lorg/mozilla/focus/utils/Settings;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/utils/Settings;->shouldUseSecureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 65
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/activity/MainActivity;->setContentView(I)V

    .line 67
    new-instance v0, Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lmozilla/components/support/utils/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 69
    .local v0, "intent":Lmozilla/components/support/utils/SafeIntent;
    invoke-virtual {v0}, Lmozilla/components/support/utils/SafeIntent;->isLauncherIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openFromIconEvent()V

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/activity/MainActivity;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    invoke-virtual {v1, p0, v0, p1}, Lorg/mozilla/focus/session/SessionManager;->handleIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lorg/mozilla/focus/activity/MainActivity;->registerSessionObserver()V

    .line 77
    invoke-static {p0}, Lorg/mozilla/focus/web/WebViewProvider;->preload(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 248
    const-class v0, Lorg/mozilla/focus/web/IWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {p0, p3}, Lorg/mozilla/focus/web/WebViewProvider;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "unsafeIntent"    # Landroid/content/Intent;

    .prologue
    .line 155
    new-instance v1, Lmozilla/components/support/utils/SafeIntent;

    invoke-direct {v1, p1}, Lmozilla/components/support/utils/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 157
    .local v1, "intent":Lmozilla/components/support/utils/SafeIntent;
    iget-object v2, p0, Lorg/mozilla/focus/activity/MainActivity;->sessionManager:Lorg/mozilla/focus/session/SessionManager;

    invoke-virtual {v2, p0, v1}, Lorg/mozilla/focus/session/SessionManager;->handleNewIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)V

    .line 159
    invoke-virtual {v1}, Lmozilla/components/support/utils/SafeIntent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v2, "open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openNotificationActionEvent()V

    .line 165
    :cond_0
    const-string v2, "erase"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0, v1}, Lorg/mozilla/focus/activity/MainActivity;->processEraseAction(Lmozilla/components/support/utils/SafeIntent;)V

    .line 169
    :cond_1
    invoke-virtual {v1}, Lmozilla/components/support/utils/SafeIntent;->isLauncherIntent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->resumeFromIconEvent()V

    .line 172
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0}, Lorg/mozilla/focus/web/WebViewProvider;->performCleanup(Landroid/content/Context;)V

    .line 141
    :cond_0
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onPause()V

    .line 143
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->stopSession()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 124
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onResume()V

    .line 126
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->startSession()V

    .line 128
    invoke-static {p0}, Lorg/mozilla/focus/utils/Settings;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldUseSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onStop()V

    .line 150
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->stopMainActivity()V

    .line 151
    return-void
.end method

.method protected showBrowserScreenForCurrentSession()V
    .locals 7

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getCurrentSessionForActivity()Lorg/mozilla/focus/session/Session;

    move-result-object v0

    .line 232
    .local v0, "currentSession":Lorg/mozilla/focus/session/Session;
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 234
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v3, "browser"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 235
    .local v1, "fragment":Lorg/mozilla/focus/fragment/BrowserFragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/mozilla/focus/session/Session;->isSameAs(Lorg/mozilla/focus/session/Session;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f090049

    .line 242
    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->createForSession(Lorg/mozilla/focus/session/Session;)Lorg/mozilla/focus/fragment/BrowserFragment;

    move-result-object v5

    const-string v6, "browser"

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

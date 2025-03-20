.class public Lorg/mozilla/focus/widget/DefaultBrowserPreference;
.super Landroid/preference/Preference;
.source "DefaultBrowserPreference.java"


# instance fields
.field private switchView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 41
    const v2, 0x7f0b005a

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->setWidgetLayoutResource(I)V

    .line 43
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00dc

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method private openDefaultAppsSettings(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->openSumoPage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openSumoPage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    const-string v2, "https://support.mozilla.org/kb/set-firefox-focus-default-browser-android"

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 89
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    .line 90
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 53
    const v0, 0x7f09010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->switchView:Landroid/widget/Switch;

    .line 55
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->update()V

    .line 56
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 70
    invoke-direct {p0, v0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->openDefaultAppsSettings(Landroid/content/Context;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->openSumoPage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->switchView:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Lorg/mozilla/focus/utils/Browsers;

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http://www.mozilla.org"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/utils/Browsers;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .local v0, "browsers":Lorg/mozilla/focus/utils/Browsers;
    iget-object v1, p0, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->switchView:Landroid/widget/Switch;

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/focus/utils/Browsers;->isDefaultBrowser(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 63
    .end local v0    # "browsers":Lorg/mozilla/focus/utils/Browsers;
    :cond_0
    return-void
.end method

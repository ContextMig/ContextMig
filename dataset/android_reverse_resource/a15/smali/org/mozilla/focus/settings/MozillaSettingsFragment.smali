.class public final Lorg/mozilla/focus/settings/MozillaSettingsFragment;
.super Lorg/mozilla/focus/settings/BaseSettingsFragment;
.source "MozillaSettingsFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/settings/MozillaSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMozillaSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MozillaSettingsFragment.kt\norg/mozilla/focus/settings/MozillaSettingsFragment\n*L\n1#1,82:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/settings/MozillaSettingsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/settings/MozillaSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/settings/MozillaSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->Companion:Lorg/mozilla/focus/settings/MozillaSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f130002

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->addPreferencesFromResource(I)V

    .line 25
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "preferenceManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 40
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPause()V

    .line 41
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 47
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/settings/MozillaSettingsFragment;

    .line 49
    .local v0, "$receiver":Lorg/mozilla/focus/settings/MozillaSettingsFragment;
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    const-string v3, "focus:about"

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 51
    nop

    .line 67
    .end local v0    # "$receiver":Lorg/mozilla/focus/settings/MozillaSettingsFragment;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 47
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/settings/MozillaSettingsFragment;

    .line 53
    .restart local v0    # "$receiver":Lorg/mozilla/focus/settings/MozillaSettingsFragment;
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    const-string v3, "https://support.mozilla.org/kb/what-firefox-focus-android"

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 55
    nop

    .line 52
    goto :goto_1

    .line 56
    .end local v0    # "$receiver":Lorg/mozilla/focus/settings/MozillaSettingsFragment;
    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/settings/MozillaSettingsFragment;

    .line 57
    .restart local v0    # "$receiver":Lorg/mozilla/focus/settings/MozillaSettingsFragment;
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    const-string v3, "focus:rights"

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 59
    nop

    .line 56
    goto :goto_1

    .line 60
    .end local v0    # "$receiver":Lorg/mozilla/focus/settings/MozillaSettingsFragment;
    :cond_4
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isKlarBuild()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    const-string v1, "https://www.mozilla.org/de/privacy/firefox-klar/"

    .line 61
    :goto_2
    invoke-virtual {v2, v3, v1}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 64
    :cond_5
    const-string v1, "https://www.mozilla.org/privacy/firefox-focus/"

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onResume()V

    .line 30
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "preferenceManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 33
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type org.mozilla.focus.settings.BaseSettingsFragment.ActionBarUpdater"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    .line 34
    .local v0, "updater":Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;
    const v1, 0x7f0f00d5

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateTitle(I)V

    .line 35
    const v1, 0x7f080084

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 36
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->settingsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

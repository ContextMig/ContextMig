.class public final Lorg/mozilla/focus/settings/SearchSettingsFragment;
.super Lorg/mozilla/focus/settings/BaseSettingsFragment;
.source "SearchSettingsFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/settings/SearchSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchSettingsFragment.kt\norg/mozilla/focus/settings/SearchSettingsFragment\n*L\n1#1,62:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/settings/SearchSettingsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/settings/SearchSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/settings/SearchSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/settings/SearchSettingsFragment;->Companion:Lorg/mozilla/focus/settings/SearchSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/settings/SearchSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/settings/SearchSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f130007

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->addPreferencesFromResource(I)V

    .line 21
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "preferenceManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPause()V

    .line 37
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 40
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/settings/SearchSettingsFragment;

    .line 42
    .local v0, "$receiver":Lorg/mozilla/focus/settings/SearchSettingsFragment;
    new-instance v1, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;-><init>()V

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->navigateToFragment(Landroid/app/Fragment;)V

    .line 43
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openSearchSettingsEvent()V

    .line 44
    nop

    .line 47
    .end local v0    # "$receiver":Lorg/mozilla/focus/settings/SearchSettingsFragment;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 40
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Lorg/mozilla/focus/autocomplete/AutocompleteSettingsFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/autocomplete/AutocompleteSettingsFragment;-><init>()V

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->navigateToFragment(Landroid/app/Fragment;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 24
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onResume()V

    .line 26
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "preferenceManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 29
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SearchSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type org.mozilla.focus.settings.BaseSettingsFragment.ActionBarUpdater"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    .line 30
    .local v0, "updater":Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;
    const v1, 0x7f0f00d8

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateTitle(I)V

    .line 31
    const v1, 0x7f080084

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 32
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

    .line 52
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->settingsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

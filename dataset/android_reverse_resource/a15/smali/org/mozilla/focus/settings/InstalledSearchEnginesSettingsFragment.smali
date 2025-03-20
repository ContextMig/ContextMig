.class public final Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;
.super Lorg/mozilla/focus/settings/BaseSettingsFragment;
.source "InstalledSearchEnginesSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstalledSearchEnginesSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstalledSearchEnginesSettingsFragment.kt\norg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment\n*L\n1#1,93:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->Companion:Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method private final refetchSearchEngines()V
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 87
    :cond_0
    const v1, 0x7f130006

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->addPreferencesFromResource(I)V

    .line 89
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f00b6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 90
    .local v0, "pref":Landroid/preference/Preference;
    if-nez v0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type org.mozilla.focus.search.RadioSearchEngineListPreference"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v0, Lorg/mozilla/focus/search/RadioSearchEngineListPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    invoke-virtual {v0}, Lorg/mozilla/focus/search/RadioSearchEngineListPreference;->refetchSearchEngines()V

    .line 91
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->setHasOptionsMenu(Z)V

    .line 27
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 41
    const v0, 0x7f0c0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 42
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    .line 54
    :pswitch_0
    new-instance v0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;

    invoke-direct {v0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;-><init>()V

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->navigateToFragment(Landroid/app/Fragment;)V

    .line 55
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->menuRemoveEnginesEvent()V

    move v0, v1

    .line 56
    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v2, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "activity"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->restoreDefaultSearchEngines(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->refetchSearchEngines()V

    .line 61
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->menuRestoreEnginesEvent()V

    move v0, v1

    .line 62
    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900aa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 69
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    invoke-direct {v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;-><init>()V

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->navigateToFragment(Landroid/app/Fragment;)V

    .line 72
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->menuAddSearchEngineEvent()V

    .line 73
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 46
    if-eqz p1, :cond_0

    const v1, 0x7f0900ab

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    .local v0, "it":Landroid/view/MenuItem;
    sget-object v2, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "activity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->hasAllDefaultSearchEngines(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 48
    nop

    .line 49
    .end local v0    # "it":Landroid/view/MenuItem;
    :cond_0
    return-void

    .line 47
    .restart local v0    # "it":Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onResume()V

    .line 31
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->getActionBarUpdater()Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    move-result-object v0

    .line 32
    .local v0, "$receiver":Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;
    const v1, 0x7f0f00fb

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateTitle(I)V

    .line 33
    const v1, 0x7f080084

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 34
    nop

    .line 31
    nop

    .line 36
    invoke-direct {p0}, Lorg/mozilla/focus/settings/InstalledSearchEnginesSettingsFragment;->refetchSearchEngines()V

    .line 37
    return-void
.end method

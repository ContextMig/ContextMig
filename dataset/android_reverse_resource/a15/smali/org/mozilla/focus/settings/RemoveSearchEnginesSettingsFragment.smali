.class public final Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;
.super Lorg/mozilla/focus/settings/BaseSettingsFragment;
.source "RemoveSearchEnginesSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveSearchEnginesSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveSearchEnginesSettingsFragment.kt\norg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment\n*L\n1#1,72:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->Companion:Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->setHasOptionsMenu(Z)V

    .line 27
    const v0, 0x7f130005

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->addPreferencesFromResource(I)V

    .line 28
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

    .line 39
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 40
    const v0, 0x7f0c0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 41
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v2, "item"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 57
    :goto_0
    return v2

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f00ab

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 62
    .local v1, "pref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type org.mozilla.focus.search.MultiselectSearchEngineListPreference"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v1, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getCheckedEngineIds()Ljava/util/Set;

    move-result-object v0

    .line 63
    .local v0, "enginesToRemove":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->removeSearchEnginesEvent(I)V

    .line 64
    sget-object v3, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "activity"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    const-string v4, "enginesToRemove"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->removeSearchEngines(Landroid/content/Context;Ljava/util/Set;)V

    .line 65
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900a3
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 45
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;-><init>(Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;Landroid/view/Menu;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onResume()V

    .line 32
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getActionBarUpdater()Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    move-result-object v0

    .line 33
    .local v0, "$receiver":Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;
    const v1, 0x7f0f00fd

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateTitle(I)V

    .line 34
    const v1, 0x7f080084

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 35
    nop

    .line 32
    nop

    .line 36
    return-void
.end method

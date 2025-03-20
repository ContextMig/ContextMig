.class final Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;
.super Ljava/lang/Object;
.source "RemoveSearchEnginesSettingsFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveSearchEnginesSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveSearchEnginesSettingsFragment.kt\norg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1\n*L\n1#1,72:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $menu:Landroid/view/Menu;

.field final synthetic this$0:Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;->this$0:Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;

    iput-object p2, p0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;->$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 46
    iget-object v2, p0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;->this$0:Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;

    invoke-virtual {v2}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 47
    iget-object v2, p0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;->this$0:Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;

    invoke-virtual {v2}, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f00ab

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type org.mozilla.focus.search.MultiselectSearchEngineListPreference"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v1, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;

    .line 50
    .local v1, "pref":Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;
    iget-object v2, p0, Lorg/mozilla/focus/settings/RemoveSearchEnginesSettingsFragment$onPrepareOptionsMenu$1;->$menu:Landroid/view/Menu;

    if-eqz v2, :cond_1

    const v3, 0x7f0900a3

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    .local v0, "it":Landroid/view/MenuItem;
    invoke-virtual {v1}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->atLeastOneEngineChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lorg/mozilla/focus/utils/ViewUtils;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    .line 52
    nop

    .line 53
    .end local v0    # "it":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

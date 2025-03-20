.class public final Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
.super Lorg/mozilla/focus/settings/BaseSettingsFragment;
.source "ManualAddSearchEngineSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;,
        Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LOGTAG:Ljava/lang/String; = "ManualAddSearchEngine"

# The value of this static final field might be set in the static constructor
.field private static final SEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS:I = 0xfa0

# The value of this static final field might be set in the static constructor
.field private static final VALID_RESPONSE_CODE_UPPER_BOUND:I = 0x12c


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activeAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private menuItemForActiveAsyncTask:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->Companion:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    .line 135
    const-string v0, "ManualAddSearchEngine"

    sput-object v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->LOGTAG:Ljava/lang/String;

    .line 136
    const/16 v0, 0xfa0

    sput v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->SEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS:I

    .line 137
    const/16 v0, 0x12c

    sput v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->VALID_RESPONSE_CODE_UPPER_BOUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$findManualAddSearchEnginePreference(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;I)Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
    .param p1, "id"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->findManualAddSearchEnginePreference(I)Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getLOGTAG$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMenuItemForActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->menuItemForActiveAsyncTask:Landroid/view/MenuItem;

    return-object v0
.end method

.method public static final synthetic access$getSEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS$cp()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->SEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS:I

    return v0
.end method

.method public static final synthetic access$getVALID_RESPONSE_CODE_UPPER_BOUND$cp()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->VALID_RESPONSE_CODE_UPPER_BOUND:I

    return v0
.end method

.method public static final synthetic access$setActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/os/AsyncTask;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
    .param p1, "<set-?>"    # Landroid/os/AsyncTask;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->activeAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public static final synthetic access$setMenuItemForActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/view/MenuItem;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
    .param p1, "<set-?>"    # Landroid/view/MenuItem;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->menuItemForActiveAsyncTask:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic access$setUiIsValidatingAsync(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;ZLandroid/view/MenuItem;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
    .param p1, "isValidating"    # Z
    .param p2, "saveMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->setUiIsValidatingAsync(ZLandroid/view/MenuItem;)V

    return-void
.end method

.method private final findManualAddSearchEnginePreference(I)Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.mozilla.focus.search.ManualAddSearchEnginePreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;

    return-object v0
.end method

.method private final setUiIsValidatingAsync(ZLandroid/view/MenuItem;)V
    .locals 2
    .param p1, "isValidating"    # Z
    .param p2, "saveMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 124
    const v1, 0x7f0f00a9

    invoke-direct {p0, v1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->findManualAddSearchEnginePreference(I)Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;

    move-result-object v0

    .line 125
    .local v0, "pref":Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;
    invoke-virtual {v0, p1}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->setProgressViewShown(Z)V

    .line 127
    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 128
    return-void

    .line 127
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->setHasOptionsMenu(Z)V

    .line 45
    const v0, 0x7f130001

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->addPreferencesFromResource(I)V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 79
    if-eqz p2, :cond_0

    const v0, 0x7f0c0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onDestroyView()V

    .line 120
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/focus/utils/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    new-instance v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$openLearnMore$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$openLearnMore$1;-><init>(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 90
    .local v0, "openLearnMore":Lkotlin/jvm/functions/Function0;
    new-instance v1, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;-><init>(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/view/MenuItem;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 109
    .local v1, "saveSearchEngine":Lkotlin/jvm/functions/Function0;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    :goto_0
    const v3, 0x7f090096

    if-nez v2, :cond_3

    .line 111
    :cond_0
    const v3, 0x7f0900ac

    if-nez v2, :cond_4

    .line 112
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 113
    :goto_1
    return v2

    .line 109
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 113
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPause()V

    .line 70
    iget-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->activeAsyncTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->activeAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 72
    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->menuItemForActiveAsyncTask:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v2}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->setUiIsValidatingAsync(ZLandroid/view/MenuItem;)V

    move-object v0, v1

    .line 74
    check-cast v0, Landroid/os/AsyncTask;

    iput-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->activeAsyncTask:Landroid/os/AsyncTask;

    .line 75
    check-cast v1, Landroid/view/MenuItem;

    iput-object v1, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->menuItemForActiveAsyncTask:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const v3, 0x7f080087

    .line 49
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onResume()V

    .line 52
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v2, v1, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    if-eqz v1, :cond_1

    invoke-interface {v1, v3}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getActionBarUpdater()Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    move-result-object v0

    .line 55
    .local v0, "updater":Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;
    const v1, 0x7f0f0026

    invoke-interface {v0, v1}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateTitle(I)V

    .line 56
    invoke-interface {v0, v3}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 57
    return-void
.end method

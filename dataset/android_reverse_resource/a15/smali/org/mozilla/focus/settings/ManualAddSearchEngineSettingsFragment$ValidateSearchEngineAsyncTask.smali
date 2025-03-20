.class final Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;
.super Landroid/os/AsyncTask;
.source "ManualAddSearchEngineSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValidateSearchEngineAsyncTask"
.end annotation

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


# instance fields
.field private final engineName:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private final thatWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "that"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
    .param p2, "engineName"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const-string v0, "that"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->engineName:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->query:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->thatWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final showServerError(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;)V
    .locals 3
    .param p1, "that"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    .prologue
    .line 218
    const v1, 0x7f0f00a9

    invoke-static {p1, v1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$findManualAddSearchEnginePreference(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;I)Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;

    move-result-object v0

    .line 219
    .local v0, "pref":Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;
    const v1, 0x7f0f0064

    invoke-virtual {p1, v1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "that.getString(R.string.error_hostLookup_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->setSearchQueryErrorText(Ljava/lang/String;)V

    .line 220
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "p0"    # [Ljava/lang/Void;

    .prologue
    const-string v1, "p0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->Companion:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    iget-object v2, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->isValidSearchQueryURL(Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, "isValidSearchQuery":Z
    invoke-static {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->saveCustomSearchEngineEvent(Z)V

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "isValidSearchQuery"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->Companion:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    invoke-static {v1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->access$getLOGTAG$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateSearchEngineAsyncTask has been cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->thatWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    .line 198
    .local v0, "that":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
    if-nez v0, :cond_1

    .line 199
    sget-object v1, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->Companion:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    invoke-static {v1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->access$getLOGTAG$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fragment or menu item no longer exists when search query validation async task returned."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    sget-object v3, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "that.activity"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    iget-object v4, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->engineName:Ljava/lang/String;

    iget-object v5, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->query:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->addSearchEngine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    invoke-virtual {v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0f0104

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 207
    invoke-virtual {v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 210
    :goto_1
    const/4 v1, 0x0

    invoke-static {v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$getMenuItemForActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$setUiIsValidatingAsync(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;ZLandroid/view/MenuItem;)V

    move-object v1, v2

    .line 213
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$setActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/os/AsyncTask;)V

    .line 214
    check-cast v2, Landroid/view/MenuItem;

    invoke-static {v0, v2}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$setMenuItemForActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0, v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->showServerError(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;)V

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 174
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

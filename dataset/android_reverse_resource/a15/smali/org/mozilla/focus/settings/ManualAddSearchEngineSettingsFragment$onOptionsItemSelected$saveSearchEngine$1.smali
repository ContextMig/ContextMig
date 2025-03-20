.class final Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManualAddSearchEngineSettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Landroid/view/MenuItem;

.field final synthetic this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/view/MenuItem;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    iput-object p2, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->$item:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 91
    iget-object v6, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    invoke-virtual {v6}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f090067

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v9, "view.findViewById<EditText>(R.id.edit_engine_name)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "engineName":Ljava/lang/String;
    iget-object v6, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    invoke-virtual {v6}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v9, 0x7f09006a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v9, "view.findViewById<EditTe\u2026(R.id.edit_search_string)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "searchQuery":Ljava/lang/String;
    iget-object v6, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    const v9, 0x7f0f00a9

    invoke-static {v6, v9}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$findManualAddSearchEnginePreference(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;I)Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;

    move-result-object v3

    .line 95
    .local v3, "pref":Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;
    invoke-virtual {v3, v0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->validateEngineNameAndShowError(Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, "engineValid":Z
    invoke-virtual {v3, v4}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->validateSearchQueryAndShowError(Ljava/lang/String;)Z

    move-result v5

    .line 97
    .local v5, "searchValid":Z
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    move v2, v7

    .line 99
    .local v2, "isPartialSuccess":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 100
    iget-object v6, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    invoke-virtual {v6}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/focus/utils/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 101
    iget-object v6, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    iget-object v9, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->$item:Landroid/view/MenuItem;

    invoke-static {v6, v7, v9}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$setUiIsValidatingAsync(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;ZLandroid/view/MenuItem;)V

    .line 102
    iget-object v6, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    new-instance v7, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;

    iget-object v9, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    invoke-direct {v7, v9, v0, v4}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;-><init>(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$ValidateSearchEngineAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$setActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/os/AsyncTask;)V

    .line 103
    iget-object v6, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    iget-object v7, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$saveSearchEngine$1;->$item:Landroid/view/MenuItem;

    invoke-static {v6, v7}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$setMenuItemForActiveAsyncTask$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;Landroid/view/MenuItem;)V

    .line 106
    :goto_1
    return-void

    .end local v2    # "isPartialSuccess":Z
    :cond_0
    move v2, v8

    .line 97
    goto :goto_0

    .line 105
    .restart local v2    # "isPartialSuccess":Z
    :cond_1
    invoke-static {v8}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->saveCustomSearchEngineEvent(Z)V

    goto :goto_1
.end method

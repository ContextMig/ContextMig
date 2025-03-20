.class public final Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;
.super Landroid/preference/Preference;
.source "ManualAddSearchEnginePreference.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

# The value of this static final field might be set in the static constructor
.field private static final SEARCH_ENGINE_NAME_KEY:Ljava/lang/String; = "search-engine-name"

# The value of this static final field might be set in the static constructor
.field private static final SEARCH_QUERY_KEY:Ljava/lang/String; = "search-query"

# The value of this static final field might be set in the static constructor
.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "super-state"


# instance fields
.field private engineNameEditText:Landroid/widget/EditText;

.field private engineNameErrorLayout:Landroid/support/design/widget/TextInputLayout;

.field private progressView:Landroid/widget/ProgressBar;

.field private savedSearchEngineName:Ljava/lang/String;

.field private savedSearchQuery:Ljava/lang/String;

.field private searchQueryEditText:Landroid/widget/EditText;

.field private searchQueryErrorLayout:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    .line 123
    const-string v0, "super-state"

    sput-object v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->SUPER_STATE_KEY:Ljava/lang/String;

    .line 124
    const-string v0, "search-engine-name"

    sput-object v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->SEARCH_ENGINE_NAME_KEY:Ljava/lang/String;

    .line 125
    const-string v0, "search-query"

    sput-object v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->SEARCH_QUERY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getSEARCH_ENGINE_NAME_KEY$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->SEARCH_ENGINE_NAME_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSEARCH_QUERY_KEY$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->SEARCH_QUERY_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSUPER_STATE_KEY$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->SUPER_STATE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method private final buildTextWatcherForErrorLayout(Landroid/support/design/widget/TextInputLayout;)Landroid/text/TextWatcher;
    .locals 1
    .param p1, "errorLayout"    # Landroid/support/design/widget/TextInputLayout;

    .prologue
    .line 111
    new-instance v0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$buildTextWatcherForErrorLayout$1;

    invoke-direct {v0, p1}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$buildTextWatcherForErrorLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    check-cast v0, Landroid/text/TextWatcher;

    return-object v0
.end method

.method private final updateState()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->savedSearchEngineName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->savedSearchQuery:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameErrorLayout:Landroid/support/design/widget/TextInputLayout;

    .line 39
    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryErrorLayout:Landroid/support/design/widget/TextInputLayout;

    .line 41
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameEditText:Landroid/widget/EditText;

    .line 42
    iget-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameErrorLayout:Landroid/support/design/widget/TextInputLayout;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, v2}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->buildTextWatcherForErrorLayout(Landroid/support/design/widget/TextInputLayout;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    :cond_1
    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryEditText:Landroid/widget/EditText;

    .line 44
    iget-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryErrorLayout:Landroid/support/design/widget/TextInputLayout;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v2}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->buildTextWatcherForErrorLayout(Landroid/support/design/widget/TextInputLayout;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    :cond_3
    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->progressView:Landroid/widget/ProgressBar;

    .line 48
    invoke-direct {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->updateState()V

    .line 50
    iget-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameEditText:Landroid/widget/EditText;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lorg/mozilla/focus/utils/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 52
    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 56
    if-nez p1, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.os.Bundle"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    invoke-static {v1}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->access$getSUPER_STATE_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 58
    sget-object v1, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    invoke-static {v1}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->access$getSEARCH_ENGINE_NAME_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->savedSearchEngineName:Ljava/lang/String;

    .line 59
    sget-object v1, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    invoke-static {v1}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->access$getSEARCH_QUERY_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->savedSearchQuery:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 64
    .local v1, "state":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->access$getSUPER_STATE_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    sget-object v2, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->access$getSEARCH_ENGINE_NAME_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v2, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->Companion:Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;->access$getSEARCH_QUERY_KEY$p(Lorg/mozilla/focus/search/ManualAddSearchEnginePreference$Companion;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    check-cast v0, Landroid/os/Parcelable;

    .end local v0    # "bundle":Landroid/os/Bundle;
    return-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    move-object v2, v3

    .line 66
    goto :goto_0
.end method

.method public final setProgressViewShown(Z)V
    .locals 2
    .param p1, "isShown"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->progressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    :cond_0
    return-void

    .line 103
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final setSearchQueryErrorText(Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    const-string v0, "err"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryErrorLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "err":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public final validateEngineNameAndShowError(Ljava/lang/String;)Z
    .locals 4
    .param p1, "engineName"    # Ljava/lang/String;

    .prologue
    const-string v1, "engineName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 73
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0106

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->engineNameErrorLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    if-nez v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 77
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    sget-object v1, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->isSearchEngineNameUnique(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-virtual {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    .restart local v0    # "errorMessage":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final validateSearchQueryAndShowError(Ljava/lang/String;)Z
    .locals 3
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    const-string v1, "searchQuery"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 88
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0107

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->searchQueryErrorLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    if-nez v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 90
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lorg/mozilla/focus/utils/UrlUtils;->isValidSearchQueryUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/focus/search/ManualAddSearchEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    .restart local v0    # "errorMessage":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.class public final Lorg/mozilla/focus/search/SearchEnginePreference;
.super Landroid/preference/Preference;
.source "SearchEnginePreference.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lorg/mozilla/focus/search/SearchEnginePreference;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object p1, p0, Lorg/mozilla/focus/search/SearchEnginePreference;->context:Landroid/content/Context;

    return-void
.end method

.method private final getDefaultSearchEngineName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    invoke-virtual {v0}, Lorg/mozilla/focus/Components;->getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lorg/mozilla/focus/search/SearchEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v2, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    iget-object v3, p0, Lorg/mozilla/focus/search/SearchEnginePreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/utils/Settings;->getDefaultSearchEngineName()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lmozilla/components/browser/search/SearchEngineManager;->getDefaultSearchEngine(Landroid/content/Context;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v0

    invoke-virtual {v0}, Lmozilla/components/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/mozilla/focus/search/SearchEnginePreference;->getDefaultSearchEngineName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/search/SearchEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0}, Lorg/mozilla/focus/search/SearchEnginePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "preferenceManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 33
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 34
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/mozilla/focus/search/SearchEnginePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "preferenceManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 38
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 39
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/mozilla/focus/search/SearchEnginePreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lorg/mozilla/focus/search/SearchEnginePreference;->getDefaultSearchEngineName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/search/SearchEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    return-void
.end method

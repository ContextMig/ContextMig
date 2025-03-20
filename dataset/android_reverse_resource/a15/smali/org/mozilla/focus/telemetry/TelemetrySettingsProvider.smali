.class public final Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;
.super Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;
.source "TelemetrySettingsProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final prefKeyDefaultBrowser:Ljava/lang/String;

.field private final prefKeySearchEngine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;-><init>()V

    iput-object p1, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->context:Landroid/content/Context;

    .line 27
    iget-object v1, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0f00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026pref_key_default_browser)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->prefKeyDefaultBrowser:Ljava/lang/String;

    .line 29
    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026g.pref_key_search_engine)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->prefKeySearchEngine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->prefKeyDefaultBrowser:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->prefKeySearchEngine:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-super {p0, p1}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v3, "key"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->prefKeyDefaultBrowser:Ljava/lang/String;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v3

    const-string v4, "TelemetryHolder.get()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mozilla/telemetry/Telemetry;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v3

    const-string v4, "TelemetryHolder.get().configuration"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lorg/mozilla/focus/utils/Browsers;

    const-string v3, "http://www.mozilla.org"

    invoke-direct {v0, v1, v3}, Lorg/mozilla/focus/utils/Browsers;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .local v0, "browsers":Lorg/mozilla/focus/utils/Browsers;
    invoke-virtual {v0, v1}, Lorg/mozilla/focus/utils/Browsers;->isDefaultBrowser(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Boolean.toStri\u2026sDefaultBrowser(context))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .end local v0    # "browsers":Lorg/mozilla/focus/utils/Browsers;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v2

    .line 53
    :cond_1
    iget-object v3, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->prefKeySearchEngine:Ljava/lang/String;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-super {p0, p1}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 59
    sget-object v3, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    invoke-virtual {v3}, Lorg/mozilla/focus/Components;->getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->context:Landroid/content/Context;

    .line 61
    sget-object v5, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    iget-object v6, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/focus/utils/Settings;->getDefaultSearchEngineName()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v3, v4, v5}, Lmozilla/components/browser/search/SearchEngineManager;->getDefaultSearchEngine(Landroid/content/Context;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v3

    invoke-virtual {v3}, Lmozilla/components/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 63
    .local v2, "value":Ljava/lang/Object;
    :cond_2
    sget-object v4, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;->context:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->isCustomSearchEngine(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const-string v2, "custom"

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "super.getValue(key)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public final Lorg/mozilla/focus/search/RadioSearchEngineListPreference;
.super Lorg/mozilla/focus/search/SearchEngineListPreference;
.source "RadioSearchEngineListPreference.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/search/SearchEngineListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/focus/search/SearchEngineListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f0b0061

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const-string v2, "group"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lorg/mozilla/focus/search/RadioSearchEngineListPreference;->getSearchEngines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/search/SearchEngine;

    .line 40
    .local v0, "newDefaultEngine":Lmozilla/components/browser/search/SearchEngine;
    sget-object v2, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "group.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/mozilla/focus/utils/Settings;->setDefaultSearchEngine(Lmozilla/components/browser/search/SearchEngine;)V

    .line 41
    sget-object v2, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {v0}, Lmozilla/components/browser/search/SearchEngine;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mozilla/focus/search/RadioSearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->isCustomSearchEngine(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v1, "custom"

    .line 45
    .local v1, "source":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->setDefaultSearchEngineEvent(Ljava/lang/String;)V

    .line 46
    return-void

    .line 44
    .end local v1    # "source":Ljava/lang/String;
    :cond_0
    const-string v1, "bundled"

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v1, "parent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1}, Lorg/mozilla/focus/search/SearchEngineListPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lorg/mozilla/focus/search/RadioSearchEngineListPreference;->getSearchEngineGroup()Landroid/widget/RadioGroup;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p0, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .end local p0    # "this":Lorg/mozilla/focus/search/RadioSearchEngineListPreference;
    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 31
    return-object v0
.end method

.method protected updateDefaultItem(Landroid/widget/CompoundButton;)V
    .locals 1
    .param p1, "defaultButton"    # Landroid/widget/CompoundButton;

    .prologue
    const-string v0, "defaultButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 36
    return-void
.end method

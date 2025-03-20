.class public abstract Lorg/mozilla/focus/search/SearchEngineListPreference;
.super Landroid/preference/Preference;
.source "SearchEngineListPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchEngineListPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchEngineListPreference.kt\norg/mozilla/focus/search/SearchEngineListPreference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n874#2:113\n*E\n*S KotlinDebug\n*F\n+ 1 SearchEngineListPreference.kt\norg/mozilla/focus/search/SearchEngineListPreference\n*L\n45#1:113\n*E\n"
.end annotation


# instance fields
.field private searchEngineGroup:Landroid/widget/RadioGroup;

.field private searchEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;"
        }
    .end annotation
.end field


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

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngines:Ljava/util/List;

    .line 32
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/search/SearchEngineListPreference;->setLayoutResource(I)V

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

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngines:Ljava/util/List;

    .line 36
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/search/SearchEngineListPreference;->setLayoutResource(I)V

    return-void
.end method

.method public static final synthetic access$refreshSearchEngineViews(Lorg/mozilla/focus/search/SearchEngineListPreference;Landroid/content/Context;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/search/SearchEngineListPreference;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/SearchEngineListPreference;->refreshSearchEngineViews(Landroid/content/Context;)V

    return-void
.end method

.method private final makeButtonFromSearchEngine(Lmozilla/components/browser/search/SearchEngine;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)Landroid/widget/CompoundButton;
    .locals 7
    .param p1, "engine"    # Lmozilla/components/browser/search/SearchEngine;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0}, Lorg/mozilla/focus/search/SearchEngineListPreference;->getItemResId()I

    move-result v4

    invoke-virtual {p2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type android.widget.CompoundButton"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    check-cast v0, Landroid/widget/CompoundButton;

    .line 103
    .local v0, "buttonItem":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Lmozilla/components/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v4, 0x7f0700b1

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 105
    .local v3, "iconSize":I
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lmozilla/components/browser/search/SearchEngine;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, p3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    .local v2, "engineIcon":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v6, v6, v3, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .end local v2    # "engineIcon":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v0, v2, v5, v4, v5}, Landroid/widget/CompoundButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-object v0
.end method

.method private final refreshSearchEngineViews(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iget-object v7, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngineGroup:Landroid/widget/RadioGroup;

    if-nez v7, :cond_1

    .line 95
    :cond_0
    return-void

    .line 72
    :cond_1
    sget-object v7, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    invoke-virtual {v7}, Lorg/mozilla/focus/Components;->getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v7

    .line 74
    sget-object v8, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    invoke-virtual {v8, p1}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mozilla/focus/utils/Settings;->getDefaultSearchEngineName()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-virtual {v7, p1, v8}, Lmozilla/components/browser/search/SearchEngineManager;->getDefaultSearchEngine(Landroid/content/Context;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v7

    invoke-virtual {v7}, Lmozilla/components/browser/search/SearchEngine;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "defaultSearchEngine":Ljava/lang/String;
    iget-object v7, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngineGroup:Landroid/widget/RadioGroup;

    if-nez v7, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v7}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 80
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 81
    const/4 v7, -0x1

    .line 82
    const/4 v8, -0x2

    .line 80
    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 84
    .local v6, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    const/4 v4, 0x0

    iget-object v7, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngines:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_0
    if-ge v4, v8, :cond_0

    .line 85
    iget-object v7, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngines:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmozilla/components/browser/search/SearchEngine;

    .line 86
    .local v1, "engine":Lmozilla/components/browser/search/SearchEngine;
    invoke-virtual {v1}, Lmozilla/components/browser/search/SearchEngine;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "engineId":Ljava/lang/String;
    const-string v7, "layoutInflater"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "context.resources"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v5, v7}, Lorg/mozilla/focus/search/SearchEngineListPreference;->makeButtonFromSearchEngine(Lmozilla/components/browser/search/SearchEngine;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)Landroid/widget/CompoundButton;

    move-result-object v3

    .line 88
    .local v3, "engineItem":Landroid/widget/CompoundButton;
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setId(I)V

    .line 89
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    invoke-virtual {p0, v3}, Lorg/mozilla/focus/search/SearchEngineListPreference;->updateDefaultItem(Landroid/widget/CompoundButton;)V

    .line 93
    :cond_3
    iget-object v9, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngineGroup:Landroid/widget/RadioGroup;

    if-nez v9, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast v3, Landroid/view/View;

    .end local v3    # "engineItem":Landroid/widget/CompoundButton;
    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v3, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    .local v4, "i":I
    goto :goto_0
.end method


# virtual methods
.method protected abstract getItemResId()I
.end method

.method protected final getSearchEngineGroup()Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngineGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method protected final getSearchEngines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngines:Ljava/util/List;

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v2, "parent"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "layoutView":Landroid/view/View;
    const v2, 0x7f0900e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngineGroup:Landroid/widget/RadioGroup;

    .line 42
    iget-object v2, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngineGroup:Landroid/widget/RadioGroup;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    invoke-virtual {v2}, Lorg/mozilla/focus/Components;->getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lmozilla/components/browser/search/SearchEngineManager;->getSearchEngines(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 113
    new-instance v3, Lorg/mozilla/focus/search/SearchEngineListPreference$onCreateView$$inlined$sortedBy$1;

    invoke-direct {v3}, Lorg/mozilla/focus/search/SearchEngineListPreference$onCreateView$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngines:Ljava/util/List;

    .line 47
    invoke-direct {p0, v0}, Lorg/mozilla/focus/search/SearchEngineListPreference;->refreshSearchEngineViews(Landroid/content/Context;)V

    .line 49
    const-string v2, "layoutView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final refetchSearchEngines()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->getUI()Lkotlinx/coroutines/experimental/android/HandlerContext;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;

    invoke-direct {v3, p0, v1}, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;-><init>(Lorg/mozilla/focus/search/SearchEngineListPreference;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x6

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 62
    return-void
.end method

.method protected final setSearchEngines(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/mozilla/focus/search/SearchEngineListPreference;->searchEngines:Ljava/util/List;

    return-void
.end method

.method protected abstract updateDefaultItem(Landroid/widget/CompoundButton;)V
.end method

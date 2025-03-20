.class public final Lorg/mozilla/focus/browser/DisplayToolbar;
.super Landroid/support/design/widget/AppBarLayout;
.source "DisplayToolbar.kt"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayToolbar.kt\norg/mozilla/focus/browser/DisplayToolbar\n*L\n1#1,64:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final collapsedProgressTranslationY$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/mozilla/focus/browser/DisplayToolbar;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "collapsedProgressTranslationY"

    const-string v5, "getCollapsedProgressTranslationY()F"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/mozilla/focus/browser/DisplayToolbar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lorg/mozilla/focus/browser/DisplayToolbar$collapsedProgressTranslationY$2;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/browser/DisplayToolbar$collapsedProgressTranslationY$2;-><init>(Lorg/mozilla/focus/browser/DisplayToolbar;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/browser/DisplayToolbar;->collapsedProgressTranslationY$delegate:Lkotlin/Lazy;

    move-object v0, p0

    .line 26
    check-cast v0, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/browser/DisplayToolbar;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private final getCollapsedProgressTranslationY()F
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/mozilla/focus/browser/DisplayToolbar;->collapsedProgressTranslationY$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/mozilla/focus/browser/DisplayToolbar;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/focus/browser/DisplayToolbar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/browser/DisplayToolbar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/browser/DisplayToolbar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/browser/DisplayToolbar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 10
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-string v3, "appBarLayout"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    .line 35
    .local v2, "totalScrollRange":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v4

    .line 39
    .local v1, "isCollapsed":Z
    :goto_0
    sget v3, Lorg/mozilla/focus/R$id;->progress:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/browser/DisplayToolbar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/mozilla/focus/widget/AnimatedProgressBar;

    const-string v5, "progress"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/mozilla/focus/browser/DisplayToolbar;->getCollapsedProgressTranslationY()F

    move-result v5

    :goto_1
    invoke-virtual {v3, v5}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setTranslationY(F)V

    .line 41
    if-eqz p2, :cond_0

    if-eqz v1, :cond_3

    .line 46
    :cond_0
    sget v3, Lorg/mozilla/focus/R$id;->toolbarContent:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/browser/DisplayToolbar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "toolbarContent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 62
    :goto_2
    return-void

    .line 35
    .end local v1    # "isCollapsed":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isCollapsed":Z
    :cond_2
    move v5, v6

    .line 39
    goto :goto_1

    .line 52
    :cond_3
    const/4 v3, -0x1

    int-to-float v3, v3

    const/high16 v5, 0x42c80000    # 100.0f

    int-to-float v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    div-float/2addr v5, v7

    int-to-float v7, p2

    mul-float/2addr v5, v7

    const/16 v7, 0x64

    int-to-float v7, v7

    div-float/2addr v5, v7

    mul-float v0, v3, v5

    .line 55
    .local v0, "alpha":F
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 56
    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 59
    int-to-float v3, v4

    sub-float v0, v3, v0

    .line 61
    sget v3, Lorg/mozilla/focus/R$id;->toolbarContent:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/browser/DisplayToolbar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "toolbarContent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

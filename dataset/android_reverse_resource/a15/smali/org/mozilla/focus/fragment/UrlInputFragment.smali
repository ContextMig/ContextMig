.class public final Lorg/mozilla/focus/fragment/UrlInputFragment;
.super Lorg/mozilla/focus/locale/LocaleAwareFragment;
.source "UrlInputFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUrlInputFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrlInputFragment.kt\norg/mozilla/focus/fragment/UrlInputFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,594:1\n1519#2,2:595\n60#3:597\n31#3,23:598\n60#3:621\n31#3,23:622\n60#3:645\n31#3,23:646\n*E\n*S KotlinDebug\n*F\n+ 1 UrlInputFragment.kt\norg/mozilla/focus/fragment/UrlInputFragment\n*L\n171#1,2:595\n488#1:597\n488#1,23:598\n503#1:621\n503#1,23:622\n564#1:645\n564#1,23:646\n*E\n"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ANIMATION_BROWSER_SCREEN:Ljava/lang/String; = "browser_screen"

# The value of this static final field might be set in the static constructor
.field private static final ANIMATION_DURATION:I = 0xc8

# The value of this static final field might be set in the static constructor
.field private static final ARGUMENT_ANIMATION:Ljava/lang/String; = "animation"

# The value of this static final field might be set in the static constructor
.field private static final ARGUMENT_HEIGHT:Ljava/lang/String; = "height"

# The value of this static final field might be set in the static constructor
.field private static final ARGUMENT_SESSION_UUID:Ljava/lang/String; = "sesssion_uuid"

# The value of this static final field might be set in the static constructor
.field private static final ARGUMENT_WIDTH:Ljava/lang/String; = "width"

# The value of this static final field might be set in the static constructor
.field private static final ARGUMENT_X:Ljava/lang/String; = "x"

# The value of this static final field might be set in the static constructor
.field private static final ARGUMENT_Y:Ljava/lang/String; = "y"

.field public static final Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

# The value of this static final field might be set in the static constructor
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "url_input"

# The value of this static final field might be set in the static constructor
.field private static final PLACEHOLDER:Ljava/lang/String; = "5981086f-9d45-4f64-be99-7d2ffa03befb"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final autoCompleteProvider:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

.field private displayedPopupMenu:Lorg/mozilla/focus/menu/home/HomeMenu;

.field private volatile isAnimating:Z

.field private session:Lorg/mozilla/focus/session/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    .line 53
    const-string v0, "url_input"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 55
    const-string v0, "animation"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_ANIMATION:Ljava/lang/String;

    .line 56
    const-string v0, "x"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_X:Ljava/lang/String;

    .line 57
    const-string v0, "y"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_Y:Ljava/lang/String;

    .line 58
    const-string v0, "width"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_WIDTH:Ljava/lang/String;

    .line 59
    const-string v0, "height"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_HEIGHT:Ljava/lang/String;

    .line 61
    const-string v0, "sesssion_uuid"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_SESSION_UUID:Ljava/lang/String;

    .line 63
    const-string v0, "browser_screen"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ANIMATION_BROWSER_SCREEN:Ljava/lang/String;

    .line 65
    const-string v0, "5981086f-9d45-4f64-be99-7d2ffa03befb"

    sput-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->PLACEHOLDER:Ljava/lang/String;

    .line 67
    const/16 v0, 0xc8

    sput v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    .line 49
    invoke-direct {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;-><init>()V

    .line 115
    new-instance v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    invoke-direct {v0}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->autoCompleteProvider:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    return-void
.end method

.method public static final synthetic access$adjustViewToStatusBarHeight(Lorg/mozilla/focus/fragment/UrlInputFragment;I)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/fragment/UrlInputFragment;
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->adjustViewToStatusBarHeight(I)V

    return-void
.end method

.method public static final synthetic access$animateFirstDraw(Lorg/mozilla/focus/fragment/UrlInputFragment;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/fragment/UrlInputFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->animateFirstDraw()V

    return-void
.end method

.method public static final synthetic access$dismiss(Lorg/mozilla/focus/fragment/UrlInputFragment;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/fragment/UrlInputFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->dismiss()V

    return-void
.end method

.method public static final synthetic access$getANIMATION_BROWSER_SCREEN$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ANIMATION_BROWSER_SCREEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getANIMATION_DURATION$cp()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ANIMATION_DURATION:I

    return v0
.end method

.method public static final synthetic access$getARGUMENT_ANIMATION$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_ANIMATION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getARGUMENT_HEIGHT$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_HEIGHT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getARGUMENT_SESSION_UUID$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_SESSION_UUID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getARGUMENT_WIDTH$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_WIDTH:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getARGUMENT_X$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_X:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getARGUMENT_Y$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->ARGUMENT_Y:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPLACEHOLDER$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->PLACEHOLDER:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isOverlay$p(Lorg/mozilla/focus/fragment/UrlInputFragment;)Z
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/fragment/UrlInputFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$onCommit(Lorg/mozilla/focus/fragment/UrlInputFragment;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/fragment/UrlInputFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->onCommit()V

    return-void
.end method

.method public static final synthetic access$onFilter(Lorg/mozilla/focus/fragment/UrlInputFragment;Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/fragment/UrlInputFragment;
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "view"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->onFilter(Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lorg/mozilla/focus/fragment/UrlInputFragment;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/fragment/UrlInputFragment;
    .param p1, "<set-?>"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->isAnimating:Z

    return-void
.end method

.method private final adjustViewToStatusBarHeight(I)V
    .locals 4
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 154
    .local v0, "inputHeight":F
    sget v2, Lorg/mozilla/focus/R$id;->keyboardLinearLayout:I

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;

    const-string v3, "keyboardLinearLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 155
    sget v2, Lorg/mozilla/focus/R$id;->keyboardLinearLayout:I

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;

    const-string v3, "keyboardLinearLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 156
    .local v1, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    int-to-float v2, p1

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 159
    .end local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    sget v2, Lorg/mozilla/focus/R$id;->urlInputLayout:I

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const-string v3, "urlInputLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v3, p1

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    sget v2, Lorg/mozilla/focus/R$id;->searchViewContainer:I

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const-string v3, "searchViewContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    .line 162
    sget v2, Lorg/mozilla/focus/R$id;->searchViewContainer:I

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const-string v3, "searchViewContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 163
    .restart local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    int-to-float v2, p1

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 165
    .end local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    return-void
.end method

.method private final animateAndDismiss()V
    .locals 3

    .prologue
    .line 325
    sget-object v0, Lmozilla/components/support/utils/ThreadUtils;->INSTANCE:Lmozilla/components/support/utils/ThreadUtils;

    invoke-virtual {v0}, Lmozilla/components/support/utils/ThreadUtils;->assertOnUiThread()V

    .line 327
    iget-boolean v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    sget v0, Lorg/mozilla/focus/R$id;->dismissView:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 338
    :cond_1
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getANIMATION_BROWSER_SCREEN$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getARGUMENT_ANIMATION$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->playVisibilityAnimation(Z)V

    goto :goto_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 341
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->dismiss()V

    goto :goto_0
.end method

.method private final animateFirstDraw()V
    .locals 3

    .prologue
    .line 319
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getANIMATION_BROWSER_SCREEN$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getARGUMENT_ANIMATION$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->playVisibilityAnimation(Z)V

    .line 322
    :cond_0
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final clear()V
    .locals 2

    .prologue
    .line 305
    sget v0, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    sget v0, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->requestFocus()Z

    .line 307
    :cond_1
    return-void
.end method

.method public static final createWithSession(Lorg/mozilla/focus/session/Session;Landroid/view/View;)Lorg/mozilla/focus/fragment/UrlInputFragment;
    .locals 1
    .param p0, "session"    # Lorg/mozilla/focus/session/Session;
    .param p1, "urlView"    # Landroid/view/View;

    .prologue
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->createWithSession(Lorg/mozilla/focus/session/Session;Landroid/view/View;)Lorg/mozilla/focus/fragment/UrlInputFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final createWithoutSession()Lorg/mozilla/focus/fragment/UrlInputFragment;
    .locals 1

    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->createWithoutSession()Lorg/mozilla/focus/fragment/UrlInputFragment;

    move-result-object v0

    return-object v0
.end method

.method private final dismiss()V
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    check-cast p0, Landroid/support/v4/app/Fragment;

    .end local p0    # "this":Lorg/mozilla/focus/fragment/UrlInputFragment;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 481
    :cond_0
    return-void
.end method

.method private final isOverlay()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->session:Lorg/mozilla/focus/session/Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final onCommit()V
    .locals 13

    .prologue
    .line 484
    sget v12, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v12}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v12}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getAutocompleteResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v12

    invoke-virtual {v12}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getFormattedText()Ljava/lang/String;

    move-result-object v6

    .local v6, "it":Ljava/lang/String;
    move-object v12, v6

    .line 485
    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    if-eqz v12, :cond_2

    sget v12, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v12}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "input":Ljava/lang/String;
    :goto_2
    move-object v0, v4

    .local v0, "$receiver$iv":Ljava/lang/String;
    move-object v1, v0

    .line 597
    check-cast v1, Ljava/lang/CharSequence;

    .line 598
    .local v1, "$receiver$iv$iv":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 599
    .local v10, "startIndex$iv$iv":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .line 600
    .local v2, "endIndex$iv$iv":I
    const/4 v9, 0x0

    .line 602
    .end local v6    # "it":Ljava/lang/String;
    .local v9, "startFound$iv$iv":Z
    :goto_3
    if-gt v10, v2, :cond_7

    .line 603
    if-nez v9, :cond_3

    move v3, v10

    .line 604
    .local v3, "index$iv$iv":I
    :goto_4
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 488
    .local v6, "it":C
    const/16 v12, 0x20

    if-gt v6, v12, :cond_4

    const/4 v7, 0x1

    .line 606
    .local v7, "match$iv$iv":Z
    :goto_5
    if-nez v9, :cond_6

    .line 607
    if-nez v7, :cond_5

    .line 608
    const/4 v9, 0x1

    goto :goto_3

    .line 485
    .end local v0    # "$receiver$iv":Ljava/lang/String;
    .end local v1    # "$receiver$iv$iv":Ljava/lang/CharSequence;
    .end local v2    # "endIndex$iv$iv":I
    .end local v3    # "index$iv$iv":I
    .end local v4    # "input":Ljava/lang/String;
    .end local v7    # "match$iv$iv":Z
    .end local v9    # "startFound$iv$iv":Z
    .end local v10    # "startIndex$iv$iv":I
    .local v6, "it":Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    move-object v4, v6

    goto :goto_2

    .end local v6    # "it":Ljava/lang/String;
    .restart local v0    # "$receiver$iv":Ljava/lang/String;
    .restart local v1    # "$receiver$iv$iv":Ljava/lang/CharSequence;
    .restart local v2    # "endIndex$iv$iv":I
    .restart local v4    # "input":Ljava/lang/String;
    .restart local v9    # "startFound$iv$iv":Z
    .restart local v10    # "startIndex$iv$iv":I
    :cond_3
    move v3, v2

    .line 603
    goto :goto_4

    .line 488
    .restart local v3    # "index$iv$iv":I
    .local v6, "it":C
    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    .line 610
    .restart local v7    # "match$iv$iv":Z
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 613
    :cond_6
    if-nez v7, :cond_8

    .line 620
    .end local v3    # "index$iv$iv":I
    .end local v6    # "it":C
    .end local v7    # "match$iv$iv":Z
    :cond_7
    add-int/lit8 v12, v2, 0x1

    invoke-interface {v1, v10, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 597
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 488
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x1

    :goto_6
    if-nez v12, :cond_b

    .line 489
    const-string v12, "focus:crash"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    new-instance v12, Lorg/mozilla/focus/fragment/FocusCrashException;

    invoke-direct {v12}, Lorg/mozilla/focus/fragment/FocusCrashException;-><init>()V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    .line 616
    .restart local v3    # "index$iv$iv":I
    .restart local v6    # "it":C
    .restart local v7    # "match$iv$iv":Z
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 488
    .end local v3    # "index$iv$iv":I
    .end local v6    # "it":C
    .end local v7    # "match$iv$iv":Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_6

    .line 491
    :cond_a
    sget v12, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v12}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v12}, Lorg/mozilla/focus/utils/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 493
    invoke-static {v4}, Lorg/mozilla/focus/utils/UrlUtils;->isUrl(Ljava/lang/String;)Z

    move-result v5

    .line 495
    .local v5, "isUrl":Z
    if-eqz v5, :cond_c

    .line 496
    invoke-static {v4}, Lorg/mozilla/focus/utils/UrlUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 500
    .local v11, "url":Ljava/lang/String;
    :goto_7
    if-eqz v5, :cond_d

    .line 501
    const/4 v8, 0x0

    .line 505
    .local v8, "searchTerms":Ljava/lang/String;
    :goto_8
    const-string v12, "url"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v11, v8}, Lorg/mozilla/focus/fragment/UrlInputFragment;->openUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget v12, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v12}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v12}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getAutocompleteResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v12

    invoke-static {v5, v12}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->urlBarEvent(ZLmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V

    .line 509
    .end local v5    # "isUrl":Z
    .end local v8    # "searchTerms":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :cond_b
    return-void

    .line 498
    .restart local v5    # "isUrl":Z
    :cond_c
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4}, Lorg/mozilla/focus/utils/UrlUtils;->createSearchUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    .line 503
    .restart local v11    # "url":Ljava/lang/String;
    :cond_d
    move-object v0, v4

    move-object v1, v0

    .line 621
    check-cast v1, Ljava/lang/CharSequence;

    .line 622
    const/4 v10, 0x0

    .line 623
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .line 624
    const/4 v9, 0x0

    .line 626
    :goto_9
    if-gt v10, v2, :cond_12

    .line 627
    if-nez v9, :cond_e

    move v3, v10

    .line 628
    .restart local v3    # "index$iv$iv":I
    :goto_a
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 503
    .restart local v6    # "it":C
    const/16 v12, 0x20

    if-gt v6, v12, :cond_f

    const/4 v7, 0x1

    .line 630
    .restart local v7    # "match$iv$iv":Z
    :goto_b
    if-nez v9, :cond_11

    .line 631
    if-nez v7, :cond_10

    .line 632
    const/4 v9, 0x1

    goto :goto_9

    .end local v3    # "index$iv$iv":I
    .end local v6    # "it":C
    .end local v7    # "match$iv$iv":Z
    :cond_e
    move v3, v2

    .line 627
    goto :goto_a

    .line 503
    .restart local v3    # "index$iv$iv":I
    .restart local v6    # "it":C
    :cond_f
    const/4 v7, 0x0

    goto :goto_b

    .line 634
    .restart local v7    # "match$iv$iv":Z
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 637
    :cond_11
    if-nez v7, :cond_13

    .line 644
    .end local v3    # "index$iv$iv":I
    .end local v6    # "it":C
    .end local v7    # "match$iv$iv":Z
    :cond_12
    add-int/lit8 v12, v2, 0x1

    invoke-interface {v1, v10, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 621
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 640
    .restart local v3    # "index$iv$iv":I
    .restart local v6    # "it":C
    .restart local v7    # "match$iv$iv":Z
    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_9
.end method

.method private final onFilter(Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V
    .locals 19
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "view"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    .line 555
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v13, p2

    .line 560
    .local v13, "it":Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->autoCompleteProvider:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->autocomplete(Ljava/lang/String;)Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    move-result-object v15

    .line 561
    .local v15, "result":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    new-instance v2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    invoke-virtual {v15}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->getSize()I

    move-result v5

    new-instance v1, Lorg/mozilla/focus/fragment/UrlInputFragment$onFilter$1$1;

    invoke-direct {v1, v15}, Lorg/mozilla/focus/fragment/UrlInputFragment$onFilter$1$1;-><init>(Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v3, v4, v5, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V

    .line 562
    nop

    nop

    .line 564
    .end local v13    # "it":Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    .end local v15    # "result":Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;
    :cond_2
    move-object/from16 v7, p1

    .local v7, "$receiver$iv":Ljava/lang/String;
    move-object v8, v7

    .line 645
    check-cast v8, Ljava/lang/CharSequence;

    .line 646
    .local v8, "$receiver$iv$iv":Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .line 647
    .local v18, "startIndex$iv$iv":I
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    .line 648
    .local v10, "endIndex$iv$iv":I
    const/16 v17, 0x0

    .line 650
    .local v17, "startFound$iv$iv":Z
    :goto_1
    move/from16 v0, v18

    if-gt v0, v10, :cond_7

    .line 651
    if-nez v17, :cond_3

    move/from16 v12, v18

    .line 652
    .local v12, "index$iv$iv":I
    :goto_2
    invoke-interface {v8, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 564
    .local v13, "it":C
    const/16 v1, 0x20

    if-gt v13, v1, :cond_4

    const/4 v14, 0x1

    .line 654
    .local v14, "match$iv$iv":Z
    :goto_3
    if-nez v17, :cond_6

    .line 655
    if-nez v14, :cond_5

    .line 656
    const/16 v17, 0x1

    goto :goto_1

    .end local v12    # "index$iv$iv":I
    .end local v13    # "it":C
    .end local v14    # "match$iv$iv":Z
    :cond_3
    move v12, v10

    .line 651
    goto :goto_2

    .line 564
    .restart local v12    # "index$iv$iv":I
    .restart local v13    # "it":C
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 658
    .restart local v14    # "match$iv$iv":Z
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 661
    :cond_6
    if-nez v14, :cond_a

    .line 668
    .end local v12    # "index$iv$iv":I
    .end local v13    # "it":C
    .end local v14    # "match$iv$iv":Z
    :cond_7
    add-int/lit8 v1, v10, 0x1

    move/from16 v0, v18

    invoke-interface {v8, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 564
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_c

    .line 565
    sget v1, Lorg/mozilla/focus/R$id;->clearView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 566
    :cond_8
    sget v1, Lorg/mozilla/focus/R$id;->searchViewContainer:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 568
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->playVisibilityAnimation(Z)V

    goto/16 :goto_0

    .line 664
    .restart local v12    # "index$iv$iv":I
    .restart local v13    # "it":C
    .restart local v14    # "match$iv$iv":Z
    :cond_a
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 564
    .end local v12    # "index$iv$iv":I
    .end local v13    # "it":C
    .end local v14    # "match$iv$iv":Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    .line 572
    :cond_c
    sget v1, Lorg/mozilla/focus/R$id;->clearView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 573
    :cond_d
    sget v1, Lorg/mozilla/focus/R$id;->menuView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/mozilla/focus/widget/IndicatorMenuButton;

    if-eqz v1, :cond_e

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/widget/IndicatorMenuButton;->setVisibility(I)V

    .line 575
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v1

    if-nez v1, :cond_10

    sget v1, Lorg/mozilla/focus/R$id;->dismissView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_10

    .line 576
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->playVisibilityAnimation(Z)V

    .line 577
    sget v1, Lorg/mozilla/focus/R$id;->dismissView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :cond_10
    const v1, 0x7f0f010d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v4}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getPLACEHOLDER$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 584
    .local v11, "hint":Ljava/lang/String;
    const-string v1, "hint"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getPLACEHOLDER$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v16

    .line 586
    .local v16, "start":I
    new-instance v9, Landroid/text/SpannableString;

    sget-object v1, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getPLACEHOLDER$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v9, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 587
    .local v9, "content":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v2, v16

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 589
    sget v1, Lorg/mozilla/focus/R$id;->searchView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_11

    check-cast v9, Ljava/lang/CharSequence;

    .end local v9    # "content":Landroid/text/SpannableString;
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_11
    sget v1, Lorg/mozilla/focus/R$id;->searchViewContainer:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private final onSearch()V
    .locals 3

    .prologue
    .line 512
    sget v2, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "searchTerms":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/mozilla/focus/utils/UrlUtils;->createSearchUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "searchUrl":Ljava/lang/String;
    const-string v2, "searchUrl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->openUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->searchSelectEvent()V

    .line 518
    return-void

    .line 512
    .end local v0    # "searchTerms":Ljava/lang/String;
    .end local v1    # "searchUrl":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final openUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "searchTerms"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v2, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->session:Lorg/mozilla/focus/session/Session;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Lorg/mozilla/focus/session/Session;->setSearchTerms(Ljava/lang/String;)V

    .line 523
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 528
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v2, "browser"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 530
    .local v0, "browserFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lorg/mozilla/focus/fragment/BrowserFragment;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    check-cast v0, Lorg/mozilla/focus/fragment/BrowserFragment;

    .end local v0    # "browserFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->loadUrl(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 538
    check-cast p0, Landroid/support/v4/app/Fragment;

    .end local p0    # "this":Lorg/mozilla/focus/fragment/UrlInputFragment;
    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 539
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 546
    :goto_0
    return-void

    .restart local v0    # "browserFragment":Landroid/support/v4/app/Fragment;
    .restart local p0    # "this":Lorg/mozilla/focus/fragment/UrlInputFragment;
    :cond_2
    move-object v2, p2

    .line 541
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 542
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v2

    .line 543
    sget-object v3, Lorg/mozilla/focus/session/Source;->USER_ENTERED:Lorg/mozilla/focus/session/Source;

    invoke-virtual {v2, v3, p1, p2}, Lorg/mozilla/focus/session/SessionManager;->createSearchSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_3
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/session/Source;->USER_ENTERED:Lorg/mozilla/focus/session/Source;

    invoke-virtual {v2, v3, p1}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final playVisibilityAnimation(Z)V
    .locals 10
    .param p1, "reverse"    # Z

    .prologue
    .line 355
    iget-boolean v7, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->isAnimating:Z

    if-eqz v7, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->isAnimating:Z

    .line 362
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 363
    sget v7, Lorg/mozilla/focus/R$id;->urlInputContainerView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_3

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 362
    :goto_2
    int-to-float v6, v7

    .line 367
    .local v6, "xyOffset":F
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 368
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "urlInputBackgroundView"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 369
    .local v4, "width":F
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "urlInputBackgroundView"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 371
    .local v0, "height":F
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 372
    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    div-float v5, v7, v4

    .line 376
    .local v5, "widthScale":F
    :goto_3
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 377
    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v7, v0

    div-float v1, v7, v0

    .line 381
    .local v1, "heightScale":F
    :goto_4
    if-nez p1, :cond_a

    .line 382
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 383
    :cond_4
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 384
    :cond_5
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleX(F)V

    .line 385
    :cond_6
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7, v1}, Landroid/view/View;->setScaleY(F)V

    .line 386
    :cond_7
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    neg-float v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 387
    :cond_8
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    neg-float v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 389
    :cond_9
    sget v7, Lorg/mozilla/focus/R$id;->clearView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 393
    :cond_a
    sget v7, Lorg/mozilla/focus/R$id;->urlInputBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 394
    sget-object v8, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v8}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getANIMATION_DURATION$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 395
    if-eqz p1, :cond_17

    .end local v5    # "widthScale":F
    :goto_5
    invoke-virtual {v7, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 396
    if-eqz p1, :cond_18

    .end local v1    # "heightScale":F
    :goto_6
    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 397
    if-eqz p1, :cond_19

    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x0

    :goto_7
    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 398
    if-eqz p1, :cond_1a

    neg-float v7, v6

    :goto_8
    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 399
    if-eqz p1, :cond_1b

    neg-float v7, v6

    :goto_9
    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 400
    new-instance v7, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;

    invoke-direct {v7, p0, p1}, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$1;-><init>(Lorg/mozilla/focus/fragment/UrlInputFragment;Z)V

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 422
    .end local v0    # "height":F
    .end local v4    # "width":F
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 423
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 424
    .local v3, "screenLocation":[I
    sget v7, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getLocationOnScreen([I)V

    .line 426
    :cond_c
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    sget-object v8, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v8}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getARGUMENT_X$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    aget v8, v3, v8

    sub-int v8, v7, v8

    sget v7, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    const-string v9, "urlView"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getPaddingLeft()I

    move-result v7

    sub-int v2, v8, v7

    .line 428
    .local v2, "leftDelta":I
    if-nez p1, :cond_10

    .line 429
    sget v7, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v7, :cond_e

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setPivotX(F)V

    .line 430
    :cond_e
    sget v7, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v7, :cond_f

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setPivotY(F)V

    .line 431
    :cond_f
    sget v7, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v7, :cond_10

    int-to-float v8, v2

    invoke-virtual {v7, v8}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setTranslationX(F)V

    .line 434
    :cond_10
    sget v7, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v7, :cond_11

    .line 436
    sget v7, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v7}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 437
    sget-object v8, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v8}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getANIMATION_DURATION$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 438
    if-eqz p1, :cond_1c

    .end local v2    # "leftDelta":I
    :goto_a
    int-to-float v8, v2

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 442
    .end local v3    # "screenLocation":[I
    :cond_11
    if-nez p1, :cond_13

    .line 443
    sget v7, Lorg/mozilla/focus/R$id;->toolbarBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_12

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 444
    :cond_12
    sget v7, Lorg/mozilla/focus/R$id;->clearView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_13

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 447
    :cond_13
    sget v7, Lorg/mozilla/focus/R$id;->toolbarBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 449
    sget v7, Lorg/mozilla/focus/R$id;->toolbarBackgroundView:I

    invoke-virtual {p0, v7}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 450
    sget-object v8, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v8}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getANIMATION_DURATION$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 451
    if-eqz p1, :cond_1d

    const/4 v7, 0x0

    :goto_b
    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 452
    new-instance v7, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;

    invoke-direct {v7, p0, p1}, Lorg/mozilla/focus/fragment/UrlInputFragment$playVisibilityAnimation$2;-><init>(Lorg/mozilla/focus/fragment/UrlInputFragment;Z)V

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 365
    .end local v6    # "xyOffset":F
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 374
    .restart local v0    # "height":F
    .restart local v4    # "width":F
    .restart local v6    # "xyOffset":F
    :cond_15
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 379
    .restart local v5    # "widthScale":F
    :cond_16
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 395
    .restart local v1    # "heightScale":F
    :cond_17
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 396
    .end local v5    # "widthScale":F
    :cond_18
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 397
    .end local v1    # "heightScale":F
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 398
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 399
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 438
    .end local v0    # "height":F
    .end local v4    # "width":F
    .restart local v2    # "leftDelta":I
    .restart local v3    # "screenLocation":[I
    :cond_1c
    const/4 v2, 0x0

    goto :goto_a

    .line 451
    .end local v2    # "leftDelta":I
    .end local v3    # "screenLocation":[I
    :cond_1d
    const/4 v7, 0x1

    goto :goto_b
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public applyLocale()V
    .locals 6

    .prologue
    const v5, 0x7f090049

    .line 214
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    sget-object v2, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    iget-object v3, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->session:Lorg/mozilla/focus/session/Session;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget v0, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    const-string v4, "urlView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->createWithSession(Lorg/mozilla/focus/session/Session;Landroid/view/View;)Lorg/mozilla/focus/fragment/UrlInputFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 220
    sget-object v2, Lorg/mozilla/focus/fragment/UrlInputFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 217
    invoke-virtual {v1, v5, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 227
    sget-object v0, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->createWithBackground()Lorg/mozilla/focus/fragment/UrlInputFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 228
    sget-object v2, Lorg/mozilla/focus/fragment/UrlInputFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 225
    invoke-virtual {v1, v5, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public final onBackPressed()Z
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->animateAndDismiss()V

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 300
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unhandled view in onClick()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 268
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->clear()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 270
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->onSearch()V

    goto :goto_0

    .line 272
    :sswitch_2
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->animateAndDismiss()V

    goto :goto_0

    .line 275
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->clear()V

    goto :goto_0

    .line 278
    :sswitch_3
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    .local v0, "it":Landroid/content/Context;
    new-instance v1, Lorg/mozilla/focus/menu/home/HomeMenu;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-direct {v1, v0, v2}, Lorg/mozilla/focus/menu/home/HomeMenu;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 280
    .local v1, "menu":Lorg/mozilla/focus/menu/home/HomeMenu;
    invoke-virtual {v1, p1}, Lorg/mozilla/focus/menu/home/HomeMenu;->show(Landroid/view/View;)V

    .line 282
    iput-object v1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->displayedPopupMenu:Lorg/mozilla/focus/menu/home/HomeMenu;

    .line 283
    nop

    nop

    .line 278
    goto :goto_0

    .line 285
    .end local v0    # "it":Landroid/content/Context;
    .end local v1    # "menu":Lorg/mozilla/focus/menu/home/HomeMenu;
    :sswitch_4
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    .restart local v0    # "it":Landroid/content/Context;
    sget-object v2, Lorg/mozilla/focus/whatsnew/WhatsNew;->Companion:Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->shouldHighlightWhatsNew(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openWhatsNewEvent(Z)V

    .line 288
    sget-object v2, Lorg/mozilla/focus/whatsnew/WhatsNew;->Companion:Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    invoke-virtual {v2, v0}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->userViewedWhatsNew(Landroid/content/Context;)V

    .line 290
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    .line 291
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->WHATS_NEW:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-static {v4, v5}, Lorg/mozilla/focus/utils/SupportUtils;->getSumoURLForTopic(Landroid/content/Context;Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual {v2, v3, v4}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 292
    nop

    .line 285
    goto :goto_0

    .line 294
    .end local v0    # "it":Landroid/content/Context;
    :sswitch_5
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type org.mozilla.focus.locale.LocaleAwareAppCompatActivity"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    check-cast v2, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;

    invoke-virtual {v2}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->openPreferences()V

    goto :goto_0

    .line 297
    :sswitch_6
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    const-string v4, "https://support.mozilla.org/kb/what-firefox-focus-android"

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090043 -> :sswitch_0
        0x7f09005d -> :sswitch_2
        0x7f090080 -> :sswitch_6
        0x7f0900a2 -> :sswitch_3
        0x7f0900e0 -> :sswitch_1
        0x7f0900f0 -> :sswitch_5
        0x7f090136 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lorg/mozilla/focus/fragment/UrlInputFragment;->Companion:Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;->access$getARGUMENT_SESSION_UUID$p(Lorg/mozilla/focus/fragment/UrlInputFragment$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    .local v0, "it":Ljava/lang/String;
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/focus/session/SessionManager;->hasSessionWithUUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/focus/session/SessionManager;->getSessionByUUID(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;

    move-result-object v1

    .line 131
    :goto_0
    iput-object v1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->session:Lorg/mozilla/focus/session/Session;

    .line 133
    nop

    .line 134
    .end local v0    # "it":Ljava/lang/String;
    :cond_0
    return-void

    .line 132
    .restart local v0    # "it":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const v0, 0x7f0b003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onDetach()V

    .line 315
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->displayedPopupMenu:Lorg/mozilla/focus/menu/home/HomeMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/home/HomeMenu;->dismiss()V

    .line 316
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 137
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onResume()V

    .line 139
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 140
    .local v7, "it":Landroid/support/v4/app/FragmentActivity;
    sget-object v0, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    const-string v1, "it"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "it.applicationContext"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v8

    .line 141
    .local v8, "settings":Lorg/mozilla/focus/utils/Settings;
    invoke-virtual {v8}, Lorg/mozilla/focus/utils/Settings;->shouldAutocompleteFromCustomDomainList()Z

    move-result v3

    .line 142
    .local v3, "useCustomDomains":Z
    invoke-virtual {v8}, Lorg/mozilla/focus/utils/Settings;->shouldAutocompleteFromShippedDomainList()Z

    move-result v2

    .line 143
    .local v2, "useShippedDomains":Z
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->autoCompleteProvider:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "it.applicationContext"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 143
    invoke-static/range {v0 .. v6}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->initialize$default(Lmozilla/components/browser/domains/DomainAutoCompleteProvider;Landroid/content/Context;ZZZILjava/lang/Object;)V

    .line 145
    nop

    nop

    .line 147
    .end local v2    # "useShippedDomains":Z
    .end local v3    # "useCustomDomains":Z
    .end local v7    # "it":Landroid/support/v4/app/FragmentActivity;
    .end local v8    # "settings":Lorg/mozilla/focus/utils/Settings;
    :cond_0
    sget v0, Lorg/mozilla/focus/R$id;->keyboardLinearLayout:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;

    new-instance v1, Lorg/mozilla/focus/fragment/UrlInputFragment$onResume$2;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/fragment/UrlInputFragment$onResume$2;-><init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V

    check-cast v1, Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;

    invoke-static {v0, v1}, Lorg/mozilla/focus/utils/StatusBarUtils;->getStatusBarHeight(Landroid/view/View;Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;)V

    .line 150
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onStart()V

    .line 245
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    .local v0, "it":Landroid/content/Context;
    sget-object v1, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/utils/Settings;->shouldShowFirstrun()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->showKeyboard()V

    .line 250
    :cond_0
    nop

    .line 251
    .end local v0    # "it":Landroid/content/Context;
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onStop()V

    .line 257
    sget v0, Lorg/mozilla/focus/R$id;->keyboardLinearLayout:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->reset()V

    .line 258
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const-string v3, "view"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    const/4 v3, 0x3

    new-array v4, v3, [Landroid/view/View;

    sget v3, Lorg/mozilla/focus/R$id;->dismissView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v5, 0x1

    sget v3, Lorg/mozilla/focus/R$id;->clearView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    check-cast v3, Landroid/view/View;

    aput-object v3, v4, v5

    const/4 v5, 0x2

    sget v3, Lorg/mozilla/focus/R$id;->searchView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/view/View;

    aput-object v3, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 595
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .local v2, "it":Landroid/view/View;
    move-object v3, p0

    .line 171
    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    goto :goto_0

    .line 596
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Landroid/view/View;
    :cond_0
    nop

    .line 173
    sget v3, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v3, :cond_1

    new-instance v5, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$2;

    move-object v4, p0

    check-cast v4, Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-direct {v5, v4}, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$2;-><init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V

    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v3, v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setOnFilterListener(Lkotlin/jvm/functions/Function2;)V

    .line 174
    :cond_1
    sget v3, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v3, :cond_2

    sget v4, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v4}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    const-string v5, "urlView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getImeOptions()I

    move-result v4

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setImeOptions(I)V

    .line 176
    :cond_2
    sget v3, Lorg/mozilla/focus/R$id;->urlInputContainerView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 177
    sget v3, Lorg/mozilla/focus/R$id;->urlInputContainerView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const-string v4, "urlInputContainerView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v3, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$3;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$3;-><init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V

    check-cast v3, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 191
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->isOverlay()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    sget v3, Lorg/mozilla/focus/R$id;->keyboardLinearLayout:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->setVisibility(I)V

    .line 201
    :cond_4
    :goto_1
    sget v3, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v3, :cond_5

    new-instance v5, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$4;

    move-object v4, p0

    check-cast v4, Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-direct {v5, v4}, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$4;-><init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V

    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setOnCommitListener(Lkotlin/jvm/functions/Function0;)V

    .line 205
    :cond_5
    iget-object v2, p0, Lorg/mozilla/focus/fragment/UrlInputFragment;->session:Lorg/mozilla/focus/session/Session;

    if-eqz v2, :cond_9

    .line 206
    .local v2, "it":Lorg/mozilla/focus/session/Session;
    sget v3, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->isSearch()Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lorg/mozilla/focus/utils/Features;->Companion:Lorg/mozilla/focus/utils/Features$Companion;

    invoke-virtual {v4}, Lorg/mozilla/focus/utils/Features$Companion;->getSEARCH_TERMS_OR_URL()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getSearchTerms()Ljava/lang/String;

    move-result-object v4

    :goto_2
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_6
    sget v3, Lorg/mozilla/focus/R$id;->clearView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 209
    :cond_7
    sget v3, Lorg/mozilla/focus/R$id;->searchViewContainer:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 210
    :cond_8
    nop

    .line 211
    .end local v2    # "it":Lorg/mozilla/focus/session/Session;
    :cond_9
    return-void

    .line 194
    :cond_a
    sget v3, Lorg/mozilla/focus/R$id;->backgroundView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_b

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 196
    :cond_b
    sget v3, Lorg/mozilla/focus/R$id;->dismissView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_c
    sget v3, Lorg/mozilla/focus/R$id;->toolbarBackgroundView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_d
    sget v3, Lorg/mozilla/focus/R$id;->menuView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/mozilla/focus/widget/IndicatorMenuButton;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v7}, Lorg/mozilla/focus/widget/IndicatorMenuButton;->setVisibility(I)V

    .line 200
    :cond_e
    sget v3, Lorg/mozilla/focus/R$id;->menuView:I

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/mozilla/focus/widget/IndicatorMenuButton;

    if-eqz v3, :cond_4

    move-object v4, p0

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lorg/mozilla/focus/widget/IndicatorMenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 207
    .restart local v2    # "it":Lorg/mozilla/focus/session/Session;
    :cond_f
    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v4

    const-string v5, "it.url"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2
.end method

.method public final showKeyboard()V
    .locals 1

    .prologue
    .line 261
    sget v0, Lorg/mozilla/focus/R$id;->urlView:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v0}, Lorg/mozilla/focus/utils/ViewUtils;->showKeyboard(Landroid/view/View;)V

    .line 262
    return-void
.end method

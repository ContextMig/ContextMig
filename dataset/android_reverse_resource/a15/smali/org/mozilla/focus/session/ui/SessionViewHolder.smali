.class public final Lorg/mozilla/focus/session/ui/SessionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SessionViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/session/ui/SessionViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/session/ui/SessionViewHolder$Companion;

# The value of this static final field might be set in the static constructor
.field public static final LAYOUT_ID:I = 0x7f0b0045


# instance fields
.field private final fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

.field private sessionReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/session/ui/SessionViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/session/ui/SessionViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->Companion:Lorg/mozilla/focus/session/ui/SessionViewHolder$Companion;

    .line 28
    const v0, 0x7f0b0045

    sput v0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->LAYOUT_ID:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "fragment"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    .line 25
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    iput-object p2, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->textView:Landroid/widget/TextView;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->sessionReference:Ljava/lang/ref/WeakReference;

    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->textView:Landroid/widget/TextView;

    check-cast p0, Landroid/view/View$OnClickListener;

    .end local p0    # "this":Lorg/mozilla/focus/session/ui/SessionViewHolder;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final selectSession(Lorg/mozilla/focus/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->animateAndDismiss()Landroid/animation/Animator;

    move-result-object v1

    new-instance v0, Lorg/mozilla/focus/session/ui/SessionViewHolder$selectSession$1;

    invoke-direct {v0, p1}, Lorg/mozilla/focus/session/ui/SessionViewHolder$selectSession$1;-><init>(Lorg/mozilla/focus/session/Session;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    return-void
.end method

.method private final updateDrawable(ZII)V
    .locals 5
    .param p1, "isCurrentSession"    # Z
    .param p2, "actionColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v2, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08008e

    invoke-static {v2, v3}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "wrapDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .end local p2    # "actionColor":I
    :goto_0
    invoke-static {v1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 60
    iget-object v2, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "wrapDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "wrapDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p2    # "actionColor":I
    :cond_1
    move p2, p3

    .line 58
    goto :goto_0
.end method

.method private final updateTextColor(ZII)V
    .locals 1
    .param p1, "isCurrentSession"    # Z
    .param p2, "actionColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .end local p2    # "actionColor":I
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    return-void

    .restart local p2    # "actionColor":I
    :cond_0
    move p2, p3

    .line 51
    goto :goto_0
.end method

.method private final updateUrl(Lorg/mozilla/focus/session/Session;)V
    .locals 3
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 64
    iget-object v1, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v0

    const-string v2, "session.url"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "session.url.value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/focus/ext/StringKt;->beautifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final bind(Lorg/mozilla/focus/session/Session;)V
    .locals 5
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    const-string v3, "session"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->sessionReference:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-direct {p0, p1}, Lorg/mozilla/focus/session/ui/SessionViewHolder;->updateUrl(Lorg/mozilla/focus/session/Session;)V

    .line 42
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mozilla/focus/session/SessionManager;->isCurrentSession(Lorg/mozilla/focus/session/Session;)Z

    move-result v2

    .line 43
    .local v2, "isCurrentSession":Z
    iget-object v3, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060033

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 44
    .local v0, "actionColor":I
    iget-object v3, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060046

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 46
    .local v1, "darkColor":I
    invoke-direct {p0, v2, v0, v1}, Lorg/mozilla/focus/session/ui/SessionViewHolder;->updateTextColor(ZII)V

    .line 47
    invoke-direct {p0, v2, v0, v1}, Lorg/mozilla/focus/session/ui/SessionViewHolder;->updateDrawable(ZII)V

    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder;->sessionReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    if-eqz v0, :cond_0

    .line 69
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    const-string v1, "session"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/focus/session/ui/SessionViewHolder;->selectSession(Lorg/mozilla/focus/session/Session;)V

    .line 70
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    :cond_0
    return-void
.end method

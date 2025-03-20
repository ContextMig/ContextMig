.class public final Lorg/mozilla/focus/widget/IndicatorMenuButton;
.super Landroid/widget/FrameLayout;
.source "IndicatorMenuButton.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0, v3}, Lorg/mozilla/focus/widget/IndicatorMenuButton;->setClickable(Z)V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 20
    const v2, 0x7f0b0043

    .line 21
    check-cast p0, Landroid/view/ViewGroup;

    .line 19
    .end local p0    # "this":Lorg/mozilla/focus/widget/IndicatorMenuButton;
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v1, "view.findViewById<View>(R.id.dot)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/mozilla/focus/whatsnew/WhatsNew;->Companion:Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;

    invoke-virtual {v1, p1}, Lorg/mozilla/focus/whatsnew/WhatsNew$Companion;->shouldHighlightWhatsNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 27
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

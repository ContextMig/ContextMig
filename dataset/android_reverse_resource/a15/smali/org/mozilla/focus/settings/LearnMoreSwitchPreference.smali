.class public abstract Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "LearnMoreSwitchPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLearnMoreSwitchPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LearnMoreSwitchPreference.kt\norg/mozilla/focus/settings/LearnMoreSwitchPreference\n*L\n1#1,53:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLearnMoreUrl()Ljava/lang/String;
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 21
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 23
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 28
    .local v2, "it":Ljava/lang/String;
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 29
    .local v4, "summaryView":Landroid/widget/TextView;
    const-string v5, "summaryView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    .end local v2    # "it":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    nop

    nop

    .line 33
    .end local v4    # "summaryView":Landroid/widget/TextView;
    :cond_1
    const v5, 0x7f09009b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, "learnMoreLink":Landroid/widget/TextView;
    const-string v5, "learnMoreLink"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060033

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    new-instance v5, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference$onBindView$2;

    invoke-direct {v5, p0}, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference$onBindView$2;-><init>(Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0x7f040146

    aput v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    .local v1, "backgroundDrawableArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

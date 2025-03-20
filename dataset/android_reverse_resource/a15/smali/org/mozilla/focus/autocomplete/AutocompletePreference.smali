.class public final Lorg/mozilla/focus/autocomplete/AutocompletePreference;
.super Landroid/preference/Preference;
.source "AutocompletePreference.kt"


# instance fields
.field private summaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 24
    sget-object v1, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompletePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    .line 26
    .local v0, "settings":Lorg/mozilla/focus/utils/Settings;
    if-eqz p1, :cond_2

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    iput-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompletePreference;->summaryView:Landroid/widget/TextView;

    .line 27
    iget-object v2, p0, Lorg/mozilla/focus/autocomplete/AutocompletePreference;->summaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldAutocompleteFromShippedDomainList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldAutocompleteFromCustomDomainList()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    :cond_0
    const v1, 0x7f0f0101

    .line 28
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 33
    :cond_1
    return-void

    .line 26
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 32
    :cond_3
    const v1, 0x7f0f0100

    goto :goto_1
.end method

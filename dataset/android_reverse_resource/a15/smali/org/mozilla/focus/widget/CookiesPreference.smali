.class public final Lorg/mozilla/focus/widget/CookiesPreference;
.super Landroid/preference/ListPreference;
.source "CookiesPreference.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final updateSummary()V
    .locals 4

    .prologue
    .line 29
    sget-object v1, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/CookiesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    .line 30
    .local v0, "settings":Lorg/mozilla/focus/utils/Settings;
    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldBlockCookiesValue()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    .line 25
    invoke-direct {p0}, Lorg/mozilla/focus/widget/CookiesPreference;->updateSummary()V

    .line 26
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 20
    invoke-direct {p0}, Lorg/mozilla/focus/widget/CookiesPreference;->updateSummary()V

    .line 21
    return-void
.end method

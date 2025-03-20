.class public final Lorg/mozilla/focus/autocomplete/AutocompleteCustomDomainsPreference;
.super Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;
.source "AutocompleteCustomDomainsPreference.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getLearnMoreUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteCustomDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->AUTOCOMPLETE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-static {v0, v1}, Lorg/mozilla/focus/utils/SupportUtils;->getSumoURLForTopic(Landroid/content/Context;Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

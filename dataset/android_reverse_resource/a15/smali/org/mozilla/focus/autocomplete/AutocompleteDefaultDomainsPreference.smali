.class public final Lorg/mozilla/focus/autocomplete/AutocompleteDefaultDomainsPreference;
.super Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;
.source "AutocompleteDefaultDomainsPreference.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteDefaultDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00cb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteDefaultDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0028

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public getLearnMoreUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lorg/mozilla/focus/autocomplete/AutocompleteDefaultDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->AUTOCOMPLETE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-static {v0, v1}, Lorg/mozilla/focus/utils/SupportUtils;->getSumoURLForTopic(Landroid/content/Context;Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

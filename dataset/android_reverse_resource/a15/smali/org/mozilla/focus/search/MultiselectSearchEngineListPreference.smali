.class public Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;
.super Lorg/mozilla/focus/search/SearchEngineListPreference;
.source "MultiselectSearchEngineListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/search/SearchEngineListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/focus/search/SearchEngineListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public atLeastOneEngineChecked()Z
    .locals 3

    .prologue
    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getSearchEngineGroup()Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 77
    invoke-virtual {p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getSearchEngineGroup()Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 78
    .local v0, "engineButton":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v2, 0x1

    .line 82
    .end local v0    # "engineButton":Landroid/widget/CompoundButton;
    :goto_1
    return v2

    .line 76
    .restart local v0    # "engineButton":Landroid/widget/CompoundButton;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "engineButton":Landroid/widget/CompoundButton;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected bindEngineCheckboxesToMenu()V
    .locals 3

    .prologue
    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getSearchEngineGroup()Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getSearchEngineGroup()Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 66
    .local v0, "engineButton":Landroid/widget/CompoundButton;
    new-instance v2, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference$1;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference$1;-><init>(Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "engineButton":Landroid/widget/CompoundButton;
    :cond_0
    return-void
.end method

.method public getCheckedEngineIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v1, "engineIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getSearchEngineGroup()Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 54
    invoke-virtual {p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->getSearchEngineGroup()Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 55
    .local v0, "engineButton":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "engineButton":Landroid/widget/CompoundButton;
    :cond_1
    return-object v1
.end method

.method protected getItemResId()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0b0060

    return v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lorg/mozilla/focus/search/SearchEngineListPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lorg/mozilla/focus/search/MultiselectSearchEngineListPreference;->bindEngineCheckboxesToMenu()V

    .line 33
    return-object v0
.end method

.method protected updateDefaultItem(Landroid/widget/CompoundButton;)V
    .locals 1
    .param p1, "defaultButton"    # Landroid/widget/CompoundButton;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setActivated(Z)V

    .line 48
    return-void
.end method

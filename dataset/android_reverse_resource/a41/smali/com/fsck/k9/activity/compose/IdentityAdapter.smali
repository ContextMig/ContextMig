.class public Lcom/fsck/k9/activity/compose/IdentityAdapter;
.super Landroid/widget/BaseAdapter;
.source "IdentityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;,
        Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;,
        Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v5

    .line 36
    .local v5, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v1

    .line 37
    .local v1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 38
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getIdentities()Ljava/util/List;

    move-result-object v2

    .line 40
    .local v2, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Identity;

    .line 41
    .local v3, "identity":Lcom/fsck/k9/Identity;
    new-instance v8, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    invoke-direct {v8, v3, v0}, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;-><init>(Lcom/fsck/k9/Identity;Lcom/fsck/k9/Account;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    .end local v3    # "identity":Lcom/fsck/k9/Identity;
    :cond_1
    iput-object v4, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/List;

    .line 45
    return-void
.end method

.method private static getIdentityDescription(Lcom/fsck/k9/Identity;)Ljava/lang/String;
    .locals 4
    .param p0, "identity"    # Lcom/fsck/k9/Identity;

    .prologue
    .line 124
    const-string v0, "%s <%s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fsck/k9/Account;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0c005b

    const/4 v8, 0x0

    .line 84
    iget-object v6, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 86
    .local v4, "item":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 87
    .local v5, "view":Landroid/view/View;
    instance-of v6, v4, Lcom/fsck/k9/Account;

    if-eqz v6, :cond_2

    .line 88
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;

    if-eqz v6, :cond_1

    .line 89
    move-object v5, p2

    :goto_0
    move-object v0, v4

    .line 98
    check-cast v0, Lcom/fsck/k9/Account;

    .line 99
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;

    .line 100
    .local v1, "holder":Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;
    iget-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->chip:Landroid/view/View;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "holder":Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;
    :cond_0
    :goto_1
    return-object v5

    .line 91
    :cond_1
    iget-object v6, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03000f

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 92
    new-instance v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;

    invoke-direct {v1}, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;-><init>()V

    .line 93
    .restart local v1    # "holder":Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->name:Landroid/widget/TextView;

    .line 94
    const v6, 0x7f0c0046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->chip:Landroid/view/View;

    .line 95
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v1    # "holder":Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;
    :cond_2
    instance-of v6, v4, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    if-eqz v6, :cond_0

    .line 103
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;

    if-eqz v6, :cond_3

    .line 104
    move-object v5, p2

    :goto_2
    move-object v3, v4

    .line 113
    check-cast v3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    .line 114
    .local v3, "identityContainer":Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;
    iget-object v2, v3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->identity:Lcom/fsck/k9/Identity;

    .line 115
    .local v2, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;

    .line 116
    .local v1, "holder":Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;
    iget-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->description:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/fsck/k9/activity/compose/IdentityAdapter;->getIdentityDescription(Lcom/fsck/k9/Identity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    .end local v1    # "holder":Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    .end local v3    # "identityContainer":Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;
    :cond_3
    iget-object v6, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030010

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 107
    new-instance v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;

    invoke-direct {v1}, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;-><init>()V

    .line 108
    .restart local v1    # "holder":Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->name:Landroid/widget/TextView;

    .line 109
    const v6, 0x7f0c0047

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->description:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    return v0
.end method

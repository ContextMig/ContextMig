.class public Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;,
        Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7d97292f5f981adeL    # 9.466965224218312E296

    const-string v2, "chan/android/app/pocketnote/util/view/NavigationDrawerAdapter"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I[Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public getItemView(Landroid/view/View;Landroid/view/ViewGroup;Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoInit()[Z

    move-result-object v3

    move-object v1, p3

    .line 34
    check-cast v1, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;

    .line 36
    .local v1, "item":Lchan/android/app/pocketnote/util/view/NavigationMenuItem;
    if-nez p1, :cond_0

    const/4 v2, 0x7

    aput-boolean v6, v3, v2

    .line 37
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030020

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/16 v2, 0x8

    aput-boolean v6, v3, v2

    .line 38
    new-instance v2, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;

    invoke-direct {v2, v0}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;-><init>(Landroid/view/View;)V

    const/16 v4, 0x9

    aput-boolean v6, v3, v4

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0xa

    aput-boolean v6, v3, v4

    .line 43
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v4, v2, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xc

    aput-boolean v6, v3, v4

    .line 44
    iget-object v2, v2, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->getIcon()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    const/16 v2, 0xd

    aput-boolean v6, v3, v2

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuItemHolder;

    const/16 v4, 0xb

    aput-boolean v6, v3, v4

    move-object v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 69
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;

    invoke-interface {v0}, Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;->getType()I

    move-result v0

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method public getSectionView(Landroid/view/View;Landroid/view/ViewGroup;Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoInit()[Z

    move-result-object v3

    move-object v1, p3

    .line 49
    check-cast v1, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;

    .line 51
    .local v1, "item":Lchan/android/app/pocketnote/util/view/NavigationMenuSection;
    if-nez p1, :cond_0

    const/16 v2, 0xe

    aput-boolean v6, v3, v2

    .line 52
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030021

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/16 v2, 0xf

    aput-boolean v6, v3, v2

    .line 53
    new-instance v2, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;

    invoke-direct {v2, p0, v0}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;-><init>(Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;Landroid/view/View;)V

    const/16 v4, 0x10

    aput-boolean v6, v3, v4

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0x11

    aput-boolean v6, v3, v4

    .line 58
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v2, v2, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;->section:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/util/view/NavigationMenuSection;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const/16 v2, 0x13

    aput-boolean v6, v3, v2

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter$MenuSectionHolder;

    const/16 v4, 0x12

    aput-boolean v6, v3, v4

    move-object v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 24
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    .line 25
    invoke-interface {v1}, Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;->getType()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    .line 26
    invoke-virtual {p0, p2, p3, v1}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->getItemView(Landroid/view/View;Landroid/view/ViewGroup;Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x4

    aput-boolean v4, v2, v1

    .line 30
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    const/4 v1, 0x6

    aput-boolean v4, v2, v1

    return-object v0

    .line 28
    :cond_0
    invoke-virtual {p0, p2, p3, v1}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->getSectionView(Landroid/view/View;Landroid/view/ViewGroup;Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x5

    aput-boolean v4, v2, v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    const/4 v1, 0x2

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isEnabled(I)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 74
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;

    invoke-interface {v0}, Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;->isEnabled()Z

    move-result v0

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

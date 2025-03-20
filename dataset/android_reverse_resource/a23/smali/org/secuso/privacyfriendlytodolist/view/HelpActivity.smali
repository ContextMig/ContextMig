.class public Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/HelpActivity$HelpFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 49
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->setContentView(I)V

    const p1, 0x7f09011b

    .line 52
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090083

    .line 53
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 54
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/HelpDataDump;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/HelpDataDump;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/HelpDataDump;->getDataGeneral()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    new-instance v3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableListAdapter;

    invoke-direct {v3, p0, v2, v1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0e005a

    .line 62
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f06006e

    .line 63
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 64
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

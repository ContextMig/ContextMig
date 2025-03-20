.class public Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CalendarPopup.java"


# instance fields
.field private dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

.field private expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

.field private lv:Landroid/widget/ExpandableListView;

.field rl:Landroid/widget/RelativeLayout;

.field private tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->tasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0026

    .line 47
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->setContentView(I)V

    const p1, 0x7f0900cf

    .line 49
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->rl:Landroid/widget/RelativeLayout;

    const p1, 0x7f090058

    .line 50
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->lv:Landroid/widget/ExpandableListView;

    const p1, 0x7f09011a

    .line 52
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f0e0040

    .line 55
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f06006e

    .line 56
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 57
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "Deadlines"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->tasks:Ljava/util/ArrayList;

    .line 69
    :cond_2
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->updateAdapter()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateAdapter()V
    .locals 2

    .line 89
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->tasks:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    .line 90
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->lv:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

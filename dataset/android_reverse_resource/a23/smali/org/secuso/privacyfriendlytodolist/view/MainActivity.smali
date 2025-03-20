.class public Lorg/secuso/privacyfriendlytodolist/view/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final KEY_CLICKED_LIST:Ljava/lang/String; = "restore_clicked_list_with_savedinstancestate"

.field private static final KEY_DUMMY_LIST:Ljava/lang/String; = "restore_dummy_list_with_savedinstancestate"

.field private static final KEY_FRAGMENT_CONFIG_CHANGE_SAVE:Ljava/lang/String; = "current_fragment"

.field private static final KEY_IS_UNLOCKED:Ljava/lang/String; = "restore_is_unlocked_key_with_savedinstancestate"

.field public static final KEY_SELECTED_FRAGMENT_BY_NOTIFICATION:Ljava/lang/String; = "fragment_choice"

.field private static final KEY_TODO_LISTS:Ljava/lang/String; = "restore_todo_list_key_with_savedinstancestate"

.field private static final KEY_UNLOCK_UNTIL:Ljava/lang/String; = "restore_unlock_until_key_with_savedinstancestate"

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static final UnlockPeriod:J = 0x7530L


# instance fields
.field private adapter:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

.field affectedRows:I

.field private clickedList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

.field private containerActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

.field private currentFragment:Landroid/support/v4/app/Fragment;

.field private dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

.field private drawer:Landroid/support/v4/widget/DrawerLayout;

.field private dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

.field private exLv:Landroid/widget/ExpandableListView;

.field private expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private inList:Z

.field private initialAlert:Landroid/widget/TextView;

.field isInitialized:Z

.field isUnlocked:Z

.field private mRecyclerView:Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;

.field private navigationBottomView:Landroid/support/design/widget/NavigationView;

.field private navigationView:Landroid/support/design/widget/NavigationView;

.field notificationDone:I

.field private optionFab:Landroid/support/design/widget/FloatingActionButton;

.field private reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

.field private reminderServiceConnection:Landroid/content/ServiceConnection;

.field private rl:Landroid/widget/RelativeLayout;

.field private secondAlert:Landroid/widget/TextView;

.field private todoLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation
.end field

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private tv:Landroid/widget/TextView;

.field unlockUntil:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 100
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isInitialized:Z

    .line 135
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    const-wide/16 v0, -0x1

    .line 136
    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 671
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$3;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->collapseAll()V

    return-void
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showTasksOfList(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V

    return-void
.end method

.method static synthetic access$1300(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    return p0
.end method

.method static synthetic access$200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    return-object p0
.end method

.method static synthetic access$302(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Lorg/secuso/privacyfriendlytodolist/model/ReminderService;)Lorg/secuso/privacyfriendlytodolist/model/ReminderService;
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    return-object p1
.end method

.method static synthetic access$400(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->adapter:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->addListToNav()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addListToNav()V
    .locals 8

    const v0, 0x7f0900b9

    .line 769
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    .line 770
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 771
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 773
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0004

    .line 774
    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 779
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 780
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v3

    .line 781
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v4

    const v5, 0x7f09006a

    const/4 v6, 0x1

    .line 782
    invoke-interface {v0, v5, v4, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 783
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const v5, 0x7f08006d

    .line 784
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 785
    new-instance v5, Landroid/widget/ImageButton;

    const/4 v6, 0x0

    const v7, 0x7f0f00ad

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v6, 0x7f080068

    .line 786
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 787
    new-instance v6, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v7}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v7

    invoke-direct {v6, p0, v7, v3, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private authAndGuiInit(Landroid/os/Bundle;)V
    .locals 5

    .line 311
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 312
    :cond_0
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Landroid/os/Bundle;Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;)V

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->setCallback(Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog$PinCallback;)V

    .line 334
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/PinDialog;->show()V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initActivity(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private bindToReminderService()V
    .locals 3

    .line 592
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "bindToReminderService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 596
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private collapseAll()V
    .locals 3

    .line 180
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 182
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private guiSetup()V
    .locals 7

    const v0, 0x7f090117

    .line 414
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 415
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x7f09006b

    .line 418
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    .line 419
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f0e0080

    const v6, 0x7f0e007f

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 421
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 422
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 423
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->addListToNav()V

    const v0, 0x7f0900b9

    .line 426
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const v0, 0x7f0900ba

    .line 427
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationBottomView:Landroid/support/design/widget/NavigationView;

    .line 428
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 429
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationBottomView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 431
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private hasPin()Z
    .locals 4

    .line 344
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_pin_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 347
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_pin"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_pin"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private initFab(ZIZ)V
    .locals 1

    .line 936
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 938
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoTasks(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 943
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->optionFab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    invoke-direct {v0, p0, p2, p3}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;IZ)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAllTasks()V
    .locals 2

    .line 885
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 887
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoTasks(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 888
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-direct {v1, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    .line 890
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 906
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 907
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 908
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->optionFab:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    const/4 v0, 0x1

    .line 909
    invoke-direct {p0, v0, v1, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initFab(ZIZ)V

    .line 910
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->hints()V

    return-void
.end method

.method private showTasksOfList(I)V
    .locals 5

    .line 916
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 919
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 920
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 921
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 922
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    :cond_1
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-direct {v1, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    .line 926
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 927
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 928
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->optionFab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    const/4 v0, 0x1

    .line 929
    invoke-direct {p0, v0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initFab(ZIZ)V

    return-void
.end method

.method private startListDialog()V
    .locals 2

    .line 797
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 798
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    .line 799
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->adapter:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    .line 801
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;-><init>(Landroid/content/Context;)V

    .line 802
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 816
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->show()V

    return-void
.end method

.method private startTut()V
    .locals 2

    .line 823
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 824
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 825
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getClickedList()Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->clickedList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-object v0
.end method

.method public getDbHelper()Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    return-object v0
.end method

.method public getDummyList()Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-object v0
.end method

.method public getListByID(I)Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 3

    .line 757
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 758
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTodoLists(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 638
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    if-eqz p1, :cond_0

    .line 639
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    .line 641
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    return-object p1
.end method

.method public getTodoTasks()Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 4

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoTasks(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 650
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 651
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setDummyList()V

    .line 652
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    const-string v3, "All tasks"

    invoke-virtual {v2, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setName(Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v2, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setTasks(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-object v0
.end method

.method public hints()V
    .locals 10

    .line 1090
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1091
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 1092
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoTasks(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0x14

    const-wide/16 v7, 0x5dc

    const/4 v9, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 1093
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initialAlert:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1097
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1098
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1099
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1100
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initialAlert:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1104
    :cond_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initialAlert:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initialAlert:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 1108
    :goto_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoTasks(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1109
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->secondAlert:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1110
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1111
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1112
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1113
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1114
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->secondAlert:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 1116
    :cond_1
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->secondAlert:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->secondAlert:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    :goto_1
    return-void
.end method

.method public initActivity(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    .line 357
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getTodoLists(Z)Ljava/util/ArrayList;

    .line 359
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 360
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 361
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V

    if-eqz v1, :cond_0

    const-string v2, "fragment_selector_key"

    const-string v3, "fragment_choice"

    .line 365
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "key_for_parcels"

    .line 366
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 367
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CURRENT_TODO_LIST_ID"

    .line 368
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "SHOW_FAB"

    .line 369
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-direct {p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 371
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 375
    :cond_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_1

    .line 376
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V

    .line 377
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity was not retained."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "restore_todo_list_key_with_savedinstancestate"

    .line 383
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    const-string v1, "restore_clicked_list_with_savedinstancestate"

    .line 384
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->clickedList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    const-string v1, "restore_dummy_list_with_savedinstancestate"

    .line 385
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    goto :goto_0

    .line 387
    :cond_2
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not restore old state because savedInstanceState is null."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity was retained."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_1
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->guiSetup()V

    .line 395
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isInitialized:Z

    const/4 p1, 0x0

    .line 396
    iput-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    return-void
.end method

.method public notifyReminderService(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 5

    .line 704
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    if-eqz v0, :cond_2

    .line 707
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getReminderTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->hasDeadline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->processTask(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    .line 709
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Reminder is set!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :cond_1
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reminder service was not informed about the task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    :cond_2
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Service is null. Cannot update alarms"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const v0, 0x7f09006b

    .line 603
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    .line 604
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 606
    :cond_0
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    if-eqz v0, :cond_1

    .line 607
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V

    .line 608
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    .line 610
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 611
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 630
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 992
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getLongClickedTodo()Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    move-result-object v0

    .line 994
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 1080
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid menu item selected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1042
    :sswitch_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->optionFab:Landroid/support/design/widget/FloatingActionButton;

    const v4, 0x7f0e00c1

    invoke-static {v1, v4, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 1043
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1044
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 1045
    iget-object v5, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v5}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->putSubtaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {v2, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->putTaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    move-result v2

    iput v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->affectedRows:I

    .line 1048
    iget v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->affectedRows:I

    if-ne v2, v3, :cond_1

    .line 1049
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->hints()V

    goto :goto_1

    .line 1051
    :cond_1
    sget-object v2, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "Task was not removed from the database. Maybe it was not added beforehand (then this is no error)?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :goto_1
    iget-boolean v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_2

    .line 1055
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showTasksOfList(I)V

    goto :goto_2

    .line 1057
    :cond_2
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V

    :goto_2
    const v2, 0x7f0e00bb

    .line 1060
    new-instance v3, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;

    invoke-direct {v3, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Lorg/secuso/privacyfriendlytodolist/model/Tuple;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 1076
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    goto/16 :goto_4

    .line 1012
    :sswitch_1
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getDbHelper()Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getRight()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-static {v1, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->putSubtaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    move-result v1

    iput v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->affectedRows:I

    .line 1013
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getRight()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1014
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->affectedRows:I

    if-ne v0, v3, :cond_3

    .line 1015
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00be

    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 1017
    :cond_3
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Subtask was not removed from the database. Maybe it was not added beforehand (then this is no error)?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_3
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 1021
    :sswitch_2
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {v1, p0, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;-><init>(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    .line 1022
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->titleEdit()V

    .line 1023
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->setListSelector(IZ)V

    .line 1025
    new-instance v2, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;

    invoke-direct {v2, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Lorg/secuso/privacyfriendlytodolist/model/Tuple;)V

    invoke-virtual {v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 1039
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->show()V

    goto :goto_4

    .line 997
    :sswitch_3
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getRight()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-direct {v1, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;-><init>(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)V

    .line 998
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->titleEdit()V

    .line 999
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$7;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$7;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    invoke-virtual {v1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 1008
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->show()V

    .line 1083
    :goto_4
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090049 -> :sswitch_3
        0x7f09004a -> :sswitch_2
        0x7f09005c -> :sswitch_1
        0x7f09005d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 240
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->finish()V

    return-void

    .line 247
    :cond_0
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/tutorial/PrefManager;->isFirstTimeLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startTut()V

    .line 250
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->finish()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "restore_is_unlocked_key_with_savedinstancestate"

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    const-string v1, "restore_unlock_until_key_with_savedinstancestate"

    .line 255
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    goto :goto_0

    .line 257
    :cond_2
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    const-wide/16 v1, -0x1

    .line 258
    iput-wide v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    :goto_0
    const v1, 0x7f0b001d

    .line 261
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->setContentView(I)V

    const v1, 0x7f0900d1

    .line 263
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->rl:Landroid/widget/RelativeLayout;

    const v1, 0x7f090077

    .line 264
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->exLv:Landroid/widget/ExpandableListView;

    const v1, 0x7f09012b

    .line 265
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->tv:Landroid/widget/TextView;

    const v1, 0x7f09007c

    .line 266
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->optionFab:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f090092

    .line 267
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initialAlert:Landroid/widget/TextView;

    const v1, 0x7f0900ee

    .line 268
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->secondAlert:Landroid/widget/TextView;

    .line 270
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->hints()V

    .line 272
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    const v1, 0x7f110001

    .line 273
    invoke-static {p0, v1, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 289
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->authAndGuiInit(Landroid/os/Bundle;)V

    .line 290
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-direct {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;-><init>()V

    .line 291
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setDummyList()V

    .line 292
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoListInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoList;)I

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .line 973
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 976
    iget-wide p2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {p2, p3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p2

    .line 977
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p3

    .line 978
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getMenuHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0x7f0c0007

    .line 982
    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0008

    .line 984
    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090008

    .line 149
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    .line 151
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 170
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 571
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 573
    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    .line 574
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "service is now null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 462
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    const v4, 0x7f0900b6

    if-ne v0, v4, :cond_0

    .line 465
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 466
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/Settings;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, v2

    iput-wide v6, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 468
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const v4, 0x7f0900b8

    if-ne v0, v4, :cond_1

    .line 470
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 471
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/tutorial/TutorialActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, v2

    iput-wide v6, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 473
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    const v4, 0x7f0900aa

    if-ne v0, v4, :cond_2

    .line 475
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 476
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, v2

    iput-wide v6, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 478
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_2
    const v4, 0x7f0900b7

    if-ne v0, v4, :cond_3

    .line 480
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 481
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, v2

    iput-wide v6, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 483
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    const v4, 0x7f0900b0

    if-ne v0, v4, :cond_4

    .line 485
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 486
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, v2

    iput-wide v6, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 488
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    const v4, 0x7f0900b5

    if-ne v0, v4, :cond_5

    .line 490
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 491
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/HelpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, v2

    iput-wide v6, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 493
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const v2, 0x7f0900ab

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 495
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 496
    iput-boolean v3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    .line 497
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V

    .line 498
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0e006d

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 499
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 500
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    const v2, 0x7f0900b2

    if-eq v0, v2, :cond_8

    const v2, 0x7f0900b3

    if-eq v0, v2, :cond_8

    const v2, 0x7f0900b4

    if-ne v0, v2, :cond_7

    goto :goto_0

    .line 510
    :cond_7
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 511
    iput-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    .line 512
    invoke-direct {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showTasksOfList(I)V

    .line 513
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 502
    :cond_8
    :goto_0
    iget-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    if-nez p1, :cond_9

    .line 503
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 504
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v3

    .line 507
    :cond_9
    iget-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->inList:Z

    if-eqz p1, :cond_a

    return v3

    :cond_a
    :goto_1
    const p1, 0x7f09006b

    .line 516
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    .line 517
    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 191
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->DEADLINE:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    .line 193
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->collapseAll()V

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 223
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 218
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 219
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 220
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->DEADLINE:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->OPEN_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V

    .line 206
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v2

    .line 209
    :pswitch_3
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->COMPLETED_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V

    .line 210
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v2

    .line 201
    :pswitch_4
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->ALL_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V

    .line 202
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v2

    .line 213
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 214
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 215
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->PRIORITY:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    goto :goto_0

    .line 197
    :pswitch_6
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startListDialog()V

    .line 198
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->addListToNav()V

    const/4 p1, 0x0

    move-object v3, v0

    move v0, p1

    move-object p1, v3

    :goto_0
    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->addSortCondition(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;)V

    goto :goto_1

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->removeSortCondition(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;)V

    .line 232
    :goto_1
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f090006
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 0

    .line 534
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 541
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isInitialized:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    if-nez v0, :cond_2

    iget-wide v3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 543
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->finish()V

    .line 545
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 546
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    if-nez v0, :cond_1

    .line 547
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->bindToReminderService()V

    .line 548
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 549
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->guiSetup()V

    .line 550
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V

    return-void

    .line 555
    :cond_2
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    if-nez v0, :cond_4

    iget-wide v3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    .line 556
    iput-wide v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    .line 558
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->reminderService:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    if-nez v0, :cond_5

    .line 559
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->bindToReminderService()V

    .line 561
    :cond_5
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 563
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 299
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "restore_todo_list_key_with_savedinstancestate"

    .line 300
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->todoLists:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "restore_clicked_list_with_savedinstancestate"

    .line 301
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->clickedList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "restore_dummy_list_with_savedinstancestate"

    .line 302
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "restore_is_unlocked_key_with_savedinstancestate"

    .line 303
    iget-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "restore_unlock_until_key_with_savedinstancestate"

    .line 304
    iget-wide v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->unlockUntil:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 402
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 403
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->uncheckNavigationEntries()V

    .line 404
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    .line 527
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->isUnlocked:Z

    return-void
.end method

.method public sendToDatabase(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)Z
    .locals 4

    .line 728
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoListInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoList;)I

    move-result v0

    const v1, 0x7f0e0075

    .line 730
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 731
    :cond_0
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    move-result v0

    .line 733
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->notifyReminderService(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    const v1, 0x7f0e00c2

    .line 734
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 735
    :cond_1
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    if-eqz v0, :cond_4

    .line 736
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoSubTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    move-result v0

    const v1, 0x7f0e00bf

    .line 737
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 744
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    .line 747
    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->setId(I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v3

    .line 739
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot save unknown descendant of BaseTodo in the database."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClickedList(Lorg/secuso/privacyfriendlytodolist/model/TodoList;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->clickedList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-void
.end method

.method public setDummyList(Lorg/secuso/privacyfriendlytodolist/model/TodoList;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->dummyList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-void
.end method

.method public uncheckNavigationEntries()V
    .locals 4

    .line 439
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 442
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v3}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :cond_0
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "Navigation entries unchecked."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationBottomView:Landroid/support/design/widget/NavigationView;

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationBottomView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 450
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->navigationBottomView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v3}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    :cond_2
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Navigation-Bottom entries unchecked."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

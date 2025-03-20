.class public Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CalendarActivity.java"


# instance fields
.field private calendarGridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

.field private calendarView:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

.field protected containerActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

.field private dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

.field private tasksPerDay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private todaysTasks:Ljava/util/ArrayList;
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

    .line 58
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->tasksPerDay:Ljava/util/HashMap;

    return-void
.end method

.method private absSecondsToDate(J)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 159
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/Helper;->DATE_FORMAT:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarView:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->updateDeadlines()V

    return-void
.end method

.method static synthetic access$200(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarGridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;J)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->absSecondsToDate(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->todaysTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->todaysTasks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Ljava/util/HashMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->tasksPerDay:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->showDeadlineTasks(Ljava/util/ArrayList;)V

    return-void
.end method

.method private showDeadlineTasks(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarPopup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Deadlines"

    .line 166
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDeadlines()V
    .locals 5

    .line 139
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoTasks(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->tasksPerDay:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 144
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v2

    .line 145
    invoke-direct {p0, v2, v3}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->absSecondsToDate(J)Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->tasksPerDay:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->tasksPerDay:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->tasksPerDay:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarGridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->tasksPerDay:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->setTodoTasks(Ljava/util/HashMap;)V

    .line 153
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarGridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b003c

    .line 75
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->setContentView(I)V

    const p1, 0x7f090119

    .line 77
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f0e0039

    .line 80
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f06006e

    .line 81
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 83
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    const p1, 0x7f090041

    .line 92
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarView:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    .line 93
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    const v0, 0x7f0b0025

    invoke-direct {p1, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarGridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    .line 94
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarView:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarGridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->setGridAdapter(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;)V

    .line 97
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->todaysTasks:Ljava/util/ArrayList;

    .line 100
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->updateDeadlines()V

    .line 102
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarView:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->setNextMonthOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarView:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$2;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->setPrevMontOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->calendarView:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->setDayOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 183
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 177
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

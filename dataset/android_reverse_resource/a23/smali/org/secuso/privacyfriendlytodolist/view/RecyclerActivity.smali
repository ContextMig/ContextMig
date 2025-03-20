.class public Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RecyclerActivity.java"


# instance fields
.field private backupTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field

.field private dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

.field private expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

.field private lv:Landroid/widget/ExpandableListView;

.field rl:Landroid/widget/RelativeLayout;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->backupTasks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->lv:Landroid/widget/ExpandableListView;

    return-object p0
.end method


# virtual methods
.method public getTasksInTrash()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getBin(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getLongClickedTodo()Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    move-result-object v0

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0900d2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->recoverTasks(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    .line 87
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 89
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->recoverSubtasks(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->updateAdapter()V

    .line 95
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 156
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 157
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->setContentView(I)V

    const p1, 0x7f0900d0

    .line 159
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->rl:Landroid/widget/RelativeLayout;

    const p1, 0x7f090127

    .line 160
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->lv:Landroid/widget/ExpandableListView;

    const p1, 0x7f09002b

    .line 161
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->tv:Landroid/widget/TextView;

    const p1, 0x7f09011c

    .line 164
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f0e0036

    .line 167
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f06006e

    .line 168
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 169
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 170
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->updateAdapter()V

    .line 179
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getTasksInTrash()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->backupTasks:Ljava/util/List;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 144
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 147
    iget-wide p2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {p2, p3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    .line 148
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    .line 149
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getMenuHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    const p3, 0x7f0c0001

    .line 151
    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 185
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f09003d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 112
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getBin(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0028

    .line 114
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f0e00d4

    .line 117
    new-instance v3, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;

    invoke-direct {v3, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0086

    .line 128
    new-instance v2, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$2;

    invoke-direct {v2, p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 138
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 104
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->finish()V

    return v2
.end method

.method protected onPause()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public updateAdapter()V
    .locals 2

    .line 190
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 192
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->dbhelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getBin(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-direct {v1, p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    .line 194
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->lv:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->expandableTodoTaskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 195
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->lv:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->lv:Landroid/widget/ExpandableListView;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$3;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

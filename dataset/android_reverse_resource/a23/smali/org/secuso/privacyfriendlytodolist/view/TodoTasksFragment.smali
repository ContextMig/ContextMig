.class public Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;
.super Landroid/support/v4/app/Fragment;
.source "TodoTasksFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "fragment_selector_key"

.field public static final SHOW_FLOATING_BUTTON:Ljava/lang/String; = "SHOW_FAB"

.field private static final TAG:Ljava/lang/String; = "TodoTasksFragment"


# instance fields
.field private containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

.field private currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

.field private expandableListView:Landroid/widget/ExpandableListView;

.field private taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

.field private todoTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->todoTasks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->todoTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private collapseAll()V
    .locals 3

    .line 333
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 335
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initExListViewGUI(Landroid/view/View;)V
    .locals 3

    .line 161
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->todoTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    const v0, 0x7f09012b

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090077

    .line 163
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->expandableListView:Landroid/widget/ExpandableListView;

    .line 164
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$2;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 186
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$3;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 209
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 211
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 212
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->expandableListView:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method private initFab(Landroid/view/View;Z)V
    .locals 1

    const v0, 0x7f09007c

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    if-eqz p2, :cond_0

    .line 137
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 156
    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 238
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getLongClickedTodo()Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    move-result-object v0

    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 290
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid menu item selected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :sswitch_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getDbHelper()Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {v1, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->putTaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    move-result v1

    .line 281
    iget-object v4, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->todoTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-ne v1, v3, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00c1

    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :cond_0
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->TAG:Ljava/lang/String;

    const-string v1, "Task was not removed from the database. Maybe it was not added beforehand (then this is no error)?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 258
    :sswitch_1
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getDbHelper()Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getRight()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-static {v1, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->putSubtaskInTrash(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    move-result v1

    .line 259
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getRight()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-ne v1, v3, :cond_1

    .line 261
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00be

    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 263
    :cond_1
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->TAG:Ljava/lang/String;

    const-string v1, "Subtask was not removed from the database. Maybe it was not added beforehand (then this is no error)?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 267
    :sswitch_2
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {v1, v2, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;-><init>(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    .line 268
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$5;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$5;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)V

    invoke-virtual {v1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 277
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->show()V

    goto :goto_2

    .line 244
    :sswitch_3
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getRight()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-direct {v1, v2, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;-><init>(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)V

    .line 245
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$4;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$4;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)V

    invoke-virtual {v1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 254
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->show()V

    .line 293
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f090049 -> :sswitch_3
        0x7f09004a -> :sswitch_2
        0x7f09005c -> :sswitch_1
        0x7f09005d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 299
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->setHasOptionsMenu(Z)V

    .line 300
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .line 220
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 223
    iget-wide p2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {p2, p3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p2

    .line 224
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p3

    .line 225
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getContext()Landroid/content/Context;

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

    .line 229
    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0008

    .line 231
    invoke-virtual {p3, p2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 316
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0002

    .line 317
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0c0005

    .line 318
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/high16 v0, 0x7f0c0000

    .line 319
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090008

    .line 321
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 322
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView;

    .line 323
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 83
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iput-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    .line 85
    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    if-nez p3, :cond_0

    .line 86
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "TodoTasksFragment could not find containing activity."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "SHOW_FAB"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 95
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CURRENT_TODO_LIST_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 98
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v2, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getListByID(I)Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 99
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->TAG:Ljava/lang/String;

    const-string v2, "List was loaded that was requested by a click on a notification."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, -0x3

    if-ne v0, v2, :cond_2

    .line 101
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getDummyList()Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    const/4 v0, 0x1

    .line 103
    sget-object v2, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->TAG:Ljava/lang/String;

    const-string v3, "Dummy list was loaded."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getClickedList()Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 106
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->TAG:Ljava/lang/String;

    const-string v2, "Clicked list was loaded."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v1

    :goto_1
    const v2, 0x7f0b003e

    .line 110
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    if-eqz p2, :cond_3

    .line 113
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getTasks()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->todoTasks:Ljava/util/ArrayList;

    .line 115
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->initExListViewGUI(Landroid/view/View;)V

    .line 116
    invoke-direct {p0, p1, p3}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->initFab(Landroid/view/View;Z)V

    .line 118
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p2, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setListNames(Z)V

    .line 121
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 122
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {p3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 126
    :cond_3
    sget-object p2, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->TAG:Ljava/lang/String;

    const-string p3, "Cannot identify selected list."

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 360
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->collapseAll()V

    .line 362
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 386
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 381
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 382
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 383
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->DEADLINE:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->OPEN_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V

    .line 369
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v1

    .line 372
    :pswitch_3
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->COMPLETED_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V

    .line 373
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v1

    .line 364
    :pswitch_4
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->ALL_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V

    .line 365
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v1

    .line 376
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 377
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 378
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->PRIORITY:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    :goto_0
    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->addSortCondition(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;)V

    goto :goto_1

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->removeSortCondition(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;)V

    .line 395
    :goto_1
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->saveNewTasks()V

    .line 306
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 348
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->collapseAll()V

    .line 349
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setQueryString(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 340
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->collapseAll()V

    .line 341
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setQueryString(Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->taskAdapter:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 311
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public saveNewTasks()V
    .locals 6

    const/4 v0, 0x0

    .line 402
    :goto_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->todoTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 403
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->todoTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 406
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->isDummyList()Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->currentList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setListId(I)V

    .line 409
    :cond_0
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v2, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->sendToDatabase(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v2, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->notifyReminderService(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    .line 414
    :cond_1
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 415
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setTaskId(J)V

    .line 416
    iget-object v4, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->containingActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v4, v3}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->sendToDatabase(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

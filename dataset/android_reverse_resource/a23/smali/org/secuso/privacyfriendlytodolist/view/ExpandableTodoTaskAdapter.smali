.class public Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableTodoTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;,
        Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;,
        Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;,
        Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupPrioViewHolder;,
        Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;,
        Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;,
        Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;
    }
.end annotation


# static fields
.field private static final CH_SETTING_ROW:I = 0x1

.field private static final CH_SUBTASK_ROW:I = 0x2

.field private static final CH_TASK_DESCRIPTION_ROW:I = 0x0

.field private static final GR_PRIO_ROW:I = 0x1

.field private static final GR_TASK_ROW:I


# instance fields
.field private context:Landroid/content/Context;

.field private filterMeasure:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

.field private filteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field

.field private longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/secuso/privacyfriendlytodolist/model/Tuple<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field private prioBarPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private queryString:Ljava/lang/String;

.field private rawData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field

.field private showListName:Z

.field private sortType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortType:I

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    .line 109
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->showListName:Z

    .line 112
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    .line 114
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prefs:Landroid/content/SharedPreferences;

    .line 116
    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->rawData:Ljava/util/ArrayList;

    .line 119
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->ALL_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setQueryString(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filterTasks()V

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->hasAutoProgress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private countTasksPerPriority()V
    .locals 6

    .line 255
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 256
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 260
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 261
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 262
    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getPriority()Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v3

    .line 263
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v4, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private filterTasks()V
    .locals 5

    .line 178
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filterMeasure:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->OPEN_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 181
    :goto_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filterMeasure:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    sget-object v4, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->COMPLETED_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    if-eq v1, v4, :cond_1

    move v2, v3

    .line 183
    :cond_1
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->rawData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    :cond_4
    iget-object v4, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->queryString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->checkQueryMatch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_5
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortTasks()V

    return-void
.end method

.method private getDefaultReminderTime()J
    .locals 5

    .line 384
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_default_reminder_time"

    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPriorityNameByBarPos(I)Ljava/lang/String;
    .locals 3

    .line 369
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 371
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->priority2String(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_1
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0e00ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
    .locals 6

    .line 282
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->isPriorityGroupingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 283
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 284
    iget-object v5, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    iget-object v5, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v3

    :cond_3
    sub-int/2addr p1, v1

    .line 294
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-ltz p1, :cond_4

    .line 295
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasAutoProgress()Z
    .locals 3

    .line 677
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_progress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isPriorityGroupingEnabled()Z
    .locals 2

    .line 194
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortType:I

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->PRIORITY:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addSortCondition(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;)V
    .locals 1

    .line 160
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortType:I

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->getValue()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortType:I

    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 0

    .line 350
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildType(II)I
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public getChildTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 522
    invoke-virtual {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getChildType(II)I

    move-result p3

    .line 523
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    .line 588
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p3

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 589
    new-instance p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;

    invoke-direct {p3, p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;)V

    if-nez p4, :cond_4

    .line 591
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const v0, 0x7f0b0039

    invoke-virtual {p4, v0, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    const p5, 0x7f090137

    .line 592
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->subtaskName:Landroid/widget/TextView;

    const p5, 0x7f09014b

    .line 593
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->deadlineColorBar:Landroid/view/View;

    const p5, 0x7f090043

    .line 594
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/CheckBox;

    iput-object p5, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->done:Landroid/widget/CheckBox;

    .line 595
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 552
    :pswitch_0
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;

    invoke-direct {p2, p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;)V

    if-nez p4, :cond_0

    .line 554
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0b0038

    invoke-virtual {p3, p4, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    const p3, 0x7f0900d6

    .line 556
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;->addSubTaskButton:Landroid/widget/RelativeLayout;

    const p3, 0x7f09014a

    .line 557
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;->deadlineColorBar:Landroid/view/View;

    .line 558
    invoke-virtual {p4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->isInTrash()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 560
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;

    .line 565
    :cond_1
    :goto_0
    iget-object p3, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;->addSubTaskButton:Landroid/widget/RelativeLayout;

    new-instance p5, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;

    invoke-direct {p5, p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SettingViewHolder;->deadlineColorBar:Landroid/view/View;

    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getDefaultReminderTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDeadlineColor(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 528
    :pswitch_1
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;

    invoke-direct {p2, p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;)V

    if-nez p4, :cond_2

    .line 530
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0b003a

    invoke-virtual {p3, p4, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    const p3, 0x7f09012f

    .line 531
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;->taskDescription:Landroid/widget/TextView;

    const p3, 0x7f09014c

    .line 532
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;->deadlineColorBar:Landroid/view/View;

    .line 533
    invoke-virtual {p4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 535
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;

    .line 538
    :goto_1
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDescription()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string p5, ""

    .line 539
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    .line 540
    iget-object p5, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;->taskDescription:Landroid/widget/TextView;

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object p5, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;->taskDescription:Landroid/widget/TextView;

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 544
    :cond_3
    iget-object p3, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;->taskDescription:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    :goto_2
    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$TaskDescriptionViewHolder;->deadlineColorBar:Landroid/view/View;

    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getDefaultReminderTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDeadlineColor(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 597
    :cond_4
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;

    .line 600
    :goto_3
    iget-object p5, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->done:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getDone()Z

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 601
    iget-object p5, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->done:Landroid/widget/CheckBox;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    invoke-virtual {p5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 616
    iget-object p5, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->subtaskName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object p2, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SubTaskViewHolder;->deadlineColorBar:Landroid/view/View;

    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getDefaultReminderTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDeadlineColor(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    return-object p4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 313
    :cond_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 2

    .line 302
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->isPriorityGroupingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1

    .line 319
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->isPriorityGroupingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->prioBarPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getGroupTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 391
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getGroupType(I)I

    move-result p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-nez p3, :cond_0

    .line 400
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0037

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 401
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupPrioViewHolder;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupPrioViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)V

    const p4, 0x7f09012d

    .line 402
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupPrioViewHolder;->prioFlag:Landroid/widget/TextView;

    .line 403
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupPrioViewHolder;

    .line 408
    :goto_0
    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupPrioViewHolder;->prioFlag:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getPriorityNameByBarPos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 409
    invoke-virtual {p3, p1}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_4

    .line 415
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    if-nez p3, :cond_1

    .line 421
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b003b

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 423
    new-instance p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;

    invoke-direct {p3, p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)V

    const p4, 0x7f090131

    .line 424
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->name:Landroid/widget/TextView;

    const p4, 0x7f090044

    .line 425
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iput-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->done:Landroid/widget/CheckBox;

    const p4, 0x7f09012e

    .line 426
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->deadline:Landroid/widget/TextView;

    const p4, 0x7f090130

    .line 427
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->listName:Landroid/widget/TextView;

    const p4, 0x7f0900c7

    .line 428
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ProgressBar;

    iput-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const p4, 0x7f090144

    .line 429
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->seperator:Landroid/view/View;

    const p4, 0x7f09014f

    .line 430
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->deadlineColorBar:Landroid/view/View;

    .line 431
    iget-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->done:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 432
    iget-object p4, p3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->done:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 434
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    goto :goto_1

    .line 437
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;

    .line 440
    :goto_1
    iget-object p4, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->hasAutoProgress()Z

    move-result p4

    invoke-virtual {p0, p1, p4}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getProgressDone(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Z)V

    .line 442
    iget-object p4, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getProgress()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 444
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-gtz p4, :cond_2

    .line 445
    iget-object p4, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f0e0087

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 447
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 449
    :goto_2
    iget-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->showListName:Z

    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->listName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v0, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->listName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 453
    :cond_3
    iget-object v0, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->listName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    :goto_3
    iget-object v0, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->deadline:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object p4, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->deadlineColorBar:Landroid/view/View;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getDefaultReminderTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDeadlineColor(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 458
    iget-object p4, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->done:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 459
    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->done:Landroid/widget/CheckBox;

    new-instance p4, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    invoke-direct {p4, p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    invoke-virtual {p2, p4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_4
    return-object p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLongClickedTodo()Lorg/secuso/privacyfriendlytodolist/model/Tuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/secuso/privacyfriendlytodolist/model/Tuple<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    return-object v0
.end method

.method public getProgressDone(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Z)V
    .locals 4

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 632
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 634
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getDone()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    int-to-double v0, p2

    .line 638
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 640
    invoke-virtual {p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setProgress(I)V

    goto :goto_1

    .line 642
    :cond_2
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setProgress(I)V

    :goto_1
    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    if-lez p2, :cond_0

    .line 625
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 379
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filterTasks()V

    .line 380
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeSortCondition(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;)V
    .locals 2

    .line 170
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortType:I

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->getValue()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortType:I

    return-void
.end method

.method public setFilter(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filterMeasure:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    return-void
.end method

.method public setListNames(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->showListName:Z

    return-void
.end method

.method public setLongClickedSubTaskByPos(II)V
    .locals 1

    .line 133
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 136
    invoke-static {p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->makePair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    :cond_0
    return-void
.end method

.method public setLongClickedTaskByPos(I)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getTaskByPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->makePair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->queryString:Ljava/lang/String;

    return-void
.end method

.method public sortTasks()V
    .locals 4

    .line 204
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->isPriorityGroupingEnabled()Z

    move-result v0

    .line 205
    iget v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortType:I

    sget-object v2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->DEADLINE:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$SortTypes;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 207
    :goto_0
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->filteredTasks:Ljava/util/ArrayList;

    new-instance v3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;ZZ)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->countTasksPerPriority()V

    :cond_1
    return-void
.end method

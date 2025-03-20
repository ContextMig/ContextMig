.class public Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TodoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TodoListAdapter"


# instance fields
.field private allLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation
.end field

.field private contextActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

.field private filteredLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private prefs:Landroid/content/SharedPreferences;

.field private queryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->queryString:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p2}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 52
    move-object p2, p1

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->contextActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    .line 53
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Lorg/secuso/privacyfriendlytodolist/view/MainActivity;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->contextActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    return-object p0
.end method

.method private applyFilter()V
    .locals 3

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->allLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->allLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->allLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->queryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->checkQueryMatch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->allLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDefaultReminderTime()J
    .locals 5

    .line 65
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_default_reminder_time"

    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->contextActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getResources()Landroid/content/res/Resources;

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


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->position:I

    return v0
.end method

.method public getToDoListFromPosition(I)Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 2

    if-ltz p1, :cond_1

    .line 132
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->onBindViewHolder(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;I)V
    .locals 8

    .line 82
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->filteredLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 83
    iget-object v0, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getNextDeadline()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v0, 0x0

    if-gtz v5, :cond_0

    .line 85
    iget-object v1, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->contextActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->contextActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0085

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getNextDeadline()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDate(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    iget-object v1, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->done:Landroid/widget/TextView;

    const-string v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getDoneTodos()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->urgency:Landroid/view/View;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->contextActivity:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->getDefaultReminderTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDeadlineColor(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    iget-object p2, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0059

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->onViewRecycled(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;)V
    .locals 2

    .line 107
    iget-object v0, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 61
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->position:I

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->queryString:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->applyFilter()V

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->allLists:Ljava/util/ArrayList;

    .line 113
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->applyFilter()V

    return-void
.end method

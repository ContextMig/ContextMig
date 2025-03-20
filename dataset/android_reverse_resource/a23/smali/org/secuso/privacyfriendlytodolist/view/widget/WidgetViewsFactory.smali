.class public Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;
.super Ljava/lang/Object;
.source "WidgetViewsFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field private static final ID_CONSTANT:I = 0x101010

.field private static c:Landroid/content/Context;

.field private static id:I


# instance fields
.field private listChosen:Ljava/lang/String;

.field private listTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public static getListName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 175
    sput-object p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->c:Landroid/content/Context;

    .line 176
    sput p1, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->id:I

    .line 177
    invoke-static {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const v0, 0x101010

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 120
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0062

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const v4, 0x7f090155

    const v5, 0x7f090153

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 126
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 129
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f09013f

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const p1, 0x7f09012c

    const v2, 0x7f0e004f

    .line 130
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 132
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 133
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 134
    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {v0, v5, p1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 75
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->c:Landroid/content/Context;

    sget v1, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->id:I

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->getListName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listChosen:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listChosen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listTasks:Ljava/util/ArrayList;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .line 95
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->c:Landroid/content/Context;

    sget v1, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->id:I

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->getListName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listChosen:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listChosen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->listTasks:Ljava/util/ArrayList;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

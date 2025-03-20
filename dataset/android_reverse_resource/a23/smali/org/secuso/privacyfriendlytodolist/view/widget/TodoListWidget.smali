.class public Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "TodoListWidget.java"


# static fields
.field public static listChosen:Ljava/lang/String;


# instance fields
.field public views:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static getListName(Landroid/content/Context;I)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->listChosen:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 74
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p2, v0

    .line 75
    invoke-static {p1, v2}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->deleteTitlePref(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->updateHelper(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 62
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p3, v0

    .line 65
    invoke-virtual {p0, p1, p2, v2}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshWidget(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    .line 105
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v1, 0x8000000

    .line 106
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 5

    .line 123
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b005a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/widget/ListViewWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appWidgetId"

    .line 131
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 132
    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    const v3, 0x7f090154

    const v4, 0x7f0e002d

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    const v3, 0x7f0900a0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 137
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f09004e

    invoke-virtual {p0, p1, p3}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->refreshWidget(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 138
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 139
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    const v0, 0x7f09012c

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 141
    invoke-virtual {p2, p3, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 142
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    const-string p1, "UPDATE"

    const-string p2, "Widget was updated here!"

    .line 144
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateHelper(Landroid/content/Context;)V
    .locals 4

    .line 113
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 117
    invoke-virtual {p0, p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

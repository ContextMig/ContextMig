.class public Lcom/fsck/k9/provider/UnreadWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "UnreadWidgetProvider.java"


# static fields
.field private static final MAX_COUNT:I = 0x270f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static updateUnreadCount(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 30
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v5, Lcom/fsck/k9/provider/UnreadWidgetProvider;

    invoke-direct {v3, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v3, "thisWidget":Landroid/content/ComponentName;
    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 33
    .local v4, "widgetIds":[I
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/fsck/k9/provider/UnreadWidgetProvider;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v5, "appWidgetIds"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/fsck/k9/helper/UnreadWidgetProperties;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p2, "properties"    # Lcom/fsck/k9/helper/UnreadWidgetProperties;

    .prologue
    const/16 v10, 0x270f

    const/4 v9, 0x0

    .line 43
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f03003f

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 46
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getAppWidgetId()I

    move-result v0

    .line 47
    .local v0, "appWidgetId":I
    const/4 v1, 0x0

    .line 48
    .local v1, "clickIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 51
    .local v6, "unreadCount":I
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getClickIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 52
    invoke-virtual {p2, p0}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getUnreadCount(Landroid/content/Context;)I

    move-result v6

    .line 54
    if-gtz v6, :cond_1

    .line 56
    const v7, 0x7f0c0103

    const/16 v8, 0x8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    :goto_0
    const v7, 0x7f0c0104

    invoke-virtual {p2, p0}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    if-nez v1, :cond_0

    .line 74
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "clickIntent":Landroid/content/Intent;
    const-class v7, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .restart local v1    # "clickIntent":Landroid/content/Intent;
    const-string v7, "appWidgetId"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    :cond_0
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-static {p0, v0, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 82
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const v7, 0x7f0c0102

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 84
    invoke-virtual {p1, v0, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 85
    return-void

    .line 58
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const v7, 0x7f0c0103

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 60
    if-gt v6, v10, :cond_2

    .line 61
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "displayCount":Ljava/lang/String;
    :goto_2
    const v7, 0x7f0c0103

    invoke-virtual {v5, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    .end local v2    # "displayCount":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Error getting widget configuration"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x270f

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 104
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 105
    .local v0, "appWidgetId":I
    invoke-static {p1, v0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->deleteWidgetConfiguration(Landroid/content/Context;I)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "appWidgetId":I
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 93
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p3, v2

    .line 94
    .local v1, "widgetId":I
    invoke-static {p1, v1}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->getWidgetProperties(Landroid/content/Context;I)Lcom/fsck/k9/helper/UnreadWidgetProperties;

    move-result-object v0

    .line 95
    .local v0, "properties":Lcom/fsck/k9/helper/UnreadWidgetProperties;
    invoke-static {p1, p2, v0}, Lcom/fsck/k9/provider/UnreadWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/fsck/k9/helper/UnreadWidgetProperties;)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "properties":Lcom/fsck/k9/helper/UnreadWidgetProperties;
    .end local v1    # "widgetId":I
    :cond_0
    return-void
.end method

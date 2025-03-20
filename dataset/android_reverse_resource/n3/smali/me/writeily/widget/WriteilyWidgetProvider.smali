.class public Lme/writeily/widget/WriteilyWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WriteilyWidgetProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4946e8c24d589d65L    # -4.3949598435085996E-45

    const-string v2, "me/writeily/widget/WriteilyWidgetProvider"

    const/16 v3, 0x1e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 23
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 29
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 35
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 11

    .prologue
    invoke-static {}, Lme/writeily/widget/WriteilyWidgetProvider;->$jacocoInit()[Z

    move-result-object v3

    .line 45
    array-length v0, p3

    .line 48
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    aget v4, p3, v1

    const/4 v5, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 52
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030045

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 56
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "WIDGET_PATH"

    const/16 v7, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 57
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0600b1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lme/writeily/model/Constants;->DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 56
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 60
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lme/writeily/NoteActivity;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "note_source_dir"

    const/16 v9, 0xc

    const/4 v10, 0x1

    aput-boolean v10, v3, v9

    .line 61
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 63
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0xe

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 64
    const v8, 0x7f0c009a

    invoke-virtual {v5, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v7, 0xf

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 66
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lme/writeily/MainActivity;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x10

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 67
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x11

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 68
    const v8, 0x7f0c0098

    invoke-virtual {v5, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v7, 0x12

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 71
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lme/writeily/widget/FilesWidgetService;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x13

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 72
    const-string v8, "appWidgetId"

    aget v9, p3, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v8, 0x14

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 73
    const-string v8, "folder_name"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x15

    const/4 v8, 0x1

    aput-boolean v8, v3, v6

    .line 74
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v6, 0x16

    const/4 v8, 0x1

    aput-boolean v8, v3, v6

    .line 76
    const v6, 0x7f0c009b

    const v8, 0x7f0c009c

    invoke-virtual {v5, v6, v8}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    const/16 v6, 0x17

    const/4 v8, 0x1

    aput-boolean v8, v3, v6

    .line 77
    const v6, 0x7f0c009d

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    const/16 v6, 0x18

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 79
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lme/writeily/NoteActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x19

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 80
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {p1, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v7, 0x1a

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 82
    const v7, 0x7f0c009d

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    const/16 v6, 0x1b

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 85
    invoke-virtual {p2, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v4, 0x1c

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto/16 :goto_0

    .line 87
    .end local v1    # "i":I
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 88
    const/16 v4, 0x1d

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    return-void
.end method

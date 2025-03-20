.class public Lme/writeily/widget/WidgetConfigure;
.super Landroid/app/Activity;
.source "WidgetConfigure.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mAppWidgetId:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/widget/WidgetConfigure;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x79ec04f87d673ac2L

    const-string v2, "me/writeily/widget/WidgetConfigure"

    const/16 v3, 0x23

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/widget/WidgetConfigure;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/widget/WidgetConfigure;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 21
    new-instance v1, Lme/writeily/widget/WidgetConfigure$1;

    invoke-direct {v1, p0}, Lme/writeily/widget/WidgetConfigure$1;-><init>(Lme/writeily/widget/WidgetConfigure;)V

    iput-object v1, p0, Lme/writeily/widget/WidgetConfigure;->fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public final complete(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/widget/WidgetConfigure;->$jacocoInit()[Z

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lme/writeily/widget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x10

    aput-boolean v6, v1, v3

    .line 66
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    .line 90
    :goto_0
    const/16 v2, 0x20

    aput-boolean v6, v1, v2

    return-void

    .line 67
    :cond_0
    const/16 v2, 0x12

    aput-boolean v6, v1, v2

    .line 68
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lme/writeily/widget/WidgetConfigure;->mAppWidgetId:I

    const/16 v2, 0x13

    aput-boolean v6, v1, v2

    .line 72
    invoke-virtual {p0}, Lme/writeily/widget/WidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x14

    aput-boolean v6, v1, v3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lme/writeily/widget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x15

    aput-boolean v6, v1, v4

    .line 76
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v4, 0x16

    aput-boolean v6, v1, v4

    .line 77
    const-string v4, "WIDGET_PATH"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0x17

    aput-boolean v6, v1, v4

    .line 78
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v3, 0x18

    aput-boolean v6, v1, v3

    .line 80
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lme/writeily/widget/FilesWidgetService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x19

    aput-boolean v6, v1, v2

    .line 81
    const-string v2, "appWidgetId"

    iget v4, p0, Lme/writeily/widget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1a

    aput-boolean v6, v1, v2

    .line 82
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lme/writeily/widget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    const/16 v2, 0x1b

    aput-boolean v6, v1, v2

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    const/4 v4, 0x0

    const-class v5, Lme/writeily/widget/WriteilyWidgetProvider;

    invoke-direct {v2, v3, v4, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x1c

    aput-boolean v6, v1, v3

    .line 85
    const-string v3, "appWidgetIds"

    new-array v4, v6, [I

    iget v5, p0, Lme/writeily/widget/WidgetConfigure;->mAppWidgetId:I

    aput v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/16 v3, 0x1d

    aput-boolean v6, v1, v3

    .line 86
    invoke-virtual {p0, v2}, Lme/writeily/widget/WidgetConfigure;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v2, 0x1e

    aput-boolean v6, v1, v2

    .line 88
    invoke-virtual {p0}, Lme/writeily/widget/WidgetConfigure;->finish()V

    const/16 v2, 0x1f

    aput-boolean v6, v1, v2

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/widget/WidgetConfigure;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lme/writeily/widget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 41
    :goto_0
    invoke-virtual {p0}, Lme/writeily/widget/WidgetConfigure;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v6, v1, v3

    .line 43
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const/4 v4, 0x6

    aput-boolean v6, v1, v4

    .line 44
    const-string v4, "filesystem_select_folder_dialog_tag"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-boolean v6, v1, v4

    .line 45
    iget-object v4, p0, Lme/writeily/widget/WidgetConfigure;->fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lme/writeily/widget/WidgetConfigure;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v3, 0x8

    aput-boolean v6, v1, v3

    .line 47
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x9

    aput-boolean v6, v1, v4

    .line 48
    const-string v4, "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

    const-string v5, "FILESYSTEM_SELECT_FOLDER_FOR_WIDGET_ACCESS_TYPE"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-boolean v6, v1, v4

    .line 49
    new-instance v4, Lme/writeily/dialog/FilesystemDialog;

    invoke-direct {v4}, Lme/writeily/dialog/FilesystemDialog;-><init>()V

    const/16 v5, 0xb

    aput-boolean v6, v1, v5

    .line 50
    invoke-virtual {v4, v3}, Lme/writeily/dialog/FilesystemDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v3, 0xc

    aput-boolean v6, v1, v3

    .line 51
    new-instance v3, Lme/writeily/widget/WidgetConfigure$2;

    invoke-direct {v3, p0}, Lme/writeily/widget/WidgetConfigure$2;-><init>(Lme/writeily/widget/WidgetConfigure;)V

    invoke-virtual {v4, v3}, Lme/writeily/dialog/FilesystemDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/16 v3, 0xd

    aput-boolean v6, v1, v3

    .line 58
    const-string v3, "filesystem_select_folder_dialog_tag"

    invoke-virtual {v4, v2, v3}, Lme/writeily/dialog/FilesystemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/16 v2, 0xf

    aput-boolean v6, v1, v2

    return-void

    .line 36
    :cond_0
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    .line 37
    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lme/writeily/widget/WidgetConfigure;->mAppWidgetId:I

    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/widget/WidgetConfigure;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    iget-object v1, p0, Lme/writeily/widget/WidgetConfigure;->fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lme/writeily/widget/WidgetConfigure;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    return-void
.end method

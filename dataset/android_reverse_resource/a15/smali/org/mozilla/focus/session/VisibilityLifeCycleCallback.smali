.class public Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;
.super Ljava/lang/Object;
.source "VisibilityLifeCycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private activitiesInStartedState:I

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private finishAndRemoveTaskIfInBackground()V
    .locals 4

    .prologue
    .line 43
    iget v2, p0, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->activitiesInStartedState:I

    if-nez v2, :cond_0

    .line 44
    iget-object v2, p0, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 45
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 53
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    return-void

    .line 49
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 50
    .local v1, "task":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    goto :goto_0
.end method

.method static finishAndRemoveTaskIfInBackground(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/FocusApplication;

    .line 27
    invoke-virtual {v0}, Lorg/mozilla/focus/FocusApplication;->getVisibilityLifeCycleCallback()Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;

    move-result-object v0

    .line 28
    invoke-direct {v0}, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->finishAndRemoveTaskIfInBackground()V

    .line 29
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    iget v0, p0, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->activitiesInStartedState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->activitiesInStartedState:I

    .line 58
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iget v0, p0, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->activitiesInStartedState:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;->activitiesInStartedState:I

    .line 63
    return-void
.end method

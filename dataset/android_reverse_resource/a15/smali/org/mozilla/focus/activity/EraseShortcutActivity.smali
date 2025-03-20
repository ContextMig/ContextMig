.class public Lorg/mozilla/focus/activity/EraseShortcutActivity;
.super Landroid/app/Activity;
.source "EraseShortcutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->removeAllSessions()V

    .line 20
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseShortcutEvent()V

    .line 22
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/EraseShortcutActivity;->finishAndRemoveTask()V

    .line 23
    return-void
.end method

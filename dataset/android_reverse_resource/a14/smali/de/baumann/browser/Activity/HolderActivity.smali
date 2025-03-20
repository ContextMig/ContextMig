.class public Lde/baumann/browser/Activity/HolderActivity;
.super Landroid/app/Activity;
.source "HolderActivity.java"


# static fields
.field private static final TIMER_SCHEDULE_DEFAULT:I = 0x200


# instance fields
.field private first:Lde/baumann/browser/Database/Record;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->first:Lde/baumann/browser/Database/Record;

    .line 19
    iput-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/Activity/HolderActivity;)Lde/baumann/browser/Database/Record;
    .locals 0

    .line 15
    iget-object p0, p0, Lde/baumann/browser/Activity/HolderActivity;->first:Lde/baumann/browser/Database/Record;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lde/baumann/browser/Activity/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lde/baumann/browser/Activity/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lde/baumann/browser/Database/Record;

    invoke-direct {p1}, Lde/baumann/browser/Database/Record;-><init>()V

    iput-object p1, p0, Lde/baumann/browser/Activity/HolderActivity;->first:Lde/baumann/browser/Database/Record;

    .line 30
    iget-object p1, p0, Lde/baumann/browser/Activity/HolderActivity;->first:Lde/baumann/browser/Database/Record;

    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/HolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/Record;->setTitle(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lde/baumann/browser/Activity/HolderActivity;->first:Lde/baumann/browser/Database/Record;

    invoke-virtual {p0}, Lde/baumann/browser/Activity/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/Record;->setURL(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lde/baumann/browser/Activity/HolderActivity;->first:Lde/baumann/browser/Database/Record;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lde/baumann/browser/Database/Record;->setTime(J)V

    .line 34
    new-instance p1, Lde/baumann/browser/Activity/HolderActivity$1;

    invoke-direct {p1, p0}, Lde/baumann/browser/Activity/HolderActivity$1;-><init>(Lde/baumann/browser/Activity/HolderActivity;)V

    .line 46
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->timer:Ljava/util/Timer;

    .line 47
    iget-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->timer:Ljava/util/Timer;

    const-wide/16 v1, 0x200

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lde/baumann/browser/Activity/HolderActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 52
    iget-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->first:Lde/baumann/browser/Database/Record;

    .line 57
    iput-object v0, p0, Lde/baumann/browser/Activity/HolderActivity;->timer:Ljava/util/Timer;

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

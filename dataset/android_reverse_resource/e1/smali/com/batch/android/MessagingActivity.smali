.class public Lcom/batch/android/MessagingActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/b/c;


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# static fields
.field public static final ACTION_DISMISS_MESSAGE:Ljava/lang/String; = "com.batch.android.messaging.DISMISS_MESSAGE"

.field private static final a:Ljava/lang/String; = "ROTATED"

.field private static final b:Ljava/lang/String; = "batchMessage"


# instance fields
.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/batch/android/MessagingActivity$1;

    invoke-direct {v0, p0}, Lcom/batch/android/MessagingActivity$1;-><init>(Lcom/batch/android/MessagingActivity;)V

    iput-object v0, p0, Lcom/batch/android/MessagingActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Lcom/batch/android/BatchMessage;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 118
    if-nez p1, :cond_0

    move v1, v3

    .line 141
    :goto_0
    return v1

    .line 125
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/batch/android/Batch$Messaging;->loadFragment(Landroid/content/Context;Lcom/batch/android/BatchMessage;)Landroid/support/v4/app/DialogFragment;

    move-result-object v2

    .line 127
    instance-of v1, v2, Lcom/batch/android/e/b/d;

    if-eqz v1, :cond_1

    .line 128
    move-object v0, v2

    check-cast v0, Lcom/batch/android/e/b/d;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/batch/android/e/b/d;->a(Lcom/batch/android/e/b/c;)V

    .line 129
    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v4, "batchMessage"

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    const-string v2, "Unknown error while showing Batch Message (code -1)"

    invoke-static {v1, v2}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/BatchMessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 133
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 138
    const-string v2, "Unknown error while showing Batch Message (code -2)"

    invoke-static {v3, v2, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    move v1, v3

    .line 141
    goto :goto_0
.end method

.method public static startActivityForMessage(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/batch/android/BatchMessage;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batch/android/MessagingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p1, v0}, Lcom/batch/android/BatchMessage;->writeToIntent(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.batch.android.messaging.DISMISS_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    if-eqz p1, :cond_0

    const-string v0, "ROTATED"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 61
    :try_start_0
    invoke-static {v0}, Lcom/batch/android/BatchMessage;->getMessageForBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/MessagingActivity;->a(Lcom/batch/android/BatchMessage;)Z
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->finish()V

    .line 84
    :cond_1
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/MessagingActivity;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.batch.android.messaging.DISMISS_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    const-string v2, "MessagingActivity"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "batchMessage"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/batch/android/e/b/d;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lcom/batch/android/e/b/d;

    invoke-interface {v0, p0}, Lcom/batch/android/e/b/d;->a(Lcom/batch/android/e/b/c;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-static {p0}, Lcom/batch/android/Batch;->onDestroy(Landroid/app/Activity;)V

    .line 112
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/MessagingActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onDialogDismiss(Landroid/support/v4/app/DialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Landroid/support/v4/app/DialogFragment;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->finish()V

    .line 148
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const-string v0, "ROTATED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 98
    invoke-static {p0}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    .line 99
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 104
    invoke-static {p0}, Lcom/batch/android/Batch;->onStop(Landroid/app/Activity;)V

    .line 105
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 106
    return-void
.end method

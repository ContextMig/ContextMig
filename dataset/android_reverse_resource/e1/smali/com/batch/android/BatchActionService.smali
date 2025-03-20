.class public final Lcom/batch/android/BatchActionService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "com.batch.android.action.exec"

.field protected static final b:Ljava/lang/String; = "actionID"

.field protected static final c:Ljava/lang/String; = "args"

.field protected static final d:Ljava/lang/String; = "notificationID"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "BatchActionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatchActionService - Handling intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/batch/android/c/o;->c(ZLjava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 40
    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "notificationID"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 50
    const-string v0, "android.support.v4.app.NotificationManagerCompat"

    invoke-static {v0}, Lcom/batch/android/c/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    .line 53
    const-string v4, "batch"

    invoke-virtual {v0, v4, v3}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 62
    :cond_2
    :goto_1
    const-string v0, "actionID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    const-string v0, "BatchActionService - Empty or null action identifier, aborting"

    invoke-static {v5, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/batch/android/BatchActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 58
    const-string v4, "batch"

    invoke-virtual {v0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    .line 71
    :cond_4
    const-string v0, "args"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    if-eqz v4, :cond_6

    .line 76
    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_2
    if-nez v0, :cond_5

    .line 86
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 93
    :cond_5
    :try_start_1
    invoke-static {v2}, Lcom/batch/android/BatchPushPayload;->payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;
    :try_end_1
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 100
    :goto_3
    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/batch/android/f/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "BatchActionService - Action executed"

    invoke-static {v5, v0}, Lcom/batch/android/c/o;->c(ZLjava/lang/String;)V

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    const-string v4, "BatchActionService - Unexpected error while decoding json action arguments"

    invoke-static {v5, v4, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move-object v0, v1

    goto :goto_2

    .line 95
    :catch_1
    move-exception v2

    .line 97
    const-string v4, "BatchActionService - Unexpected error while decoding BatchPushPayload"

    invoke-static {v5, v4, v2}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

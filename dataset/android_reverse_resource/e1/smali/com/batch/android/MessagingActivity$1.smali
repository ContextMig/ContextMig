.class Lcom/batch/android/MessagingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/MessagingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/MessagingActivity;


# direct methods
.method constructor <init>(Lcom/batch/android/MessagingActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/batch/android/MessagingActivity$1;->a:Lcom/batch/android/MessagingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    if-eqz p2, :cond_0

    const-string v0, "com.batch.android.messaging.DISMISS_MESSAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/batch/android/MessagingActivity$1;->a:Lcom/batch/android/MessagingActivity;

    invoke-virtual {v0}, Lcom/batch/android/MessagingActivity;->finish()V

    .line 42
    :cond_0
    return-void
.end method

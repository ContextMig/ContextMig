.class Lcom/batch/android/d/c$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d/c;-><init>(Lcom/batch/android/i/c;Lcom/batch/android/d/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/d/c;


# direct methods
.method constructor <init>(Lcom/batch/android/d/c;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/batch/android/d/c$1;->a:Lcom/batch/android/d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/batch/android/d/c$1;->a:Lcom/batch/android/d/c;

    invoke-virtual {v0}, Lcom/batch/android/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/batch/android/d/c$1;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->a(Lcom/batch/android/d/c;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "ba_ws_succeed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/batch/android/d/c$1;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->b(Lcom/batch/android/d/c;)V

    goto :goto_0

    .line 98
    :cond_2
    const-string v0, "ba_network_changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "ba_is_connected"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/batch/android/d/c$1;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->b(Lcom/batch/android/d/c;)V

    goto :goto_0
.end method

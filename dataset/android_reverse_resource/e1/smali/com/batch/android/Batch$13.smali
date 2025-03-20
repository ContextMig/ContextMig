.class final Lcom/batch/android/Batch$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/batch/android/Batch$13;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/batch/android/Batch$13;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/batch/android/Batch$13;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 916
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/f/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    new-instance v0, Lcom/batch/android/j;

    invoke-static {}, Lcom/batch/android/Batch;->g()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/j;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/batch/android/Batch$13;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/batch/android/j;->c(Landroid/content/Context;)Lcom/batch/android/BatchMessage;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_0

    .line 921
    iget-object v1, p0, Lcom/batch/android/Batch$13;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/batch/android/MessagingActivity;->startActivityForMessage(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V

    .line 924
    :cond_0
    return-void
.end method

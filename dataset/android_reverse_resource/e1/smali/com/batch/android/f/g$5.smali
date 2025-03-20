.class final Lcom/batch/android/f/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 420
    invoke-static {v0}, Lcom/batch/android/k/e;->a(Landroid/content/Context;)Lcom/batch/android/k/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/k/e;->i()Ljava/lang/String;

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    const-string v1, "Error while printing User Data Debug information: Batch must be started."

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/batch/android/f/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/f/e;


# direct methods
.method constructor <init>(Lcom/batch/android/f/e;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/batch/android/f/e$1;->a:Lcom/batch/android/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-ne p1, v0, :cond_0

    .line 178
    const/4 v0, 0x0

    const-string v1, "Batch.Push: Call to dismissBatchNotifications made while SDK is not started, please call this method only after Batch.onStart."

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->b(ZLjava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "Error while dismissing notifications"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

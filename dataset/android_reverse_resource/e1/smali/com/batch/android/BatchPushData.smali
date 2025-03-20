.class public Lcom/batch/android/BatchPushData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/batch/android/c/l;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p2, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intent==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p1, :cond_1

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/BatchPushData;->b:Landroid/content/Context;

    .line 52
    invoke-static {p2}, Lcom/batch/android/c/l;->a(Landroid/content/Intent;)Lcom/batch/android/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    .line 53
    iget-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent is not a Batch Push one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public getBigPictureURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->n()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchPushData;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v2}, Lcom/batch/android/c/l;->o()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/batch/android/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCustomLargeIconURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->k()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/batch/android/BatchPushData;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v2}, Lcom/batch/android/c/l;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/batch/android/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBigPicture()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->m()Z

    move-result v0

    return v0
.end method

.method public hasCustomLargeIcon()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->j()Z

    move-result v0

    return v0
.end method

.method public hasDeeplink()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/batch/android/BatchPushData;->a:Lcom/batch/android/c/l;

    invoke-virtual {v0}, Lcom/batch/android/c/l;->c()Z

    move-result v0

    return v0
.end method

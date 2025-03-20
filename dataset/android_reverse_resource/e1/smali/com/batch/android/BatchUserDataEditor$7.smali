.class Lcom/batch/android/BatchUserDataEditor$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchUserDataEditor;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/batch/android/BatchUserDataEditor;


# direct methods
.method constructor <init>(Lcom/batch/android/BatchUserDataEditor;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/batch/android/BatchUserDataEditor$7;->b:Lcom/batch/android/BatchUserDataEditor;

    iput-object p2, p0, Lcom/batch/android/BatchUserDataEditor$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 543
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    .line 545
    if-nez v1, :cond_0

    .line 547
    const-string v0, "User data editor - Error while applying. Make sure Batch is started beforehand."

    invoke-static {v9, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 548
    const-string v0, "User data editor - \'context\' was null while saving."

    invoke-static {v8, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-static {v1}, Lcom/batch/android/k/e;->a(Landroid/content/Context;)Lcom/batch/android/k/e;

    move-result-object v2

    .line 554
    if-nez v2, :cond_1

    .line 556
    const-string v0, "User data editor - Datasource error while applying."

    invoke-static {v9, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v3, "user_profile.data.version"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 561
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 565
    :try_start_0
    invoke-virtual {v2, v4, v5}, Lcom/batch/android/k/e;->a(J)V
    :try_end_0
    .catch Lcom/batch/android/k/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 573
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor$7;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/BatchUserDataEditor$b;

    .line 577
    :try_start_1
    invoke-interface {v0, v2}, Lcom/batch/android/BatchUserDataEditor$b;->a(Lcom/batch/android/k/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 579
    :catch_0
    move-exception v0

    .line 581
    const-string v1, "User data editor - An internal error occurred while applying the changes (code 41)"

    invoke-static {v9, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 582
    const-string v1, "User data editor - Save - Callable exception"

    invoke-static {v8, v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    :try_start_2
    invoke-virtual {v2}, Lcom/batch/android/k/e;->c()V
    :try_end_2
    .catch Lcom/batch/android/k/c; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 587
    :catch_1
    move-exception v0

    .line 589
    const-string v1, "User data editor - Save - Error while rolling back transaction."

    invoke-static {v8, v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 567
    :catch_2
    move-exception v0

    .line 569
    const-string v0, "User data editor - An internal error occurred while applying the changes (code 40)"

    invoke-static {v9, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/batch/android/k/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    .line 600
    const-string v1, "user_profile.data.version"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 601
    const-string v1, "user_profile.data.transactionID"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->b(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/batch/android/f/g;->a(J)V

    .line 605
    const/4 v0, 0x1

    const-string v1, "User data editor - Changeset bumped"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->d(ZLjava/lang/String;)V
    :try_end_3
    .catch Lcom/batch/android/k/c; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 612
    :catch_3
    move-exception v0

    .line 614
    const-string v1, "User data editor - An internal error occurred while applying the changes (code 42)"

    invoke-static {v9, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 615
    const-string v1, "User data editor - Save - Commit exception"

    invoke-static {v8, v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    :try_start_4
    invoke-virtual {v2}, Lcom/batch/android/k/e;->c()V
    :try_end_4
    .catch Lcom/batch/android/k/c; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 620
    :catch_4
    move-exception v0

    .line 622
    const-string v1, "User data editor - Save - Error while rolling back transaction."

    invoke-static {v8, v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 609
    :cond_3
    const/4 v0, 0x1

    :try_start_5
    const-string v1, "User data editor - Changeset not bumped"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->d(ZLjava/lang/String;)V
    :try_end_5
    .catch Lcom/batch/android/k/c; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0
.end method

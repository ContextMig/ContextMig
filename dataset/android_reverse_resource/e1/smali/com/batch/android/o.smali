.class final Lcom/batch/android/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/o;->a:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/batch/android/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "app.id.custom"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/batch/android/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "app.id.custom"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/batch/android/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "app.id.custom"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

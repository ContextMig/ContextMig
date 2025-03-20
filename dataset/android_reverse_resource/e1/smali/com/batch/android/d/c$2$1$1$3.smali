.class Lcom/batch/android/d/c$2$1$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d/c$2$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/d/c$2$1$1;


# direct methods
.method constructor <init>(Lcom/batch/android/d/c$2$1$1;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/batch/android/d/c$2$1$1$3;->a:Lcom/batch/android/d/c$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 3

    .prologue
    .line 229
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1$3;->a:Lcom/batch/android/d/c$2$1$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    iget-object v0, v0, Lcom/batch/android/d/c;->a:Lcom/batch/android/i/c;

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/batch/android/d/c$2$1$1$3;->a:Lcom/batch/android/d/c$2$1$1;

    iget-object v2, v2, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v2, v2, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v2, v2, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-virtual {v2}, Lcom/batch/android/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    .line 233
    :cond_0
    return-void
.end method

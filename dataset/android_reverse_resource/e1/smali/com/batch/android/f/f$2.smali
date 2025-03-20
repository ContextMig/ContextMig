.class Lcom/batch/android/f/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/f;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/batch/android/f/f;


# direct methods
.method constructor <init>(Lcom/batch/android/f/f;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/batch/android/f/f$2;->b:Lcom/batch/android/f/f;

    iput-object p2, p0, Lcom/batch/android/f/f$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 3

    .prologue
    .line 318
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_1

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/batch/android/f/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/d/b;

    .line 324
    invoke-virtual {v0}, Lcom/batch/android/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/batch/android/f/f$2;->b:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->c(Lcom/batch/android/f/f;)Lcom/batch/android/j/b;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/batch/android/j/b;->c([Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/batch/android/f/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/f/f$2;->b:Lcom/batch/android/f/f;

    invoke-static {v1}, Lcom/batch/android/f/f;->g(Lcom/batch/android/f/f;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/batch/android/f/f$2;->b:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->e(Lcom/batch/android/f/f;)Lcom/batch/android/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/d/c;->a()V

    .line 334
    :cond_1
    return-void
.end method

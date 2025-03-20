.class Lcom/batch/android/f/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/f;->b(Ljava/util/List;)V
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
    .line 344
    iput-object p1, p0, Lcom/batch/android/f/f$3;->b:Lcom/batch/android/f/f;

    iput-object p2, p0, Lcom/batch/android/f/f$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 5

    .prologue
    .line 348
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_3

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 353
    iget-object v0, p0, Lcom/batch/android/f/f$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/d/b;

    .line 355
    invoke-virtual {v0}, Lcom/batch/android/d/b;->i()Z

    move-result v4

    if-nez v4, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/batch/android/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/batch/android/f/f$3;->b:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->c(Lcom/batch/android/f/f;)Lcom/batch/android/j/b;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/batch/android/j/b;->a([Ljava/lang/String;)Z

    .line 370
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/batch/android/f/f$3;->b:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->c(Lcom/batch/android/f/f;)Lcom/batch/android/j/b;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/batch/android/j/b;->b([Ljava/lang/String;)Z

    .line 375
    :cond_3
    return-void
.end method

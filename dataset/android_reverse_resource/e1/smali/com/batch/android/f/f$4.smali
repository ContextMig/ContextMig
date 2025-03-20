.class Lcom/batch/android/f/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/f;->a()Ljava/util/List;
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
    .line 385
    iput-object p1, p0, Lcom/batch/android/f/f$4;->b:Lcom/batch/android/f/f;

    iput-object p2, p0, Lcom/batch/android/f/f$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/batch/android/f/f$4;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/f/f$4;->b:Lcom/batch/android/f/f;

    invoke-static {v1}, Lcom/batch/android/f/f;->c(Lcom/batch/android/f/f;)Lcom/batch/android/j/b;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/f/f$4;->b:Lcom/batch/android/f/f;

    invoke-static {v2}, Lcom/batch/android/f/f;->g(Lcom/batch/android/f/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/batch/android/j/b;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    return-void
.end method

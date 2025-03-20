.class final Lcom/batch/android/Batch$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->a(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;Z)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/batch/android/Batch$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/batch/android/Batch$2;->b:Ljava/lang/StringBuilder;

    iput-boolean p3, p0, Lcom/batch/android/Batch$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 4

    .prologue
    .line 1235
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/Batch$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget-object v2, p0, Lcom/batch/android/Batch$2;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/batch/android/Batch$2;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/batch/android/p;->a(Lcom/batch/android/i/c;ZLjava/lang/String;Z)Z

    .line 1236
    return-void
.end method

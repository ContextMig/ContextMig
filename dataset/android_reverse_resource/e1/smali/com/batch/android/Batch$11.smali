.class final Lcom/batch/android/Batch$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->shouldUseGoogleInstanceID()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/batch/android/Batch$11;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/batch/android/Batch;->d()Lcom/batch/android/Config;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/batch/android/Batch$11;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/batch/android/Batch;->d()Lcom/batch/android/Config;

    move-result-object v1

    iget-boolean v1, v1, Lcom/batch/android/Config;->e:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 293
    :cond_0
    return-void
.end method

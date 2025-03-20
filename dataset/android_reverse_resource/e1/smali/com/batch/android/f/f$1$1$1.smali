.class Lcom/batch/android/f/f$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/f$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/f/f$1$1;


# direct methods
.method constructor <init>(Lcom/batch/android/f/f$1$1;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/batch/android/f/f$1$1$1;->a:Lcom/batch/android/f/f$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/batch/android/f/f$1$1$1;->a:Lcom/batch/android/f/f$1$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1$1;->a:Lcom/batch/android/f/f$1;

    iget-object v0, v0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->d(Lcom/batch/android/f/f;)V

    .line 259
    return-void
.end method

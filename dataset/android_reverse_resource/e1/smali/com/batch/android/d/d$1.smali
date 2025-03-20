.class Lcom/batch/android/d/d$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d/d;->a(Lcom/batch/android/FailReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/d/d;


# direct methods
.method constructor <init>(Lcom/batch/android/d/d;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/batch/android/d/d$1;->a:Lcom/batch/android/d/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/batch/android/d/d$1;->a:Lcom/batch/android/d/d;

    invoke-static {v0}, Lcom/batch/android/d/d;->a(Lcom/batch/android/d/d;)Lcom/batch/android/d/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/batch/android/d/d$a;->b()V

    .line 107
    return-void
.end method

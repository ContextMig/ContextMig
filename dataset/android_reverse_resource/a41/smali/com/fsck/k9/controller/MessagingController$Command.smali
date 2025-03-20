.class Lcom/fsck/k9/controller/MessagingController$Command;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fsck/k9/controller/MessagingController$Command;",
        ">;"
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field isForegroundPriority:Z

.field public listener:Lcom/fsck/k9/controller/MessagingListener;

.field public runnable:Ljava/lang/Runnable;

.field sequence:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3863
    invoke-static {}, Lcom/fsck/k9/controller/MessagingController;->access$2900()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/controller/MessagingController$1;

    .prologue
    .line 3857
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingController$Command;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fsck/k9/controller/MessagingController$Command;)I
    .locals 2
    .param p1, "other"    # Lcom/fsck/k9/controller/MessagingController$Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3867
    iget-boolean v0, p1, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    if-nez v0, :cond_0

    .line 3868
    const/4 v0, 0x1

    .line 3872
    :goto_0
    return v0

    .line 3869
    :cond_0
    iget-boolean v0, p1, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    if-eqz v0, :cond_1

    .line 3870
    const/4 v0, -0x1

    goto :goto_0

    .line 3872
    :cond_1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    iget v1, p1, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3857
    check-cast p1, Lcom/fsck/k9/controller/MessagingController$Command;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/controller/MessagingController$Command;->compareTo(Lcom/fsck/k9/controller/MessagingController$Command;)I

    move-result v0

    return v0
.end method

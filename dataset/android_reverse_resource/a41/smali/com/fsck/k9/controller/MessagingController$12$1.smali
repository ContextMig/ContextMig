.class Lcom/fsck/k9/controller/MessagingController$12$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$12;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/controller/MessagingController$12;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/controller/MessagingController$12;

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$12$1;->this$1:Lcom/fsck/k9/controller/MessagingController$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$12$1;->this$1:Lcom/fsck/k9/controller/MessagingController$12;

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$12;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1360
    return-void
.end method

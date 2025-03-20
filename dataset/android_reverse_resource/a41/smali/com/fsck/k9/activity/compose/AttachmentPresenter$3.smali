.class Lcom/fsck/k9/activity/compose/AttachmentPresenter$3;
.super Ljava/lang/Object;
.source "AttachmentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/AttachmentPresenter;->postPerformStalledAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$3;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$3;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$600(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V

    .line 294
    return-void
.end method

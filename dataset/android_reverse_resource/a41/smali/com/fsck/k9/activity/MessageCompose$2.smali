.class Lcom/fsck/k9/activity/MessageCompose$2;
.super Lcom/fsck/k9/helper/SimpleTextWatcher;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$2;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Lcom/fsck/k9/helper/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$2;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$002(Lcom/fsck/k9/activity/MessageCompose;Z)Z

    .line 316
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$2;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$102(Lcom/fsck/k9/activity/MessageCompose;Z)Z

    .line 317
    return-void
.end method

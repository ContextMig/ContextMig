.class Lcom/fsck/k9/ui/messageview/MessageTopView$2;
.super Ljava/lang/Object;
.source "MessageTopView.java"

# interfaces
.implements Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageTopView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V

    .line 123
    return-void
.end method

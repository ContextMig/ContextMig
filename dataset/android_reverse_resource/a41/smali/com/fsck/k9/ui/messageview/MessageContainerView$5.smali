.class Lcom/fsck/k9/ui/messageview/MessageContainerView$5;
.super Ljava/lang/Object;
.source "MessageContainerView.java"

# interfaces
.implements Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageContainerView;->displayMessageViewContainer(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;ZZLcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

.field final synthetic val$onRenderingFinishedListener:Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$5;->val$onRenderingFinishedListener:Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$5;->val$onRenderingFinishedListener:Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$OnRenderingFinishedListener;->onLoadFinished()V

    .line 410
    return-void
.end method

.class Lcom/fsck/k9/ui/messageview/MessageTopView$5;
.super Ljava/lang/Object;
.source "MessageTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessageCryptoCancelledView(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;)V
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
    .line 194
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$5;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->access$100(Lcom/fsck/k9/ui/messageview/MessageTopView;)Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->onClickRetryCryptoOperation()V

    .line 198
    return-void
.end method

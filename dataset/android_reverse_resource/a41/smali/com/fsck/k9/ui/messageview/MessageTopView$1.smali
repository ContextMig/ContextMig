.class Lcom/fsck/k9/ui/messageview/MessageTopView$1;
.super Ljava/lang/Object;
.source "MessageTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageTopView;->setShowPicturesButtonListener()V
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
    .line 85
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->access$000(Lcom/fsck/k9/ui/messageview/MessageTopView;)V

    .line 89
    return-void
.end method

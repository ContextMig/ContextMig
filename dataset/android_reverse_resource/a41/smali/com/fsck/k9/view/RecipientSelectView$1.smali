.class Lcom/fsck/k9/view/RecipientSelectView$1;
.super Ljava/lang/Object;
.source "RecipientSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/view/RecipientSelectView;->postShowAlternatesPopup(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/view/RecipientSelectView;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/view/RecipientSelectView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/view/RecipientSelectView;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$1;->this$0:Lcom/fsck/k9/view/RecipientSelectView;

    iput-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView$1;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$1;->this$0:Lcom/fsck/k9/view/RecipientSelectView;

    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$1;->val$data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->showAlternatesPopup(Ljava/util/List;)V

    .line 317
    return-void
.end method

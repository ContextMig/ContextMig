.class Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
.super Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
.source "RecipientSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/RecipientSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTokenSpan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tokenautocomplete/TokenCompleteTextView",
        "<",
        "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
        ">.TokenImageSpan;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/view/RecipientSelectView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/view/RecipientSelectView;Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;I)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .param p4, "token"    # I

    .prologue
    .line 516
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->this$0:Lcom/fsck/k9/view/RecipientSelectView;

    .line 517
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;I)V

    .line 518
    iput-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->view:Landroid/view/View;

    .line 519
    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->view:Landroid/view/View;

    return-object v0
.end method

.class Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;
.super Ljava/lang/Object;
.source "AlternateRecipientAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/AlternateRecipientAdapter;->bindItemView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

.field final synthetic val$recipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/AlternateRecipientAdapter;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;->this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    iput-object p2, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;->val$recipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;->this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-static {v0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->access$100(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;->this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->access$000(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$2;->val$recipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;->onRecipientChange(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 164
    return-void
.end method

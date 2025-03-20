.class Lcom/fsck/k9/activity/AlternateRecipientAdapter$1;
.super Ljava/lang/Object;
.source "AlternateRecipientAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/AlternateRecipientAdapter;->bindHeaderView(Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-static {v0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->access$100(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->access$000(Lcom/fsck/k9/activity/AlternateRecipientAdapter;)Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$AlternateRecipientListener;->onRecipientRemove(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 139
    return-void
.end method

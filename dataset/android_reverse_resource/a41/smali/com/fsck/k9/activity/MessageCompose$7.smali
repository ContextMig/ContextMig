.class Lcom/fsck/k9/activity/MessageCompose$7;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;

.field final synthetic val$adapter:Lcom/fsck/k9/activity/compose/IdentityAdapter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/activity/compose/IdentityAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$7;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$7;->val$adapter:Lcom/fsck/k9/activity/compose/IdentityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$7;->val$adapter:Lcom/fsck/k9/activity/compose/IdentityAdapter;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/activity/compose/IdentityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    .line 1145
    .local v0, "container":Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$7;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v2, v0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->account:Lcom/fsck/k9/Account;

    iget-object v3, v0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->identity:Lcom/fsck/k9/Identity;

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/Account;Lcom/fsck/k9/Identity;)V

    .line 1146
    return-void
.end method

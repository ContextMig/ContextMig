.class Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;
.super Ljava/lang/Object;
.source "OpenPgpAppSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;->this$0:Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 174
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;->this$0:Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->access$200(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .line 176
    .local v0, "entry":Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->access$400(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;->this$0:Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->access$400(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;->this$0:Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->access$600(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->access$502(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

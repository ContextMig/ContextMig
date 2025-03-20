.class Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$SimpleDialog;->show(Lcom/fsck/k9/activity/Accounts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts$SimpleDialog;

.field final synthetic val$activity:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$SimpleDialog;Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts$SimpleDialog;

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$SimpleDialog;

    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1508
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1509
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;->val$activity:Lcom/fsck/k9/activity/Accounts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 1510
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$SimpleDialog;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->okayAction(Lcom/fsck/k9/activity/Accounts;)V

    .line 1511
    return-void
.end method

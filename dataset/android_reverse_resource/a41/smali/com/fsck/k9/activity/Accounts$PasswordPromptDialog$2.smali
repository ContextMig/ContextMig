.class Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$2;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->show(Lcom/fsck/k9/activity/Accounts;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

.field final synthetic val$activity:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$2;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$2;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 827
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 828
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$2;->val$activity:Lcom/fsck/k9/activity/Accounts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 829
    return-void
.end method

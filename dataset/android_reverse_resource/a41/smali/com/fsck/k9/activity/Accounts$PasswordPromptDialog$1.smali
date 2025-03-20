.class Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;
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
    .line 801
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 804
    const/4 v3, 0x0

    .line 805
    .local v3, "incomingPassword":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1100(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1100(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 808
    :cond_0
    const/4 v4, 0x0

    .line 809
    .local v4, "outgoingPassword":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1200(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1300(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v4, v3

    .line 814
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 817
    new-instance v0, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->val$activity:Lcom/fsck/k9/activity/Accounts;

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v2}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1400(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Lcom/fsck/k9/Account;

    move-result-object v2

    iget-object v5, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .line 818
    invoke-static {v5}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1500(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;-><init>(Landroid/app/Activity;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 819
    .local v0, "asyncTask":Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->val$activity:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1, v0}, Lcom/fsck/k9/activity/Accounts;->access$1600(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/activity/misc/NonConfigurationInstance;)V

    .line 820
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 821
    return-void

    .line 810
    .end local v0    # "asyncTask":Lcom/fsck/k9/activity/Accounts$SetPasswordsAsyncTask;
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .line 811
    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1200(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

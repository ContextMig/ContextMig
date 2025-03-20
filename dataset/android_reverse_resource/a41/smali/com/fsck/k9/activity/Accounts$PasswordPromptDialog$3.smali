.class Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 876
    if-eqz p2, :cond_0

    .line 877
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1200(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1200(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 883
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1200(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1100(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;->this$0:Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->access$1200(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

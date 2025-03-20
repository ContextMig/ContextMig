.class Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;
.super Ljava/lang/Object;
.source "AccountSetupComposition.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupComposition;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 74
    if-eqz p2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->access$200(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v0

    .line 78
    .local v0, "isSignatureBeforeQuotedText":Z
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/RadioButton;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 83
    .end local v0    # "isSignatureBeforeQuotedText":Z
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupComposition;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.class Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;
.super Ljava/lang/Object;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->initializeViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 357
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    .line 346
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    .line 347
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$600(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v0

    .line 350
    .local v0, "selection":Lcom/fsck/k9/mail/AuthType;
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v1, v0, :cond_1

    .line 353
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$700(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)Lcom/fsck/k9/view/ClientCertificateSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->chooseCertificate()V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$800(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

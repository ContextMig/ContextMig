.class Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;
.super Ljava/lang/Object;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->initializeViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)I

    move-result v6

    if-eq v6, p3, :cond_1

    .line 238
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    .line 240
    sget-object v6, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v7}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$200(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v7

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 241
    .local v1, "isInsecure":Z
    :goto_0
    sget-object v6, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v7}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v7

    if-ne v6, v7, :cond_3

    move v0, v4

    .line 242
    .local v0, "isAuthExternal":Z
    :goto_1
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_4

    move v2, v4

    .line 254
    .local v2, "loginNotRequired":Z
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 255
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v4}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v3

    .line 256
    .local v3, "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v4}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/Spinner;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 257
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$700(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    move-result-object v6

    sget-object v7, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->getAuthPosition(Lcom/fsck/k9/mail/AuthType;)I

    move-result v6

    invoke-static {v4, v6}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$602(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;I)I

    .line 258
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v4}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/Spinner;

    move-result-object v4

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$600(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)I

    move-result v6

    invoke-virtual {v4, v6, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 259
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v4}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v4}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$800(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    .line 263
    .end local v3    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v4}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$900(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    .line 265
    .end local v0    # "isAuthExternal":Z
    .end local v1    # "isInsecure":Z
    .end local v2    # "loginNotRequired":Z
    :cond_1
    return-void

    :cond_2
    move v1, v5

    .line 240
    goto :goto_0

    .restart local v1    # "isInsecure":Z
    :cond_3
    move v0, v5

    .line 241
    goto :goto_1

    .restart local v0    # "isAuthExternal":Z
    :cond_4
    move v2, v5

    .line 242
    goto :goto_2
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
    .line 268
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

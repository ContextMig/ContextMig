.class Lcom/fsck/k9/activity/EditIdentity$1;
.super Ljava/lang/Object;
.source "EditIdentity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/EditIdentity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/EditIdentity;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/EditIdentity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/EditIdentity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fsck/k9/activity/EditIdentity$1;->this$0:Lcom/fsck/k9/activity/EditIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity$1;->this$0:Lcom/fsck/k9/activity/EditIdentity;

    invoke-static {v0}, Lcom/fsck/k9/activity/EditIdentity;->access$000(Lcom/fsck/k9/activity/EditIdentity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity$1;->this$0:Lcom/fsck/k9/activity/EditIdentity;

    invoke-static {v0}, Lcom/fsck/k9/activity/EditIdentity;->access$200(Lcom/fsck/k9/activity/EditIdentity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity$1;->this$0:Lcom/fsck/k9/activity/EditIdentity;

    invoke-static {v1}, Lcom/fsck/k9/activity/EditIdentity;->access$100(Lcom/fsck/k9/activity/EditIdentity;)Lcom/fsck/k9/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity$1;->this$0:Lcom/fsck/k9/activity/EditIdentity;

    invoke-static {v0}, Lcom/fsck/k9/activity/EditIdentity;->access$000(Lcom/fsck/k9/activity/EditIdentity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

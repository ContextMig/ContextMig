.class Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupBasics;->initializeViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    invoke-static {v0, p2}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupBasics;Z)V

    .line 105
    return-void
.end method
